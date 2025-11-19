uint64_t sub_100B9AF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFindingInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B9AF94()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100B9B04C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B9B04C()
{
  if (!qword_1016B6ED8)
  {
    type metadata accessor for ShutdownReason(255);
    sub_100B9AB28();
    sub_100B9B0F8(&unk_1016B6EE0, type metadata accessor for ShutdownReason);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B6ED8);
    }
  }
}

uint64_t sub_100B9B0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StandaloneBeacon()
{
  result = qword_1016B6F78;
  if (!qword_1016B6F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B9B1B4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MACAddress();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100B9B27C()
{
  v1 = v0;
  _StringGuts.grow(_:)(75);
  v2._countAndFlagsBits = 0x203A64693CLL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_100B9B724(&qword_101696930, &type metadata accessor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x7373657264646120;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  v5 = type metadata accessor for StandaloneBeacon();
  v6 = v5[5];
  type metadata accessor for MACAddress();
  sub_100B9B724(&qword_1016A4210, &type metadata accessor for MACAddress);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._object = 0x800000010136E770;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9 = v1 + v5[6];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x203A4E5320;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  String.append(_:)(*(v1 + v5[7]));
  v12._countAndFlagsBits = 0x746375646F727020;
  v12._object = 0xEE00203A61746144;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100313D58(*(v1 + v5[9]), *(v1 + v5[9] + 8));
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x7461447269617020;
  v14._object = 0xEB00000000203A65;
  String.append(_:)(v14);
  v15 = v5[8];
  type metadata accessor for Date();
  sub_100B9B724(&qword_1016969A0, &type metadata accessor for Date);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

Swift::Int sub_100B9B544()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B9B5CC()
{
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100B9B650()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B9B724(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B9B724(unint64_t *a1, void (*a2)(uint64_t))
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

char **sub_100B9B76C()
{
  v1 = v0;
  v2 = [v0 ownedCircles];
  v3 = _swiftEmptyDictionarySingleton;
  if (v2)
  {
    v4 = v2;
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_29;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v6; i = v1)
    {
      v7 = 0;
      v118 = v5 & 0xC000000000000001;
      v112 = v5 + 32;
      v114 = v5 & 0xFFFFFFFFFFFFFF8;
      v8 = _swiftEmptyDictionarySingleton;
      v116 = v6;
      v117 = v5;
      while (1)
      {
        if (v118)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v114 + 16))
          {
            goto LABEL_28;
          }

          v22 = *(v112 + 8 * v7);
        }

        v1 = v22;
        v23 = __OFADD__(v7, 1);
        v24 = (v7 + 1);
        if (v23)
        {
          break;
        }

        v25 = [v22 peerTrusts];
        sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v122 = v8;
        v124 = v24;
        v120 = v1;
        if (v27)
        {
          if (v27 < 1)
          {
            goto LABEL_27;
          }

          v28 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v36 = *(v26 + 8 * v28 + 32);
            }

            v37 = v36;
            v38 = [v36 peerTrustRecord];
            v39 = [v38 value];

            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43._countAndFlagsBits = v40;
            v43._object = v42;
            String.append(_:)(v43);

            v44._countAndFlagsBits = 8236;
            v44._object = 0xE200000000000000;
            String.append(_:)(v44);
            v45 = [v37 messagingDestination];
            if (v45)
            {
              v29 = v45;
              v30 = [v45 value];

              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;
            }

            else
            {
              v31 = 0x6974736564206F4ELL;
              v33 = 0xEE006E6F6974616ELL;
            }

            ++v28;
            v34._countAndFlagsBits = v31;
            v34._object = v33;
            String.append(_:)(v34);

            v35._countAndFlagsBits = 0x203A7265657020;
            v35._object = 0xE700000000000000;
            String.append(_:)(v35);
          }

          while (v27 != v28);
        }

        v1 = 0;
        v9 = [v120 circleRecord];
        v10 = [v9 value];

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [v120 beaconRecord];
        v15 = [v14 value];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19._countAndFlagsBits = 44;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        String.append(_:)(v20);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v16, v18, v11, v13, isUniquelyReferenced_nonNull_native);

        v8 = v122;
        v5 = v117;
        v7 = v124;
        if (v124 == v116)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    v8 = _swiftEmptyDictionarySingleton;
LABEL_31:

    v3 = _swiftEmptyDictionarySingleton;
    v1 = i;
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
  }

  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBD58(v8, 0x72694364656E776FLL, 0xEC00000073656C63, v46);
  v47 = _swiftEmptyDictionarySingleton;
  v48 = [v1 memberCircles];
  if (v48)
  {
    v49 = v48;
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v50 >> 62)
    {
      goto LABEL_71;
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
    v108 = v47;
    if (v51)
    {
      v52 = 0;
      v113 = v51;
      v115 = v50 & 0xC000000000000001;
      v109 = v50 + 32;
      v110 = v50 & 0xFFFFFFFFFFFFFF8;
      v47 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      do
      {
        if (v115)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *(v110 + 16))
          {
            goto LABEL_70;
          }

          v67 = *(v109 + 8 * v52);
        }

        v50 = v67;
        v23 = __OFADD__(v52, 1);
        v68 = v52 + 1;
        if (v23)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v51 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_35;
        }

        v123 = v3;
        v3 = [v67 peerTrusts];
        sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v125 = v50;
        v121 = v68;
        if (v69 >> 62)
        {
          v70 = _CocoaArrayWrapper.endIndex.getter();
          if (!v70)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v70)
          {
            goto LABEL_55;
          }
        }

        if (v70 < 1)
        {
          goto LABEL_68;
        }

        v71 = 0;
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v79 = *(v69 + 8 * v71 + 32);
          }

          v80 = v79;
          v81 = [v79 peerTrustRecord];
          v82 = [v81 value];

          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          v126._countAndFlagsBits = v83;
          v126._object = v85;
          v86._countAndFlagsBits = 8236;
          v86._object = 0xE200000000000000;
          String.append(_:)(v86);
          v87 = [v80 messagingDestination];
          if (v87)
          {
            v72 = v87;
            v73 = [v87 value];

            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
          }

          else
          {
            v74 = 0x6974736564206F4ELL;
            v76 = 0xEE006E6F6974616ELL;
          }

          ++v71;
          v77._countAndFlagsBits = v74;
          v77._object = v76;
          String.append(_:)(v77);

          v78._countAndFlagsBits = 32;
          v78._object = 0xE100000000000000;
          String.append(_:)(v78);
          String.append(_:)(v126);
        }

        while (v70 != v71);
LABEL_55:

        v88 = [v125 sharedBeaconOwnerName];
        v89 = [v88 value];

        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v93._countAndFlagsBits = 32;
        v93._object = 0xE100000000000000;
        String.append(_:)(v93);
        v94 = v90;
        v95 = v92;
        v3 = [v125 itemSharingKey];
        sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v50 >> 62)
        {
          v96 = _CocoaArrayWrapper.endIndex.getter();
          v119 = v94;
          if (!v96)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v96 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v119 = v94;
          if (!v96)
          {
            goto LABEL_37;
          }
        }

        if (v96 < 1)
        {
          goto LABEL_69;
        }

        v97 = 0;
        do
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v98 = *(v50 + 8 * v97 + 32);
          }

          v99 = v98;
          ++v97;
          v100 = [v98 value];
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v104._countAndFlagsBits = 32;
          v104._object = 0xE100000000000000;
          String.append(_:)(v104);
          v105._countAndFlagsBits = v101;
          v105._object = v103;
          String.append(_:)(v105);
        }

        while (v96 != v97);
LABEL_37:

        v53 = [v125 circleRecord];
        v54 = [v53 value];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v56;

        v57 = [v125 sharedBeaconRecord];
        v58 = [v57 value];

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62._countAndFlagsBits = 32;
        v62._object = 0xE100000000000000;
        String.append(_:)(v62);

        v63._countAndFlagsBits = v119;
        v63._object = v95;
        String.append(_:)(v63);

        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        String.append(_:)(v65);

        v66 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v59, v61, v55, v50, v66);

        v3 = v123;
        v52 = v121;
      }

      while (v121 != v113);
    }

    v47 = v108;
  }

  v106 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBD58(v3, 0x69437265626D656DLL, 0xED000073656C6372, v106);
  return v47;
}

__n128 sub_100B9C29C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100B9C2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B9C318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100B9C370()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC70);
  sub_1000076D4(v0, qword_10177BC70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B9C3F4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016B6FE8, &qword_1013DB6C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B9CE1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v17, v18);
  if (!v4)
  {
    BYTE4(v17) = BYTE4(v16);
    LODWORD(v17) = v16;
    v19 = 1;
    sub_100B9CEC4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100B9C5BC()
{
  if (*v0)
  {
    result = 0x6F666E49766461;
  }

  else
  {
    result = 0x6E6F697461636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_100B9C600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E49766461 && a2 == 0xE700000000000000)
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

uint64_t sub_100B9C6E0(uint64_t a1)
{
  v2 = sub_100B9CE1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B9C71C(uint64_t a1)
{
  v2 = sub_100B9CE1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B9C758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100B9CC0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 20) = BYTE4(v6);
  }

  return result;
}

char *sub_100B9C7B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      if (!v4)
      {
        return _swiftEmptyArrayStorage;
      }

      v6 = 0;
      v7 = a2 + 32;
      v8 = (a1 + 40);
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = *(v8 - 1);
        v11 = *v8;
        v12 = *(*v7 + 16);
        sub_100017D5C(v10, *v8);
        sub_100017D5C(v10, v11);
        if (v12)
        {

          v14 = sub_100EB42B8(v13);
        }

        else
        {
          v14 = 3;
        }

        v15 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100A5E954(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = sub_100A5E954((v16 > 1), v17 + 1, 1, v9);
        }

        v8 += 2;
        sub_100016590(v10, v11);
        *(v9 + 2) = v17 + 1;
        v18 = &v9[24 * v17];
        *(v18 + 4) = v10;
        *(v18 + 5) = v11;
        v18[52] = BYTE4(v14);
        *(v18 + 12) = v14;
        v7 += 8;
        --v4;
        v6 = v15;
      }

      while (v4);
      return v9;
    }

    if (qword_101694D08 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177BC70);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349312;
      *(v22 + 4) = v5;

      *(v22 + 12) = 2050;
      *(v22 + 14) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v20, v21, "Ambiguous hint response from server!\npayload %{public}ld != tlvPackets %{public}ld", v22, 0x16u);
    }

    else
    {
    }
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    sub_101125600(0, v5, 0);
    v9 = _swiftEmptyArrayStorage;
    v23 = (a1 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      sub_100017D5C(v24, *v23);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_101125600((v26 > 1), v27 + 1, 1);
      }

      v23 += 2;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      v28[4] = v24;
      v28[5] = v25;
      *(v28 + 52) = 0;
      *(v28 + 12) = 3;
      --v5;
    }

    while (v5);
  }

  return v9;
}

uint64_t sub_100B9CC0C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6FD0, &qword_1013DB6C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B9CE1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v12 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v10 = v14;
    v12 = 1;
    sub_100B9CE70();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100017D5C(v8, v10);
    sub_100007BAC(a1);
    sub_100016590(v8, v10);
  }

  return v8;
}

unint64_t sub_100B9CE1C()
{
  result = qword_1016B6FD8;
  if (!qword_1016B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FD8);
  }

  return result;
}

unint64_t sub_100B9CE70()
{
  result = qword_1016B6FE0;
  if (!qword_1016B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FE0);
  }

  return result;
}

unint64_t sub_100B9CEC4()
{
  result = qword_1016B6FF0;
  if (!qword_1016B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FF0);
  }

  return result;
}

unint64_t sub_100B9CF2C()
{
  result = qword_1016B6FF8;
  if (!qword_1016B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6FF8);
  }

  return result;
}

unint64_t sub_100B9CF84()
{
  result = qword_1016B7000;
  if (!qword_1016B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7000);
  }

  return result;
}

unint64_t sub_100B9CFDC()
{
  result = qword_1016B7008;
  if (!qword_1016B7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7008);
  }

  return result;
}

uint64_t sub_100B9D040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B9D0F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100B9D06C(uint64_t a1)
{
  *(a1 + 8) = sub_100B9D09C();
  result = sub_10059BEA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B9D09C()
{
  result = qword_1016B7010;
  if (!qword_1016B7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7010);
  }

  return result;
}

uint64_t sub_100B9D0F0(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_100B9D2C0()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B9D3E4, 0, 0);
}

uint64_t sub_100B9D3E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  swift_defaultActor_initialize();
  v3[14] = 0xD000000000000013;
  v3[15] = 0x80000001013DB8B0;
  type metadata accessor for WorkItemQueue();
  v4 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  UUID.init()();
  v3[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_1000076D4(v7, qword_10177BA58);
  (*(v6 + 16))(v5, v8, v7);
  v9 = type metadata accessor for LocalStorageDatabase();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_100B9D5B0;
  v13 = v0[5];

  return sub_100B5B1CC(v13, 0);
}

uint64_t sub_100B9D5B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_100B9D8A0;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_100B9D6D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100B9D6D8()
{
  v1 = *(v0 + 80);
  type metadata accessor for LocalStorageStore();
  *(v0 + 88) = swift_allocObject();

  return _swift_task_switch(sub_100B9D760, 0, 0);
}

uint64_t sub_100B9D760()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_defaultActor_initialize();
  v2[15] = 0xD000000000000011;
  v2[16] = 0x800000010136DC70;
  v2[14] = v1;

  return _swift_task_switch(sub_100B9D7EC, 0, 0);
}

uint64_t sub_100B9D7EC()
{
  v1 = *(v0 + 16);
  *(v1 + 128) = *(v0 + 88);
  return _swift_task_switch(sub_100B9D810, v1, 0);
}

uint64_t sub_100B9D810()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[2];

  return v5(v6);
}

uint64_t sub_100B9D8A0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(v4 + 120);

  v6 = *(v4 + 136);

  type metadata accessor for LocalStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v7 = v0[1];
  v8 = v0[9];

  return v7();
}

uint64_t sub_100B9D964()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100B9D9F8;

  return daemon.getter();
}

uint64_t sub_100B9D9F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100B9EEBC(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100B9EEBC(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_100B9DBDC;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_100B9DBDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10084C32C, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[8] = v10;
    *v10 = v6;
    v10[1] = sub_100B9DD80;

    return v12();
  }
}

uint64_t sub_100B9DD80()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100B9DE90, v2, 0);
}

uint64_t sub_100B9DE90()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100B9DEB4, v1, 0);
}

uint64_t sub_100B9DEB4()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 80) = v1;
  return _swift_task_switch(sub_100B9DED8, v1, 0);
}

uint64_t sub_100B9DED8()
{
  v1 = v0[10];
  v2 = v0[7];
  type metadata accessor for LocalStorageDatabase();
  sub_100B9EEBC(&qword_1016B62E0, 255, type metadata accessor for LocalStorageDatabase);
  Database.startup()();
  v0[11] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = sub_100B9DFB0;
  }

  else
  {
    v5 = sub_1004A9788;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100B9DFB0()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B9E038(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100B9E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalStorageService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100B9E1A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100B9E24C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100B9E2F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100B9D964();
}

uint64_t sub_100B9E380()
{
  v1 = *v0;
  type metadata accessor for LocalStorageService();
  sub_100B9EEBC(&unk_1016B1030, v2, type metadata accessor for LocalStorageService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100B9E478(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9E498, 0, 0);
}

uint64_t sub_100B9E498()
{
  v1 = *(*(v0 + 24) + 128);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100B9E52C;

  return sub_1011A3C3C();
}

uint64_t sub_100B9E52C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100B9E678, 0, 0);
  }
}

uint64_t sub_100B9E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100B9E6C0, 0, 0);
}

uint64_t sub_100B9E6C0()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100B9E75C;
  v3 = v0[4];

  return sub_1011A3FBC(v3);
}

uint64_t sub_100B9E75C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100B9EF04, 0, 0);
  }
}

uint64_t sub_100B9E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100B9E8CC, 0, 0);
}

uint64_t sub_100B9E8CC()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100B9E968;
  v3 = v0[4];

  return sub_1011A4668(v3);
}

uint64_t sub_100B9E968(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100B9EAB4, 0, 0);
  }
}

uint64_t sub_100B9EAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100B9EAFC, 0, 0);
}

uint64_t sub_100B9EAFC()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100548D28;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  return sub_1011A4C60(v5, v3, v4);
}

uint64_t sub_100B9EB9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9EBBC, 0, 0);
}

uint64_t sub_100B9EBBC()
{
  v1 = *(v0[2] + 128);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1001B7B20;
  v3 = v0[3];

  return sub_1011A55FC(v3);
}

uint64_t sub_100B9EC58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100B9EC78, 0, 0);
}

uint64_t sub_100B9EC78()
{
  v1 = *(v0[2] + 128);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1007D4EA0;
  v3 = v0[3];

  return sub_1011A5CC8(v3);
}

uint64_t sub_100B9ED34()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100B9EDC8;

  return sub_1011A6C24();
}

uint64_t sub_100B9EDC8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100B9EEBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100B9EF08(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(23);

      v4 = 0xD000000000000014;
    }

    else
    {
      _StringGuts.grow(_:)(36);

      v4 = 0xD000000000000021;
    }
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v4 = 0xD00000000000001ELL;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

Swift::Int sub_100B9F06C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD10[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B9F0F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD10[v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100B9F140@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 200)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 204)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 409)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100B9F190(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      _StringGuts.grow(_:)(33);

      v5 = 0xD00000000000001ELL;
    }

    else if (a1 == 4)
    {
      _StringGuts.grow(_:)(23);

      v5 = 0xD000000000000014;
    }

    else
    {
      _StringGuts.grow(_:)(36);

      v5 = 0xD000000000000021;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      _StringGuts.grow(_:)(45);

      v5 = 0xD00000000000002ALL;
    }

    else
    {
      v5 = 0;
      _StringGuts.grow(_:)(51);
      v1._countAndFlagsBits = 0xD000000000000030;
      v1._object = 0x800000010136E880;
      String.append(_:)(v1);
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

Swift::Int sub_100B9F3D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD28[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B9F460()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013DBD28[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100B9F4AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100BA09D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B9F4F8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = *(*(type metadata accessor for AccountCheckEndpoint() - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100B9F5CC, 0, 0);
}

uint64_t sub_100B9F5CC()
{
  v33 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v2, qword_10177C418);
  sub_100BA0908(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100BA0940(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136E910, &v32);
    *(v6 + 12) = 2080;
    v7 = *(v5 + 25);
    v8 = v5[1];
    *(v0 + 112) = *v5;
    *(v0 + 128) = v8;
    *(v0 + 137) = v7;
    sub_100BA0908(v5, v0 + 160);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v32);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = enum case for FMNAccountType.w2Accessory(_:);
  v18 = type metadata accessor for FMNAccountType();
  (*(*(v18 - 8) + 104))(v13, v17, v18);
  v19 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v24 = type metadata accessor for ServerInteractionController(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_100BA0970(v13, v12);
  *(v0 + 256) = sub_10062468C(v12, v23, v27);
  v28 = *(v15 + 16);
  sub_100BA0908(v16, v0 + 64);

  v29 = swift_task_alloc();
  *(v0 + 264) = v29;
  *v29 = v0;
  v29[1] = sub_100B9F934;
  v30 = *(v0 + 208);

  return sub_101089060(v30, v28);
}

uint64_t sub_100B9F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 264);
  v7 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = a3;

  return _swift_task_switch(sub_100B9FA38, 0, 0);
}

uint64_t sub_100B9FA38()
{
  v1 = v0[34];
  if (v1)
  {
    v3 = v0[35];
    v2 = v0[36];
    v4 = v0[32];
    v5 = swift_task_alloc();
    v0[37] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v3;
    v5[5] = v2;
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[38] = v7;
    *v7 = v0;
    v7[1] = sub_100B9FC60;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 57, 0, 0, 0xD000000000000013, 0x800000010136E910, sub_100BA0AE8, v5, &type metadata for AccountCheckResult.ServerStatus);
  }

  else
  {
    v8 = v0[31];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not create pairing lock request", v11, 2u);
    }

    v12 = v0[32];
    v13 = v0[30];

    sub_100BA0A38();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();

    sub_100BA0A8C(v13);
    v16 = v0[29];
    v15 = v0[30];
    v17 = v0[28];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100B9FC60()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_100B9FE50;
  }

  else
  {
    v6 = sub_100B9FD94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100B9FD94()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);

  sub_100165328(v3, v1, v2);
  sub_100BA0A8C(v5);
  v8 = *(v0 + 57);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100B9FE50()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[30];

  sub_100165328(v3, v1, v2);
  sub_100BA0A8C(v5);
  v6 = v0[39];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100B9FEFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v22 = a1;
  v10 = sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_1004FF48C(a3, a4, a5, 0, a2);
  v21 = *(v11 + 16);
  v21(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v20 = *(v11 + 32);
  v20(v16 + v15, v14, v10);
  Future.addFailure(block:)();

  v21(v14, v22, v10);
  v17 = swift_allocObject();
  v20(v17 + v15, v14, v10);
  Future.addSuccess(block:)();
}

uint64_t sub_100BA0114()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C418);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in verify pairing request. %{public}@", v3, 0xCu);
    sub_100288C6C(v4);
  }

  sub_100BA0A38();
  swift_allocError();
  *v6 = 1;
  sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BA02A8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000076D4(v13, qword_10177C418);
  v57 = v6[2];
  v58 = v6 + 2;
  v57(v12, a1, v5);
  v61 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v59 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v55 = v10;
    v60 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v63 = v20;
    *v19 = 136446210;
    sub_100BA0BEC();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = a1;
    v24 = v23;
    v56 = v6[1];
    v56(v12, v60);
    v25 = sub_1000136BC(v21, v24, &v63);
    a1 = v22;

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Account check response: %{public}s", v19, 0xCu);
    sub_100007BAC(v20);

    v5 = v60;
    v10 = v55;
  }

  else
  {

    v56 = v6[1];
    v56(v12, v5);
  }

  v26 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v28 = v27;
  static String.Encoding.utf8.getter();
  v29 = String.init(data:encoding:)();
  v31 = v30;
  sub_100016590(v26, v28);
  if (v31)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = a1;
      v36 = swift_slowAlloc();
      v63 = v36;
      *v34 = 136315138;
      v37 = sub_1000136BC(v29, v31, &v63);

      *(v34 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Account check response data: %s", v34, 0xCu);
      sub_100007BAC(v36);
      a1 = v35;
    }

    else
    {
    }
  }

  v38 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  switch(v38)
  {
    case 200:
      v39 = 0;
      goto LABEL_17;
    case 409:
      v39 = 2;
      goto LABEL_17;
    case 204:
      v39 = 1;
LABEL_17:
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v63 = v43;
        *v42 = 136446210;
        v44 = sub_100B9EF08(v39);
        v46 = sub_1000136BC(v44, v45, &v63);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "AccountCheckResult: %{public}s", v42, 0xCu);
        sub_100007BAC(v43);
      }

      LOBYTE(v63) = v39;
      sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
      return CheckedContinuation.resume(returning:)();
  }

  v57(v10, a1, v5);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    v51 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v56(v10, v5);
    *(v50 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v48, v49, "Invalid AccountCheckResult %ld!", v50, 0xCu);
  }

  else
  {
    v56(v10, v5);
  }

  sub_100BA0A38();
  v52 = swift_allocError();
  *v53 = 2;
  v63 = v52;
  sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BA0970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCheckEndpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BA09D4(uint64_t result)
{
  if (result > 199)
  {
    switch(result)
    {
      case 200:
        return 3;
      case 204:
        return 4;
      case 409:
        return 5;
    }

    return 6;
  }

  if (result == -1)
  {
    return 0;
  }

  if (result != 1 && result != 2)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100BA0A38()
{
  result = qword_1016B70E8;
  if (!qword_1016B70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B70E8);
  }

  return result;
}

uint64_t sub_100BA0A8C(uint64_t a1)
{
  v2 = type metadata accessor for AccountCheckEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BA0AF4()
{
  v0 = *(*(sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20) - 8) + 80);

  return sub_100BA0114();
}

uint64_t sub_100BA0B70(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100BA02A8(a1, v4);
}

unint64_t sub_100BA0BEC()
{
  result = qword_1016A62C0;
  if (!qword_1016A62C0)
  {
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A62C0);
  }

  return result;
}

__n128 sub_100BA0C74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100BA0C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 41))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100BA0CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100BA0D4C()
{
  result = qword_1016B70F8;
  if (!qword_1016B70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B70F8);
  }

  return result;
}

unint64_t sub_100BA0DA4()
{
  result = qword_1016B7100;
  if (!qword_1016B7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7100);
  }

  return result;
}

unint64_t sub_100BA0DFC()
{
  result = qword_1016B7108;
  if (!qword_1016B7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7108);
  }

  return result;
}

uint64_t sub_100BA0E50()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC88);
  sub_1000076D4(v0, qword_10177BC88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BA0ED0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return _swift_task_switch(sub_100BA0F18, v0, 0);
}

uint64_t sub_100BA0F18()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_10177B348;

  return _swift_task_switch(sub_100BA0FB4, 0, 0);
}

uint64_t sub_100BA0FB4()
{
  v1 = *(v0 + 48);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100BA1078;
  v4 = *(v0 + 48);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100BA1078()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100BA1190, 0, 0);
}

uint64_t sub_100BA1190()
{
  v1 = v0[4];
  v0[8] = v0[2];
  return _swift_task_switch(sub_100BA11B4, v1, 0);
}

uint64_t sub_100BA11B4()
{
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BC88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    sub_101074D40(v6);
    *(v7 + 4) = v8;
    *(v7 + 12) = 2048;
    sub_101074D4C(v6);
    v10 = v9;

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Startup with interval = %f, minimum delay = %f", v7, 0x16u);
  }

  else
  {
    v11 = v0[8];
  }

  v12 = v0[4];

  v13 = *(v12 + 144);
  v0[9] = v13;
  if (v13)
  {
    v14 = async function pointer to unsafeBlocking<A>(_:)[1];
    swift_retain_n();
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_100BA144C;
    v16 = sub_100BA5290;
    v17 = &type metadata for () + 8;
    v18 = v13;
  }

  else
  {
    v19 = v0[4];
    v20 = v0[5];
    v21 = swift_allocObject();
    v0[11] = v21;
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = async function pointer to unsafeBlocking<A>(_:)[1];

    v23 = swift_task_alloc();
    v0[12] = v23;
    v17 = type metadata accessor for XPCActivity();
    *v23 = v0;
    v23[1] = sub_100BA1578;
    v16 = sub_100BA5230;
    v15 = v0 + 3;
    v18 = v21;
  }

  return unsafeBlocking<A>(_:)(v15, v16, v18, v17);
}

uint64_t sub_100BA144C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1003C36A0, v3, 0);
}

uint64_t sub_100BA1578()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100BA16A4, v3, 0);
}

uint64_t sub_100BA16A4()
{
  v1 = v0[3];
  v0[13] = v1;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100BA176C;

  return unsafeBlocking<A>(_:)(v3, sub_100BA5238, v1, &type metadata for () + 8);
}

uint64_t sub_100BA176C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100BA1898, v3, 0);
}

uint64_t sub_100BA1898()
{
  v1 = v0[4];
  v2 = *(v1 + 144);
  *(v1 + 144) = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BA1908@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v26 = 0x800000010136E9A0;
  static DispatchQoS.default.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v19 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 40) = v20;
  swift_unknownObjectWeakInit();
  *(v19 + 88) = 0;
  v21 = sub_1000BC488();
  v23[1] = "nRecordsPublisher";
  v23[2] = v21;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  (*(v10 + 16))(v14, v16, v9);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v25);
  v30 = _swiftEmptyArrayStorage;
  sub_100BA9404(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v19 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v19 + 24) = 0xD000000000000041;
  *(v19 + 32) = v26;
  *(v19 + 48) = sub_100BA8A98;
  *(v19 + 56) = v17;
  *(v19 + 64) = sub_100BA8AA0;
  *(v19 + 72) = v18;

  sub_100997398();

  (*(v10 + 8))(v16, v24);

  *v29 = v19;
  return result;
}

uint64_t *sub_100BA1D00@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result != 2)
  {
    v15 = result[3];
    v14 = result[4];
    v12 = result[1];
    v13 = result[2];
    goto LABEL_15;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  result = sub_101074D4C(v16);
  v6 = v5;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_101074D40(v16);
  v8 = v7 * 0.5;
  if (COERCE__INT64(fabs(v7 * 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_101074D40(v16);
  v10 = v9;
  v11 = v9;

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 < 9.22337204e18)
  {
    v12 = v6;
    v13 = v8;
    v14 = 707;
    v3 = 256;
    v15 = v10;
LABEL_15:
    *a2 = v3;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v15;
    a2[4] = v14;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100BA1EE0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a2;

      unsafeFromAsyncTask<A>(_:)();

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100BA1FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA2060();
}

uint64_t sub_100BA2060()
{
  v1[15] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for SubmitUTInfoEndpoint(0);
  v1[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = type metadata accessor for WildModeAssociationRecord(0);
  v1[25] = v9;
  v10 = *(v9 - 8);
  v1[26] = v10;
  v11 = *(v10 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v1[30] = v12;
  v13 = *(v12 - 8);
  v1[31] = v13;
  v14 = *(v13 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v1[35] = v16;
  *v16 = v1;
  v16[1] = sub_100BA22F0;

  return daemon.getter();
}

uint64_t sub_100BA22F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  *(v3 + 288) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 296) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BA24D4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BA24D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v5 = *(*v2 + 120);
  v6 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v7 = sub_100BA46D8;
  }

  else
  {
    v8 = v3[36];

    v7 = sub_100BA2614;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100BA2614()
{
  v1 = *(v0 + 304);
  static Date.trustedNow.getter(*(v0 + 272));

  return _swift_task_switch(sub_100BA2680, v1, 0);
}

uint64_t sub_100BA2680()
{
  v1 = *(v0 + 304);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100BA276C;
  v5 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100BA276C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100BA2884, v2, 0);
}

uint64_t sub_100BA2884()
{
  v1 = v0[15];
  v0[41] = v0[10];
  return _swift_task_switch(sub_100BA28A8, v1, 0);
}

uint64_t sub_100BA28A8()
{
  v1 = v0[38];
  v0[42] = *(v0[41] + 16);

  return _swift_task_switch(sub_100BA291C, v1, 0);
}

uint64_t sub_100BA291C()
{
  v1 = *(v0 + 304);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100BA2A08;
  v5 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_100BA2A08()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100BA2B20, v2, 0);
}

uint64_t sub_100BA2B20()
{
  v1 = v0[15];
  v0[44] = v0[11];
  return _swift_task_switch(sub_100BA2B44, v1, 0);
}

uint64_t sub_100BA2B44()
{
  v1 = v0[38];
  v0[45] = *(v0[44] + 16);

  return _swift_task_switch(sub_100BA2BB8, v1, 0);
}

uint64_t sub_100BA2BB8()
{
  v1 = *(v0 + 304);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  v4 = sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
  *v3 = v0;
  v3[1] = sub_100BA2CA4;
  v5 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_100BA9238, v5, v4);
}

uint64_t sub_100BA2CA4()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100BA2DBC, v2, 0);
}

uint64_t sub_100BA2DBC()
{
  v1 = v0[15];
  v0[47] = v0[12];
  return _swift_task_switch(sub_100BA2DE0, v1, 0);
}

uint64_t sub_100BA2DE0()
{
  v102 = v0;
  v87 = v0[47];
  v86 = *(v87 + 16);
  if (!v86)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_17:
    v0[48] = v6;
    v26 = v6[2];
    v3 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v27 = v0[26];
      sub_101125660(0, v26, 0);
      if (!v6[2])
      {
        goto LABEL_49;
      }

      v28 = v6;
      v3 = _swiftEmptyArrayStorage;
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = v0[39];
      v6 = *(v27 + 72);
      v31 = v0[27];
      sub_100BA9240(v28 + v29, v31, type metadata accessor for WildModeAssociationRecord);
      sub_100BA71B0(v31, &v92);
      if (v30)
      {
        sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
      }

      sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_101125660((v33 > 1), v34 + 1, 1);
        v3 = _swiftEmptyArrayStorage;
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[9 * v34];
      v36 = v95;
      *(v35 + 4) = v94;
      *(v35 + 5) = v36;
      *(v35 + 96) = v96;
      v37 = v93;
      *(v35 + 2) = v92;
      *(v35 + 3) = v37;
      if (v26 != 1)
      {
        if (v28[2] < 2uLL)
        {
          goto LABEL_49;
        }

        v60 = v6 + v29 + v28;
        v61 = 2 - v26;
        v62 = 1;
        while (1)
        {
          v63 = v0[27];
          sub_100BA9240(v60, v63, type metadata accessor for WildModeAssociationRecord);
          sub_100BA71B0(v63, &v92);
          sub_100BA92A8(v0[27], type metadata accessor for WildModeAssociationRecord);
          v101 = v96;
          v99 = v94;
          v100 = v95;
          v97 = v92;
          v98 = v93;
          v65 = _swiftEmptyArrayStorage[2];
          v64 = _swiftEmptyArrayStorage[3];
          if (v65 >= v64 >> 1)
          {
            sub_101125660((v64 > 1), v65 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v65 + 1;
          v66 = &_swiftEmptyArrayStorage[9 * v65];
          *(v66 + 2) = v97;
          v67 = v98;
          v68 = v99;
          v69 = v100;
          *(v66 + 96) = v101;
          *(v66 + 4) = v68;
          *(v66 + 5) = v69;
          *(v66 + 3) = v67;
          if (v61 + v62 == 1)
          {
            break;
          }

          v60 += v6;
          if (++v62 >= v28[2])
          {
            goto LABEL_49;
          }
        }
      }

      v6 = v28;
    }

    if (qword_101694D10 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v1 = 0;
  v2 = v0[31];
  v3 = v0[25];
  v85 = v0[26];
  v4 = (v2 + 48);
  v5 = (v2 + 32);
  v82 = (v2 + 8);
  v6 = _swiftEmptyArrayStorage;
  v83 = (v2 + 48);
  v84 = v3;
  while (v1 < *(v87 + 16))
  {
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[24];
    v10 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v88 = *(v85 + 72);
    v90 = v6;
    sub_100BA9240(v0[47] + v10 + v88 * v1, v8, type metadata accessor for WildModeAssociationRecord);
    sub_1000D3410(v8 + *(v3 + 18), v9);
    v11 = *v4;
    if ((*v4)(v9, 1, v7) == 1)
    {
      sub_10000B3A8(v0[24], &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v13 = v0[29];
      v12 = v0[30];
      v14 = v0[23];
      v15 = *v5;
      (*v5)(v0[33], v0[24], v12);
      sub_1000D3410(v13 + *(v3 + 19), v14);
      v16 = v11(v14, 1, v12);
      v17 = v0[33];
      if (v16 == 1)
      {
        v18 = v0[23];
        (*v82)(v0[33], v0[30]);
        sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
        v4 = v83;
LABEL_11:
        sub_100BA95D8(v0[29], v0[28], type metadata accessor for WildModeAssociationRecord);
        v6 = v90;
        *&v97 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124B2C(0, v90[2] + 1, 1);
          v6 = v97;
        }

        v24 = v6[2];
        v23 = v6[3];
        if (v24 >= v23 >> 1)
        {
          sub_101124B2C(v23 > 1, v24 + 1, 1);
          v6 = v97;
        }

        v25 = v0[28];
        v6[2] = v24 + 1;
        sub_100BA95D8(v25, v6 + v10 + v24 * v88, type metadata accessor for WildModeAssociationRecord);
        v3 = v84;
        goto LABEL_5;
      }

      v19 = v0[32];
      v20 = v0[30];
      v15(v19, v0[23], v20);
      v21 = static Date.< infix(_:_:)();
      v22 = *v82;
      (*v82)(v19, v20);
      v22(v17, v20);
      v4 = v83;
      v3 = v84;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    sub_100BA92A8(v0[29], type metadata accessor for WildModeAssociationRecord);
    v6 = v90;
LABEL_5:
    if (v86 == ++v1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_28:
  v38 = v0[47];
  v39 = type metadata accessor for Logger();
  v0[49] = sub_1000076D4(v39, qword_10177BC88);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[47];
  if (v42)
  {
    v44 = v6;
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    v46 = *(v87 + 16);

    *(v45 + 4) = v46;

    *(v45 + 12) = 2048;
    *(v45 + 14) = v44[2];

    _os_log_impl(&_mh_execute_header, v40, v41, "Count of wild records is %ld, count of records to publish is %ld", v45, 0x16u);
  }

  else
  {
    v47 = v0[47];
    swift_bridgeObjectRelease_n();
  }

  if (v3[2])
  {
    v48 = v0[45];
    v49 = v0[42];
    v50 = *(v0[15] + 128);

    v51 = swift_task_alloc();
    v0[50] = v51;
    *v51 = v0;
    v51[1] = sub_100BA36D8;

    return sub_1007C21F0((v49 | v48) != 0, v3, v50);
  }

  else
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[38];
    v56 = v0[34];
    v57 = v0[30];
    v58 = v0[31];
    if (v54)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "No records to publish, skip publishing.", v59, 2u);
    }

    else
    {
      v70 = v0[38];
    }

    (*(v58 + 8))(v56, v57);
    v72 = v0[33];
    v71 = v0[34];
    v73 = v0[32];
    v75 = v0[28];
    v74 = v0[29];
    v76 = v0[27];
    v78 = v0[23];
    v77 = v0[24];
    v79 = v0[22];
    v80 = v0[19];
    v89 = v0[18];
    v91 = v0[16];

    v81 = v0[1];

    return v81();
  }
}

uint64_t sub_100BA36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 400);
  v12 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;
  v5[54] = v3;

  if (v3)
  {
    v7 = v5[48];
    v8 = v5[15];

    v9 = sub_100BA3B78;
    v10 = v8;
  }

  else
  {
    v10 = v5[15];
    v9 = sub_100BA3804;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100BA3804()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  swift_allocObject();
  *v4 = sub_100280910();
  v8 = *(v7 + 20);
  v9 = enum case for FMNAccountType.none(_:);
  v10 = type metadata accessor for FMNAccountType();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  v11 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = type metadata accessor for FMNMockingPreferences();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v16 = type metadata accessor for ServerInteractionController(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_100BA9240(v4, v5, type metadata accessor for SubmitUTInfoEndpoint);
  v0[55] = sub_100624AA4(v5, v15, v19);
  sub_100BA92A8(v4, type metadata accessor for SubmitUTInfoEndpoint);
  v0[5] = &type metadata for SubmitUTInfo;
  v0[6] = sub_100BA9308();
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;

  sub_100017D5C(v2, v1);
  v20 = swift_task_alloc();
  v0[56] = v20;
  *v20 = v0;
  v20[1] = sub_100BA3A30;
  v21 = v0[22];

  return sub_1004E682C(v21, (v0 + 2));
}

uint64_t sub_100BA3A30()
{
  v2 = *v1;
  v3 = (*v1)[56];
  v11 = *v1;
  (*v1)[57] = v0;

  v4 = v2[55];
  if (v0)
  {
    v5 = v2[48];
    v6 = v2[15];

    v7 = sub_100BA47E4;
    v8 = v6;
  }

  else
  {
    v9 = v2[15];

    sub_100007BAC(v2 + 2);
    v7 = sub_100BA3CA4;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100BA3B78()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v14 = v0[19];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[54];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100BA3CA4()
{
  v1 = v0[22];
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v27 = type metadata accessor for JSONDecoder();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v0[58] = JSONDecoder.init()();
    v30 = swift_task_alloc();
    v0[59] = v30;
    *v30 = v0;
    v30[1] = sub_100BA3F64;
    v31 = v0[48];
    v32 = v0[34];
    v33 = v0[15];

    return sub_100BA7CC0(v31, v32);
  }

  else
  {
    v2 = v0[48];
    v3 = v0[49];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to publish wild associated records.", v6, 2u);
    }

    v8 = v0[52];
    v7 = v0[53];
    v9 = v0[51];
    v10 = v0[38];
    v11 = v0[31];
    v35 = v0[30];
    v37 = v0[34];
    v12 = v0[21];
    v34 = v0[22];
    v13 = v0[20];

    sub_100BA935C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    sub_100016590(v8, v7);

    (*(v12 + 8))(v34, v13);
    (*(v11 + 8))(v37, v35);
    v16 = v0[33];
    v15 = v0[34];
    v17 = v0[32];
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];
    v22 = v0[23];
    v21 = v0[24];
    v23 = v0[22];
    v24 = v0[19];
    v36 = v0[18];
    v38 = v0[16];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100BA3F64()
{
  v2 = *(*v1 + 472);
  v3 = *v1;
  v3[60] = v0;

  if (v0)
  {
    v4 = v3[48];
    v5 = v3[15];

    return _swift_task_switch(sub_100BA4934, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[61] = v6;
    *v6 = v3;
    v6[1] = sub_100BA40E4;
    v7 = v3[15];
    v8 = v3[48];

    return sub_100BA53F0(v8);
  }
}

uint64_t sub_100BA40E4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100BA4210, v3, 0);
}

uint64_t sub_100BA4210()
{
  v65 = v0;
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[22];
  v4 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v6 = v5;
  sub_100BA93B0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v7 = v0[58];
    v9 = v0[52];
    v8 = v0[53];
    v10 = v0[51];
    v61 = v0[34];
    v11 = v0[31];
    v12 = v0[21];
    v57 = v0[22];
    v58 = v0[30];
    v55 = v0[38];
    v56 = v0[20];

    sub_100016590(v4, v6);

    sub_100016590(v9, v8);

    (*(v12 + 8))(v57, v56);
    (*(v11 + 8))(v61, v58);
  }

  else
  {
    v13 = v0[49];
    sub_100016590(v4, v6);
    v14 = v0[14];

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v14 + 16);

      _os_log_impl(&_mh_execute_header, v15, v16, "Got %ld records in response.", v17, 0xCu);
    }

    else
    {
    }

    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = (v14 + 64);
      v60 = v0;
      do
      {
        v26 = v0[49];
        v27 = *(v19 - 4);
        v28 = *(v19 - 3);
        v29 = *(v19 - 1);
        v30 = *v19;
        swift_bridgeObjectRetain_n();

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v20 = v30;
          v21 = swift_slowAlloc();
          v64[0] = swift_slowAlloc();
          *v21 = 141558531;
          *(v21 + 4) = 1752392040;
          *(v21 + 12) = 2081;

          v22 = sub_1000136BC(v27, v28, v64);

          *(v21 + 14) = v22;
          *(v21 + 22) = 2080;

          if (v20)
          {
            v23 = 0x657669746361;
          }

          else
          {
            v23 = 0x7472656E69;
          }

          if (v20)
          {
            v24 = 0xE600000000000000;
          }

          else
          {
            v24 = 0xE500000000000000;
          }

          v25 = sub_1000136BC(v23, v24, v64);

          *(v21 + 24) = v25;
          _os_log_impl(&_mh_execute_header, v31, v32, "Subscription %{private,mask.hash}s, result = %s.", v21, 0x20u);
          swift_arrayDestroy();

          v0 = v60;
        }

        else
        {
        }

        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v33 = v0[58];
    v35 = v0[52];
    v34 = v0[53];
    v36 = v0[51];
    v37 = v0[38];
    v62 = v0[34];
    v39 = v0[30];
    v38 = v0[31];
    v41 = v0[21];
    v40 = v0[22];
    v42 = v0[20];

    sub_100016590(v35, v34);

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v62, v39);
  }

  v44 = v0[33];
  v43 = v0[34];
  v45 = v0[32];
  v47 = v0[28];
  v46 = v0[29];
  v48 = v0[27];
  v50 = v0[23];
  v49 = v0[24];
  v51 = v0[22];
  v52 = v0[19];
  v59 = v0[18];
  v63 = v0[16];

  v53 = v0[1];

  return v53();
}

uint64_t sub_100BA46D8()
{
  v1 = v0[36];

  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v11 = v0[19];
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BA47E4()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[31];

  sub_100016590(v1, v2);

  (*(v7 + 8))(v5, v6);
  sub_100007BAC(v0 + 2);
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v17 = v0[19];
  v20 = v0[18];
  v21 = v0[16];
  v22 = v0[57];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100BA4934()
{
  v42 = v0;
  v1 = v0[60];
  v2 = v0[49];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[60];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[9];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v41);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to decode wild associated records %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v14 = v0[60];
  v15 = v0[58];
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[51];
  v19 = v0[38];
  v20 = v0[31];
  v37 = v0[30];
  v39 = v0[34];
  v21 = v0[21];
  v35 = v0[20];
  v36 = v0[22];
  sub_100BA935C();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();

  sub_100016590(v17, v16);

  (*(v21 + 8))(v36, v35);
  (*(v20 + 8))(v39, v37);
  v24 = v0[33];
  v23 = v0[34];
  v25 = v0[32];
  v27 = v0[28];
  v26 = v0[29];
  v28 = v0[27];
  v30 = v0[23];
  v29 = v0[24];
  v31 = v0[22];
  v32 = v0[19];
  v38 = v0[18];
  v40 = v0[16];

  v33 = v0[1];

  return v33();
}

void *sub_100BA4BF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000023;
  v0[15] = 0x80000001013DBD60;
  v7 = type metadata accessor for DeviceIdentityUtility();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v10 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 11;
  v0[16] = v10;
  type metadata accessor for WorkItemQueue();
  v13 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  UUID.init()();
  v0[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v0[18] = 0;
  return v0;
}

uint64_t sub_100BA4DF0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100BA4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100BA4F5C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100BA5004()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BA0ED0();
}

uint64_t sub_100BA5090(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for WildModeAssociationRecordsPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100BA5138()
{
  v1 = *v0;
  type metadata accessor for WildModeAssociationRecordsPublisher();
  sub_100BA9404(&unk_1016B10D0, v2, type metadata accessor for WildModeAssociationRecordsPublisher);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BA52E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA8B54();
}

uint64_t sub_100BA5378@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = result;
  if (result)
  {
    v4 = *(result + 40);
    result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  *a2 = v2 == 0;
  return result;
}

uint64_t sub_100BA53F0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v2[19] = v8;
  *v8 = v2;
  v8[1] = sub_100BA5570;

  return daemon.getter();
}

uint64_t sub_100BA5570(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BA5754;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BA5754(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a1;

  v6 = *(v3 + 160);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_100BA706C;
  }

  else
  {

    v8 = sub_100BA58B8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100BA58B8()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 184) = v1;
  if (!v1)
  {
LABEL_13:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BC88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 176);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removed %{public}ld unstaged records.", v13, 0xCu);
    }

    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19();
  }

  v2 = 0;
  v3 = *(v0 + 104);
  *(v0 + 264) = *(v3 + 80);
  *(v0 + 192) = *(v3 + 72);
  while (1)
  {
    *(v0 + 208) = 0;
    *(v0 + 216) = v2;
    *(v0 + 200) = 0;
    v5 = *(v0 + 144);
    v6 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v2, v5, type metadata accessor for WildModeAssociationRecord);
    v7 = *(v5 + *(v6 + 64));
    if (v7 > 3)
    {
      if (*(v5 + *(v6 + 64)) > 6u)
      {
        if (v7 != 7)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (v7 != 5 && v7 != 6)
      {
        break;
      }
    }

LABEL_3:
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_21;
    }

LABEL_4:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v2 = *(v0 + 216) + 1;
    if (v2 == *(v0 + 184))
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  v21 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v21, 0);
}

uint64_t sub_100BA5C48()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[18], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[28] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_100BA5DA4;
  v9 = v0[17];
  v10 = v0[12];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v6, v10);
}

uint64_t sub_100BA5DA4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[22];
    v5 = sub_100BA63A4;
  }

  else
  {
    v6 = v2[28];
    v7 = v2[7];

    v5 = sub_100BA5ECC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA5ECC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + *(*(v0 + 96) + 64));
  if (v2 <= 3)
  {
    goto LABEL_9;
  }

  if (*(v1 + *(*(v0 + 96) + 64)) <= 5u)
  {
    if (v2 == 4)
    {

LABEL_10:
      v4 = *(v0 + 176);
      v5 = sub_100BA6A14;
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v2 == 6 || v2 == 7)
  {
LABEL_9:
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_10;
    }

    v1 = *(v0 + 136);
  }

  v6 = *(v0 + 144);
  sub_100BA92A8(v1, type metadata accessor for WildModeAssociationRecord);
  sub_100BA92A8(v6, type metadata accessor for WildModeAssociationRecord);
  v25 = *(v0 + 200);
  v7 = *(v0 + 216) + 1;
  if (v7 == *(v0 + 184))
  {
LABEL_13:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BC88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 176);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removed %{public}ld unstaged records.", v13, 0xCu);
    }

    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19();
  }

  while (1)
  {
    *(v0 + 216) = v7;
    *(v0 + 200) = v25;
    v22 = *(v0 + 144);
    v23 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v7, v22, type metadata accessor for WildModeAssociationRecord);
    v24 = *(v22 + *(v23 + 64));
    if (v24 > 3)
    {
      if (*(v22 + *(v23 + 64)) > 6u)
      {
        if (v24 != 7)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v24 != 5 && v24 != 6)
      {
        break;
      }
    }

LABEL_21:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_32;
    }

LABEL_22:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v7 = *(v0 + 216) + 1;
    if (v7 == *(v0 + 184))
    {
      goto LABEL_13;
    }
  }

LABEL_32:
  v4 = *(v0 + 176);
  v5 = sub_100BA5C48;
LABEL_33:

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA63A4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100BA6410, v2, 0);
}

uint64_t sub_100BA6410()
{
  v45 = v0;
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177BC88);
  sub_100BA9240(v2, v3, type metadata accessor for WildModeAssociationRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  if (v6)
  {
    v10 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100BA9404(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v8;
    v14 = v13;
    sub_100BA92A8(v9, type metadata accessor for WildModeAssociationRecord);
    v15 = sub_1000136BC(v12, v14, &v44);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v44);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "    Failed to get wild mode beacon for identifier %{private,mask.hash}s\n    Error: %{public}s", v11, 0x20u);
    swift_arrayDestroy();

    v22 = v42;
  }

  else
  {

    sub_100BA92A8(v9, type metadata accessor for WildModeAssociationRecord);
    v22 = v8;
  }

  sub_100BA92A8(v22, type metadata accessor for WildModeAssociationRecord);
  v43 = *(v0 + 200);
  v23 = *(v0 + 216) + 1;
  if (v23 == *(v0 + 184))
  {
LABEL_7:
    if (qword_101694D10 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v41, qword_10177BC88);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 176);
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v24, v25, "Removed %{public}ld unstaged records.", v28, 0xCu);
    }

    v30 = *(v0 + 136);
    v29 = *(v0 + 144);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 88);

    v34 = *(v0 + 8);

    return v34();
  }

  while (1)
  {
    *(v0 + 216) = v23;
    *(v0 + 200) = v43;
    v37 = *(v0 + 144);
    v38 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v23, v37, type metadata accessor for WildModeAssociationRecord);
    v39 = *(v37 + *(v38 + 64));
    if (v39 > 3)
    {
      if (*(v37 + *(v38 + 64)) > 6u)
      {
        if (v39 != 7)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v39 != 5 && v39 != 6)
      {
        break;
      }
    }

LABEL_15:
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_26;
    }

LABEL_16:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v23 = *(v0 + 216) + 1;
    if (v23 == *(v0 + 184))
    {
      goto LABEL_7;
    }
  }

LABEL_26:
  v40 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v40, 0);
}

uint64_t sub_100BA6A14()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  sub_100BA9240(*(v0 + 144), v2, type metadata accessor for WildModeAssociationRecord);
  v4 = swift_allocObject();
  *(v0 + 248) = v4;
  *(v4 + 16) = v1;
  sub_100BA95D8(v2, v4 + v3, type metadata accessor for WildModeAssociationRecord);
  v5 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_100BA6B70;

  return unsafeBlocking<A>(context:_:)(v6, 0xD000000000000010, 0x800000010134A8C0, sub_100BA944C, v4, &type metadata for () + 8);
}

uint64_t sub_100BA6B70()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return _swift_task_switch(sub_100BA6C9C, v3, 0);
}

uint64_t sub_100BA6CB8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  sub_100BA92A8(*(v0 + 136), type metadata accessor for WildModeAssociationRecord);
  sub_100BA92A8(v2, type metadata accessor for WildModeAssociationRecord);
  v3 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(v0 + 216) + 1;
  if (v4 == *(v0 + 184))
  {
LABEL_3:
    if (qword_101694D10 == -1)
    {
LABEL_4:
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177BC88);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 176);
      if (v8)
      {
        v10 = swift_slowAlloc();
        *v10 = 134349056;
        *(v10 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v6, v7, "Removed %{public}ld unstaged records.", v10, 0xCu);
      }

      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v14 = *(v0 + 120);
      v13 = *(v0 + 128);
      v15 = *(v0 + 88);

      v16 = *(v0 + 8);

      return v16();
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 208) = v3;
    *(v0 + 216) = v4;
    *(v0 + 200) = v3;
    v19 = *(v0 + 144);
    v20 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v4, v19, type metadata accessor for WildModeAssociationRecord);
    v21 = *(v19 + *(v20 + 64));
    if (v21 > 3)
    {
      if (*(v19 + *(v20 + 64)) > 6u)
      {
        if (v21 != 7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (v21 != 5 && v21 != 6)
      {
        break;
      }
    }

LABEL_10:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_21;
    }

LABEL_11:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v4 = *(v0 + 216) + 1;
    if (v4 == *(v0 + 184))
    {
      goto LABEL_3;
    }
  }

LABEL_21:
  v22 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v22, 0);
}

uint64_t sub_100BA706C()
{
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BC88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleanup unstaged records failure: Missing BeaconStoreActor!", v4, 2u);
  }

  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100BA71B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v98 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v112 = &v94 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016B7220, &qword_1013DBED8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v115 = (&v94 - v12);
  v114 = type metadata accessor for UTInfoPublishRequestBody.State(0);
  v13 = *(v114 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v114);
  v96 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v94 - v17;
  v97 = type metadata accessor for HashAlgorithm();
  v18 = *(v97 - 8);
  v19 = v18[8];
  __chkstk_darwin(v97);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
  v22 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v121 = &v94 - v23;
  v117 = type metadata accessor for WildModeAssociationRecord(0);
  v24 = *(a1 + v117[17]);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v120 = v7 + 16;
  v107 = v7 + 48;
  v100 = (v7 + 32);
  v110 = v7;
  v102 = (v7 + 8);
  v106 = (v13 + 56);
  v95 = v13;
  v105 = (v13 + 48);
  v116 = v24;

  v31 = 0;
  v99 = _swiftEmptyArrayStorage;
  v103 = a1;
  v104 = v25;
  v113 = v18;
  v111 = v21;
  v108 = v29;
LABEL_4:
  v32 = v31;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
    v31 = v32;
LABEL_9:
    v33 = __clz(__rbit64(v28)) | (v31 << 6);
    v34 = *(*(v116 + 48) + v33);
    v35 = v110;
    v36 = *(v116 + 56) + *(v110 + 72) * v33;
    v37 = *(v109 + 48);
    v38 = v121;
    v119 = *(v110 + 16);
    v119(v121 + v37, v36, v6);
    *v38 = v34;
    v39 = a1;
    v40 = a1 + v117[19];
    v41 = v6;
    v42 = v112;
    sub_1000D3410(v40, v112);
    if ((*(v35 + 48))(v42, 1, v41) == 1)
    {
      v118 = v37;
      sub_10000B3A8(v42, &unk_101696900, &unk_10138B1E0);
      if (v34 > 3)
      {
        v43 = v114;
        v44 = v121;
        if (v34 > 5)
        {
          if (v34 == 6)
          {
            v45 = 0xE700000000000000;
            v46 = 0x6465726F6E6769;
          }

          else
          {
            v45 = 0xEA00000000006465;
            v46 = 0x7265766F63736964;
          }
        }

        else if (v34 == 4)
        {
          v45 = 0xE800000000000000;
          v46 = 0x6465676174736E75;
        }

        else
        {
          v45 = 0xE800000000000000;
          v46 = 0x7761726468746977;
        }
      }

      else
      {
        v43 = v114;
        v44 = v121;
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v45 = 0xE600000000000000;
            v46 = 0x796669746F6ELL;
          }

          else
          {
            v45 = 0xE600000000000000;
            v46 = 0x657461647075;
          }
        }

        else if (v34)
        {
          v45 = 0xE600000000000000;
          v46 = 0x646567617473;
        }

        else
        {
          v45 = 0xE700000000000000;
          v46 = 0x6E776F6E6B6E75;
        }
      }

      v52 = v115;
      v119(v115 + *(v43 + 20), v44 + v118, v41);
      v50 = 0;
      *v52 = v46;
      v52[1] = v45;
      v6 = v41;
      v51 = v52;
      a1 = v103;
    }

    else
    {
      v47 = v101;
      (*v100)(v101, v42, v41);
      v6 = v41;
      if (static Date.< infix(_:_:)())
      {
        a1 = v39;
        v118 = v37;
        if (v34 > 3)
        {
          v43 = v114;
          if (v34 > 5)
          {
            if (v34 == 6)
            {
              v48 = 0xE700000000000000;
              v49 = 0x6465726F6E6769;
            }

            else
            {
              v48 = 0xEA00000000006465;
              v49 = 0x7265766F63736964;
            }
          }

          else
          {
            v48 = 0xE800000000000000;
            if (v34 == 4)
            {
              v49 = 0x6465676174736E75;
            }

            else
            {
              v49 = 0x7761726468746977;
            }
          }
        }

        else
        {
          v43 = v114;
          if (v34 > 1)
          {
            v48 = 0xE600000000000000;
            if (v34 == 2)
            {
              v49 = 0x796669746F6ELL;
            }

            else
            {
              v49 = 0x657461647075;
            }
          }

          else if (v34)
          {
            v48 = 0xE600000000000000;
            v49 = 0x646567617473;
          }

          else
          {
            v48 = 0xE700000000000000;
            v49 = 0x6E776F6E6B6E75;
          }
        }

        (*v102)(v47, v6);
        v53 = v115;
        v44 = v121;
        v119(v115 + *(v43 + 20), v121 + v118, v6);
        v50 = 0;
        *v53 = v49;
        v53[1] = v48;
        v51 = v53;
      }

      else
      {
        (*v102)(v47, v41);
        v50 = 1;
        a1 = v39;
        v43 = v114;
        v51 = v115;
        v44 = v121;
      }
    }

    v28 &= v28 - 1;
    (*v106)(v51, v50, 1, v43);
    sub_10000B3A8(v44, &unk_1016BC3A0, &unk_1013DBEE0);
    v54 = (*v105)(v51, 1, v43);
    v18 = v113;
    v21 = v111;
    if (v54 != 1)
    {
      v55 = v51;
      v56 = v94;
      sub_100BA95D8(v55, v94, type metadata accessor for UTInfoPublishRequestBody.State);
      sub_100BA95D8(v56, v96, type metadata accessor for UTInfoPublishRequestBody.State);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v104;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v99 = sub_100A5EAE4(0, v99[2] + 1, 1, v99);
      }

      v59 = v99[2];
      v58 = v99[3];
      if (v59 >= v58 >> 1)
      {
        v99 = sub_100A5EAE4(v58 > 1, v59 + 1, 1, v99);
      }

      v60 = v99;
      v99[2] = v59 + 1;
      result = sub_100BA95D8(v96, v60 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v59, type metadata accessor for UTInfoPublishRequestBody.State);
      v29 = v108;
      goto LABEL_4;
    }

    result = sub_10000B3A8(v51, &qword_1016B7220, &qword_1013DBED8);
    v32 = v31;
    v29 = v108;
    v25 = v104;
  }

  while (v28);
  while (1)
  {
LABEL_6:
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v31);
    ++v32;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  v61 = v117;
  v121 = *(a1 + v117[13]);
  v62 = (a1 + v117[22]);
  v120 = *v62;
  LODWORD(v116) = v62[1];
  v63 = a1 + v117[7];
  v64 = a1;
  v65 = MACAddress.data.getter();
  v67 = v66;
  v68 = enum case for HashAlgorithm.sha256(_:);
  v69 = v21;
  v70 = v21;
  v71 = v97;
  v115 = v18[13];
  (v115)(v69, enum case for HashAlgorithm.sha256(_:), v97);
  v72 = Data.hash(algorithm:)();
  v118 = v73;
  v119 = v72;
  v74 = v67;
  v75 = v71;
  sub_100016590(v65, v74);
  v76 = v18[1];
  v76(v70, v75);
  v77 = v61[20];
  v78 = *(v64 + v61[21]);
  v124 = v116;
  v79 = (v64 + v77);
  v80 = *(v64 + v77 + 8);
  if (((v80 >> 60) | 4) == 0xF)
  {
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v83 = v75;
    v84 = *v79;
    (v115)(v70, v68, v83);
    sub_100017D5C(v84, v80);
    v85 = Data.hash(algorithm:)();
    v87 = v86;
    sub_100308D64(v84, v80);
    v76(v70, v83);
    v122 = v85;
    v123 = v87;
    sub_10025DB08();
    v81 = RawRepresentable<>.base64EncodedString(options:)();
    v82 = v88;
    sub_100016590(v122, v123);
  }

  v89 = (v121 << 24) | (v120 << 32);
  result = UUID.uuidString.getter();
  v90 = v89 | (v124 << 40);
  v91 = v98;
  *v98 = v81;
  v91[1] = v82;
  v91[2] = v99;
  v91[3] = result;
  v91[4] = v92;
  v91[5] = v90 | 0x40202;
  v93 = v118;
  v91[6] = v119;
  v91[7] = v93;
  *(v91 + 64) = v78;
  return result;
}

uint64_t sub_100BA7CC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v3[13] = v8;
  *v8 = v3;
  v8[1] = sub_100BA7E28;

  return daemon.getter();
}

uint64_t sub_100BA7E28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BA800C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BA800C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100BA87C4;
  }

  else
  {
    v7 = v3[14];
    v8 = v3[4];

    v6 = sub_100BA8134;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BA8134()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 128);
  if (v2)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v4 + 80);
    *(v0 + 192) = v6;
    *(v0 + 152) = *(v4 + 72);
    *(v0 + 160) = 0;
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    sub_100BA9240(v1 + ((v6 + 32) & ~v6), *(v0 + 96), type metadata accessor for WildModeAssociationRecord);
    (*(v8 + 16))(v5, v10, v9);
    v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v12 = swift_allocObject();
    *(v0 + 168) = v12;
    (*(v8 + 32))(v12 + v11, v5, v9);

    return _swift_task_switch(sub_100BA82C8, v3, 0);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 64);
    v16 = *(v0 + 128);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100BA82C8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = (*(v0 + 192) + 24) & ~*(v0 + 192);
  v5 = (*(v0 + 80) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100BA9240(*(v0 + 96), v3, type metadata accessor for WildModeAssociationRecord);
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  sub_100BA95D8(v3, v6 + v4, type metadata accessor for WildModeAssociationRecord);
  v7 = (v6 + v5);
  *v7 = sub_100BA94C0;
  v7[1] = v1;
  v8 = (v6 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v8 = SharingCircleWildAdvertisementKey.init(key:);
  v8[1] = 0;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  *v10 = v0;
  v10[1] = sub_100BA847C;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100BA9530, v6, &type metadata for () + 8);
}

uint64_t sub_100BA847C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return _swift_task_switch(sub_100BA85A8, v3, 0);
}

uint64_t sub_100BA85A8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100BA8614, v2, 0);
}

uint64_t sub_100BA8614()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160) + 1;
  sub_100BA92A8(*(v0 + 96), type metadata accessor for WildModeAssociationRecord);
  if (v2 == v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 160) + 1;
    *(v0 + 160) = v10;
    v11 = *(v0 + 128);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    sub_100BA9240(*(v0 + 16) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v9 * v10, *(v0 + 96), type metadata accessor for WildModeAssociationRecord);
    (*(v15 + 16))(v12, v16, v14);
    v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v0 + 168) = v18;
    (*(v15 + 32))(v18 + v17, v12, v14);

    return _swift_task_switch(sub_100BA82C8, v11, 0);
  }
}

uint64_t sub_100BA87C4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_100BA8850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - v10;
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  v16 = *(v15 + 56);
  v16(v13, 0, 1, v14);
  sub_1000D3410(v13, v8);
  v17 = *(v15 + 48);
  if (v17(v8, 1, v14) == 1)
  {
    static Date.trustedNow.getter(v11);
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    if (v17(v8, 1, v14) != 1)
    {
      sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    (*(v15 + 32))(v11, v8, v14);
  }

  v16(v11, 0, 1, v14);
  v18 = type metadata accessor for WildModeAssociationRecord(0);
  return sub_1008CCF08(v11, a1 + *(v18 + 76));
}

uint64_t sub_100BA8AA8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100BA52E8();
}

uint64_t sub_100BA8B74()
{
  v1 = *(v0[6] + 144);
  v0[7] = v1;
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to unsafeBlocking<A>(_:)[1];
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v4 = v0;
  v4[1] = sub_100BA8C80;

  return unsafeBlocking<A>(_:)(v0 + 12, sub_100BA91A0, v2, v5);
}

uint64_t sub_100BA8C80()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_100BA8DAC, v3, 0);
}

uint64_t sub_100BA8DAC()
{
  v1 = *(*(v0 + 48) + 136);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100BA8E78;
  v4 = *(v0 + 48);

  return v6(&unk_1013DBEB0, v4);
}

uint64_t sub_100BA8E78()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100BA8FBC;
  }

  else
  {
    v7 = *(v2 + 48);

    v6 = sub_1004BCEC0;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BA8FBC()
{
  v20 = v0;
  v1 = v0[6];

  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BC88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[7];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Records Publish error: %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100BA91A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA1FD0();
}

uint64_t sub_100BA9240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BA92A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100BA9308()
{
  result = qword_1016B7208;
  if (!qword_1016B7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7208);
  }

  return result;
}

unint64_t sub_100BA935C()
{
  result = qword_1016B7210;
  if (!qword_1016B7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7210);
  }

  return result;
}

unint64_t sub_100BA93B0()
{
  result = qword_1016B7218;
  if (!qword_1016B7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7218);
  }

  return result;
}

uint64_t sub_100BA9404(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100BA944C()
{
  v1 = *(*(type metadata accessor for WildModeAssociationRecord(0) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_100E72414(v2);
}

uint64_t sub_100BA94C0(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100BA8850(a1, v4);
}

uint64_t sub_100BA9530()
{
  v1 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + v2;
  v9 = *(*(v0 + 16) + 128);
  return sub_1010E1CB0(v8, *v5, *(v5 + 8), v6);
}

uint64_t sub_100BA95D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100BA9654()
{
  result = qword_1016B7228;
  if (!qword_1016B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7228);
  }

  return result;
}

uint64_t Device.identifier.getter()
{
  v0 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  Device.id.getter();
  Identifier.id.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t Device.transport.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MACAddress();
  a1[4] = sub_100BAB760(&qword_10169EED0, 255, &type metadata accessor for MACAddress);
  sub_1000280DC(a1);
  return Device.btAddress.getter();
}

uint64_t Device.battery.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  Device.batteryLevel.getter();
  v9 = type metadata accessor for ObjectBatteryState();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v11 = &enum case for BatteryLevel.unknown(_:);
  }

  else
  {
    sub_100BA9A00(v8, v6);
    v12 = (*(v10 + 88))(v6, v9);
    if (v12 == enum case for ObjectBatteryState.low(_:))
    {
      v11 = &enum case for BatteryLevel.low(_:);
    }

    else if (v12 == enum case for ObjectBatteryState.critical(_:))
    {
      v11 = &enum case for BatteryLevel.critical(_:);
    }

    else
    {
      (*(v10 + 8))(v6, v9);
      v11 = &enum case for BatteryLevel.normal(_:);
    }
  }

  v13 = *v11;
  v14 = type metadata accessor for BatteryLevel();
  (*(*(v14 - 8) + 104))(a1, v13, v14);
  return sub_100BA9A70(v8);
}

uint64_t sub_100BA9A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BA9A70(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BA9AE4@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 144);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 name];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [v5 roleId];
    v12 = [v5 roleEmoji];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {

      v14 = 0;
      v16 = 0;
    }

    v17 = type metadata accessor for PairingConfig();
    *(a1 + 24) = v17;
    *(a1 + 32) = sub_100BAB760(&qword_1016B7408, 255, type metadata accessor for PairingConfig);
    v18 = sub_1000280DC(a1);
    v19 = *(v17 + 28);
    v20 = type metadata accessor for AccessoryProductInfo();
    result = (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *v18 = v8;
    v18[1] = v10;
    v18[2] = v11;
    v18[3] = v14;
    v18[4] = v16;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100BA9C90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for BatteryLevel();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for DetectedAccessory();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100BA9E14, v1, 0);
}

uint64_t sub_100BA9E14()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  type metadata accessor for AirTagPairingInfoStore();
  sub_100BAB760(&qword_1016B2BC8, v5, type metadata accessor for AirTagPairingInfoStore);
  PairingInfoStore.accessory.getter();
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  if (v6 != enum case for DetectedAccessory.single(_:))
  {
    (*(v7 + 8))(*(v0 + 144), v9);
    v16 = type metadata accessor for PairingCoordinatorError();
    sub_100BAB760(&qword_1016B31E0, 255, &type metadata accessor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v16);
    swift_willThrow();
    goto LABEL_6;
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 64);
  (*(v7 + 96))(*(v0 + 144), v9);
  sub_10000A748(v8, v0 + 16);
  v12 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  dispatch thunk of Accessory.identifier.getter();
  if (*(v11 + 120) > 1u)
  {
    if (*(v11 + 120) == 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    if (!*(v11 + 120))
    {
      v14 = *(v0 + 112);
      v13 = *(v0 + 120);
      v15 = *(v0 + 104);
      sub_100BAB70C();
      swift_allocError();
      swift_willThrow();
      (*(v14 + 8))(v13, v15);
      sub_100007BAC((v0 + 16));
LABEL_6:
      v18 = *(v0 + 144);
      v19 = *(v0 + 120);
      v21 = *(v0 + 88);
      v20 = *(v0 + 96);

      v22 = *(v0 + 8);

      return v22();
    }

    v24 = 1;
  }

  *(v0 + 152) = v24;
  v25 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 232) = dispatch thunk of Accessory.colorCode.getter();
  if (MKBGetDeviceLockState() == 2 || (v26 = MKBGetDeviceLockState(), v27 = 0, v26 == 1))
  {
    v27 = 1;
  }

  *(v0 + 160) = v27;
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 168) = dispatch thunk of Accessory.engravingData.getter();
  *(v0 + 176) = v33;
  v34 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  dispatch thunk of Accessory.battery.getter();
  v35 = *(v31 + 104);
  v35(v29, enum case for BatteryLevel.unknown(_:), v30);
  v36 = static BatteryLevel.== infix(_:_:)();
  v37 = *(v31 + 8);
  v37(v29, v30);
  v37(v28, v30);
  if (v36)
  {
    v38 = 2;
  }

  else
  {
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    v41 = *(v0 + 72);
    v45 = *(v0 + 48);
    sub_1000035D0((v0 + 16), *(v0 + 40));
    dispatch thunk of Accessory.battery.getter();
    v35(v40, enum case for BatteryLevel.critical(_:), v41);
    v42 = static BatteryLevel.== infix(_:_:)();
    v37(v40, v41);
    v37(v39, v41);
    v38 = v42 & 1;
  }

  *(v0 + 236) = v38;
  v43 = async function pointer to daemon.getter[1];
  v44 = swift_task_alloc();
  *(v0 + 184) = v44;
  *v44 = v0;
  v44[1] = sub_100BAA2DC;

  return daemon.getter();
}

uint64_t sub_100BAA2DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BAB760(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BAB760(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BAA4C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BAA4C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = v1;

  v7 = v4[24];
  if (v1)
  {
    v9 = v4[21];
    v8 = v4[22];
    v10 = v4[8];

    sub_100006654(v9, v8);
    v11 = sub_100BAA974;
    v12 = v10;
  }

  else
  {

    v4[27] = a1;
    v11 = sub_100BAA628;
    v12 = a1;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100BAA628()
{
  v1 = *(*(v0 + 216) + 128);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_100BAA6BC;

  return sub_100A9A4DC();
}

uint64_t sub_100BAA6BC(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 237) = a1;

  return _swift_task_switch(sub_100BAA7D4, v3, 0);
}

uint64_t sub_100BAA7D4()
{
  v18 = *(v0 + 237);
  v1 = *(v0 + 216);
  v16 = *(v0 + 236);
  v2 = *(v0 + 168);
  v15 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 232);
  v17 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v19 = *(v0 + 96);
  v20 = *(v0 + 88);
  v9 = *(v0 + 56);

  v10 = type metadata accessor for ProximityPairingInfo();
  v9[3] = v10;
  v9[4] = sub_100BAB760(&qword_1016A6DF0, 255, type metadata accessor for ProximityPairingInfo);
  v11 = sub_1000280DC(v9);
  (*(v6 + 32))(v11, v7, v8);
  *(v11 + v10[5]) = v4;
  *(v11 + v10[6]) = v5;
  *(v11 + v10[7]) = v3;
  v12 = (v11 + v10[8]);
  *v12 = v2;
  v12[1] = v15;
  *(v11 + v10[9]) = v16;
  *(v11 + v10[10]) = v18;
  *(v11 + v10[11]) = 0;
  sub_100007BAC((v0 + 16));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100BAA974()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  sub_100007BAC(v0 + 2);
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BAAA20@<X0>(void *a1@<X8>)
{
  v3 = static Data.random(bytes:)();
  v5 = v4;
  v6 = type metadata accessor for AccessoryPairingInfo(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_100017D5C(v3, v5);
  v9 = sub_10024C9E8(v3, v5);
  if (v9)
  {
    *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v1 + 121);
    a1[3] = v6;
    v10 = v9;
    a1[4] = sub_100BAB760(&qword_1016ACE88, 255, type metadata accessor for AccessoryPairingInfo);
    result = sub_100016590(v3, v5);
    *a1 = v10;
  }

  else
  {
    sub_100BAB6B8();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    return sub_100016590(v3, v5);
  }

  return result;
}

uint64_t sub_100BAAB58(uint64_t a1, char a2, char a3)
{
  swift_defaultActor_initialize();
  *(v3 + 128) = 0;
  *(v3 + 136) = 257;
  *(v3 + 144) = 0;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v3 + 160) = 0;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 121) = a3;
  return v3;
}

uint64_t sub_100BAABBC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100BAAC80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

uint64_t sub_100BAACC8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
}

uint64_t sub_100BAAD60@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 136);
  return result;
}

uint64_t sub_100BAADA4(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 136) = v2;
  return result;
}

uint64_t sub_100BAAE34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 137);
  return result;
}

uint64_t sub_100BAAE78(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 137) = v2;
  return result;
}

id sub_100BAAF14@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *a1 = v3;

  return v3;
}

void sub_100BAAF68(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t sub_100BAB00C()
{
  type metadata accessor for AirTagPairingInfoStore();

  return PairingInfoStore.accessory.getter();
}

uint64_t sub_100BAB054()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_100BAB08C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_100BAB124()
{
  v0 = type metadata accessor for AirTagPairingInfoStore();
  v2 = sub_100BAB760(&qword_1016B73F0, v1, type metadata accessor for AirTagPairingInfoStore);

  return TypedPairingInfoStore.productIDValue.getter(v0, v2);
}

uint64_t sub_100BAB1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for AirTagPairingInfoStore();
  v5 = sub_100BAB760(&qword_1016B73F0, v4, type metadata accessor for AirTagPairingInfoStore);

  return a3(v3, v5);
}

uint64_t sub_100BAB270()
{
  v0 = type metadata accessor for AirTagPairingInfoStore();
  v2 = sub_100BAB760(&qword_1016B73F0, v1, type metadata accessor for AirTagPairingInfoStore);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v2);
}

uint64_t sub_100BAB2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BA9C90(a1);
}

uint64_t sub_100BAB3A0()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_100BAB3D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_100BAB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for AirTagPairingInfoStore();
  v12 = sub_100BAB760(&qword_1016B73F0, v11, type metadata accessor for AirTagPairingInfoStore);
  return a6(a1, v10, a2, v12, a3);
}

unint64_t sub_100BAB6B8()
{
  result = qword_1016B73F8;
  if (!qword_1016B73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B73F8);
  }

  return result;
}

unint64_t sub_100BAB70C()
{
  result = qword_1016B7400;
  if (!qword_1016B7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7400);
  }

  return result;
}

uint64_t sub_100BAB760(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100BAB7CC()
{
  result = qword_1016B7410;
  if (!qword_1016B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7410);
  }

  return result;
}

uint64_t sub_100BAB820(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CentralManager.State();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100BAB93C, v1, 0);
}

uint64_t sub_100BAB93C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[10] = *(v0[3] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = type metadata accessor for CentralManager();
  v7 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v5 = v0;
  v5[1] = sub_100BABA58;
  v8 = v0[9];

  return CentralManagerProtocol.await(state:)(v8, v6, v7);
}

uint64_t sub_100BABA58()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_100BAC0C0;
  }

  else
  {
    v9 = sub_100BABBE0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100BABBE0()
{
  v25 = v0;
  if (qword_101694D20 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7418);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    sub_100BAFD80(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retrieving peripheral matching macAddress: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v23 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100BABE6C;
  v20 = v0[10];
  v21 = v0[2];

  return v23(v21);
}

uint64_t sub_100BABE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *v2;
  *(*v2 + 112) = a1;

  if (v1)
  {
    v6 = v3[9];
    v7 = v3[6];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[3];

    return _swift_task_switch(sub_100BABFC8, v10, 0);
  }
}

uint64_t sub_100BABFC8()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[6];

    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    sub_100BAFCC8();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[9];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100BAC0C0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BAC130(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = type metadata accessor for CentralManager.State();
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100BAC3F0, v1, 0);
}

uint64_t sub_100BAC3F0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[23] = *(v0[6] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v5 = swift_task_alloc();
  v0[24] = v5;
  v6 = type metadata accessor for CentralManager();
  v7 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v5 = v0;
  v5[1] = sub_100BAC50C;
  v8 = v0[22];

  return CentralManagerProtocol.await(state:)(v8, v6, v7);
}

uint64_t sub_100BAC50C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[6];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100BADF7C;
  }

  else
  {
    v9 = sub_100BAC688;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100BAC688()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[8];
  v5 = v0[5];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v9 = *(v2 + 8);
  v0[27] = v9;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v14 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_100BAC7D4;
  v12 = v0[23];

  return v14(v8);
}

uint64_t sub_100BAC7D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v10 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_100BAE044;
  }

  else
  {
    v7 = v3[26];
    v8 = v3[6];

    v6 = sub_100BAC8FC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BAC8FC()
{
  v59 = v0;
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v24 = v0[30];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v51 = v0[30];
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v52 = v0[30];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[30] + 32);

LABEL_6:
      v0[32] = v3;
      v4 = v0[16];
      v54 = v0[15];
      v5 = v0[13];
      v6 = v0[14];
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[10];

      v10 = enum case for ConnectUseCase.findMyPair(_:);
      v11 = type metadata accessor for ConnectUseCase();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v4, v10, v11);
      (*(v12 + 56))(v4, 0, 1, v11);
      sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
      v13 = *(v5 + 72);
      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_101385D80;
      static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
      v0[2] = v15;
      sub_100BAFD80(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
      sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
      sub_100BAFD1C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = type metadata accessor for PeripheralPairingInfo();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = type metadata accessor for LongTermKey();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
      Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
      v18 = type metadata accessor for Peripheral.Options();
      (*(*(v18 - 8) + 56))(v54, 0, 1, v18);
      v19 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
      v55 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
      v20 = swift_task_alloc();
      v0[33] = v20;
      *v20 = v0;
      v20[1] = sub_100BACF00;
      v21 = v0[15];
      v22 = v0[16];

      return v55(v22, v21);
    }

    __break(1u);
    goto LABEL_20;
  }

  v25 = v0[30];

  if (qword_101694D20 != -1)
  {
LABEL_20:
    swift_once();
  }

  v26 = v0[5];
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_1016B7418);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v53 = v0[27];
    v56 = v0[28];
    v30 = v0[19];
    v31 = v0[17];
    v33 = v0[8];
    v32 = v0[9];
    v57 = v0[7];
    v34 = v0[5];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58 = v36;
    *v35 = 136446210;
    Peripheral.id.getter();
    Identifier.id.getter();
    v53(v30, v31);
    sub_100BAFD80(&qword_101696930, 255, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v33 + 8))(v32, v57);
    v40 = sub_1000136BC(v37, v39, &v58);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Missing peripheral for %{public}s", v35, 0xCu);
    sub_100007BAC(v36);
  }

  sub_100BAFCC8();
  swift_allocError();
  *v41 = 1;
  swift_willThrow();
  v42 = v0[22];
  v43 = v0[19];
  v45 = v0[15];
  v44 = v0[16];
  v46 = v0[14];
  v48 = v0[10];
  v47 = v0[11];
  v49 = v0[9];

  v50 = v0[1];

  return v50();
}

uint64_t sub_100BACF00()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[16];
  v6 = v2[15];
  v7 = v2[6];
  sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v8 = sub_100BAE114;
  }

  else
  {
    v8 = sub_100BAD084;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100BAD084()
{
  v21 = v0;
  if (qword_101694D20 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v2, qword_1016B7418);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    type metadata accessor for Peripheral();
    sub_100BAFD80(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v11 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v0[36] = v14;
  *(v14 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v15 = *(&async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:) + 1);
  v19 = (&async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:) + async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:));
  v16 = swift_task_alloc();
  v0[37] = v16;
  *v16 = v0;
  v16[1] = sub_100BAD37C;
  v17 = v0[32];

  return v19(v14);
}

uint64_t sub_100BAD37C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v10 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_100BAE1E4;
  }

  else
  {
    v7 = v3[36];
    v8 = v3[6];

    v6 = sub_100BAD4A4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BAD4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[38];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v15 = v3[38];
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v29 = v3[38];
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v3[38];
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(v5, a2, a3);
        }

        v6 = *(v3[38] + 32);
      }

      v3[40] = v6;
      v7 = v3[35];

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Discovered FindMy services", v10, 2u);
      }

      v11 = sub_100BAFD80(&qword_1016972A8, 255, &type metadata accessor for Service);
      v3[41] = v11;
      ObjectType = swift_getObjectType();
      v3[42] = ObjectType;
      v13 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];

      v14 = swift_task_alloc();
      v3[43] = v14;
      *v14 = v3;
      v14[1] = sub_100BAD784;
      v5 = 0;
      a2 = ObjectType;
      a3 = v11;

      return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v16 = v3[38];
  v17 = v3[32];

  sub_100BAFCC8();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();

  v19 = v3[22];
  v20 = v3[19];
  v22 = v3[15];
  v21 = v3[16];
  v23 = v3[14];
  v25 = v3[10];
  v24 = v3[11];
  v26 = v3[9];

  v27 = v3[1];

  return v27();
}

uint64_t sub_100BAD784(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = v4[40];
    v8 = v4[6];

    v9 = sub_100BADB5C;
    v10 = v8;
  }

  else
  {
    v4[45] = a1;
    v9 = sub_100BAD8C4;
    v10 = 0;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100BAD8C4()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[40];
  v5 = v0[6];
  swift_getAssociatedTypeWitness();
  v0[46] = sub_1000BC4D4(&qword_1016B7500, &qword_1013DC4D8);
  v0[47] = _arrayForceCast<A, B>(_:)();

  return _swift_task_switch(sub_100BAD994, v5, 0);
}

uint64_t sub_100BAD994()
{
  v20 = v0;
  v1 = v0[47];
  v2 = v0[35];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[47];
  if (v5)
  {
    v7 = v0[46];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovered Pairing characteristic %s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v14 = *(&async function pointer to dispatch thunk of Peripheral.pair() + 1);
  v18 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_100BADC38;
  v16 = v0[32];

  return v18();
}

uint64_t sub_100BADB5C()
{
  v1 = v0[40];
  v2 = v0[32];

  v3 = v0[44];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BADC38()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100BAE2C0;
  }

  else
  {
    v6 = sub_100BADD64;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BADD64()
{
  v25 = v0;
  v1 = v0[35];
  v2 = v0[32];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    type metadata accessor for Peripheral();
    sub_100BAFD80(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
    v11 = v0[32];
  }

  v12 = v0[22];
  v13 = v0[19];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[9];

  v20 = v0[1];
  v21 = v0[40];
  v22 = v0[41];

  return v20(v21, v22);
}

uint64_t sub_100BADF7C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100BAE044()
{
  v1 = v0[26];

  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BAE114()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[22];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BAE1E4()
{
  v1 = v0[36];
  v2 = v0[32];

  v3 = v0[39];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BAE2C0()
{
  v1 = v0[40];
  v2 = v0[32];

  v3 = v0[49];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BAE39C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for CentralManager.State();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100BAE558, v1, 0);
}

uint64_t sub_100BAE558()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[14] = *(v0[3] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = type metadata accessor for CentralManager();
  v7 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v5 = v0;
  v5[1] = sub_100BAE674;
  v8 = v0[13];

  return CentralManagerProtocol.await(state:)(v8, v6, v7);
}

uint64_t sub_100BAE674()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_100BAF1FC;
  }

  else
  {
    v9 = sub_100BAE7FC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100BAE7FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[17] = v8;
  *(v8 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v9 = *(v2 + 8);
  v0[18] = v9;
  v0[19] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v14 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_100BAE948;
  v12 = v0[14];

  return v14(v8);
}

uint64_t sub_100BAE948(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100BAF288;
  }

  else
  {
    v7 = v3[17];
    v8 = v3[3];

    v6 = sub_100BAEA70;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BAEA70()
{
  v39 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[21];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v32 = v0[21];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v0[21];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[21] + 32);

LABEL_6:
      v0[23] = v2;
      v3 = v0[7];

      v4 = type metadata accessor for Peripheral.DisconnectionOptions();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + 1);
      v36 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
      v6 = swift_task_alloc();
      v0[24] = v6;
      *v6 = v0;
      v6[1] = sub_100BAEE64;
      v7 = v0[7];

      return v36(v7);
    }

    __break(1u);
    goto LABEL_20;
  }

  v10 = v0[21];

  if (qword_101694D20 != -1)
  {
LABEL_20:
    swift_once();
  }

  v11 = v0[2];
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016B7418);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = v0[18];
    v35 = v0[19];
    v15 = v0[10];
    v16 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    v37 = v0[4];
    v19 = v0[2];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136446210;
    Peripheral.id.getter();
    Identifier.id.getter();
    v34(v15, v16);
    sub_100BAFD80(&qword_101696930, 255, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v18 + 8))(v17, v37);
    v25 = sub_1000136BC(v22, v24, &v38);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Missing peripheral for %{public}s", v20, 0xCu);
    sub_100007BAC(v21);
  }

  sub_100BAFCC8();
  swift_allocError();
  *v26 = 1;
  swift_willThrow();
  v27 = v0[13];
  v28 = v0[10];
  v30 = v0[6];
  v29 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100BAEE64()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[7];
  if (v0)
  {
    v6 = v2[3];
    sub_10000B3A8(v5, &qword_10169E750, &unk_1013DC4B0);

    return _swift_task_switch(sub_100BAF31C, v6, 0);
  }

  else
  {
    sub_10000B3A8(v5, &qword_10169E750, &unk_1013DC4B0);
    v7 = *(&async function pointer to dispatch thunk of Peripheral.unpair() + 1);
    v11 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v8 = swift_task_alloc();
    v2[26] = v8;
    *v8 = v4;
    v8[1] = sub_100BAF038;
    v9 = v2[23];

    return v11();
  }
}

uint64_t sub_100BAF038()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100BAF3B0;
  }

  else
  {
    v6 = sub_100BAF164;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BAF164()
{
  v1 = v0[23];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BAF1FC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BAF288()
{
  v1 = v0[17];

  v2 = v0[22];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BAF31C()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BAF3B0()
{
  v1 = v0[23];

  v2 = v0[27];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BAF548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PairingPeripheralProvider.getPeripheral(for:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AirTagPeripheralProvider();
  *v9 = v4;
  v9[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v10, a4);
}

uint64_t sub_100BAF60C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_100BAB820(a2);
}

uint64_t sub_100BAF6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100BAF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to PairingPeripheralProvider.pair<A>(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AirTagPeripheralProvider();
  *v11 = v5;
  v11[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v12, a3, a5);
}

uint64_t sub_100BAF880(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_100BAC130(v3);
}

uint64_t sub_100BAF918(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_100BAFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingPeripheralProvider.unpair(_:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for AirTagPeripheralProvider();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v8, a3);
}

uint64_t sub_100BAFAE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BAE39C(v2);
}

uint64_t sub_100BAFB7C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BCA0);
  sub_1000076D4(v0, qword_10177BCA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BAFC00()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7418);
  v1 = sub_1000076D4(v0, qword_1016B7418);
  if (qword_101694D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100BAFCC8()
{
  result = qword_1016B74F8;
  if (!qword_1016B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B74F8);
  }

  return result;
}

unint64_t sub_100BAFD1C()
{
  result = qword_101697298;
  if (!qword_101697298)
  {
    sub_1000BC580(&qword_101697290, &qword_10138BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697298);
  }

  return result;
}

uint64_t sub_100BAFD80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100BAFDDC()
{
  result = qword_1016B7508;
  if (!qword_1016B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7508);
  }

  return result;
}

uint64_t sub_100BAFE30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100BAFEC4;

  return daemon.getter();
}

uint64_t sub_100BAFEC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BB0AEC(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BB0AEC(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BB00A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BB00A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v10 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100BB0618;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[3];

    v6 = sub_100BB01D0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BB01D0()
{
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for ProximityPairingValidator();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[11] = type metadata accessor for ProximityPeripheralProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v2 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100BB02D8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB02D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100BB0510;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_100BB0400;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100BB0400()
{
  v1 = v0[3];
  *(v0[12] + 112) = v0[15];
  return _swift_task_switch(sub_100BB0428, v1, 0);
}

uint64_t sub_100BB0428()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[2];

  v7 = sub_100BB07C8(v6, v2, v1, v4);
  v8 = sub_100BB0AEC(&qword_1016B75C0, 255, type metadata accessor for ProximityPairingExecutor);
  *(v3 + 32) = v7;
  *(v3 + 40) = v8;

  v9 = v0[1];
  v10 = v0[9];

  return v9(v10);
}

uint64_t sub_100BB0510()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[3];
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB059C, v3, 0);
}

uint64_t sub_100BB059C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];

  *(v1 + 16) = 0;

  v4 = v0[14];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100BB0618()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100BB0734(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_100BAFE30(v2);
}

uint64_t sub_100BB07C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100BB0AEC(&qword_1016B75C8, 255, type metadata accessor for ProximityPairingValidator);
  v9 = sub_100BB0AEC(&qword_1016B2BE0, 255, type metadata accessor for ProximityPeripheralProvider);
  v10 = sub_100BB0AEC(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor);
  v11 = type metadata accessor for ProximityPairingExecutor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  v15 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  v16 = enum case for PairingExecutorState.idle(_:);
  v17 = type metadata accessor for PairingExecutorState();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *(v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_streamProvider;
  v19 = sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v14 + v18) = AsyncStreamProvider.init()();
  v22 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
  sub_100BB0B34(__src);
  memcpy((v14 + v22), __src, 0x160uLL);
  *(v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto) = 0;
  v23 = (v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  *v23 = 0;
  v23[1] = 0;
  v24 = v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0;
  v26 = v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v14 + v27, 1, 1, v28);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  *(v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo) = a1;
  v29 = (v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
  *v29 = a2;
  v29[1] = v8;
  v30 = (v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider);
  *v30 = a3;
  v30[1] = v9;
  v31 = (v14 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
  *v31 = a4;
  v31[1] = v10;
  return v14;
}

uint64_t sub_100BB0AEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double sub_100BB0B34(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100BB0B68@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100BB0BCC(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_100BB0BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v103, v104);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v103);
    return sub_100007BAC(a1);
  }

  v100 = v6;
  v105 = v7;
  sub_10015049C(v103, v104);
  v98 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v99 = v8;
  sub_10015049C(v103, v104);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v103, v104);
  v94 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v95 = v12;
  v96 = v9;
  v97 = v11;
  sub_100017D5C(v9, v11);
  sub_1000E0A3C();
  v13 = DataProtocol.intValue.getter();
  sub_10002EA98(v13, v9, v11, &v101);
  v14 = v101;
  v15 = v102;
  sub_10015049C(v103, v104);
  v90 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v91 = v16;
  v92 = v15;
  v93 = v14;
  sub_10015049C(v103, v104);
  v88 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v19 = v18;
  sub_10015049C(v103, v104);
  v20 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v87 = v21;
  v84 = v19;
  v85 = v20;
  sub_100017D5C(v88, v19);
  v22 = DataProtocol.intValue.getter();
  sub_10002EA98(v22, v88, v19, &v101);
  v23 = v102;
  v86 = v101;
  sub_10015049C(v103, v104);
  v24 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v25;
  v82 = v23;
  v83 = v24;
  sub_10015049C(v103, v104);
  v80 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v81 = v27;
  sub_100017D5C(v83, v26);
  v28 = DataProtocol.intValue.getter();
  sub_10002EA98(v28, v83, v26, &v101);
  v29 = v102;
  v89 = v101;
  sub_10015049C(v103, v104);
  v78 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v79 = v30;
  sub_10015049C(v103, v104);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v33 = v32;
  sub_100016590(v83, v26);
  sub_100016590(v88, v84);
  result = sub_100016590(v96, v97);
  v34 = v105 >> 62;
  if ((v105 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v105);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v34 != 2)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v36 = *(v100 + 16);
  v37 = *(v100 + 24);
  v38 = __OFSUB__(v37, v36);
  v35 = v37 - v36;
  if (v38)
  {
    __break(1u);
LABEL_11:
    LODWORD(v35) = HIDWORD(v100) - v100;
    if (__OFSUB__(HIDWORD(v100), v100))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v35 = v35;
  }

LABEL_13:
  if (v35 != 114)
  {
    goto LABEL_124;
  }

  v39 = v99 >> 62;
  if ((v99 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(v99);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v39 != 2)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v41 = *(v98 + 16);
  v42 = *(v98 + 24);
  v38 = __OFSUB__(v42, v41);
  v40 = v42 - v41;
  if (v38)
  {
    __break(1u);
LABEL_21:
    LODWORD(v40) = HIDWORD(v98) - v98;
    if (__OFSUB__(HIDWORD(v98), v98))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v40 = v40;
  }

LABEL_23:
  if (v40 != 32)
  {
    goto LABEL_125;
  }

  v43 = v92 >> 62;
  if ((v92 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(v92);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v43 != 2)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v46 = *(v93 + 16);
  v45 = *(v93 + 24);
  v38 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  if (v38)
  {
    __break(1u);
LABEL_31:
    LODWORD(v44) = HIDWORD(v93) - v93;
    if (__OFSUB__(HIDWORD(v93), v93))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v44 = v44;
  }

LABEL_33:
  if (v44 != 100)
  {
    goto LABEL_126;
  }

  v47 = v95 >> 62;
  if ((v95 >> 62) <= 1)
  {
    if (!v47)
    {
      v48 = BYTE6(v95);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v47 != 2)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v49 = *(v94 + 16);
  v50 = *(v94 + 24);
  v38 = __OFSUB__(v50, v49);
  v48 = v50 - v49;
  if (v38)
  {
    __break(1u);
LABEL_41:
    LODWORD(v48) = HIDWORD(v94) - v94;
    if (__OFSUB__(HIDWORD(v94), v94))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v48 = v48;
  }

LABEL_43:
  if (v48 != 1)
  {
    goto LABEL_127;
  }

  v51 = v91 >> 62;
  if ((v91 >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE6(v91);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v51 != 2)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v54 = *(v90 + 16);
  v53 = *(v90 + 24);
  v38 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v38)
  {
    __break(1u);
LABEL_51:
    LODWORD(v52) = HIDWORD(v90) - v90;
    if (__OFSUB__(HIDWORD(v90), v90))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v52 = v52;
  }

LABEL_53:
  if (v52 != 60)
  {
    goto LABEL_128;
  }

  if ((v82 >> 62) <= 1)
  {
    if (v82 >> 62 == 1)
    {
      LODWORD(v55) = HIDWORD(v86) - v86;
      if (!__OFSUB__(HIDWORD(v86), v86))
      {
        v55 = v55;
        goto LABEL_60;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v82 >> 62 != 2)
  {
    goto LABEL_122;
  }

  v57 = *(v86 + 16);
  v56 = *(v86 + 24);
  v38 = __OFSUB__(v56, v57);
  v55 = v56 - v57;
  if (v38)
  {
    goto LABEL_110;
  }

LABEL_60:
  if (v55 != 720)
  {
    goto LABEL_122;
  }

  v58 = v87 >> 62;
  if ((v87 >> 62) <= 1)
  {
    if (!v58)
    {
      v59 = BYTE6(v87);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (v58 != 2)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v61 = *(v85 + 16);
  v60 = *(v85 + 24);
  v38 = __OFSUB__(v60, v61);
  v59 = v60 - v61;
  if (v38)
  {
    __break(1u);
LABEL_68:
    LODWORD(v59) = HIDWORD(v85) - v85;
    if (__OFSUB__(HIDWORD(v85), v85))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v59 = v59;
  }

LABEL_70:
  if (v59 != 2)
  {
    goto LABEL_129;
  }

  if ((v29 >> 62) <= 1)
  {
    if (v29 >> 62 == 1)
    {
      LODWORD(v62) = HIDWORD(v89) - v89;
      if (!__OFSUB__(HIDWORD(v89), v89))
      {
        v62 = v62;
        goto LABEL_77;
      }

      goto LABEL_111;
    }

LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v29 >> 62 != 2)
  {
    goto LABEL_123;
  }

  v64 = *(v89 + 16);
  v63 = *(v89 + 24);
  v38 = __OFSUB__(v63, v64);
  v62 = v63 - v64;
  if (v38)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_77:
  if (v62 != 554)
  {
    goto LABEL_123;
  }

  v65 = v81 >> 62;
  if ((v81 >> 62) <= 1)
  {
    if (!v65)
    {
      v66 = BYTE6(v81);
      goto LABEL_87;
    }

LABEL_85:
    LODWORD(v66) = HIDWORD(v80) - v80;
    if (!__OFSUB__(HIDWORD(v80), v80))
    {
      v66 = v66;
      goto LABEL_87;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v65 != 2)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v68 = *(v80 + 16);
  v67 = *(v80 + 24);
  v38 = __OFSUB__(v67, v68);
  v66 = v67 - v68;
  if (v38)
  {
    __break(1u);
    goto LABEL_85;
  }

LABEL_87:
  if (v66 != 2)
  {
    goto LABEL_130;
  }

  v69 = v79 >> 62;
  if ((v79 >> 62) <= 1)
  {
    if (!v69)
    {
      v70 = BYTE6(v79);
      goto LABEL_97;
    }

LABEL_95:
    LODWORD(v70) = HIDWORD(v78) - v78;
    if (!__OFSUB__(HIDWORD(v78), v78))
    {
      v70 = v70;
      goto LABEL_97;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v69 != 2)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v72 = *(v78 + 16);
  v71 = *(v78 + 24);
  v38 = __OFSUB__(v71, v72);
  v70 = v71 - v72;
  if (v38)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  if (v70 != 8)
  {
    goto LABEL_131;
  }

  v73 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v73)
    {
      v74 = BYTE6(v33);
      goto LABEL_107;
    }

LABEL_105:
    LODWORD(v74) = HIDWORD(v31) - v31;
    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v74 = v74;
      goto LABEL_107;
    }

    goto LABEL_121;
  }

  if (v73 != 2)
  {
    goto LABEL_132;
  }

  v76 = *(v31 + 16);
  v75 = *(v31 + 24);
  v38 = __OFSUB__(v75, v76);
  v74 = v75 - v76;
  if (v38)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  if (v74 == 24)
  {
    sub_100007BAC(v103);
    result = sub_100007BAC(a1);
    v77 = v105;
    *a2 = v100;
    *(a2 + 8) = v77;
    *(a2 + 16) = v98;
    *(a2 + 24) = v99;
    *(a2 + 32) = v90;
    *(a2 + 40) = v91;
    *(a2 + 48) = v93;
    *(a2 + 56) = v92;
    *(a2 + 64) = v94;
    *(a2 + 72) = v95;
    *(a2 + 80) = v86;
    *(a2 + 88) = v82;
    *(a2 + 96) = v85;
    *(a2 + 104) = v87;
    *(a2 + 112) = v89;
    *(a2 + 120) = v29;
    *(a2 + 128) = v80;
    *(a2 + 136) = v81;
    *(a2 + 144) = v78;
    *(a2 + 152) = v79;
    *(a2 + 160) = v31;
    *(a2 + 168) = v33;
    *(a2 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100BB1530@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v128 = result;
  v141 = a5;
  v142 = a6;
  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v24 = *(a5 + 16);
    v23 = *(a5 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v22) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v22 = v22;
LABEL_10:
  v26 = 60 - v22;
  if (__OFSUB__(60, v22))
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_100017D5C(a5, a6);
  v139 = sub_100845C88(v26);
  v140 = v28;
  sub_100776394(&v139, 0);
  v29 = v139;
  v30 = v140;
  Data.append(_:)();
  result = sub_100016590(v29, v30);
  v139 = a7;
  v140 = a8;
  v31 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v34 = *(a7 + 16);
  v33 = *(a7 + 24);
  v25 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v32) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v32 = v32;
  }

LABEL_21:
  v35 = 100 - v32;
  if (__OFSUB__(100, v32))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v122 = a4;
  sub_100017D5C(a7, a8);
  v137 = sub_100845C88(v35);
  v138 = v36;
  sub_100776394(&v137, 0);
  v38 = v137;
  v37 = v138;
  Data.append(_:)();
  result = sub_100016590(v38, v37);
  v137 = a10;
  v138 = a11;
  v39 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(a11);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v39 != 2)
  {
    v40 = 0;
    goto LABEL_32;
  }

  v42 = *(a10 + 16);
  v41 = *(a10 + 24);
  v25 = __OFSUB__(v41, v42);
  v40 = v41 - v42;
  if (v25)
  {
    __break(1u);
LABEL_29:
    LODWORD(v40) = HIDWORD(a10) - a10;
    if (__OFSUB__(HIDWORD(a10), a10))
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v40 = v40;
  }

LABEL_32:
  v43 = 720 - v40;
  if (__OFSUB__(720, v40))
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v43);
  v136 = v44;
  sub_100776394(&v135, 0);
  v45 = v135;
  v46 = v136;
  Data.append(_:)();
  result = sub_100016590(v45, v46);
  v47 = v142;
  v48 = v140;
  v133 = v141;
  v134 = v139;
  if (v31 <= 1)
  {
    if (!v31)
    {
      v49 = BYTE6(a8);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v31 != 2)
  {
    v49 = 0;
    goto LABEL_43;
  }

  v51 = *(a7 + 16);
  v50 = *(a7 + 24);
  v25 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v25)
  {
    __break(1u);
LABEL_40:
    LODWORD(v49) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v49 = v49;
  }

LABEL_43:
  v135 = v49;
  v121 = v47;
  sub_100017D5C(v133, v47);
  v129 = v48;
  sub_100017D5C(v134, v48);
  sub_1000C3258();
  v52 = FixedWidthInteger.data.getter();
  v54 = v53;
  v127 = Data.trimmed.getter();
  v132 = v55;
  sub_100016590(v52, v54);
  result = v137;
  v56 = v138;
  if (v39 > 1)
  {
    if (v39 != 2 || !__OFSUB__(*(a10 + 24), *(a10 + 16)))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  else if (!v39)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_51:
  v120 = result;
  v57 = v56;
  sub_100017D5C(result, v56);
  v58 = FixedWidthInteger.data.getter();
  v60 = v59;
  v126 = Data.trimmed.getter();
  v131 = v61;
  result = sub_100016590(v58, v60);
  v62 = a13 >> 62;
  if ((a13 >> 62) > 1)
  {
    if (v62 != 2 || !__OFSUB__(*(a12 + 24), *(a12 + 16)))
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else if (!v62)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(HIDWORD(a12), a12))
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

LABEL_59:
  v63 = FixedWidthInteger.data.getter();
  v65 = v64;
  v125 = Data.trimmed.getter();
  v130 = v66;
  sub_100016590(a10, a11);
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v63, v65);
  v67 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v68 = a3;
    if (!v67)
    {
      v69 = BYTE6(a2);
LABEL_68:
      v70 = v122;
      v71 = v129;
      goto LABEL_69;
    }

LABEL_66:
    LODWORD(v69) = HIDWORD(v128) - v128;
    if (__OFSUB__(HIDWORD(v128), v128))
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v69 = v69;
    goto LABEL_68;
  }

  v70 = v122;
  v68 = a3;
  v71 = v129;
  if (v67 != 2)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v73 = *(v128 + 16);
  v72 = *(v128 + 24);
  v25 = __OFSUB__(v72, v73);
  v69 = v72 - v73;
  if (v25)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_69:
  if (v69 != 114)
  {
    goto LABEL_190;
  }

  v74 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v74)
    {
      v75 = BYTE6(v70);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v74 != 2)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v77 = *(v68 + 16);
  v76 = *(v68 + 24);
  v25 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v25)
  {
    __break(1u);
LABEL_77:
    LODWORD(v75) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v75 = v75;
  }

LABEL_79:
  if (v75 != 32)
  {
    goto LABEL_191;
  }

  v78 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v71);
LABEL_89:
      v81 = v120;
      v80 = v121;
      goto LABEL_90;
    }

LABEL_87:
    LODWORD(v79) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v79 = v79;
    goto LABEL_89;
  }

  v81 = v120;
  v80 = v121;
  if (v78 != 2)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v83 = *(v134 + 16);
  v82 = *(v134 + 24);
  v25 = __OFSUB__(v82, v83);
  v79 = v82 - v83;
  if (v25)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_90:
  if (v79 != 100)
  {
    goto LABEL_192;
  }

  v84 = v132 >> 62;
  if ((v132 >> 62) <= 1)
  {
    if (!v84)
    {
      v85 = BYTE6(v132);
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  if (v84 != 2)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v87 = *(v127 + 16);
  v86 = *(v127 + 24);
  v25 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v25)
  {
    __break(1u);
LABEL_98:
    LODWORD(v85) = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v85 = v85;
  }

LABEL_100:
  if (v85 != 1)
  {
    goto LABEL_193;
  }

  v88 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE6(v80);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  if (v88 != 2)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v91 = *(v133 + 16);
  v90 = *(v133 + 24);
  v25 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v25)
  {
    __break(1u);
LABEL_108:
    LODWORD(v89) = HIDWORD(v133) - v133;
    if (__OFSUB__(HIDWORD(v133), v133))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v89 = v89;
  }

LABEL_110:
  if (v89 != 60)
  {
    goto LABEL_194;
  }

  if ((v57 >> 62) <= 1)
  {
    if (v57 >> 62 == 1)
    {
      LODWORD(v92) = HIDWORD(v81) - v81;
      if (!__OFSUB__(HIDWORD(v81), v81))
      {
        v92 = v92;
        goto LABEL_117;
      }

      goto LABEL_169;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (v57 >> 62 != 2)
  {
    goto LABEL_188;
  }

  v94 = *(v81 + 16);
  v93 = *(v81 + 24);
  v25 = __OFSUB__(v93, v94);
  v92 = v93 - v94;
  if (v25)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_117:
  if (v92 != 720)
  {
    goto LABEL_188;
  }

  v95 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE6(v131);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (v95 != 2)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v98 = *(v126 + 16);
  v97 = *(v126 + 24);
  v25 = __OFSUB__(v97, v98);
  v96 = v97 - v98;
  if (v25)
  {
    __break(1u);
LABEL_125:
    LODWORD(v96) = HIDWORD(v126) - v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v96 = v96;
  }

LABEL_127:
  if (v96 != 2)
  {
    goto LABEL_195;
  }

  if (v62 <= 1)
  {
    if (v62 == 1)
    {
      LODWORD(v99) = HIDWORD(a12) - a12;
      if (!__OFSUB__(HIDWORD(a12), a12))
      {
        v99 = v99;
        goto LABEL_134;
      }

      goto LABEL_171;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v62 != 2)
  {
    goto LABEL_189;
  }

  v101 = *(a12 + 16);
  v100 = *(a12 + 24);
  v25 = __OFSUB__(v100, v101);
  v99 = v100 - v101;
  if (v25)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_134:
  if (v99 != 554)
  {
    goto LABEL_189;
  }

  v102 = v130 >> 62;
  if ((v130 >> 62) <= 1)
  {
    if (!v102)
    {
      v103 = BYTE6(v130);
      goto LABEL_144;
    }

LABEL_142:
    LODWORD(v103) = HIDWORD(v125) - v125;
    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v103 = v103;
      goto LABEL_144;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v102 != 2)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v105 = *(v125 + 16);
  v104 = *(v125 + 24);
  v25 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v25)
  {
    __break(1u);
    goto LABEL_142;
  }

LABEL_144:
  if (v103 != 2)
  {
    goto LABEL_196;
  }

  v106 = a15 >> 62;
  if ((a15 >> 62) <= 1)
  {
    if (!v106)
    {
      v107 = BYTE6(a15);
      goto LABEL_154;
    }

LABEL_152:
    LODWORD(v107) = HIDWORD(a14) - a14;
    if (!__OFSUB__(HIDWORD(a14), a14))
    {
      v107 = v107;
      goto LABEL_154;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v106 != 2)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v109 = *(a14 + 16);
  v108 = *(a14 + 24);
  v25 = __OFSUB__(v108, v109);
  v107 = v108 - v109;
  if (v25)
  {
    __break(1u);
    goto LABEL_152;
  }

LABEL_154:
  if (v107 != 8)
  {
    goto LABEL_197;
  }

  v110 = a17 >> 62;
  if ((a17 >> 62) <= 1)
  {
    if (!v110)
    {
      v111 = BYTE6(a17);
      goto LABEL_164;
    }

LABEL_162:
    LODWORD(v111) = HIDWORD(a16) - a16;
    if (!__OFSUB__(HIDWORD(a16), a16))
    {
      v111 = v111;
      goto LABEL_164;
    }

    goto LABEL_181;
  }

  if (v110 != 2)
  {
    goto LABEL_198;
  }

  v113 = *(a16 + 16);
  v112 = *(a16 + 24);
  v25 = __OFSUB__(v112, v113);
  v111 = v112 - v113;
  if (v25)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_164:
  if (v111 == 24)
  {
    v114 = v57;
    v115 = v57;
    v116 = v68;
    sub_100016590(v81, v114);
    sub_100016590(v134, v129);
    result = sub_100016590(v133, v80);
    *a9 = v128;
    *(a9 + 8) = a2;
    *(a9 + 16) = v116;
    *(a9 + 24) = v70;
    *&v117 = v133;
    *(&v117 + 1) = v80;
    *&v118 = v134;
    *(&v118 + 1) = v129;
    *(a9 + 32) = v117;
    *(a9 + 48) = v118;
    *(a9 + 64) = v127;
    *(a9 + 72) = v132;
    *(a9 + 80) = v81;
    *(a9 + 88) = v115;
    *(a9 + 96) = v126;
    *(a9 + 104) = v131;
    *(a9 + 112) = a12;
    *(a9 + 120) = a13;
    *(a9 + 128) = v125;
    *(a9 + 136) = v130;
    *(a9 + 144) = a14;
    *(a9 + 152) = a15;
    *(a9 + 160) = a16;
    *(a9 + 168) = a17;
    *(a9 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_198:
  __break(1u);
  return result;
}

unint64_t sub_100BB1E28(uint64_t a1)
{
  *(a1 + 8) = sub_100BB1E58();
  result = sub_100BB1EAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BB1E58()
{
  result = qword_1016B75D0;
  if (!qword_1016B75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75D0);
  }

  return result;
}

unint64_t sub_100BB1EAC()
{
  result = qword_1016B75D8;
  if (!qword_1016B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75D8);
  }

  return result;
}

uint64_t sub_100BB1F00()
{
  v1 = *v0;
  type metadata accessor for PairingService();
  sub_100BB235C(&unk_1016B1120);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BB1FE4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100BB2090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PairingService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100BB2158(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100BB2204(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100BB22B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100BB235C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PairingService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ProximitySendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static ProximitySendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double ProximitySendPairingStatusCommandPayload.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100BB24D4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100BB24D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v24, v25);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v24);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v24, v25);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v26 = v11;
    sub_10015049C(v24, v25);
    v21 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v22 = v12;
    sub_10015049C(v24, v25);
    v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v20 = v14;
    sub_1000E0A3C();
    v15 = DataProtocol.intValue.getter();
    sub_10002EA98(v15, v21, v22, v23);
    v16 = v23[0];
    v17 = v23[1];
    sub_100007BAC(v24);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    v19 = v26;
    a2[2] = v10;
    a2[3] = v19;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v13;
    a2[7] = v20;
  }

  return result;
}

unint64_t sub_100BB26AC(uint64_t a1)
{
  *(a1 + 8) = sub_100BB26DC();
  result = sub_100BB2730();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BB26DC()
{
  result = qword_1016B75F8;
  if (!qword_1016B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75F8);
  }

  return result;
}

unint64_t sub_100BB2730()
{
  result = qword_1016B7600;
  if (!qword_1016B7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7600);
  }

  return result;
}

uint64_t sub_100BB2794(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  *v6 = v3;
  v6[1] = sub_100BB2844;

  return sub_100BB2C54(v3 + 16, a1, a2);
}

uint64_t sub_100BB2844()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100BB2C3C;
  }

  else
  {
    v4 = sub_100BB296C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BB296C()
{
  sub_10001F280(v0 + 16, v0 + 56);
  *(v0 + 160) = type metadata accessor for OneShotLocationWrapper();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_100BB2A38;

  return sub_100F876D8(*&kCLLocationAccuracyHundredMeters, 0);
}

uint64_t sub_100BB2A38(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100BB2B50, v3, 0);
}

uint64_t sub_100BB2B50()
{
  v1 = v0[22];
  v0[15] = v0[20];
  v0[16] = &off_10165CCE0;
  v0[12] = v1;
  type metadata accessor for UniversalPairingCoordinator();
  swift_allocObject();
  v2 = sub_100C015C4((v0 + 7), (v0 + 12));
  sub_100007BAC(v0 + 2);
  v3 = sub_100BB8E0C(&qword_1016B7768, 255, type metadata accessor for UniversalPairingCoordinator);
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_100BB2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[117] = v3;
  v4[116] = a3;
  v4[115] = a2;
  v4[114] = a1;
  v5 = type metadata accessor for MACAddress();
  v4[118] = v5;
  v6 = *(v5 - 8);
  v4[119] = v6;
  v7 = *(v6 + 64) + 15;
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160);
  v4[123] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v10 = type metadata accessor for PairingConfiguration();
  v4[130] = v10;
  v11 = *(v10 - 8);
  v4[131] = v11;
  v12 = *(v11 + 64) + 15;
  v4[132] = swift_task_alloc();

  return _swift_task_switch(sub_100BB2E0C, v3, 0);
}

uint64_t sub_100BB2E0C()
{
  v100 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  (*(v2 + 16))(v1, *(v0 + 920), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for PairingConfiguration.single(_:))
  {
    v15 = *(v0 + 1056);
    v16 = *(v0 + 1048);
    v17 = *(v0 + 1040);
    if (v4 != enum case for PairingConfiguration.multiple(_:))
    {
      sub_100BB8AF4();
      swift_allocError();
      *v29 = 4;
      swift_willThrow();
      (*(v16 + 8))(v15, v17);
LABEL_33:
      v69 = *(v0 + 1056);
      v70 = *(v0 + 1032);
      v71 = *(v0 + 1024);
      v72 = *(v0 + 1016);
      v73 = *(v0 + 1008);
      v74 = *(v0 + 1000);
      v75 = *(v0 + 992);
      v76 = *(v0 + 976);
      v77 = *(v0 + 968);
      v78 = *(v0 + 960);

      v79 = *(v0 + 8);

      return v79();
    }

    (*(v16 + 96))(*(v0 + 1056), *(v0 + 1040));
    v18 = *v15;
    *(v0 + 1384) = *v15;
    v98 = sub_100A4F80C;
    v19 = swift_task_alloc();
    *(v0 + 1392) = v19;
    *v19 = v0;
    v19[1] = sub_100BB59A0;
    v20 = v0 + 16;
    v21 = v18;
    goto LABEL_7;
  }

  v5 = *(v0 + 1056);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 928);
  (*(*(v0 + 1048) + 96))(v5, *(v0 + 1040));
  sub_10000A748(v5, v0 + 472);
  sub_1000D2A70(v7, v6, &qword_1016B76F0, &unk_1013DD160);
  v8 = type metadata accessor for PairingContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = *(v0 + 1032);
  v13 = *(v0 + 1024);
  if (v11 == 1)
  {
    v14 = *(v0 + 936);
    sub_100BB78A8(v0 + 472, *(v0 + 1032));
    if (v10(v13, 1, v8) != 1)
    {
      sub_10000B3A8(*(v0 + 1024), &qword_1016B76F0, &unk_1013DD160);
    }
  }

  else
  {
    (*(v9 + 32))(*(v0 + 1032), *(v0 + 1024), v8);
    (*(v9 + 56))(v12, 0, 1, v8);
  }

  v23 = *(v0 + 1016);
  sub_1000D2A70(*(v0 + 1032), v23, &qword_1016B76F0, &unk_1013DD160);
  if (v10(v23, 1, v8) == 1)
  {
    v24 = *(v0 + 1032);
    v25 = *(v0 + 1016);
    sub_100BB8AF4();
    swift_allocError();
    *v26 = 4;
LABEL_13:
    swift_willThrow();
    sub_10000B3A8(v24, &qword_1016B76F0, &unk_1013DD160);
    v27 = (v0 + 472);
LABEL_14:
    sub_100007BAC(v27);
    v28 = v25;
LABEL_32:
    sub_10000B3A8(v28, &qword_1016B76F0, &unk_1013DD160);
    goto LABEL_33;
  }

  v30 = *(v0 + 1008);
  sub_1000D2A70(*(v0 + 1016), v30, &qword_1016B76F0, &unk_1013DD160);
  v31 = (*(v9 + 88))(v30, v8);
  if (v31 != enum case for PairingContext.bluetooth(_:))
  {
    if (v31 == enum case for PairingContext.bluetoothStandalone(_:))
    {
      v37 = *(v0 + 1008);
      v38 = *(v0 + 976);
      v39 = *(v0 + 952);
      v40 = *(v0 + 944);
      (*(v9 + 96))(v37, v8);
      v41 = *(sub_1000BC4D4(&qword_1016B7758, &unk_1013DD1A0) + 48);
      sub_10000A748(v37, v0 + 792);
      (*(v39 + 32))(v38, v37 + v41, v40);
      sub_10001F280(v0 + 792, v0 + 832);
      sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
      if (!swift_dynamicCast() || (v42 = *(v0 + 1410), *(v0 + 1411) = v42, v42 == 3))
      {
        v43 = *(v0 + 1032);
        v25 = *(v0 + 1016);
        v44 = *(v0 + 976);
        v45 = *(v0 + 952);
        v46 = *(v0 + 944);
        sub_100BB8AF4();
        swift_allocError();
        *v47 = 1;
        swift_willThrow();
        (*(v45 + 8))(v44, v46);
        sub_100007BAC((v0 + 792));
        sub_10000B3A8(v43, &qword_1016B76F0, &unk_1013DD160);
        sub_100007BAC((v0 + 472));
        v27 = (v0 + 832);
        goto LABEL_14;
      }

      v96 = sub_100BB3A88;
    }

    else
    {
      v48 = *(v0 + 1008);
      if (v31 != enum case for PairingContext.bluetoothMultiPart(_:))
      {
        (*(v9 + 8))(*(v0 + 1008), v8);
        if (qword_101694D30 != -1)
        {
          swift_once();
        }

        v80 = *(v0 + 1000);
        v81 = *(v0 + 928);
        v82 = type metadata accessor for Logger();
        sub_1000076D4(v82, qword_1016B7608);
        sub_1000D2A70(v81, v80, &qword_1016B76F0, &unk_1013DD160);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        v85 = os_log_type_enabled(v83, v84);
        v86 = *(v0 + 1000);
        if (v85)
        {
          v87 = *(v0 + 992);
          v88 = *(v0 + 984);
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v99 = v90;
          *v89 = 136315138;
          sub_1000D2A70(v86, v87, &qword_1016B76F0, &unk_1013DD160);
          v91 = String.init<A>(describing:)();
          v93 = v92;
          sub_10000B3A8(v86, &qword_1016B76F0, &unk_1013DD160);
          v94 = sub_1000136BC(v91, v93, &v99);

          *(v89 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v83, v84, "Unknown context %s!", v89, 0xCu);
          sub_100007BAC(v90);
        }

        else
        {

          sub_10000B3A8(v86, &qword_1016B76F0, &unk_1013DD160);
        }

        v24 = *(v0 + 1032);
        v25 = *(v0 + 1016);
        sub_100BB8AF4();
        swift_allocError();
        *v97 = 0;
        goto LABEL_13;
      }

      v49 = *(v0 + 960);
      v50 = *(v0 + 952);
      v51 = *(v0 + 944);
      (*(v9 + 96))(*(v0 + 1008), v8);
      v52 = sub_1000BC4D4(&qword_1016B7728, &unk_1013DD190);
      v53 = v52[12];
      v54 = (v48 + v52[16]);
      v55 = *v54;
      *(v0 + 1192) = *v54;
      v56 = v54[1];
      *(v0 + 1200) = v56;
      *(v0 + 1412) = *(v48 + v52[20]);
      sub_10000A748(v48, v0 + 632);
      v57 = *(v50 + 32);
      *(v0 + 1208) = v57;
      *(v0 + 1216) = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v57(v49, v48 + v53, v51);
      sub_10001F280(v0 + 632, v0 + 672);
      sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
      if (!swift_dynamicCast() || (v58 = *(v0 + 1409), *(v0 + 1413) = v58, v58 == 3))
      {
        v59 = *(v0 + 1032);
        v60 = *(v0 + 1016);
        v61 = *(v0 + 960);
        v62 = *(v0 + 952);
        v63 = *(v0 + 944);
        sub_100BB8AF4();
        swift_allocError();
        *v64 = 1;
        swift_willThrow();
        sub_100006654(v55, v56);
        (*(v62 + 8))(v61, v63);
        sub_100007BAC((v0 + 632));
        sub_10000B3A8(v59, &qword_1016B76F0, &unk_1013DD160);
        sub_100007BAC((v0 + 472));
        sub_100007BAC((v0 + 672));
        v28 = v60;
        goto LABEL_32;
      }

      v96 = sub_100BB444C;
    }

    return _swift_task_switch(v96, 0, 0);
  }

  v32 = *(v0 + 1008);
  (*(v9 + 96))(v32, v8);
  v33 = *v32;
  v34 = v32[1];
  *(v0 + 544) = *(v32 + 4);
  *(v0 + 512) = v33;
  *(v0 + 528) = v34;
  sub_1000D2A70(v0 + 512, v0 + 552, &qword_1016B7718, &qword_1013DD180);
  if (!*(v0 + 576))
  {
    v65 = *(v0 + 1032);
    v66 = *(v0 + 1016);
    sub_100BB8AF4();
    swift_allocError();
    v68 = 4;
LABEL_31:
    *v67 = v68;
    swift_willThrow();
    sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
    sub_10000B3A8(v65, &qword_1016B76F0, &unk_1013DD160);
    sub_100007BAC((v0 + 472));
    sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
    v28 = v66;
    goto LABEL_32;
  }

  sub_1000D2A70(v0 + 552, v0 + 592, &qword_1016B7718, &qword_1013DD180);
  sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
  if (!swift_dynamicCast())
  {
    v65 = *(v0 + 1032);
    v66 = *(v0 + 1016);
    sub_100007BAC((v0 + 592));
    sub_100BB8AF4();
    swift_allocError();
    v68 = 2;
    goto LABEL_31;
  }

  v35 = *(v0 + 1408);
  if (v35 == 3)
  {
    v98 = sub_100A500D4;
    v36 = swift_task_alloc();
    *(v0 + 1352) = v36;
    *v36 = v0;
    v36[1] = sub_100BB5044;
    v20 = v0 + 320;
    v21 = v0 + 472;
LABEL_7:

    return v98(v20, v21);
  }

  v95 = swift_task_alloc();
  *(v0 + 1368) = v95;
  *v95 = v0;
  v95[1] = sub_100BB54EC;

  return sub_100A50BF4(v0 + 168, v0 + 472, v35);
}