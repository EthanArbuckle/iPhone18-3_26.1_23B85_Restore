void sub_1000E0FC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100021ED0(a3, a4);
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000E1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a1 == 2)
  {
    v10 = &enum case for ISO18013CodingKeyFormat.standard(_:);
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v10 = &enum case for ISO18013CodingKeyFormat.ACWG(_:);
LABEL_6:
    v11 = *v10;
    v12 = type metadata accessor for ISO18013CodingKeyFormat();
    v13 = *(*(v12 - 8) + 104);

    return v13(a2, v11, v12);
  }

  v26 = v7;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = DCPresentmentMessageEncodingFormatToString();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10010150C(v20, v22, &v27);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unknown message encoding format: %s", v17, 0xCu);
    sub_100005090(v18);
  }

  (*(v5 + 8))(v9, v26);
  v24 = enum case for ISO18013CodingKeyFormat.standard(_:);
  v25 = type metadata accessor for ISO18013CodingKeyFormat();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

uint64_t sub_1000E12CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    v10 = &enum case for ISO18013DictionaryEncodingStrategy.coreDeterministic(_:);
LABEL_6:
    v11 = *v10;
    v12 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
    v13 = *(*(v12 - 8) + 104);

    return v13(a2, v11, v12);
  }

  if (a1 == 2)
  {
    v10 = &enum case for ISO18013DictionaryEncodingStrategy.unifiedAccess(_:);
    goto LABEL_6;
  }

  v27 = v7;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = DCPresentmentMessageEncodingFormatToString();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10010150C(v21, v23, &v28);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unknown dictionary encoding strategy: %s", v18, 0xCu);
    sub_100005090(v19);
  }

  (*(v5 + 8))(v9, v27);
  v25 = enum case for ISO18013DictionaryEncodingStrategy.coreDeterministic(_:);
  v26 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
  return (*(*(v26 - 8) + 104))(a2, v25, v26);
}

void sub_1000E15E0()
{
  sub_1000E16E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ISO18013ReaderRequest();
    if (v1 <= 0x3F)
    {
      sub_1000E9144(319, &qword_100201378, &type metadata for CertificateKnownIssuer, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000E9144(319, &unk_100202D38, &type metadata for String, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E16E4()
{
  if (!qword_100202D28)
  {
    sub_100021ED0(&qword_100202D30, &qword_1001AD3C8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100202D28);
    }
  }
}

uint64_t sub_1000E174C()
{
  v1 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReaderMetadataProvider(0);
  if (*(v0 + *(v6 + 28)))
  {
    return 0;
  }

  v7 = *(v6 + 20);
  if ((ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter() & 1) == 0)
  {
    return 0;
  }

  v8 = ISO18013ReaderRequest.docRequests.getter();
  swift_getKeyPath();
  v9 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v27[0] = v8;
    v15 = v8 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v5, v15, v1);
      swift_getAtKeyPath();
      (*(v11 - 8))(v5, v1);
      sub_1000FCD88(v28);
      v15 += v16;
      --v10;
    }

    while (v10);

    v17 = v29;
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  result = swift_getKeyPath();
  v29 = _swiftEmptyArrayStorage;
  v19 = v17[2];
  if (v19)
  {
    v20 = 0;
    while (v20 < v17[2])
    {
      v21 = v20 + 1;
      v27[1] = v17[v20 + 4];

      swift_getAtKeyPath();

      result = sub_1000FCB00(v28);
      v20 = v21;
      if (v19 == v21)
      {
        v9 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v22 = v9[2];
    v23 = (v9 + 4);
    do
    {
      v24 = v22 == 0;
      if (!v22)
      {
        break;
      }

      v25 = *v23++;
      --v22;
    }

    while (v25 != 1);
    v26 = v24;

    return v26;
  }

  return result;
}

uint64_t sub_1000E19D8()
{
  v2 = sub_100004E70(&qword_100202DF8, &qword_1001AD4C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v32 - v4;
  v6 = sub_100004E70(&qword_100202E00, &qword_1001AD4D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v32 - v12;
  __chkstk_darwin(v11);
  v15 = v32 - v14;
  v16 = type metadata accessor for ReaderAuthenticationAllowableElements();
  v40 = *(v16 - 8);
  v17 = *(v40 + 64);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100046360(v0, &v35, &qword_100202D90, &qword_1001AD400);
  if (!v36)
  {
    sub_10000A0D4(&v35, &qword_100202D90, &qword_1001AD400);
    return 0;
  }

  sub_10001AA08(&v35, v37);
  if (*(v0 + *(type metadata accessor for ReaderMetadataProvider(0) + 28)))
  {
    sub_100005090(v37);
    return 0;
  }

  v33 = v2;
  v34 = sub_1000E174C();
  v21 = v39;
  sub_100009278(v37, v38);
  v22 = *(v21 + 8);
  dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDisplayOnly.getter();
  if (v1)
  {
    return sub_100005090(v37);
  }

  v23 = v39;
  sub_100009278(v37, v38);
  v24 = *(v23 + 8);
  dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDataTransfer.getter();
  v32[1] = 0;
  v25 = &v5[*(v33 + 48)];
  v26 = &v5[*(v33 + 64)];
  *v5 = v34 & 1;
  v27 = v15;
  v28 = v25;
  sub_100046524(v27, v25, &qword_100202E00, &qword_1001AD4D0);
  sub_100046524(v13, v26, &qword_100202E00, &qword_1001AD4D0);
  v29 = v40;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v16) == 1)
  {
    if (v30(v26, 1, v16) == 1)
    {
      sub_10000A0D4(v28, &qword_100202E00, &qword_1001AD4D0);
      sub_100005090(v37);
      return 0;
    }

    if (v34)
    {
      v28 = v26;
LABEL_19:
      sub_10000A0D4(v28, &qword_100202E00, &qword_1001AD4D0);
      sub_100005090(v37);
      return 1;
    }
  }

  else
  {
    sub_100046360(v28, v10, &qword_100202E00, &qword_1001AD4D0);
    if (v34)
    {
      (*(v29 + 32))(v19, v10, v16);
      sub_10000A0D4(v26, &qword_100202E00, &qword_1001AD4D0);
LABEL_21:
      sub_10000A0D4(v28, &qword_100202E00, &qword_1001AD4D0);
      v31 = ReaderAuthenticationAllowableElements.documentTypes.getter();
      ReaderAuthenticationAllowableElements.elements.getter();
      (*(v29 + 8))(v19, v16);
      sub_100005090(v37);
      return v31;
    }

    (*(v29 + 8))(v10, v16);
  }

  if (v30(v26, 1, v16) != 1)
  {
    (*(v29 + 32))(v19, v26, v16);
    goto LABEL_21;
  }

  if (v30(v28, 1, v16) != 1)
  {
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E1EF0()
{
  v1 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0 + *(type metadata accessor for ReaderMetadataProvider(0) + 20);
  v7 = ISO18013ReaderRequest.docRequests.getter();
  v8 = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v2 + 8);
    while (v10 < *(v7 + 16))
    {
      (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v1);
      sub_1000E20B8(v5, &v15);
      ++v10;
      (*v11)(v5, v1);
      sub_1000FC91C(v15);
      if (v9 == v10)
      {
        v8 = v16;
        goto LABEL_6;
      }
    }

    __break(1u);

    (*v11)(v5, v1);

    __break(1u);
  }

  else
  {
LABEL_6:

    v12 = sub_10010D640(v8);

    return v12;
  }

  return result;
}

void *sub_1000E20B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v125 = a2;
  v3 = sub_100004E70(&qword_100202E08, &qword_1001AD4D8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v129 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v127 = &v123 - v7;
  v139 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v130 = *(v139 - 8);
  v8 = *(v130 + 64);
  __chkstk_darwin(v139);
  v138 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v136 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v123 - v15;
  v17 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v133 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v123 - v22;
  v141 = a1;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  CBOREncodedCBOR.value.getter();
  v24 = *(v18 + 8);
  v134 = (v18 + 8);
  v135 = v17;
  v132 = v24;
  v24(v23, v17);
  v25 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  v26 = *(v11 + 8);
  v140 = v10;
  v137 = v11 + 8;
  v131 = v26;
  (v26)(v16, v10);
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;
  v142 = v25;

  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v30)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
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
      return result;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
LABEL_10:
      v36 = __clz(__rbit64(v30)) | (v33 << 6);
      v37 = (v142[6] + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v142[7] + 8 * v36);
      __chkstk_darwin(result);
      *(&v123 - 2) = v41;
      *(&v123 - 1) = v39;

      v43 = v126;
      v44 = sub_1000E85BC(v42, sub_1000E8DA4);
      v126 = v43;

      v45 = v44[2];
      v46 = v34[2];
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_108;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v47 > v34[3] >> 1)
      {
        if (v46 <= v47)
        {
          v48 = v46 + v45;
        }

        else
        {
          v48 = v46;
        }

        result = sub_100100B68(result, v48, 1, v34);
        v34 = result;
      }

      v30 &= v30 - 1;
      if (v44[2])
      {
        if ((v34[3] >> 1) - v34[2] < v45)
        {
          goto LABEL_110;
        }

        sub_100004E70(&qword_100200468, &qword_1001AAE98);
        swift_arrayInitWithCopy();

        if (v45)
        {
          v49 = v34[2];
          v50 = __OFADD__(v49, v45);
          v51 = v49 + v45;
          if (v50)
          {
            goto LABEL_111;
          }

          v34[2] = v51;
        }
      }

      else
      {

        if (v45)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_5;
    }
  }

  v124 = v34;

  v52 = v133;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  v53 = v135;
  v54 = v136;
  CBOREncodedCBOR.value.getter();
  v132(v52, v53);
  v55 = ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter();
  (v131)(v54, v140);
  swift_getKeyPath();
  v143 = _swiftEmptyArrayStorage;
  v56 = 1 << *(v55 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v55 + 64);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  if (v58)
  {
    while (1)
    {
      v61 = v60;
LABEL_30:
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v145 = *(*(v55 + 56) + ((v61 << 9) | (8 * v62)));

      swift_getAtKeyPath();

      result = sub_1000FD274(v146);
      if (!v58)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
LABEL_26:
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_96;
    }

    if (v61 >= v59)
    {
      break;
    }

    v58 = *(v55 + 64 + 8 * v61);
    ++v60;
    if (v58)
    {
      v60 = v61;
      goto LABEL_30;
    }
  }

  v63 = v143;
  v64 = v143[2];
  if (v64)
  {
    v65 = 0;
    v66 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v65 >= v63[2])
      {
        goto LABEL_97;
      }

      v67 = v63[v65 + 4];
      v68 = *(v67 + 16);
      v69 = v66[2];
      v70 = v69 + v68;
      if (__OFADD__(v69, v68))
      {
        goto LABEL_98;
      }

      v71 = v63[v65 + 4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v70 <= v66[3] >> 1)
      {
        if (!*(v67 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v69 <= v70)
        {
          v72 = v69 + v68;
        }

        else
        {
          v72 = v69;
        }

        result = sub_100101004(result, v72, 1, v66);
        v66 = result;
        if (!*(v67 + 16))
        {
LABEL_34:

          if (v68)
          {
            goto LABEL_99;
          }

          goto LABEL_35;
        }
      }

      if ((v66[3] >> 1) - v66[2] < v68)
      {
        goto LABEL_104;
      }

      sub_100004E70(&qword_100202E10, &qword_1001AD520);
      swift_arrayInitWithCopy();

      if (v68)
      {
        v73 = v66[2];
        v50 = __OFADD__(v73, v68);
        v74 = v73 + v68;
        if (v50)
        {
          goto LABEL_106;
        }

        v66[2] = v74;
      }

LABEL_35:
      if (v64 == ++v65)
      {
        goto LABEL_51;
      }
    }
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_51:

  v132 = v66[2];
  if (v132)
  {
    v75 = 0;
    v131 = v66 + 4;
    v136 = (v130 + 8);
    v137 = v130 + 16;
    v76 = _swiftEmptyArrayStorage;
    v128 = v66;
    while (1)
    {
      if (v75 >= v66[2])
      {
        goto LABEL_101;
      }

      v77 = v131[v75];
      v78 = *(v77 + 2);
      if (v78)
      {
        v134 = v76;
        v135 = v75;
        v143 = _swiftEmptyArrayStorage;

        sub_10010A9A0(0, v78, 0);
        v79 = v143;
        v80 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v133 = v77;
        v81 = &v77[v80];
        v82 = *(v130 + 72);
        v140 = *(v130 + 16);
        v141 = v82;
        do
        {
          v84 = v138;
          v83 = v139;
          (v140)(v138, v81, v139);
          v142 = ISO18013ReaderRequest.ElementReference.namespace.getter();
          v86 = v85;
          v87 = ISO18013ReaderRequest.ElementReference.elementIdentifier.getter();
          v89 = v88;
          (*v136)(v84, v83);
          v143 = v79;
          v91 = v79[2];
          v90 = v79[3];
          if (v91 >= v90 >> 1)
          {
            sub_10010A9A0((v90 > 1), v91 + 1, 1);
            v79 = v143;
          }

          v79[2] = v91 + 1;
          v92 = &v79[4 * v91];
          v92[4] = v142;
          v92[5] = v86;
          v92[6] = v87;
          v92[7] = v89;
          v81 = v141 + v81;
          --v78;
        }

        while (v78);

        v66 = v128;
        v76 = v134;
        v75 = v135;
      }

      else
      {
        v79 = _swiftEmptyArrayStorage;
      }

      v93 = v79[2];
      v94 = v76[2];
      v95 = v94 + v93;
      if (__OFADD__(v94, v93))
      {
        goto LABEL_102;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v95 <= v76[3] >> 1)
      {
        if (!v79[2])
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v94 <= v95)
        {
          v96 = v94 + v93;
        }

        else
        {
          v96 = v94;
        }

        result = sub_100100B68(result, v96, 1, v76);
        v76 = result;
        if (!v79[2])
        {
LABEL_53:

          if (v93)
          {
            goto LABEL_103;
          }

          goto LABEL_54;
        }
      }

      if ((v76[3] >> 1) - v76[2] < v93)
      {
        goto LABEL_105;
      }

      sub_100004E70(&qword_100200468, &qword_1001AAE98);
      swift_arrayInitWithCopy();

      if (v93)
      {
        v97 = v76[2];
        v50 = __OFADD__(v97, v93);
        v98 = v97 + v93;
        if (v50)
        {
          goto LABEL_107;
        }

        v76[2] = v98;
      }

LABEL_54:
      if (++v75 == v132)
      {
        goto LABEL_77;
      }
    }
  }

  v76 = _swiftEmptyArrayStorage;
LABEL_77:

  v143 = v124;
  sub_1000FD170(v76);
  v99 = v143;
  v100 = v143[2];
  if (v100)
  {
    v146 = _swiftEmptyArrayStorage;
    result = sub_10010A6B4(0, v100, 0);
    v101 = 0;
    v102 = v146;
    LODWORD(v138) = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
    LODWORD(v137) = enum case for ISO18013KnownNamespaces.iso23220_1(_:);
    v103 = (v99 + 7);
    v104 = v127;
    v140 = v100;
    v141 = v99;
    while (1)
    {
      if (v101 >= v99[2])
      {
        goto LABEL_100;
      }

      v142 = v102;
      v105 = *(v103 - 3);
      v106 = *(v103 - 2);
      v108 = *(v103 - 1);
      v107 = *v103;
      swift_bridgeObjectRetain_n();

      ISO18013KnownNamespaces.init(rawValue:)();
      v109 = type metadata accessor for ISO18013KnownNamespaces();
      v110 = *(v109 - 8);
      if ((*(v110 + 48))(v104, 1, v109) == 1)
      {
        goto LABEL_88;
      }

      v139 = v108;
      v111 = v129;
      sub_100046360(v104, v129, &qword_100202E08, &qword_1001AD4D8);
      v112 = (*(v110 + 88))(v111, v109);
      if (v112 == v138)
      {
        v108 = v139;
        v113 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
        v104 = v127;
        if ((v113 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v108 = v139;
        if (v112 != v137)
        {
          (*(v110 + 8))(v129, v109);
          v104 = v127;
LABEL_88:
          v143 = v105;
          v144 = v106;

          v118._countAndFlagsBits = 58;
          v118._object = 0xE100000000000000;
          String.append(_:)(v118);
          v119._countAndFlagsBits = v108;
          v119._object = v107;
          String.append(_:)(v119);
          v117 = v143;
          v116 = v144;
          sub_10000A0D4(v104, &qword_100202E08, &qword_1001AD4D8);

          goto LABEL_89;
        }

        v114 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
        v104 = v127;
        if ((v114 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      sub_10000A0D4(v104, &qword_100202E08, &qword_1001AD4D8);
      v143 = v105;
      v144 = v106;

      v115._countAndFlagsBits = 0x65766F5F6567613ALL;
      v115._object = 0xEC0000004E4E5F72;
      String.append(_:)(v115);

      v117 = v143;
      v116 = v144;
LABEL_89:
      v102 = v142;
      v146 = v142;
      v121 = v142[2];
      v120 = v142[3];
      if (v121 >= v120 >> 1)
      {
        result = sub_10010A6B4((v120 > 1), v121 + 1, 1);
        v104 = v127;
        v102 = v146;
      }

      ++v101;
      v102[2] = v121 + 1;
      v122 = &v102[2 * v121];
      v122[4] = v117;
      v122[5] = v116;
      v103 += 4;
      v99 = v141;
      if (v140 == v101)
      {

        goto LABEL_94;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_94:
  *v125 = v102;
  return result;
}

uint64_t sub_1000E2D74()
{
  v1 = type metadata accessor for DIPError.Code();
  v147 = *(v1 - 8);
  v148 = v1;
  v2 = *(v147 + 64);
  __chkstk_darwin(v1);
  v150 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v153 = *(v157 - 8);
  v4 = *(v153 + 64);
  __chkstk_darwin(v157);
  v156 = (&v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for Logger();
  v151 = *(v149 - 8);
  v6 = *(v151 + 64);
  v7 = __chkstk_darwin(v149);
  v154 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v146 = &v136 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v136 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v136 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v136 - v18;
  __chkstk_darwin(v17);
  v21 = &v136 - v20;
  v22 = sub_1000E174C();
  v23 = v22;
  if (v22)
  {
    v24 = 0x2079616C70736964;
  }

  else
  {
    v24 = 0x6172742061746164;
  }

  if (v22)
  {
    v25 = 0xEC000000796C6E6FLL;
  }

  else
  {
    v25 = 0xED0000726566736ELL;
  }

  v26 = sub_1000E1EF0();
  v27 = v155;
  v28 = sub_1000E19D8();
  v152 = v27;
  if (v27)
  {
  }

  v155 = v24;
  v145 = v26;
  v143 = v23;
  v141 = v16;
  v144 = v0;
  v142 = v13;
  v31 = v150;
  if (v28)
  {
    v32 = v19;
    v33 = v145;
    v34 = v25;
    if (v28 == 1)
    {
      type metadata accessor for IDCSAnalytics();
      v35 = (v144 + *(type metadata accessor for ReaderMetadataProvider(0) + 24));
      v36 = *v35;
      v37 = v35[1];
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();

      v38 = v154;
      defaultLogger()();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v158 = v42;
        *v41 = 136446210;
        v43 = v155;
        *(v41 + 4) = sub_10010150C(v155, v25, &v158);
        _os_log_impl(&_mh_execute_header, v39, v40, "Reader certificate is not allowed to make %{public}s requests", v41, 0xCu);
        sub_100005090(v42);

        (*(v151 + 8))(v38, v149);
      }

      else
      {

        (*(v151 + 8))(v38, v149);
        v43 = v155;
      }

      v158 = 0;
      v159 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v70._countAndFlagsBits = 0xD00000000000002ALL;
      v70._object = 0x80000001001B9CC0;
      String.append(_:)(v70);
      v71._countAndFlagsBits = v43;
      v71._object = v25;
      String.append(_:)(v71);

      v72._countAndFlagsBits = 0x7473657571657220;
      v72._object = 0xE900000000000073;
      String.append(_:)(v72);
      (*(v147 + 104))(v31, enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:), v148);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_46;
    }

    v52 = v32;
    v53 = v29;
    v54 = v28;
    defaultLogger()();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    v57 = os_log_type_enabled(v55, v56);
    v140 = v53;
    v139 = v54;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v154 = v52;
      LODWORD(v138) = v56;
      v59 = v58;
      v137 = swift_slowAlloc();
      v158 = v137;
      *v59 = 136446722;
      v60 = sub_10010150C(v155, v34, &v158);

      *(v59 + 4) = v60;
      *(v59 + 12) = 2080;
      v160 = v54;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      sub_1000E8470();
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = sub_10010150C(v61, v62, &v158);

      *(v59 + 14) = v63;
      *(v59 + 22) = 2080;
      v64 = v151;
      v160 = v53;
      v65 = BidirectionalCollection<>.joined(separator:)();
      v67 = sub_10010150C(v65, v66, &v158);

      *(v59 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v55, v138, "Allowable elements for %{public}s request: documentTypes=[%s] elements=[%s]", v59, 0x20u);
      swift_arrayDestroy();

      v68 = *(v64 + 8);
      v69 = v154;
    }

    else
    {

      v68 = *(v151 + 8);
      v69 = v52;
    }

    v73 = v149;
    v138 = v68;
    v68(v69, v149);
    v74 = v144;
    v75 = v157;
    v137 = type metadata accessor for ReaderMetadataProvider(0);
    v76 = v74 + *(v137 + 20);
    v77 = ISO18013ReaderRequest.docRequests.getter();
    KeyPath = swift_getKeyPath();
    v79 = *(v77 + 16);
    if (v79)
    {
      v155 = KeyPath;
      v160 = _swiftEmptyArrayStorage;
      sub_10010A6B4(0, v79, 0);
      v80 = v160;
      v81 = v153 + 16;
      v154 = *(v153 + 16);
      v82 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v136 = v77;
      v83 = v77 + v82;
      v153 = *(v153 + 72);
      v84 = (v81 - 8);
      v85 = v156;
      do
      {
        v86 = v81;
        (v154)(v85, v83, v75);
        swift_getAtKeyPath();
        (*v84)(v85, v75);
        v88 = v158;
        v87 = v159;
        v160 = v80;
        v90 = v80[2];
        v89 = v80[3];
        if (v90 >= v89 >> 1)
        {
          sub_10010A6B4((v89 > 1), v90 + 1, 1);
          v80 = v160;
        }

        v80[2] = v90 + 1;
        v91 = &v80[2 * v90];
        v91[4] = v88;
        v91[5] = v87;
        v83 += v153;
        --v79;
        v85 = v156;
        v75 = v157;
        v81 = v86;
      }

      while (v79);

      v73 = v149;
      v92 = v152;
      v74 = v144;
      v33 = v145;
    }

    else
    {

      v80 = _swiftEmptyArrayStorage;
      v92 = v152;
    }

    v93 = sub_10010D640(v80);

    v94 = sub_10016515C(v139, v93);

    if (v94[2])
    {

      type metadata accessor for IDCSAnalytics();
      v95 = (v74 + *(v137 + 24));
      v96 = *v95;
      v97 = v95[1];
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();

      v98 = v146;
      defaultLogger()();

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v158 = v102;
        *v101 = 136315138;
        v103 = v73;
        v104 = Set.description.getter();
        v106 = v105;

        v107 = sub_10010150C(v104, v106, &v158);

        *(v101 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v99, v100, "Reader certificate is not allowed to request elements for document types: %s", v101, 0xCu);
        sub_100005090(v102);

        v108 = v98;
        v109 = v103;
      }

      else
      {

        v108 = v98;
        v109 = v73;
      }

      v138(v108, v109);
      (*(v147 + 104))(v150, enum case for DIPError.Code.idcsRequestedDocumentTypesNotPermitted(_:), v148);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_46;
    }

    v110 = sub_10010D640(v140);

    v111 = v92;
    v112 = sub_1000E8A58(v33, v110);

    if (v112[2])
    {
      type metadata accessor for IDCSAnalytics();
      v113 = (v74 + *(v137 + 24));
      v114 = *v113;
      v115 = v113[1];
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();
      v116 = v142;
      defaultLogger()();

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      LODWORD(v157) = v118;
      if (!os_log_type_enabled(v117, v118))
      {

        v129 = v116;
        v130 = v73;
LABEL_45:
        v138(v129, v130);
        (*(v147 + 104))(v150, enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:), v148);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
LABEL_46:
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }

      v152 = v111;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v121 = v120;
      v160 = v120;
      *v119 = 136315138;
      v122 = v112[2];
      if (v122)
      {
        v155 = v120;
        v123 = sub_100101488(v122, 0);
        v156 = sub_10012261C(&v158, v123 + 4, v122, v112);

        sub_1000BAE9C();
        if (v156 != v122)
        {
          __break(1u);
LABEL_48:

          __break(1u);
          return result;
        }

        v124 = v142;
        v121 = v155;
      }

      else
      {
        v123 = _swiftEmptyArrayStorage;
        v124 = v142;
      }

      v158 = v123;
      v131 = v152;
      sub_1000E7560(&v158);
      if (!v131)
      {

        v132 = Array.description.getter();
        v134 = v133;

        v135 = sub_10010150C(v132, v134, &v160);

        *(v119 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v117, v157, "Reader certificate is not allowed to request these elements: %s", v119, 0xCu);
        sub_100005090(v121);

        v129 = v124;
        v130 = v149;
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    v125 = v141;
    defaultLogger()();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "Reader certificate passed allowable fields validation for requested elements", v128, 2u);
    }

    return (v138)(v125, v73);
  }

  else
  {

    v44 = v21;
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = v151;
      v49 = v47;
      v50 = swift_slowAlloc();
      v158 = v50;
      *v49 = 136446210;
      v51 = sub_10010150C(v155, v25, &v158);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Reader certificate pased allowable fields validation for %{public}s request", v49, 0xCu);
      sub_100005090(v50);

      return (*(v48 + 8))(v44, v149);
    }

    else
    {

      return (*(v151 + 8))(v21, v149);
    }
  }
}

uint64_t sub_1000E3EFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v161 = a2;
  v137 = type metadata accessor for AlgorithmIdentifier();
  v136 = *(v137 - 8);
  v3 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Logger();
  v139 = *(v140 - 8);
  v5 = *(v139 + 64);
  __chkstk_darwin(v140);
  v141 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v165 = *(v7 - 8);
  v166 = v7;
  v8 = *(v165 + 64);
  __chkstk_darwin(v7);
  v164 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_100004E70(&qword_100202DA0, &qword_1001AD408);
  v142 = *(v146 - 8);
  v10 = *(v142 + 64);
  __chkstk_darwin(v146);
  v145 = &v133 - v11;
  v144 = sub_100004E70(&qword_100202DA8, &qword_1001AD410);
  v12 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v143 = &v133 - v13;
  v149 = type metadata accessor for HashDigest();
  v147 = *(v149 - 8);
  v14 = *(v147 + 64);
  v15 = __chkstk_darwin(v149);
  v138 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v148 = &v133 - v17;
  v18 = sub_100004E70(&qword_100202DB0, &qword_1001AD418);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v159 = &v133 - v20;
  v151 = sub_100004E70(&qword_100202DB8, &qword_1001AD420);
  v21 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v150 = &v133 - v22;
  v155 = type metadata accessor for URL();
  v153 = *(v155 - 8);
  v23 = *(v153 + 64);
  __chkstk_darwin(v155);
  v154 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LogotypeDetails();
  v157 = *(v25 - 8);
  v158 = v25;
  v26 = *(v157 + 64);
  __chkstk_darwin(v25);
  v156 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004E70(&qword_100202DC0, &qword_1001AD428);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v162 = &v133 - v30;
  v31 = sub_100004E70(&qword_100202DC8, &qword_1001AD430);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v160 = &v133 - v33;
  v34 = sub_100004E70(&qword_100202DD0, &qword_1001AD438);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v133 - v36;
  v38 = type metadata accessor for Logotype();
  v163 = *(v38 - 8);
  v39 = *(v163 + 64);
  __chkstk_darwin(v38);
  v41 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100004E70(&qword_100202DD8, &qword_1001AD440);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v46 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v49 = &v133 - v48;
  __chkstk_darwin(v47);
  v51 = &v133 - v50;
  v52 = a1[4];
  sub_100009278(a1, a1[3]);
  v53 = v167;
  dispatch thunk of ReaderAuthenticationCertificate.logotype.getter();
  if (v53)
  {
    (*(v165 + 104))(v164, enum case for DIPError.Code.internalError(_:), v166);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v167 = 0;
  v55 = v162;
  v133 = v37;
  v134 = v41;
  sub_100046524(v49, v51, &qword_100202DD8, &qword_1001AD440);
  sub_100046360(v51, v46, &qword_100202DD8, &qword_1001AD440);
  v56 = v163;
  if ((*(v163 + 48))(v46, 1, v38) == 1)
  {
    sub_10000A0D4(v51, &qword_100202DD8, &qword_1001AD440);
    v57 = v46;
    v58 = &qword_100202DD8;
    v59 = &qword_1001AD440;
LABEL_13:
    sub_10000A0D4(v57, v58, v59);
    v77 = v161;
    v78 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
    return (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
  }

  v60 = v38;
  v61 = v134;
  (*(v56 + 32))(v134, v46, v60);
  Logotype.subjectLogo.getter();
  v62 = type metadata accessor for LogotypeInfo();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v55, 1, v62) == 1)
  {
    (*(v56 + 8))(v61, v60);
    sub_10000A0D4(v51, &qword_100202DD8, &qword_1001AD440);
    v58 = &qword_100202DC0;
    v59 = &qword_1001AD428;
    v57 = v55;
    goto LABEL_13;
  }

  v64 = v160;
  LogotypeInfo.data.getter();
  (*(v63 + 8))(v55, v62);
  v65 = type metadata accessor for LogotypeData();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v64, 1, v65);
  v68 = v167;
  if (v67 == 1)
  {
    (*(v56 + 8))(v61, v60);
    sub_10000A0D4(v51, &qword_100202DD8, &qword_1001AD440);
    v58 = &qword_100202DC8;
    v59 = &qword_1001AD430;
    v57 = v64;
    goto LABEL_13;
  }

  v162 = v51;
  v69 = v133;
  LogotypeData.image.getter();
  (*(v66 + 8))(v64, v65);
  v70 = v69;
  v71 = type metadata accessor for LogotypeImage();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    (*(v56 + 8))(v61, v60);
    sub_10000A0D4(v162, &qword_100202DD8, &qword_1001AD440);
    v58 = &qword_100202DD0;
    v59 = &qword_1001AD438;
    v57 = v70;
    goto LABEL_13;
  }

  v73 = v156;
  LogotypeImage.imageDetails.getter();
  (*(v72 + 8))(v70, v71);
  v74 = LogotypeDetails.logotypes.getter();
  (*(v157 + 8))(v73, v158);
  v75 = v159;
  Logotype.readerMetadata.getter();
  v76 = sub_100004E70(&qword_100202DE0, &qword_1001AD448);
  if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
  {

    (*(v56 + 8))(v61, v60);
    sub_10000A0D4(v162, &qword_100202DD8, &qword_1001AD440);
    v58 = &qword_100202DB0;
    v59 = &qword_1001AD418;
    v57 = v75;
    goto LABEL_13;
  }

  v158 = v74;
  v160 = v60;
  v79 = &v75[*(v76 + 48)];
  v80 = *v79;
  v81 = *(v79 + 1);
  v83 = v150;
  v82 = v151;
  v84 = &v150[*(v151 + 48)];
  v85 = *(v153 + 32);
  v86 = v155;
  v85(v150, v75, v155);
  *v84 = v80;
  *(v84 + 1) = v81;
  v87 = &v83[*(v82 + 48)];
  v89 = *v87;
  v88 = v87[1];
  v151 = v89;
  v159 = v88;
  v90 = v154;
  v91 = v83;
  v92 = v86;
  v156 = v85;
  v85(v154, v91, v86);
  v93 = v152 + *(type metadata accessor for ReaderMetadataProvider(0) + 20);
  v157 = ISO18013ReaderRequest.logotypeIconData.getter();
  if (v94 >> 60 == 15)
  {

LABEL_21:
    v127 = 0;
    v110 = 0xF000000000000000;
    v128 = v160;
LABEL_22:
    (*(v163 + 8))(v134, v128);
    sub_10000A0D4(v162, &qword_100202DD8, &qword_1001AD440);
    v129 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
    v130 = v161;
    (v156)(v161 + *(v129 + 20), v90, v92);
    *v130 = v127;
    v130[1] = v110;
    v131 = (v130 + *(v129 + 24));
    v132 = v159;
    *v131 = v151;
    v131[1] = v132;
    return (*(*(v129 - 8) + 56))(v130, 0, 1, v129);
  }

  v95 = v94;
  if (!*(v158 + 16))
  {

    sub_10001C120(v157, v95);
    goto LABEL_21;
  }

  v96 = v145;
  sub_100046360(v158 + ((*(v142 + 80) + 32) & ~*(v142 + 80)), v145, &qword_100202DA0, &qword_1001AD408);

  v97 = (v96 + *(v146 + 48));
  v99 = *v97;
  v98 = v97[1];
  v152 = v99;
  v150 = v98;
  v100 = v144;
  v101 = v143;
  v102 = &v143[*(v144 + 48)];
  v103 = v147;
  v158 = v95;
  v104 = *(v147 + 32);
  v105 = v96;
  v106 = v149;
  v104(v143, v105, v149);
  v107 = v150;
  *v102 = v152;
  *(v102 + 1) = v107;
  v108 = *&v101[*(v100 + 48) + 8];

  v109 = v148;
  v104(v148, v101, v106);
  v110 = v158;
  v111 = HashDigest.equalsHash(of:)();
  if (v68)
  {

    v112 = v141;
    defaultLogger()();
    v113 = v138;
    (*(v103 + 16))(v138, v109, v106);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = v106;
    v117 = v103;
    if (os_log_type_enabled(v114, v115))
    {
      v118 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168 = v167;
      *v118 = 136315138;
      v119 = v113;
      v120 = v135;
      LODWORD(v161) = v115;
      HashDigest.algorithm.getter();
      sub_1000E856C(&qword_100202DE8, &type metadata accessor for AlgorithmIdentifier);
      v121 = v137;
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      (*(v136 + 8))(v120, v121);
      v125 = *(v117 + 8);
      v125(v119, v149);
      v126 = sub_10010150C(v122, v124, &v168);
      v116 = v149;

      *(v118 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v114, v161, "Unable to verify logotype data hash, unknown hash algorithm identifier: %s", v118, 0xCu);
      sub_100005090(v167);

      (*(v139 + 8))(v141, v140);
    }

    else
    {

      v125 = *(v103 + 8);
      v125(v113, v116);
      (*(v139 + 8))(v112, v140);
    }

    (*(v165 + 104))(v164, enum case for DIPError.Code.internalError(_:), v166);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v157, v158);

    v125(v148, v116);
    (*(v153 + 8))(v154, v155);
    (*(v163 + 8))(v134, v160);
    return sub_10000A0D4(v162, &qword_100202DD8, &qword_1001AD440);
  }

  else
  {
    v92 = v155;
    if (v111)
    {
      (*(v147 + 8))(v109, v149);
      v90 = v154;
      v128 = v160;
      v127 = v157;
      goto LABEL_22;
    }

    (*(v165 + 104))(v164, enum case for DIPError.Code.idcsCertificateLogoHashMismatch(_:), v166);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v157, v110);
    (*(v147 + 8))(v148, v149);
    (*(v153 + 8))(v154, v92);
    (*(v163 + 8))(v134, v160);
    return sub_10000A0D4(v162, &qword_100202DD8, &qword_1001AD440);
  }
}

id sub_1000E539C()
{
  v2 = type metadata accessor for DIPError.Code();
  v285 = *(v2 - 8);
  v3 = *(v285 + 64);
  __chkstk_darwin(v2);
  v5 = &v245 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  v6 = *(v282 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v282);
  v248 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v249 = &v245 - v10;
  v11 = sub_100004E70(&qword_100202D78, &qword_1001AD3E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v261 = &v245 - v13;
  v275 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNamePair();
  v257 = *(v275 - 8);
  v14 = *(v257 + 64);
  v15 = __chkstk_darwin(v275);
  v254 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v253 = &v245 - v18;
  v19 = __chkstk_darwin(v17);
  v255 = &v245 - v20;
  __chkstk_darwin(v19);
  v272 = &v245 - v21;
  v274 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v273 = *(v274 - 8);
  v22 = *(v273 + 64);
  __chkstk_darwin(v274);
  v263 = &v245 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for Logger();
  v24 = *(v278 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v278);
  v270 = &v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v245 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v245 - v32;
  v34 = __chkstk_darwin(v31);
  v262 = &v245 - v35;
  v36 = __chkstk_darwin(v34);
  v256 = &v245 - v37;
  v38 = __chkstk_darwin(v36);
  v250 = &v245 - v39;
  v40 = __chkstk_darwin(v38);
  v252 = &v245 - v41;
  v42 = __chkstk_darwin(v40);
  v258 = &v245 - v43;
  __chkstk_darwin(v42);
  v45 = &v245 - v44;
  v46 = sub_100004E70(&qword_100202D80, &unk_1001AD3E8);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v259 = &v245 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v267 = &v245 - v51;
  __chkstk_darwin(v50);
  v281 = &v245 - v52;
  v53 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v54 = *(*(v53 - 8) + 64);
  v55 = __chkstk_darwin(v53 - 8);
  v279 = &v245 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v283 = &v245 - v58;
  v59 = __chkstk_darwin(v57);
  v264 = (&v245 - v60);
  __chkstk_darwin(v59);
  v286 = &v245 - v61;
  v62 = sub_100004E70(&qword_100202D88, &qword_1001AD3F8);
  v63 = *(*(v62 - 8) + 64);
  v64 = __chkstk_darwin(v62 - 8);
  v260 = (&v245 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __chkstk_darwin(v64);
  v251 = &v245 - v67;
  v68 = __chkstk_darwin(v66);
  v265 = (&v245 - v69);
  v70 = __chkstk_darwin(v68);
  v266 = (&v245 - v71);
  __chkstk_darwin(v70);
  v292 = (&v245 - v72);
  v276 = v0;
  sub_1000E2D74();
  v284 = v1;
  if (v1)
  {
    v271 = v24;
    v73 = [objc_opt_self() standardUserDefaults];
    v74._countAndFlagsBits = 0xD00000000000002ALL;
    v74._object = 0x80000001001B9B20;
    v75 = NSUserDefaults.internalBool(forKey:)(v74);

    if (!v75)
    {
      (*(v285 + 104))(v5, enum case for DIPError.Code.internalError(_:), v2);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v83 = type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v83;
    }

    defaultLogger()();
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    v78 = os_log_type_enabled(v76, v77);
    v280 = v6;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v76, v77, "Ignoring requested fields validation error due to user defaults setting: %@", v79, 0xCu);
      sub_10000A0D4(v80, &qword_1002003B8, &unk_1001AB850);
    }

    else
    {
    }

    v82 = v276;
    v24 = v271;
    (*(v271 + 8))(v30, v278);
    v284 = 0;
  }

  else
  {
    v280 = v6;
    v82 = v276;
  }

  v84 = v274;
  v85 = v280[7];
  v85(v292, 1, 1, v282);
  v86 = type metadata accessor for URL();
  v277 = *(v86 - 8);
  v87 = *(v277 + 56);
  v285 = v86;
  v269 = v277 + 56;
  v268 = v87;
  (v87)(v286, 1, 1);
  (*(v273 + 56))(v281, 1, 1, v84);
  v88 = type metadata accessor for ReaderMetadataProvider(0);
  if (*(v82 + *(v88 + 28)))
  {
    goto LABEL_10;
  }

  v245 = v85;
  sub_100046360(v82, &v288, &qword_100202D90, &qword_1001AD400);
  if (v289)
  {
    v246 = v88;
    sub_10001AA08(&v288, &v290);
    defaultLogger()();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Certificate is issued by Apple: reading read icon metadata and privacy policy URL", v102, 2u);
    }

    v103 = *(v24 + 8);
    v104 = v45;
    v105 = v278;
    v103(v104, v278);
    sub_100009278(&v290, v291);
    v106 = v264;
    v107 = v284;
    dispatch thunk of ReaderAuthenticationCertificate.privacyPolicyURL.getter();
    v108 = v280;
    v271 = v24 + 8;
    if (v107)
    {
      v109 = v270;
      defaultLogger()();
      DIPLogError(_:message:log:)();

      v103(v109, v105);
    }

    else
    {
      v110 = v280;
      v111 = v286;
      sub_10000A0D4(v286, &qword_1002019B0, &unk_1001ABDD0);
      v112 = v111;
      v108 = v110;
      sub_100046524(v106, v112, &qword_1002019B0, &unk_1001ABDD0);
    }

    v113 = v266;
    v94 = v276;
    sub_1000E3EFC(&v290, v266);
    v247 = v103;
    sub_1000E82DC(v113, v292);
    sub_100009278(&v290, v291);
    v114 = v267;
    dispatch thunk of ReaderAuthenticationCertificate.localizedRelyingPartyNames.getter();
    v284 = 0;
    v115 = v281;
    sub_10000A0D4(v281, &qword_100202D80, &unk_1001AD3E8);
    sub_100046524(v114, v115, &qword_100202D80, &unk_1001AD3E8);
    sub_100009278(&v290, v291);
    v266 = dispatch thunk of ReaderAuthenticationCertificate.pseudonym.getter();
    v117 = v116;
    v118 = v265;
    sub_100046360(v292, v265, &qword_100202D88, &qword_1001AD3F8);
    v280 = v108;
    v119 = v108[6];
    LODWORD(v115) = v119(v118, 1, v282);
    sub_10000A0D4(v118, &qword_100202D88, &qword_1001AD3F8);
    v120 = v115 == 1;
    v121 = v117;
    if (v120 || !v117)
    {
      v129 = v262;
      defaultLogger()();

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v270 = v121;
        v132 = swift_slowAlloc();
        *&v288 = swift_slowAlloc();
        *v132 = 136315394;
        v133 = v292;
        swift_beginAccess();
        v134 = v133;
        v135 = v251;
        sub_100046360(v134, v251, &qword_100202D88, &qword_1001AD3F8);
        v136 = v119(v135, 1, v282);
        v137 = 7104878;
        v138 = 0xE300000000000000;
        if (v136 != 1)
        {
          v139 = v135;
          v140 = v249;
          sub_1000E834C(v139, v249);
          sub_1000E83B0(v140, v248);
          v141 = String.init<A>(describing:)();
          v138 = v142;
          sub_1000E8414(v140);
          v137 = v141;
        }

        v143 = sub_10010150C(v137, v138, &v288);

        *(v132 + 4) = v143;
        *(v132 + 12) = 2080;
        if (v270)
        {
          v144 = v266;
        }

        else
        {
          v144 = 7104878;
        }

        if (v270)
        {
          v145 = v270;
        }

        else
        {
          v145 = 0xE300000000000000;
        }

        v146 = sub_10010150C(v144, v145, &v288);

        *(v132 + 14) = v146;
        _os_log_impl(&_mh_execute_header, v130, v131, "Received icon metadata (%s) and pseudonym (%s), at least one is nil: ignoring MCC, organization and organizational unit", v132, 0x16u);
        swift_arrayDestroy();

        v247(v262, v278);
        v97 = v282;
        v94 = v276;
      }

      else
      {

        v247(v129, v278);
        v97 = v282;
      }

      v147 = v246;
      v148 = v260;
      v245(v260, 1, 1, v97);
      v99 = v292;
      swift_beginAccess();
      sub_1000E82DC(v148, v99);
      v267 = 0;
      v278 = 0;
      v96 = 0;
      v266 = 0;
      v270 = 0;
      v98 = v280;
      goto LABEL_62;
    }

    v270 = v117;
    v122 = v258;
    defaultLogger()();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Icon metadata and pseudonym are present: reading MCC, forwarding organization and organizational unit", v125, 2u);
    }

    v247(v122, v278);
    sub_100009278(&v290, v291);
    v126 = dispatch thunk of ReaderAuthenticationCertificate.merchantCategoryCode.getter();
    v98 = v280;
    v99 = v292;
    v127 = v261;
    if (v128)
    {
      v267 = 0;
    }

    else
    {
      v267 = [objc_allocWithZone(NSNumber) initWithInteger:v126];
    }

    v149 = v274;
    v150 = v273;
    v151 = v263;
    v152 = v259;
    sub_100046360(v281, v259, &qword_100202D80, &unk_1001AD3E8);
    if ((*(v150 + 48))(v152, 1, v149) == 1)
    {
      v153 = &qword_100202D80;
      v154 = &unk_1001AD3E8;
    }

    else
    {
      (*(v150 + 32))(v151, v152, v149);
      v155 = ReaderAuthenticationLocalizedRelyingPartyNames.localizedNames.getter();
      v156 = *(v155 + 16);
      if (v156)
      {
        v287 = _swiftEmptyArrayStorage;
        sub_10010A6B4(0, v156, 0);
        v157 = v287;
        v264 = *(v257 + 16);
        v158 = (*(v257 + 80) + 32) & ~*(v257 + 80);
        v259 = v155;
        v159 = v155 + v158;
        v262 = *(v257 + 72);
        v265 = (v257 + 16);
        v260 = (v257 + 8);
        do
        {
          v160 = v272;
          v161 = v275;
          v264(v272, v159, v275);
          *&v288 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.getter();
          *(&v288 + 1) = v162;
          v163._countAndFlagsBits = 2112800;
          v163._object = 0xE300000000000000;
          String.append(_:)(v163);
          v164._countAndFlagsBits = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
          String.append(_:)(v164);

          v165 = v288;
          (*v260)(v160, v161);
          v287 = v157;
          v167 = v157[2];
          v166 = v157[3];
          if (v167 >= v166 >> 1)
          {
            sub_10010A6B4((v166 > 1), v167 + 1, 1);
            v157 = v287;
          }

          v157[2] = v167 + 1;
          *&v157[2 * v167 + 4] = v165;
          v159 += v262;
          --v156;
        }

        while (v156);

        v98 = v280;
        v99 = v292;
        v94 = v276;
        v152 = v261;
      }

      else
      {

        v157 = _swiftEmptyArrayStorage;
        v152 = v127;
      }

      v168 = v252;
      *&v288 = v157;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      sub_1000E8470();
      v169 = BidirectionalCollection<>.joined(separator:)();
      v171 = v170;

      defaultLogger()();

      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        *&v288 = v175;
        *v174 = 136315138;
        v176 = sub_10010150C(v169, v171, &v288);

        *(v174 + 4) = v176;
        _os_log_impl(&_mh_execute_header, v172, v173, "Localized relying party names are present: %s", v174, 0xCu);
        sub_100005090(v175);
        v99 = v292;

        v98 = v280;
      }

      else
      {
      }

      v247(v168, v278);
      v177 = *(v94 + *(v246 + 32));
      v178 = v263;
      ReaderAuthenticationLocalizedRelyingPartyNames.preferredLocalization(preferredLanguages:)();
      v179 = v257;
      v180 = v275;
      if ((*(v257 + 48))(v152, 1) != 1)
      {
        v187 = *(v179 + 32);
        v188 = v179;
        v189 = v255;
        v190 = v152;
        v191 = v180;
        v187(v255, v190, v180);
        v192 = v250;
        defaultLogger()();
        v193 = v188;
        v194 = *(v188 + 16);
        v194(v253, v189, v191);
        v194(v254, v189, v191);
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          LODWORD(v266) = v196;
          v198 = v197;
          v272 = swift_slowAlloc();
          *&v288 = v272;
          *v198 = 136315394;
          v199 = v253;
          v265 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.getter();
          v201 = v200;
          v202 = *(v193 + 8);
          v202(v199, v191);
          v203 = sub_10010150C(v265, v201, &v288);

          *(v198 + 4) = v203;
          *(v198 + 12) = 2080;
          v204 = v254;
          v205 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
          v265 = v195;
          v206 = v205;
          v208 = v207;
          v202(v204, v191);
          v209 = sub_10010150C(v206, v208, &v288);
          v99 = v292;

          *(v198 + 14) = v209;
          v210 = v265;
          _os_log_impl(&_mh_execute_header, v265, v266, "Overriding pseudonym with localization %s: %s", v198, 0x16u);
          swift_arrayDestroy();
          v98 = v280;

          v211 = v250;
        }

        else
        {

          v202 = *(v193 + 8);
          v202(v254, v191);
          v202(v253, v191);
          v211 = v192;
        }

        v247(v211, v278);
        v212 = v255;
        v266 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
        v214 = v213;
        v202(v212, v191);
        (*(v273 + 8))(v263, v274);

        v270 = v214;
        goto LABEL_60;
      }

      (*(v273 + 8))(v178, v274);
      v153 = &qword_100202D78;
      v154 = &qword_1001AD3E0;
    }

    sub_10000A0D4(v152, v153, v154);
    v181 = v256;
    defaultLogger()();
    v182 = v270;

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&v288 = v186;
      *v185 = 136315138;
      *(v185 + 4) = sub_10010150C(v266, v182, &v288);
      _os_log_impl(&_mh_execute_header, v183, v184, "No suitable localized relying party name found, using organization as pseudonym: %s", v185, 0xCu);
      sub_100005090(v186);
      v147 = v246;

      v247(v181, v278);
      v97 = v282;
LABEL_61:
      v215 = v94 + *(v147 + 24);
      v96 = *(v215 + 40);
      v278 = *(v215 + 32);

LABEL_62:
      sub_100005090(&v290);
      v93 = *(v147 + 24);
      goto LABEL_63;
    }

    v247(v181, v278);
LABEL_60:
    v97 = v282;
    v147 = v246;
    goto LABEL_61;
  }

  sub_10000A0D4(&v288, &qword_100202D90, &qword_1001AD400);
LABEL_10:
  v89 = v24;
  defaultLogger()();
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "Certificate not present or not issued by Apple: will not read icon metadata, privacy policy URL, or merchant category code", v92, 2u);
  }

  (*(v89 + 8))(v33, v278);
  v93 = *(v88 + 24);
  v94 = v82;
  v95 = *(v82 + v93 + 24);
  v266 = *(v82 + v93 + 16);
  v96 = *(v82 + v93 + 40);
  v278 = *(v82 + v93 + 32);

  v270 = v95;

  v267 = 0;
  v97 = v282;
  v98 = v280;
  v99 = v292;
LABEL_63:
  v216 = *(v94 + v93);
  v217 = *(v94 + v93 + 8);
  swift_beginAccess();
  v218 = v98[6];
  v219 = v97;
  if (v218(v99, 1, v97))
  {
    v275 = 0;
    v220 = 0xF000000000000000;
  }

  else
  {
    v220 = v99[1];
    v275 = *v99;
    sub_100032EBC(v275, v220);
  }

  v221 = 1;
  if (!v218(v99, 1, v219))
  {
    (*(v277 + 16))(v283, v99 + *(v219 + 20), v285);
    v221 = 0;
  }

  v268(v283, v221, 1, v285);
  if (v218(v99, 1, v219))
  {
    v276 = 0;
    v222 = 0;
  }

  else
  {
    v223 = (v99 + *(v219 + 24));
    v222 = v223[1];
    v276 = *v223;
  }

  v224 = v277;
  sub_100046360(v286, v279, &qword_1002019B0, &unk_1001ABDD0);
  v282 = String._bridgeToObjectiveC()();
  v225 = v283;
  if (v270)
  {
    v280 = String._bridgeToObjectiveC()();

    if (v96)
    {
LABEL_73:
      v278 = String._bridgeToObjectiveC()();

      goto LABEL_76;
    }
  }

  else
  {
    v280 = 0;
    if (v96)
    {
      goto LABEL_73;
    }
  }

  v278 = 0;
LABEL_76:
  if (v220 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v227 = v275;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v227, v220);
  }

  v228 = *(v224 + 48);
  v229 = v285;
  if (v228(v225, 1, v285) != 1)
  {
    URL._bridgeToObjectiveC()(v230);
    v231 = v234;
    (*(v224 + 8))(v225, v229);
    v232 = v279;
    if (v222)
    {
      goto LABEL_81;
    }

LABEL_83:
    v233 = 0;
    goto LABEL_84;
  }

  v231 = 0;
  v232 = v279;
  if (!v222)
  {
    goto LABEL_83;
  }

LABEL_81:
  v233 = String._bridgeToObjectiveC()();

LABEL_84:
  v235 = v285;
  if (v228(v232, 1, v285) == 1)
  {
    v237 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v236);
    v237 = v238;
    (*(v277 + 8))(v232, v235);
  }

  v239 = objc_allocWithZone(DCPresentmentProposalReaderMetadata);
  v240 = v267;
  v241 = v282;
  v242 = v280;
  v243 = v278;
  v83 = [v239 initWithIdentifier:v282 organization:v280 organizationalUnit:v278 iconData:isa iconURL:v231 iconMediaType:v233 privacyPolicyURL:v237 merchantCategoryCode:v267];

  sub_10000A0D4(v281, &qword_100202D80, &unk_1001AD3E8);
  sub_10000A0D4(v286, &qword_1002019B0, &unk_1001ABDD0);
  sub_10000A0D4(v292, &qword_100202D88, &qword_1001AD3F8);
  return v83;
}

__n128 sub_1000E73CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  *(a7 + 32) = *(a1 + 32);
  v14 = a6[5];
  v15 = type metadata accessor for ISO18013ReaderRequest();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  v16 = a6[7];
  v17 = a7 + a6[6];
  v18 = *(a3 + 16);
  *v17 = *a3;
  *(v17 + 16) = v18;
  result = *(a3 + 32);
  *(v17 + 32) = result;
  *(a7 + v16) = a4;
  *(a7 + a6[8]) = a5;
  return result;
}

void *sub_1000E74C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000E884C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

Swift::Int sub_1000E7560(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000E813C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000E75CC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000E75CC(uint64_t *a1)
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
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000E7794(v7, v8, a1, v4);
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
    return sub_1000E76C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E76C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7794(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000E8024(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000E7D70((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000E8038(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000E8038((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000E7D70((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000E8024(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000E7F98(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000E7D70(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000E7F98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000E8024(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1000E8038(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100202DF0, &qword_1001AD4C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000E8150(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_100032EBC(*a1, v4);
      sub_100032EBC(v7, v6);
      sub_10001C120(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_100032EBC(*a1, v4);
    sub_100032EBC(v7, v6);
    sub_10001C120(v5, v4);
    sub_10001C120(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_100032EBC(*a1, v4);
  sub_100032EBC(v7, v6);
  v9 = sub_1000EBB34(v5, v4, v7, v6);
  sub_10001C120(v7, v6);
  sub_10001C120(v5, v4);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v10 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  v11 = *(v10 + 20);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v10 + 24);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E82DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202D88, &qword_1001AD3F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E834C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E83B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E8414(uint64_t a1)
{
  v2 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E8470()
{
  result = qword_100202D98;
  if (!qword_100202D98)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202D98);
  }

  return result;
}

uint64_t sub_1000E856C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000E85BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_10010A9A0(0, v3, 0);
    v38 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    v6 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(a1 + 36);
    v33 = v3;
    v34 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v36 = v8;
      v12 = (*(a1 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + v7);

      v16 = a2(v13, v14, v15);
      v18 = v17;
      v37 = v19;
      v21 = v20;

      v22 = v38;
      v24 = v38[2];
      v23 = v38[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_10010A9A0((v23 > 1), v24 + 1, 1);
        v22 = v38;
      }

      v22[2] = v24 + 1;
      v25 = &v22[4 * v24];
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v37;
      v25[7] = v21;
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v26 = *(a1 + 64 + 8 * v11);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v38 = v22;
      v9 = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v11 << 6;
        v29 = v11 + 1;
        v30 = (a1 + 72 + 8 * v11);
        while (v29 < (v10 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1000468A0(v7, v34, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v7, v34, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v10;
      if (v36 + 1 == v33)
      {
        return v38;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E884C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v32 = v9;
    v30 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v20 = Hasher._finalize()();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a4 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v17;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v32;
    }

    else
    {
LABEL_22:

      v9 = v32;
      v15 = v30;
LABEL_23:
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_26:

        return sub_100165C84(v28, a2, v29, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000E8A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v34[0] = v3;
    v34[1] = v34;
    v35 = v8;
    __chkstk_darwin(v10);
    v36 = v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v37 = 0;
    v38 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v15 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v39 = v16 | (v11 << 6);
      v40 = v14;
      v20 = (*(v5 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(a2 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = -1 << *(a2 + 32);
      v9 = v24 & ~v25;
      if ((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v26 = ~v25;
        while (1)
        {
          v27 = (*(a2 + 48) + 16 * v9);
          v28 = *v27 == v22 && v27[1] == v21;
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v26;
          if (((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v38;
        v14 = v40;
      }

      else
      {
LABEL_23:

        v5 = v38;
        v19 = v39;
        v14 = v40;
LABEL_24:
        *&v36[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_27:
          v30 = sub_100165C84(v36, v35, v37, v5);

          return v30;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();

  v33 = sub_1000E74C4(v32, v8, v5, a2);

  return v33;
}

uint64_t sub_1000E8DA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v2;
}

uint64_t sub_1000E8E14@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E8E40(uint64_t *a1)
{
  v1 = *a1;

  return ISO18013ReaderRequest.ItemsRequest.namespaces.setter();
}

uint64_t sub_1000E8E6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1000E8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24) + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000E8FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000E9094()
{
  sub_1000E9144(319, &qword_100201A40, &type metadata for Data, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E9144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1000E91B0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v43 = type metadata accessor for ISO18013KnownDocTypes();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DocumentRequest();
  v6 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v44 = v12;
    v13 = (a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64)));
    v41 = *(v11 + 56);
    v40 = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    v38 = (v3 + 8);
    v39 = (v3 + 104);
    v37 = (v11 - 8);
    v14 = _swiftEmptyArrayStorage;
    v45 = v11;
    v12(v9, v13, v46);
    while (1)
    {
      v15 = DocumentRequest.docType.getter();
      v17 = v16;
      v19 = v42;
      v18 = v43;
      (*v39)(v42, v40, v43);
      v20 = ISO18013KnownDocTypes.rawValue.getter();
      v22 = v21;
      (*v38)(v19, v18);
      if (v20 == v15 && v22 == v17)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          (*v37)(v9, v46);
          goto LABEL_4;
        }
      }

      v24 = type metadata accessor for MDLRequestValidator();
      v51 = v24;
      v52 = &off_1001F7478;
      v25 = sub_10001A9A4(v50);
      v44(v25, v9, v46);
      *(v25 + *(v24 + 20)) = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1001007B8(0, v14[2] + 1, 1, v14);
      }

      v27 = v14[2];
      v26 = v14[3];
      if (v27 >= v26 >> 1)
      {
        v14 = sub_1001007B8((v26 > 1), v27 + 1, 1, v14);
      }

      (*v37)(v9, v46);
      v28 = v51;
      v29 = sub_1000129AC(v50, v51);
      v30 = *(*(v28 - 8) + 64);
      __chkstk_darwin(v29);
      v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      v48 = v24;
      v49 = &off_1001F7478;
      v34 = sub_10001A9A4(&v47);
      sub_1000E9604(v32, v34);
      v14[2] = v27 + 1;
      sub_10001AA08(&v47, &v14[5 * v27 + 4]);
      sub_100005090(v50);
LABEL_4:
      v13 += v41;
      if (!--v10)
      {
        return v14;
      }

      v44(v9, v13, v46);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000E9604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MDLRequestValidator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v29;
  v8[27] = v30;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = type metadata accessor for DIPError.Code();
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v11 = *(v10 + 64) + 15;
  v8[30] = swift_task_alloc();
  v12 = sub_100004E70(&qword_100202EB0, &qword_1001AD668);
  v8[31] = v12;
  v13 = *(v12 - 8);
  v8[32] = v13;
  v14 = *(v13 + 64) + 15;
  v8[33] = swift_task_alloc();
  v15 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v8[34] = v15;
  v16 = *(v15 - 8);
  v8[35] = v16;
  v17 = *(v16 + 64) + 15;
  v8[36] = swift_task_alloc();
  v18 = type metadata accessor for SHA256();
  v8[37] = v18;
  v19 = *(v18 - 8);
  v8[38] = v19;
  v20 = *(v19 + 64) + 15;
  v8[39] = swift_task_alloc();
  v21 = type metadata accessor for SHA256Digest();
  v8[40] = v21;
  v22 = *(v21 - 8);
  v8[41] = v22;
  v23 = *(v22 + 64) + 15;
  v8[42] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v8[43] = v24;
  v25 = *(v24 - 8);
  v8[44] = v25;
  v26 = *(v25 + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return _swift_task_switch(sub_1000E9924, 0, 0);
}

uint64_t sub_1000E9924()
{
  v57 = v0;
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[21];
  v4 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v0[47] = v4;
  v0[48] = v5;
  v6 = v4;
  v7 = v5;
  type metadata accessor for SecAccessControl(0);
  v8 = static SecAccessControlRef.fromConstraintsData(_:)();
  v0[49] = v8;
  v55 = v8;
  v9 = SecAccessControlRef.osgnParentKey.getter();
  v0[50] = v9;
  v0[51] = v10;
  if (v10 >> 60 == 15)
  {
    v11 = v0[45];
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not a child key; signing digest directly", v14, 2u);
    }

    v15 = v0[44];
    v16 = v0[43];
    v53 = v0[25];
    v54 = v0[27];
    v52 = v0[24];
    v51 = v0[23];
    v49 = v0[45];
    v50 = v0[22];
    v17 = v0[20];
    v18 = v0[21];
    v19 = v12;
    v20 = v0[18];
    v21 = v0[19];

    (*(v15 + 8))(v49, v16);
    v22 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    v24 = v23;

    sub_1000092BC(v6, v7);
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[42];
    v28 = v0[39];
    v29 = v0[36];
    v30 = v0[33];
    v31 = v0[30];

    v32 = v0[1];

    return v32(v22, v24);
  }

  else
  {
    v34 = v9;
    v35 = v10;
    v36 = v0[46];
    defaultLogger()();
    sub_100009708(v34, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_10001C120(v34, v35);
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[46];
    v41 = v0[43];
    v42 = v0[44];
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136315138;
      v45 = Data.base16EncodedString()();
      v46 = sub_10010150C(v45._countAndFlagsBits, v45._object, &v56);

      *(v43 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Child key of %s, using key chaining", v43, 0xCu);
      sub_100005090(v44);
    }

    (*(v42 + 8))(v40, v41);
    v47 = swift_task_alloc();
    v0[52] = v47;
    *v47 = v0;
    v47[1] = sub_1000E9E90;
    v48 = v0[26];

    return sub_10012ED08(0);
  }
}

uint64_t sub_1000E9E90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v5 = sub_1000EB7C4;
  }

  else
  {
    v5 = sub_1000E9FA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E9FA4()
{
  v1 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  if (v1)
  {
    v4 = (v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v5 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v6 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    sub_100009708(v5, v6);
    v7 = sub_1000EBB34(v3, v2, v5, v6);
    sub_1000092BC(v5, v6);
    if (v7)
    {
      v8 = [objc_allocWithZone(LAContext) init];
      v0[55] = v8;
      v9 = swift_task_alloc();
      v0[56] = v9;
      *v9 = v0;
      v9[1] = sub_1000EA594;
      v10 = v0[49];

      return sub_1000EBC9C(v8, v10);
    }

    v28 = v0[50];
    v29 = v0[51];
    v33 = v0[48];
    v30 = v0[49];
    v32 = v0[47];
    v15 = v0[29];
    v14 = v0[30];
    v35 = v0[28];
    _StringGuts.grow(_:)(76);
    v16._object = 0x80000001001B9E60;
    v16._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v16);
    v17 = Data.base16EncodedString()();
    String.append(_:)(v17);

    v18._object = 0x80000001001B9E90;
    v18._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v18);
    v19 = *v4;
    v20 = v4[1];
    sub_100009708(*v4, v20);
    v21 = Data.base16EncodedString()();
    sub_1000092BC(v19, v20);
    String.append(_:)(v21);

    (*(v15 + 104))(v14, enum case for DIPError.Code.idcsProgenitorKeyACLMismatch(_:), v35);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v28, v29);

    v13 = v32;
  }

  else
  {
    v31 = v0[49];
    v33 = v0[48];
    v12 = v0[47];
    (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[28]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v3, v2);

    v13 = v12;
  }

  sub_1000092BC(v13, v33);
  v23 = v0[45];
  v22 = v0[46];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[36];
  v34 = v0[33];
  (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.internalError(_:), v0[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000EA594(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 448);
  v8 = *v3;
  v4[57] = a1;
  v4[58] = a2;
  v4[59] = v2;

  if (v2)
  {
    v6 = sub_1000EAD64;
  }

  else
  {
    v6 = sub_1000EA6AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000EA6AC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[42];
  v5 = v0[39];
  v34 = v0[40];
  v35 = v0[41];
  v7 = v0[37];
  v6 = v0[38];
  v36 = v0[35];
  v39 = v0[36];
  v40 = v0[34];
  v51 = v0[27];
  v44 = v0[23];
  v48 = v0[25];
  v42 = v0[22];
  v8 = (v0[53] + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob);
  v37 = v8[1];
  v38 = *v8;
  sub_1000EC98C(&qword_100200608, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100009708(v3, v2);
  sub_1000D8FBC(v3, v2);
  sub_1000092BC(v3, v2);
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v5, v7);
  sub_1000EC98C(&qword_100200610, &type metadata accessor for SHA256Digest);
  v9 = Digest.data.getter();
  v11 = v10;
  (*(v35 + 8))(v4, v34);
  (*(v36 + 104))(v39, enum case for SESKeystore.SignatureOutputFormat.der(_:), v40);
  v12 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
  v0[60] = v1;
  v0[61] = v12;
  v0[62] = v13;
  if (v1)
  {
    v45 = v0[57];
    v49 = v0[58];
    v52 = v0[55];
    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    (*(v0[35] + 8))(v0[36], v0[34]);
    sub_1000092BC(v9, v11);
    v17 = enum case for DIPError.Code.internalError(_:);
    (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v16);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v45, v49);

    v18 = v0[53];
    v20 = v0[50];
    v19 = v0[51];
    v21 = v0[48];
    v22 = v0[49];
    v23 = v0[47];

    sub_10001C120(v20, v19);

    sub_1000092BC(v23, v21);
    v25 = v0[45];
    v24 = v0[46];
    v41 = v0[42];
    v46 = v0[39];
    v50 = v0[36];
    v53 = v0[33];
    (*(v0[29] + 104))(v0[30], v17, v0[28]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }

  else
  {
    v54 = v0[55];
    v29 = v0[35];
    v28 = v0[36];
    v30 = v0[34];
    v31 = v0[32];
    v43 = v0[31];
    v47 = v0[33];
    sub_1000092BC(v9, v11);
    (*(v29 + 8))(v28, v30);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[63] = isa;
    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_1000EAF74;
    swift_continuation_init();
    v0[17] = v43;
    v33 = sub_10001A9A4(v0 + 14);
    sub_100004E70(&qword_100200208, &qword_1001AA530);
    CheckedContinuation.init(continuation:function:)();
    (*(v31 + 32))(v33, v47, v43);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000EB9BC;
    v0[13] = &unk_1001F7758;
    [v54 setCredential:isa type:-11 reply:?];
    (*(v31 + 8))(v33, v43);

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000EAD64()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  v7 = *(v0 + 376);

  sub_10001C120(v3, v4);

  sub_1000092BC(v7, v5);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v10 = *(v0 + 336);
  v13 = *(v0 + 312);
  v14 = *(v0 + 288);
  v15 = *(v0 + 264);
  (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.internalError(_:), *(v0 + 224));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000EAF74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 512) = v2;
  if (v2)
  {
    v3 = sub_1000EB588;
  }

  else
  {
    v3 = sub_1000EB084;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EB084()
{
  v1 = *(v0 + 440);

  v2 = [v1 externalizedContext];
  if (!v2)
  {
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    v22 = *(v0 + 456);
    v49 = *(v0 + 464);
    v53 = *(v0 + 440);
    (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.localAuthenticationCannotExternalizeContext(_:), *(v0 + 224));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v21, v20);
    sub_1000092BC(v22, v49);

    goto LABEL_5;
  }

  v52 = *(v0 + 216);
  v56 = *(v0 + 480);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = v2;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v18 = *(v0 + 456);
  v17 = *(v0 + 464);
  v19 = *(v0 + 440);
  if (v56)
  {
    sub_1000092BC(v10, v12);
    sub_1000092BC(v16, v15);
    sub_1000092BC(v18, v17);

LABEL_5:
    v23 = *(v0 + 424);
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    v26 = *(v0 + 384);
    v27 = *(v0 + 392);
    v28 = *(v0 + 376);

    sub_10001C120(v24, v25);

    sub_1000092BC(v28, v26);
    v30 = *(v0 + 360);
    v29 = *(v0 + 368);
    v31 = *(v0 + 336);
    v32 = *(v0 + 312);
    v50 = *(v0 + 288);
    v54 = *(v0 + 264);
    (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.internalError(_:), *(v0 + 224));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  v35 = *(v0 + 424);
  v36 = *(v0 + 400);
  v47 = *(v0 + 408);
  v48 = *(v0 + 392);
  v51 = *(v0 + 376);
  v55 = *(v0 + 384);
  v57 = v13;
  v37 = v10;
  v38 = v14;
  sub_1000092BC(v37, v12);
  sub_1000092BC(v16, v15);
  sub_1000092BC(v18, v17);

  sub_10001C120(v36, v47);

  sub_1000092BC(v51, v55);
  v40 = *(v0 + 360);
  v39 = *(v0 + 368);
  v41 = *(v0 + 336);
  v42 = *(v0 + 312);
  v43 = *(v0 + 288);
  v44 = *(v0 + 264);
  v45 = *(v0 + 240);

  v46 = *(v0 + 8);

  return v46(v57, v38);
}

uint64_t sub_1000EB588()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  swift_willThrow();
  sub_1000092BC(v3, v4);
  sub_1000092BC(v6, v5);

  v8 = v0[64];
  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[51];
  v12 = v0[48];
  v13 = v0[49];
  v14 = v0[47];

  sub_10001C120(v10, v11);

  sub_1000092BC(v14, v12);
  v15 = v0[45];
  v16 = v0[46];
  v17 = v0[42];
  v20 = v0[39];
  v21 = v0[36];
  v22 = v0[33];
  (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.internalError(_:), v0[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000EB7C4()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  sub_10001C120(v0[50], v0[51]);

  sub_1000092BC(v3, v1);
  v4 = v0[54];
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[42];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[33];
  (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.internalError(_:), v0[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_1000EB9BC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100009278((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100004E70(&qword_100202EB0, &qword_1001AD668);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100004E70(&qword_100202EB0, &qword_1001AD668);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1000EBA60(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100009278((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100004E70(&qword_100202EB8, &qword_1001AD678);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100004E70(&qword_100202EB8, &qword_1001AD678);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000EBB34(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100009708(a3, a4);
          return sub_100100288(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EBC9C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = sub_100004E70(&qword_100202EB8, &qword_1001AD678);
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EBDC4, 0, 0);
}

uint64_t sub_1000EBDC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 24;
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v11 = v1[26];
  v10 = v1[25];
  sub_10010CEF0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[33] = isa;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1000EBFDC;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_10001A9A4(v1 + 14);
  sub_100004E70(&qword_100202EC0, &unk_1001AD680);
  sub_100004E70(&qword_100200208, &qword_1001AA530);
  CheckedContinuation.init(continuation:function:)();
  (*(v4 + 32))(v8, v5, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000EBA60;
  v1[13] = &unk_1001F7780;
  [v10 evaluateAccessControl:v11 operation:3 options:isa reply:?];
  (*(v4 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000EBFDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1000EC5A4;
  }

  else
  {
    v3 = sub_1000EC0EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EC0EC()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  v5 = enum case for DIPError.Code.localAuthenticationInvalidContext(_:);
  (*(v2 + 104))(v1, enum case for DIPError.Code.localAuthenticationInvalidContext(_:), v3);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v28 = _convertErrorToNSError(_:)();
  v6 = [v28 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v28 code] == -1026)
  {
    v12 = [v28 userInfo];
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v13 + 16))
    {
      v16 = sub_100099644(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_10000B558(*(v13 + 56) + 32 * v16, v0 + 144);

        if (swift_dynamicCast())
        {
          v19 = *(v0 + 256);
          v20 = *(v0 + 232);

          v21 = *(v0 + 176);
          v22 = *(v0 + 184);

          v23 = *(v0 + 8);

          return v23(v21, v22);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

LABEL_15:
    (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.localAuthenticationMissingNonce(_:), *(v0 + 216));
    goto LABEL_16;
  }

LABEL_12:
  (*(*(v0 + 224) + 104))(*(v0 + 232), v5, *(v0 + 216));
  swift_errorRetain();
LABEL_16:
  v25 = *(v0 + 256);
  v26 = *(v0 + 232);
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000EC5A4()
{
  v1 = v0[33];
  v2 = v0[34];
  swift_willThrow();

  v3 = v0[34];
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v4 code] != -1026)
  {
LABEL_15:
    (*(v0[28] + 104))(v0[29], enum case for DIPError.Code.localAuthenticationInvalidContext(_:), v0[27]);
    swift_errorRetain();
LABEL_19:
    v25 = v0[32];
    v26 = v0[29];
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }

  v12 = [v4 userInfo];
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v13 + 16))
  {

    goto LABEL_17;
  }

  v16 = sub_100099644(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_10000B558(*(v13 + 56) + 32 * v16, (v0 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    (*(v0[28] + 104))(v0[29], enum case for DIPError.Code.localAuthenticationMissingNonce(_:), v0[27]);
    goto LABEL_19;
  }

  v19 = v0[32];
  v20 = v0[29];

  v21 = v0[22];
  v22 = v0[23];

  v23 = v0[1];

  return v23(v21, v22);
}

uint64_t sub_1000EC98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EC9F4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000ECAB8, v2, 0);
}

uint64_t sub_1000ECAB8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ECADC, v1, 0);
}

uint64_t sub_1000ECADC()
{
  v1 = *(v0 + 56);
  sub_100113200(*(v0 + 72), *(v0 + 16));
  *(v0 + 64) = 0;
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000ECBA0()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000ECCF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000ECDB0, v1, 0);
}

uint64_t sub_1000ECDB0()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ECDD4, v1, 0);
}

uint64_t sub_1000ECDD4()
{
  v1 = v0[7];
  v2 = sub_10011B9DC(v0[2]);
  v0[8] = 0;
  v3 = v0[6];
  v4 = v2;

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000ECEA0()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000ECFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED0BC, v5, 0);
}

uint64_t sub_1000ED0BC()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_1000ED0E0, v1, 0);
}

uint64_t sub_1000ED0E0()
{
  v1 = v0[11];
  v2 = sub_10011C098();
  v3 = sub_100111F78(v0[2], v0[3], v0[4], v2, v0[5], v0[6]);

  v4 = v0[10];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000ED2D8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 136), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000ED418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED4D8, v1, 0);
}

uint64_t sub_1000ED4D8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ED4FC, v1, 0);
}

uint64_t sub_1000ED4FC()
{
  v1 = v0[7];
  sub_10011BBF8(v0[2]);
  v0[8] = 0;
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000ED5BC()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000ED710()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED7D0, v0, 0);
}

uint64_t sub_1000ED7D0()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1000ED7F4, v1, 0);
}

uint64_t sub_1000ED7F4()
{
  v1 = v0[6];
  v2 = sub_10011DE30();
  v0[7] = 0;
  v3 = v0[5];
  v4 = v2;

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000ED8BC()
{
  v1 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000EDA0C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EDA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ISO18013CodingKeyFormat();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ACWGPackagePayloadProcessor();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v7 + 104))(v10, enum case for ISO18013CodingKeyFormat.ACWG(_:), v6);
  result = sub_1000EE06C(a1, a2, v10);
  *(v11 + 112) = result;
  *a3 = v11;
  return result;
}

uint64_t sub_1000EDB78(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000EC9F4(a1, a2);
}

uint64_t sub_1000EDC24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EDCBC;

  return sub_1000ECCF0(a1);
}

uint64_t sub_1000EDCBC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000EDDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000EE1A0;

  return sub_1000ECFF4(a1, a2, a3, a4, a5);
}

uint64_t sub_1000EDE84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_1000ED418(a1);
}

uint64_t sub_1000EDF20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EE1A0;

  return sub_1000ED710();
}

uint64_t sub_1000EDFB0()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000EDFD0, v2, 0);
}

uint64_t sub_1000EDFD0()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1000EDFF4, v1, 0);
}

uint64_t sub_1000EDFF4()
{
  v1 = *(v0 + 24);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  sub_100009708(v3, v2);
  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1000EE06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = &type metadata for PayloadProcessorAnalyticsRecorder;
  v18[4] = &off_1001F7C60;
  v6 = type metadata accessor for ISO18013PackagePayloadProcessor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1000129AC(v18, &type metadata for PayloadProcessorAnalyticsRecorder);
  v16 = &type metadata for PayloadProcessorAnalyticsRecorder;
  v17 = &off_1001F7C60;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
  v11 = type metadata accessor for ISO18013Package();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *(v9 + 112) = a1;
  *(v9 + 120) = a2;
  sub_10001AA08(&v15, v9 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
  v12 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v13 = type metadata accessor for ISO18013CodingKeyFormat();
  (*(*(v13 - 8) + 32))(v9 + v12, a3, v13);
  sub_100005090(v18);
  return v9;
}

uint64_t sub_1000EE1A8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EE260@<X0>(uint64_t a1@<X8>)
{
  v19 = *v1;
  v3 = v19;
  v4 = *(v19 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v3 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v13], v5);
  v14 = *(v4 - 8);
  if ((*(v14 + 48))(v12, 1, v4) != 1)
  {
    return (*(v14 + 32))(a1, v12, v4);
  }

  (*(v6 + 8))(v12, v5);
  v15 = v20;
  result = sub_1000EF1F8();
  if (!v15)
  {
    v17 = *(*(v19 + 88) + 16);
    v20 = 0;
    v17(result);
    (*(v14 + 16))(v10, a1, v4);
    (*(v14 + 56))(v10, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v13], v10, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000EE518(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000EE614, v2, 0);
}

uint64_t sub_1000EE614()
{
  v1 = *(v0 + 24);
  sub_1000EE260(*(v0 + 56));
  v2 = *(*(*(v0 + 32) + 88) + 8);
  v10 = (*(v2 + 8) + **(v2 + 8));
  v3 = *(*(v2 + 8) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000EE794;
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 80);

  return v10(v7, v8, v6, v2);
}

uint64_t sub_1000EE794()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[3];

    return _swift_task_switch(sub_1000F0F08, v7, 0);
  }

  else
  {
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1000EE93C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EEA34, v1, 0);
}

uint64_t sub_1000EEA34()
{
  v1 = v0[3];
  sub_1000EE260(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 16) + **(v2 + 16));
  v3 = *(*(v2 + 16) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EEBB0;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000EEBB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = v4[3];
    (*(v7 + 8))(v4[7], v4[5]);

    return _swift_task_switch(sub_1000EED78, v8, 0);
  }

  else
  {
    v9 = v4[7];
    (*(v7 + 8))();

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_1000EED78()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000EEDDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EEED4, v1, 0);
}

uint64_t sub_1000EEED4()
{
  v1 = v0[3];
  sub_1000EE260(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 32) + **(v2 + 32));
  v3 = *(*(v2 + 32) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF050;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000EF050()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[3];

    return _swift_task_switch(sub_1000EED78, v7, 0);
  }

  else
  {
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1000EF1F8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[16];
  result = sub_1000EF3E8(v0[14], v0[15]);
  if (v1)
  {
    v9 = result;
    (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v9;
  }

  return result;
}

uint64_t sub_1000EF3E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v17 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009708(a1, a2);
  sub_1000F0858(a1, a2);
  if (v2)
  {
    (*(v7 + 104))(v17, enum case for DIPError.Code.failedToDecryptPayload(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v3 = static AES.GCM.open(_:using:)();
    (*(v11 + 8))(v14, v10);
  }

  return v3;
}

uint64_t sub_1000EF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000EF7D0, v5, 0);
}

uint64_t sub_1000EF7D0()
{
  v1 = v0[7];
  sub_1000EE260(v0[11]);
  v2 = *(*(v0[8] + 88) + 8);
  v13 = (*(v2 + 24) + **(v2 + 24));
  v3 = *(*(v2 + 24) + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF954;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v6, v2);
}

uint64_t sub_1000EF954(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[10];
  if (v1)
  {
    v8 = v4[7];
    (*(v7 + 8))(v4[11], v4[9]);

    return _swift_task_switch(sub_1000EFB1C, v8, 0);
  }

  else
  {
    v9 = v4[11];
    (*(v7 + 8))();

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_1000EFB1C()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000EFB80()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000EFC78, v0, 0);
}

uint64_t sub_1000EFC78()
{
  v1 = v0[2];
  sub_1000EE260(v0[6]);
  v2 = *(*(v0[3] + 88) + 8);
  v8 = (*(v2 + 40) + **(v2 + 40));
  v3 = *(*(v2 + 40) + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000EFDF0;
  v5 = v0[6];
  v6 = v0[4];

  return v8(v6, v2);
}

uint64_t sub_1000EFDF0(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {
    v6 = v5[2];
    (*(v5[5] + 8))(v5[6], v5[4]);

    return _swift_task_switch(sub_1000EFF7C, v6, 0);
  }

  else
  {
    (*(v5[5] + 8))(v5[6], v5[4]);

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_1000EFF7C()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

char *sub_1000EFFE0()
{
  v1 = *v0;
  sub_1000092BC(*(v0 + 14), *(v0 + 15));
  v2 = *(v0 + 16);

  v3 = *(v0 + 17);

  v4 = *(*v0 + 128);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F008C()
{
  sub_1000EFFE0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F00EC(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000EE518(a1, a2);
}

uint64_t sub_1000F0198(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EDCBC;

  return sub_1000EE93C(a1);
}

uint64_t sub_1000F0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000EE1A0;

  return sub_1000EF6D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1000F02F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_1000EEDDC(a1);
}

uint64_t sub_1000F0394()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EE1A0;

  return sub_1000EFB80();
}

uint64_t sub_1000F0424()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000F0444, v2, 0);
}

uint64_t sub_1000F0444()
{
  v1 = *(v0 + 16);
  v2 = sub_1000EF1F8();
  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1000F04F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100203028, &unk_1001AD880);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v17 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_1000F0E1C();
  v18 = v28;
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1000F0E70(v11);
  if (!v18)
  {
    v19 = v25;
    v20 = v4;
    v4 = AES.GCM.SealedBox.combined.getter();
    v22 = v21;
    (*(v13 + 8))(v16, v12);
    if (v22 >> 60 == 15)
    {
      (*(v19 + 104))(v7, enum case for DIPError.Code.failedToEncryptPayload(_:), v20);
      v4 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_1000F0858(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1000092BC(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1000F0BFC(&qword_100203020, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_100009278(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_1000F0B68(v15, v14, &v28);
  sub_100005090(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

_BYTE *sub_1000F0B68@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000F0C64(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000F0D1C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000F0D98(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000F0BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F0C44(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0C64(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000F0D1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000F0D98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000F0E1C()
{
  result = qword_100203030;
  if (!qword_100203030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203030);
  }

  return result;
}

uint64_t sub_1000F0E70(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203028, &unk_1001AD880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000F0F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  swift_defaultActor_initialize();
  v7 = type metadata accessor for SESKeystore();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = SESKeystore.init()();
  v11 = type metadata accessor for SEPairingManager();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = SEPairingManager.init()();
  v15 = type metadata accessor for GenericPasswordKeychainWrapper();
  v34 = v15;
  v35 = &off_1001F4DE8;
  v33[0] = swift_allocObject();
  v16 = type metadata accessor for SyncableKeyStoreProvider();
  v17 = swift_allocObject();
  v18 = sub_1000129AC(v33, v15);
  v19 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v33[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v17[5] = v15;
  v17[6] = &off_1001F4DE8;
  v17[2] = v23;

  sub_100005090(v33);
  v34 = v16;
  v35 = &off_1001F5068;
  v33[0] = v17;
  type metadata accessor for CredentialKeyManager();
  v24 = swift_allocObject();
  v25 = sub_1000129AC(v33, v16);
  v26 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v33[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = sub_1000F20BC(v10, v14, *v28, v24);

  sub_100005090(v33);
  v4[17] = v30;
  v4[18] = 0;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v32;
  return v4;
}

uint64_t sub_1000F1194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[29] = v8;
  v9 = *(v8 - 8);
  v7[30] = v9;
  v10 = *(v9 + 64) + 15;
  v7[31] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013CodingKeyFormat();
  v7[32] = v11;
  v12 = *(v11 - 8);
  v7[33] = v12;
  v13 = *(v12 + 64) + 15;
  v7[34] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[35] = v14;
  v15 = *(v14 - 8);
  v7[36] = v15;
  v16 = *(v15 + 64) + 15;
  v7[37] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1318, 0, 0);
}

uint64_t sub_1000F1318()
{
  v77 = v0;
  v1 = *(v0 + 296);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  if (v4)
  {
    v8 = *(v0 + 200);
    v73 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v75 = v10;
    *v9 = 136446210;
    v11 = DCCredentialPayloadFormatToString();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10010150C(v12, v14, &v75);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "makePayloadProcessor for payload format %{public}s", v9, 0xCu);
    sub_100005090(v10);

    (*(v5 + 8))(v73, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v16 = *(v0 + 200);
  if (v16 <= 1)
  {
    if (!v16)
    {
      v49 = *(v0 + 264);
      v48 = *(v0 + 272);
      v50 = *(v0 + 256);
      v52 = *(v0 + 184);
      v51 = *(v0 + 192);
      (*(v49 + 104))(v48, enum case for ISO18013CodingKeyFormat.standard(_:), v50);
      *(v0 + 120) = &type metadata for PayloadProcessorAnalyticsRecorder;
      *(v0 + 128) = &off_1001F7C60;
      v22 = type metadata accessor for ISO18013PackagePayloadProcessor();
      v53 = *(v22 + 48);
      v54 = *(v22 + 52);
      v23 = swift_allocObject();
      sub_1000129AC(v0 + 96, &type metadata for PayloadProcessorAnalyticsRecorder);
      *(v0 + 160) = &type metadata for PayloadProcessorAnalyticsRecorder;
      *(v0 + 168) = &off_1001F7C60;
      sub_100009708(v52, v51);
      swift_defaultActor_initialize();
      v55 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
      v56 = type metadata accessor for ISO18013Package();
      (*(*(v56 - 8) + 56))(v23 + v55, 1, 1, v56);
      *(v23 + 112) = v52;
      *(v23 + 120) = v51;
      sub_10001AA08((v0 + 136), v23 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
      (*(v49 + 32))(v23 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v48, v50);
      sub_100005090((v0 + 96));
      v30 = &off_1001F7B50;
      goto LABEL_21;
    }

    if (v16 != 1)
    {
LABEL_22:
      v63 = *(v0 + 240);
      v62 = *(v0 + 248);
      v64 = *(v0 + 232);
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v75 = 0xD00000000000001BLL;
      v76 = 0x80000001001BA3E0;
      v65 = DCCredentialPayloadFormatToString();
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      (*(v63 + 104))(v62, enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:), v64);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v70 = *(v0 + 296);
      v71 = *(v0 + 272);
      v72 = *(v0 + 248);

      v61 = *(v0 + 8);
      goto LABEL_23;
    }

    v31 = swift_task_alloc();
    *(v0 + 304) = v31;
    *v31 = v0;
    v31[1] = sub_1000F1A68;
    v32 = *(v0 + 208);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);

    return sub_1000F2178(v34, v33, v32);
  }

  else
  {
    switch(v16)
    {
      case 2:
        v36 = swift_task_alloc();
        *(v0 + 320) = v36;
        *v36 = v0;
        v36[1] = sub_1000F1C78;
        v37 = *(v0 + 216);
        v38 = *(v0 + 224);
        v39 = *(v0 + 208);
        v41 = *(v0 + 184);
        v40 = *(v0 + 192);

        return sub_1000F3208(v41, v40, v39, v37, v38);
      case 3:
        v42 = swift_task_alloc();
        *(v0 + 336) = v42;
        *v42 = v0;
        v42[1] = sub_1000F1E88;
        v43 = *(v0 + 216);
        v44 = *(v0 + 224);
        v45 = *(v0 + 208);
        v47 = *(v0 + 184);
        v46 = *(v0 + 192);

        return sub_1000F4898(v47, v46, v45, v43, v44);
      case 4:
        v18 = *(v0 + 264);
        v17 = *(v0 + 272);
        v74 = v17;
        v19 = *(v0 + 256);
        v21 = *(v0 + 184);
        v20 = *(v0 + 192);
        v22 = type metadata accessor for ACWGPackagePayloadProcessor();
        v23 = swift_allocObject();
        swift_defaultActor_initialize();
        (*(v18 + 104))(v17, enum case for ISO18013CodingKeyFormat.ACWG(_:), v19);
        *(v0 + 40) = &type metadata for PayloadProcessorAnalyticsRecorder;
        *(v0 + 48) = &off_1001F7C60;
        v24 = type metadata accessor for ISO18013PackagePayloadProcessor();
        v25 = *(v24 + 48);
        v26 = *(v24 + 52);
        v27 = swift_allocObject();
        sub_1000129AC(v0 + 16, &type metadata for PayloadProcessorAnalyticsRecorder);
        *(v0 + 80) = &type metadata for PayloadProcessorAnalyticsRecorder;
        *(v0 + 88) = &off_1001F7C60;
        sub_100009708(v21, v20);
        swift_defaultActor_initialize();
        v28 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
        v29 = type metadata accessor for ISO18013Package();
        (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
        *(v27 + 112) = v21;
        *(v27 + 120) = v20;
        sub_10001AA08((v0 + 56), v27 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
        (*(v18 + 32))(v27 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v74, v19);
        sub_100005090((v0 + 16));
        *(v23 + 112) = v27;
        v30 = &off_1001F77A8;
LABEL_21:
        v57 = *(v0 + 296);
        v58 = *(v0 + 272);
        v59 = *(v0 + 248);
        v60 = *(v0 + 176);
        v60[3] = v22;
        v60[4] = v30;
        *v60 = v23;

        v61 = *(v0 + 8);
LABEL_23:

        return v61();
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_1000F1A68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[37];
    v8 = v4[34];
    v9 = v4[31];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[39] = a1;

    return _swift_task_switch(sub_1000F1BCC, 0, 0);
  }
}

uint64_t sub_1000F1BCC()
{
  v1 = sub_100004E70(&qword_1002030E0, &qword_1001AD908);
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[22];
  v6[3] = v1;
  v6[4] = &off_1001F79C8;
  *v6 = v2;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000F1C78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[37];
    v8 = v4[34];
    v9 = v4[31];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[41] = a1;

    return _swift_task_switch(sub_1000F1DDC, 0, 0);
  }
}

uint64_t sub_1000F1DDC()
{
  v1 = sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[22];
  v6[3] = v1;
  v6[4] = &off_1001F7AB8;
  *v6 = v2;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000F1E88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[37];
    v8 = v4[34];
    v9 = v4[31];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[43] = a1;

    return _swift_task_switch(sub_1000F1FEC, 0, 0);
  }
}

uint64_t sub_1000F1FEC()
{
  v1 = sub_100004E70(&qword_1002030D0, &qword_1001AD8E8);
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[22];
  v6[3] = v1;
  v6[4] = &off_1001F78B0;
  *v6 = v2;

  v7 = v0[1];

  return v7();
}

void *sub_1000F20BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for SEPairingManager();
  v17 = &protocol witness table for SEPairingManager;
  *&v15 = a2;
  v13 = type metadata accessor for SyncableKeyStoreProvider();
  v14 = &off_1001F5068;
  *&v12 = a3;
  a4[3] = sub_100046C68();
  v8 = type metadata accessor for DeviceIdentityKeystore();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  a4[4] = DeviceIdentityKeystore.init()();
  a4[5] = sub_1000342A8();
  a4[2] = a1;
  sub_10001AA08(&v15, (a4 + 11));
  sub_10001AA08(&v12, (a4 + 6));
  return a4;
}

uint64_t sub_1000F2178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = type metadata accessor for DeviceIdentityKey();
  v3[34] = v7;
  v8 = *(v7 - 8);
  v3[35] = v8;
  v9 = *(v8 + 64) + 15;
  v3[36] = swift_task_alloc();
  v10 = type metadata accessor for CredentialKeyType();
  v3[37] = v10;
  v11 = *(v10 - 8);
  v3[38] = v11;
  v12 = *(v11 + 64) + 15;
  v3[39] = swift_task_alloc();
  v13 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v14 = type metadata accessor for KeyLookupInfo();
  v3[41] = v14;
  v15 = *(v14 - 8);
  v3[42] = v15;
  v16 = *(v15 + 64) + 15;
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2388, 0, 0);
}

uint64_t sub_1000F2388()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[31];
    sub_10000A0D4(v0[40], &qword_100202498, &unk_1001AD910);
    v54 = *(v4 + 104);
    v54(v5, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    v46 = v0[43];
    v47 = v0[39];
    v48 = v0[40];
    v53 = v0[36];
    v54(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v49 = v0[1];

    return v49();
  }

  v7 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[37];
  sub_1000F52AC(v0[40], v7);
  (*(v10 + 16))(v9, v7 + *(v8 + 24), v11);
  if ((*(v10 + 88))(v9, v11) != enum case for CredentialKeyType.sep(_:))
  {
    v41 = v0[38];
    v52 = v0[39];
    v50 = v0[43];
    v51 = v0[37];
    v42 = v0[32];
    v43 = v0[33];
    v44 = v0[31];
    _StringGuts.grow(_:)(36);

    v45._countAndFlagsBits = CredentialKeyType.rawValue.getter();
    String.append(_:)(v45);

    v54 = *(v42 + 104);
    v54(v43, enum case for DIPError.Code.idcsInvalidDeviceEncryptionKey(_:), v44);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v50);
    (*(v41 + 8))(v52, v51);
    goto LABEL_8;
  }

  v12 = v0[43];
  v13 = type metadata accessor for SESKeystore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v55 = SESKeystore.init()();
  v16 = type metadata accessor for SEPairingManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = SEPairingManager.init()();
  v20 = type metadata accessor for GenericPasswordKeychainWrapper();
  v21 = swift_allocObject();
  v0[21] = v20;
  v0[22] = &off_1001F4DE8;
  v0[18] = v21;
  v22 = type metadata accessor for SyncableKeyStoreProvider();
  v23 = swift_allocObject();
  v24 = sub_1000129AC((v0 + 18), v20);
  v25 = *(v20 - 8);
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  (*(v25 + 16))(v27, v24, v20);
  v28 = *v27;
  v23[5] = v20;
  v23[6] = &off_1001F4DE8;
  v23[2] = v28;

  sub_100005090(v0 + 18);

  v0[26] = v22;
  v0[27] = &off_1001F5068;
  v0[23] = v23;
  type metadata accessor for CredentialKeyManager();
  inited = swift_initStackObject();
  v0[44] = inited;
  v30 = v0[26];
  v31 = sub_1000129AC((v0 + 23), v30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64) + 15;
  v34 = swift_task_alloc();
  (*(v32 + 16))(v34, v31, v30);
  v0[45] = sub_1000F20BC(v55, v19, *v34, inited);

  sub_100005090(v0 + 23);

  v35 = *v12;
  v36 = v12[1];
  v37 = v12[2];
  v38 = v12[3];
  v39 = swift_task_alloc();
  v0[46] = v39;
  *v39 = v0;
  v39[1] = sub_1000F2A9C;

  return sub_100029DFC(v35, v36, v37, v38);
}

uint64_t sub_1000F2A9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v7 = *(v3 + 360);

  if (v1)
  {
    v8 = sub_1000F2F44;
  }

  else
  {
    v8 = sub_1000F2BD8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000F2BD8()
{
  v1 = v0[47];
  v2 = v0[43];
  if (v1)
  {
    v3 = v0[40];
    v5 = v0[35];
    v4 = v0[36];
    v6 = v0[34];
    v8 = v0[28];
    v7 = v0[29];
    (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v6);
    v9 = DeviceIdentityKey.key.getter();
    (*(v5 + 8))(v4, v6);
    sub_100004E70(&qword_1002030E0, &qword_1001AD908);
    v10 = swift_allocObject();
    swift_defaultActor_initialize();

    v10[14] = v8;
    v10[15] = v7;
    v10[16] = v9;
    v10[17] = 0;
    sub_100009708(v8, v7);
    sub_1000F5310(v2);

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    v18 = *(v0[32] + 104);
    v18(v0[33], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[31]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v2);
    v13 = v0[43];
    v16 = v0[40];
    v17 = v0[39];
    v14 = v0[36];
    v18(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1000F2F44()
{
  v1 = v0[32];
  sub_1000F5310(v0[43]);
  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v8 = v0[36];
  (*(v1 + 104))(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

char *sub_1000F30D8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  swift_defaultActor_initialize();
  *&v5[*(*v5 + 128)] = 0;
  *(v5 + 14) = a1;
  *(v5 + 15) = a2;
  v11 = qword_100203210;
  *&v5[qword_100203210] = a3;
  v12 = enum case for HPKEPrivateKey.sep(_:);
  v13 = type metadata accessor for HPKEPrivateKey();
  (*(*(v13 - 8) + 104))(&v5[v11], v12, v13);
  sub_100009708(a1, a2);
  v14 = a3;
  isa = 0;
  if (a5 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(a4, a5);
  }

  v16 = [objc_allocWithZone(LAContext) initWithExternalizedContext:isa];

  *&v5[qword_100203218] = v16;
  return v5;
}

uint64_t sub_1000F3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for SESKeyForHPKE();
  v5[33] = v6;
  v7 = *(v6 - 8);
  v5[34] = v7;
  v8 = *(v7 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[37] = v9;
  v10 = *(v9 - 8);
  v5[38] = v10;
  v11 = *(v10 + 64) + 15;
  v5[39] = swift_task_alloc();
  v12 = type metadata accessor for DeviceIdentityKey();
  v5[40] = v12;
  v13 = *(v12 - 8);
  v5[41] = v13;
  v14 = *(v13 + 64) + 15;
  v5[42] = swift_task_alloc();
  v15 = type metadata accessor for CredentialKeyType();
  v5[43] = v15;
  v16 = *(v15 - 8);
  v5[44] = v16;
  v17 = *(v16 + 64) + 15;
  v5[45] = swift_task_alloc();
  v18 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v19 = type metadata accessor for KeyLookupInfo();
  v5[47] = v19;
  v20 = *(v19 - 8);
  v5[48] = v20;
  v21 = *(v20 + 64) + 15;
  v5[49] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3484, 0, 0);
}

uint64_t sub_1000F3484()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[38];
    v4 = v0[39];
    v6 = v0[37];
    sub_10000A0D4(v0[46], &qword_100202498, &unk_1001AD910);
    (*(v5 + 104))(v4, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_22:
    v66 = v0[49];
    v67 = v0[45];
    v68 = v0[46];
    v69 = v0[42];
    v70 = v0[36];
    v99 = v0[35];
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.internalError(_:), v0[37]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v71 = v0[1];

    return v71();
  }

  v7 = v0[32];
  sub_1000F52AC(v0[46], v0[49]);
  if (v7 >> 60 == 15)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v0[31];
    v11 = v0[32];
    v12 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v12 initWithExternalizedContext:isa];

    if (v9)
    {
      v14 = [v9 externalizedContext];
      if (v14)
      {
        v15 = v14;
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        goto LABEL_10;
      }
    }

    v8 = 0;
  }

  v17 = 0xF000000000000000;
LABEL_10:
  v0[51] = v17;
  v0[52] = v9;
  v0[50] = v8;
  v19 = v0[44];
  v18 = v0[45];
  v20 = v0[43];
  (*(v19 + 16))(v18, v0[49] + *(v0[47] + 24), v20);
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == enum case for CredentialKeyType.ses(_:))
  {
    v22 = v0[49];
    v23 = (v22 + *(v0[47] + 28));
    v24 = v23[1];
    if (v24 >> 60 == 15)
    {
      (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v25 = v8;
      v26 = v17;
LABEL_19:
      sub_10001C120(v25, v26);
      sub_1000F5310(v22);
      goto LABEL_22;
    }

    v56 = *v23;
    if (v17 >> 60 == 15)
    {
      (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
      sub_100009708(v56, v24);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v25 = v56;
      v26 = v24;
      goto LABEL_19;
    }

    v61 = v0[36];
    v62 = type metadata accessor for SESKeystore();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_100032EBC(v56, v24);
    sub_100032EBC(v8, v17);
    sub_100032EBC(v56, v24);
    sub_100032EBC(v8, v17);
    SESKeystore.init()();
    SESKeyForHPKE.init(keyBlob:sesKeystore:externalizedLAContext:)();
    v65 = v0[49];
    v72 = v0[36];
    v103 = v0[35];
    v96 = v0[34];
    v100 = v72;
    v101 = v0[33];
    v73 = v0[28];
    v74 = *(v96 + 16);
    v92 = v0[29];
    v74();
    v75 = sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    v98 = v65;
    v78 = swift_allocObject();
    sub_100009708(v73, v92);
    swift_defaultActor_initialize();
    *&v78[*(*v78 + 128)] = 0;
    *(v78 + 14) = v73;
    *(v78 + 15) = v92;
    v79 = qword_100203210;
    (v74)(&v78[qword_100203210], v103, v101);
    v80 = enum case for HPKEPrivateKey.ses(_:);
    v81 = type metadata accessor for HPKEPrivateKey();
    (*(*(v81 - 8) + 104))(&v78[v79], v80, v81);
    v94 = [objc_allocWithZone(LAContext) initWithExternalizedContext:0];
    v82 = *(v96 + 8);
    v82(v103, v101);
    *&v78[qword_100203218] = v94;
    sub_10001C120(v8, v17);
    sub_10001C120(v56, v24);
    sub_10001C120(v8, v17);

    v82(v100, v101);
    sub_1000F5310(v98);
    v83 = v0[49];
    v84 = v0[45];
    v85 = v0[46];
    v86 = v0[42];
    v87 = v0[39];
    v89 = v0[35];
    v88 = v0[36];

    v90 = v0[1];

    return v90(v78);
  }

  else
  {
    if (v21 != enum case for CredentialKeyType.sep(_:))
    {
      v91 = v0[44];
      v93 = v0[49];
      v95 = v0[43];
      v97 = v0[45];
      v57 = v0[38];
      v58 = v0[39];
      v59 = v0[37];
      _StringGuts.grow(_:)(36);

      v60._countAndFlagsBits = CredentialKeyType.rawValue.getter();
      String.append(_:)(v60);

      (*(v57 + 104))(v58, enum case for DIPError.Code.idcsInvalidDeviceEncryptionKey(_:), v59);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10001C120(v8, v17);
      sub_1000F5310(v93);
      (*(v91 + 8))(v97, v95);
      goto LABEL_22;
    }

    v27 = v0[49];
    v28 = type metadata accessor for SESKeystore();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v102 = SESKeystore.init()();
    v31 = type metadata accessor for SEPairingManager();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = SEPairingManager.init()();
    v35 = type metadata accessor for GenericPasswordKeychainWrapper();
    v36 = swift_allocObject();
    v0[21] = v35;
    v0[22] = &off_1001F4DE8;
    v0[18] = v36;
    v37 = type metadata accessor for SyncableKeyStoreProvider();
    v38 = swift_allocObject();
    v39 = sub_1000129AC((v0 + 18), v35);
    v40 = *(v35 - 8);
    v41 = *(v40 + 64) + 15;
    v42 = swift_task_alloc();
    (*(v40 + 16))(v42, v39, v35);
    v43 = *v42;
    v38[5] = v35;
    v38[6] = &off_1001F4DE8;
    v38[2] = v43;

    sub_100005090(v0 + 18);

    v0[26] = v37;
    v0[27] = &off_1001F5068;
    v0[23] = v38;
    type metadata accessor for CredentialKeyManager();
    inited = swift_initStackObject();
    v0[53] = inited;
    v45 = v0[26];
    v46 = sub_1000129AC((v0 + 23), v45);
    v47 = *(v45 - 8);
    v48 = *(v47 + 64) + 15;
    v49 = swift_task_alloc();
    (*(v47 + 16))(v49, v46, v45);
    v0[54] = sub_1000F20BC(v102, v34, *v49, inited);

    sub_100005090(v0 + 23);

    v50 = *v27;
    v51 = v27[1];
    v52 = v27[2];
    v53 = v27[3];
    v54 = swift_task_alloc();
    v0[55] = v54;
    *v54 = v0;
    v54[1] = sub_1000F41B4;

    return sub_100029DFC(v50, v51, v52, v53);
  }
}

uint64_t sub_1000F41B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v7 = *(v3 + 432);

  if (v1)
  {
    v8 = sub_1000F46D4;
  }

  else
  {
    v8 = sub_1000F42F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000F42F0()
{
  v1 = v0[56];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  v30 = v2;
  v31 = v0[49];
  if (v1)
  {
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[40];
    v9 = v0[28];
    v8 = v0[29];
    (*(v5 + 16))(v6, v1 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v7);
    v10 = DeviceIdentityKey.key.getter();
    (*(v5 + 8))(v6, v7);
    v11 = sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_100009708(v9, v8);
    v14 = sub_1000F30D8(v9, v8, v10, v4, v3);

    sub_1000092BC(v9, v8);

    sub_1000F5310(v31);
    v15 = v0[49];
    v17 = v0[45];
    v16 = v0[46];
    v18 = v0[42];
    v19 = v0[39];
    v21 = v0[35];
    v20 = v0[36];

    v22 = v0[1];

    return v22(v14);
  }

  else
  {
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v4, v3);
    sub_1000F5310(v31);
    v24 = v0[49];
    v26 = v0[45];
    v25 = v0[46];
    v29 = v0[42];
    v27 = v0[36];
    v32 = v0[35];
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.internalError(_:), v0[37]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_1000F46D4()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  sub_10001C120(v2, v1);
  sub_1000F5310(v3);
  v4 = *(v0 + 456);
  v5 = *(v0 + 392);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 336);
  v11 = *(v0 + 288);
  v12 = *(v0 + 280);
  (*(*(v0 + 304) + 104))(*(v0 + 312), enum case for DIPError.Code.internalError(_:), *(v0 + 296));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000F4898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v7 = *(v6 - 8);
  v5[34] = v7;
  v8 = *(v7 + 64) + 15;
  v5[35] = swift_task_alloc();
  v9 = type metadata accessor for CredentialKeyType();
  v5[36] = v9;
  v10 = *(v9 - 8);
  v5[37] = v10;
  v11 = *(v10 + 64) + 15;
  v5[38] = swift_task_alloc();
  v12 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v13 = type metadata accessor for KeyLookupInfo();
  v5[40] = v13;
  v14 = *(v13 - 8);
  v5[41] = v14;
  v15 = *(v14 + 64) + 15;
  v5[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000F4A50, 0, 0);
}

uint64_t sub_1000F4A50()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    sub_10000A0D4(v0[39], &qword_100202498, &unk_1001AD910);
    v7 = *(v5 + 104);
    v7(v4, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v7;
LABEL_9:
    v47 = v0[42];
    v48 = v0[38];
    v49 = v0[39];
    v8(v0[35], enum case for DIPError.Code.internalError(_:), v0[33]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v50 = v0[1];

    return v50();
  }

  v9 = v0[42];
  v10 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[36];
  sub_1000F52AC(v0[39], v9);
  (*(v12 + 16))(v11, v9 + *(v10 + 24), v13);
  if ((*(v12 + 88))(v11, v13) != enum case for CredentialKeyType.keychain(_:))
  {
    v14 = v0[37];
    v15 = v0[35];
    v60 = v0[42];
    v61 = v0[36];
    v16 = v0[34];
    v62 = v0[38];
    v65 = v0[33];
    _StringGuts.grow(_:)(38);

    v17._countAndFlagsBits = CredentialKeyType.rawValue.getter();
    String.append(_:)(v17);

    v18 = *(v16 + 104);
    v18(v15, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v65);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v60);
    (*(v14 + 8))(v62, v61);
    v8 = v18;
    goto LABEL_9;
  }

  if (v0[32] >> 60 == 15)
  {
    v64 = 0;
  }

  else
  {
    v19 = v0[31];
    v20 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v64 = [v20 initWithExternalizedContext:isa];
  }

  v22 = v0[42];
  v23 = type metadata accessor for SESKeystore();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v63 = SESKeystore.init()();
  v26 = type metadata accessor for SEPairingManager();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = SEPairingManager.init()();
  v30 = type metadata accessor for GenericPasswordKeychainWrapper();
  v31 = swift_allocObject();
  v0[21] = v30;
  v0[22] = &off_1001F4DE8;
  v0[18] = v31;
  v32 = type metadata accessor for SyncableKeyStoreProvider();
  v33 = swift_allocObject();
  v34 = sub_1000129AC((v0 + 18), v30);
  v35 = *(v30 - 8);
  v36 = *(v35 + 64) + 15;
  v37 = swift_task_alloc();
  (*(v35 + 16))(v37, v34, v30);
  v38 = *v37;
  v33[5] = v30;
  v33[6] = &off_1001F4DE8;
  v33[2] = v38;

  sub_100005090(v0 + 18);

  v0[26] = v32;
  v0[27] = &off_1001F5068;
  v0[23] = v33;
  type metadata accessor for CredentialKeyManager();
  inited = swift_initStackObject();
  v40 = v0[26];
  v41 = sub_1000129AC((v0 + 23), v40);
  v42 = *(v40 - 8);
  v43 = *(v42 + 64) + 15;
  v44 = swift_task_alloc();
  (*(v42 + 16))(v44, v41, v40);
  sub_1000F20BC(v63, v29, *v44, inited);

  sub_100005090(v0 + 23);

  v45 = sub_10002ED04(*v22, *(v22 + 8), v64);
  v46 = v0[42];
  v52 = v45;
  v54 = v0[38];
  v53 = v0[39];
  v55 = v0[35];
  v57 = v0[28];
  v56 = v0[29];

  sub_100004E70(&qword_1002030D0, &qword_1001AD8E8);
  swift_allocObject();
  sub_100009708(v57, v56);
  v58 = sub_1000F0F0C(v57, v56, v52);

  sub_1000F5310(v46);

  v59 = v0[1];

  return v59(v58);
}

uint64_t type metadata accessor for KeyLookupInfo()
{
  result = qword_100203140;
  if (!qword_100203140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F52AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyLookupInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5310(uint64_t a1)
{
  v2 = type metadata accessor for KeyLookupInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F536C(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 5)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = DCCredentialPayloadFormatToString();
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10010150C(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unknown payload format %s", v10, 0xCu);
      sub_100005090(v11);
    }

    (*(v3 + 8))(v6, v2);
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0xEu >> a1;
  }

  return v7 & 1;
}

uint64_t sub_1000F554C(unint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 5)
  {
    return qword_1001AD930[a1];
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v13 = 0xD00000000000001BLL;
  v14 = 0x80000001001BA3E0;
  v8 = DCCredentialPayloadFormatToString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  (*(v3 + 104))(v6, enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:), v2);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

id sub_1000F575C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CredentialKeyType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_100046360(a2, v7, &qword_100200510, qword_1001AB070);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000A0D4(v7, &qword_100200510, qword_1001AB070);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    if (a1 == 2)
    {
      (*(v9 + 16))(v13, v15, v8);
      if ((*(v9 + 88))(v13, v8) == enum case for CredentialKeyType.ses(_:))
      {
        v16 = [objc_allocWithZone(LAContext) init];
        (*(v9 + 8))(v15, v8);
        return v16;
      }

      v18 = *(v9 + 8);
      v18(v15, v8);
      v18(v13, v8);
    }

    else
    {
      (*(v9 + 8))(v15, v8);
    }
  }

  return 0;
}

uint64_t sub_1000F59FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CredentialKeyType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F5ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CredentialKeyType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F5B60()
{
  type metadata accessor for CredentialKeyType();
  if (v0 <= 0x3F)
  {
    sub_100060F00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F5BFC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F5CB4@<X0>(uint64_t a1@<X8>)
{
  v19 = *v1;
  v3 = v19;
  v4 = *(v19 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v3 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v13], v5);
  v14 = *(v4 - 8);
  if ((*(v14 + 48))(v12, 1, v4) != 1)
  {
    return (*(v14 + 32))(a1, v12, v4);
  }

  (*(v6 + 8))(v12, v5);
  v15 = v20;
  result = sub_1000F6954();
  if (!v15)
  {
    v17 = *(*(v19 + 88) + 16);
    v20 = 0;
    v17(result);
    (*(v14 + 16))(v10, a1, v4);
    (*(v14 + 56))(v10, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v13], v10, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000F5F6C(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000F6068, v2, 0);
}

uint64_t sub_1000F6068()
{
  v1 = *(v0 + 24);
  sub_1000F5CB4(*(v0 + 56));
  v2 = *(*(*(v0 + 32) + 88) + 8);
  v10 = (*(v2 + 8) + **(v2 + 8));
  v3 = *(*(v2 + 8) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000EE794;
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 80);

  return v10(v7, v8, v6, v2);
}

uint64_t sub_1000F61E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F62E0, v1, 0);
}

uint64_t sub_1000F62E0()
{
  v1 = v0[3];
  sub_1000F5CB4(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 16) + **(v2 + 16));
  v3 = *(*(v2 + 16) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EEBB0;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000F645C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6554, v1, 0);
}

uint64_t sub_1000F6554()
{
  v1 = v0[3];
  sub_1000F5CB4(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 32) + **(v2 + 32));
  v3 = *(*(v2 + 32) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF050;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000F66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000F67D0, v5, 0);
}

uint64_t sub_1000F67D0()
{
  v1 = v0[7];
  sub_1000F5CB4(v0[11]);
  v2 = *(*(v0[8] + 88) + 8);
  v13 = (*(v2 + 24) + **(v2 + 24));
  v3 = *(*(v2 + 24) + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF954;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v6, v2);
}

uint64_t sub_1000F6954()
{
  v2 = type metadata accessor for DIPError.Code();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100203200, &unk_1001ADA70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for JSONDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v17 = v0[14];
  v16 = v0[15];
  sub_1000F7528();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    (*(v32 + 104))(v35, enum case for DIPError.Code.idcsPayloadDecryptionFailureECV3(_:), v33);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v29 = v9;

    v18 = v30;
    v19 = v31;
    (*(v30 + 104))(v31, enum case for EncryptionParamsAlgorithmIdentifier.EC_v3_SH(_:), v5);
    v20 = v0[16];
    v21 = type metadata accessor for DIPECIESSessionECV3SH();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = v20;
    v25 = DIPECIESSessionECV3SH.init(_:)();
    v26 = v18;
    v34[3] = v21;
    v34[4] = &protocol witness table for DIPECIESSessionECV3;
    v34[0] = v25;
    EncryptedDataContainer.getUnencryptedData(alg:decryptor:senderSigningKey:recipientSigningKey:)();
    v27 = v29;
    (*(v26 + 8))(v19, v5);
    (*(v27 + 8))(v12, v8);
    sub_100005090(v34);
    return v34[5];
  }
}

uint64_t sub_1000F6DCC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6EC4, v0, 0);
}

uint64_t sub_1000F6EC4()
{
  v1 = v0[2];
  sub_1000F5CB4(v0[6]);
  v2 = *(*(v0[3] + 88) + 8);
  v8 = (*(v2 + 40) + **(v2 + 40));
  v3 = *(*(v2 + 40) + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000EFDF0;
  v5 = v0[6];
  v6 = v0[4];

  return v8(v6, v2);
}

uint64_t *sub_1000F703C()
{
  v1 = *v0;
  sub_1000092BC(v0[14], v0[15]);

  v2 = *(*v0 + 120);
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F70E0()
{
  sub_1000F703C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F7124(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000F5F6C(a1, a2);
}

uint64_t sub_1000F71D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EDCBC;

  return sub_1000F61E8(a1);
}

uint64_t sub_1000F7268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000EE1A0;

  return sub_1000F66D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1000F7330(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_1000F645C(a1);
}

uint64_t sub_1000F73CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EE1A0;

  return sub_1000F6DCC();
}

uint64_t sub_1000F745C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000F747C, v2, 0);
}

uint64_t sub_1000F747C()
{
  v1 = *(v0 + 16);
  v2 = sub_1000F6954();
  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1000F7528()
{
  result = qword_100203208;
  if (!qword_100203208)
  {
    sub_100021ED0(&qword_100203200, &unk_1001ADA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203208);
  }

  return result;
}

uint64_t sub_1000F758C(uint64_t a1)
{
  result = type metadata accessor for HPKEPrivateKey();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000F7678@<X0>(uint64_t a1@<X8>)
{
  v19 = *v1;
  v3 = v19;
  v4 = *(v19 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v3 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v13], v5);
  v14 = *(v4 - 8);
  if ((*(v14 + 48))(v12, 1, v4) != 1)
  {
    return (*(v14 + 32))(a1, v12, v4);
  }

  (*(v6 + 8))(v12, v5);
  v15 = v20;
  result = sub_1000F8588();
  if (!v15)
  {
    v17 = *(*(v19 + 88) + 16);
    v20 = 0;
    v17(result);
    (*(v14 + 16))(v10, a1, v4);
    (*(v14 + 56))(v10, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v13], v10, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000F7930(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000F7A2C, v2, 0);
}

uint64_t sub_1000F7A2C()
{
  v1 = *(v0 + 24);
  sub_1000F7678(*(v0 + 56));
  v2 = *(*(*(v0 + 32) + 88) + 8);
  v10 = (*(v2 + 8) + **(v2 + 8));
  v3 = *(*(v2 + 8) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000EE794;
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 80);

  return v10(v7, v8, v6, v2);
}

uint64_t sub_1000F7BAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7CA4, v1, 0);
}

uint64_t sub_1000F7CA4()
{
  v1 = v0[3];
  sub_1000F7678(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 16) + **(v2 + 16));
  v3 = *(*(v2 + 16) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EEBB0;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000F7E20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7F18, v1, 0);
}

uint64_t sub_1000F7F18()
{
  v1 = v0[3];
  sub_1000F7678(v0[7]);
  v2 = *(*(v0[4] + 88) + 8);
  v9 = (*(v2 + 32) + **(v2 + 32));
  v3 = *(*(v2 + 32) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF050;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1000F8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8194, v5, 0);
}

uint64_t sub_1000F8194()
{
  v1 = v0[7];
  sub_1000F7678(v0[11]);
  v2 = *(*(v0[8] + 88) + 8);
  v13 = (*(v2 + 24) + **(v2 + 24));
  v3 = *(*(v2 + 24) + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000EF954;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v6, v2);
}

uint64_t sub_1000F8318()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8410, v0, 0);
}

uint64_t sub_1000F8410()
{
  v1 = v0[2];
  sub_1000F7678(v0[6]);
  v2 = *(*(v0[3] + 88) + 8);
  v8 = (*(v2 + 40) + **(v2 + 40));
  v3 = *(*(v2 + 40) + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000EFDF0;
  v5 = v0[6];
  v6 = v0[4];

  return v8(v6, v2);
}

uint64_t sub_1000F8588()
{
  v2 = v0;
  v38 = type metadata accessor for DIPError.Code();
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v38);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  v6 = __chkstk_darwin(v45);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v35 - v9;
  v11 = type metadata accessor for HPKEEncryptedMessageAlgorithm();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = JSONDecoder.init()();
  v19 = *(v2 + 112);
  v20 = *(v2 + 120);
  sub_1000FA7F0(&qword_100203300, &type metadata accessor for HPKEEncryptedMessageAlgorithm);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    v37 = v8;
    v21 = v39;
    v22 = v40;
    HPKEEncryptedMessageAlgorithm.algorithm.getter();
    v23 = (*(v42 + 88))(v10, v45);
    if (v23 == enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_v1(_:))
    {
      v24 = sub_1000F9D80();
    }

    else
    {
      if (v23 != enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_KW_v1(_:))
      {
        v35[1] = " decode the decrypted payload";
        v35[2] = "authenticationContext";
        v36 = v11;
        v25 = v22;
        v26 = v38;
        (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v38);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        v27 = v10;
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v28 = v42;
        v29 = v27;
        v30 = v45;
        (*(v42 + 8))(v29, v45);
        v43 = 0;
        v44 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v31._countAndFlagsBits = 0xD00000000000002ALL;
        v31._object = 0x80000001001BA880;
        String.append(_:)(v31);
        v32 = v37;
        HPKEEncryptedMessageAlgorithm.algorithm.getter();
        _print_unlocked<A, B>(_:_:)();
        (*(v28 + 8))(v32, v30);
        v33._countAndFlagsBits = 0x74616D726F6620;
        v33._object = 0xE700000000000000;
        String.append(_:)(v33);
        v45 = v43;
        (*(v25 + 104))(v21, enum case for DIPError.Code.idcsPayloadDecryptionFailureHPKE(_:), v26);
        v18 = v21;
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v41 + 8))(v14, v36);
        return v18;
      }

      v24 = sub_1000F8BE4();
    }

    v18 = v24;
    (*(v41 + 8))(v14, v11);
  }

  return v18;
}

uint64_t sub_1000F8BE4()
{
  v1 = v0;
  v99 = type metadata accessor for Logger();
  v98 = *(v99 - 8);
  v2 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for HPKEParams();
  v102 = *(v103 - 8);
  v4 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AEADKey();
  v104 = *(v105 - 8);
  v6 = *(v104 + 64);
  v7 = __chkstk_darwin(v105);
  v100 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = &v94 - v9;
  v109 = type metadata accessor for HPKEPrivateKey();
  v120 = *(v109 - 8);
  v10 = *(v120 + 64);
  __chkstk_darwin(v109);
  v108 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HPKESuiteKwV1();
  v13 = *(v12 - 8);
  v110 = v12;
  v111 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v113 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_1002032B0, &qword_1001ADBB0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v119 = &v94 - v18;
  v19 = sub_100004E70(&qword_1002032B8, &qword_1001ADBB8);
  v114 = *(v19 - 8);
  v115 = v19;
  v20 = *(v114 + 64);
  __chkstk_darwin(v19);
  v112 = &v94 - v21;
  v22 = type metadata accessor for DIPError.Code();
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = *(v116 + 64);
  __chkstk_darwin(v22);
  v118 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100004E70(&qword_1002032C0, &qword_1001ADBC0);
  v121 = *(v25 - 8);
  v26 = *(v121 + 64);
  __chkstk_darwin(v25);
  v28 = &v94 - v27;
  v29 = sub_100004E70(&qword_1002032C8, &qword_1001ADBC8);
  v122 = *(v29 - 8);
  v30 = *(v122 + 64);
  __chkstk_darwin(v29);
  v32 = &v94 - v31;
  v33 = type metadata accessor for JSONDecoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = JSONDecoder.init()();
  v37 = v1;
  v39 = *(v1 + 112);
  v38 = *(v1 + 120);
  sub_100055454(&qword_1002032D0, &qword_1002032C8, &qword_1001ADBC8);
  v40 = v123;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v40)
  {
    v123 = 0;
    v41 = v119;
    v42 = v120;
    v106 = v25;

    HPKEEncryptedMessageWithKeyWrap.getMessages()();
    if (shouldIncludeUnencryptedData()())
    {
      v43 = v106;
      SealedMessage.unencryptedData.getter();
      if (!v125)
      {
        v96 = v28;
        (*(v116 + 104))(v118, enum case for DIPError.Code.idcsPayloadDecryptionDigitalIDMissing(_:), v117);
        sub_10002688C(_swiftEmptyArrayStorage);
        v95 = v32;
        v36 = type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v121 + 8))(v96, v43);
        (*(v122 + 8))(v95, v29);
        return v36;
      }

      v36 = Data.init(base64Encoded:options:)();
      v45 = v44;

      v47 = v121;
      v46 = v122;
      if (v45 >> 60 == 15)
      {
        v96 = v28;
        v123 = "field from decrypted payload";
        (*(v116 + 104))(v118, enum case for DIPError.Code.idcsPayloadDecryptionFailureB64Decode(_:), v117);
        sub_10002688C(_swiftEmptyArrayStorage);
        v95 = v32;
        v36 = type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v47 + 8))(v96, v106);
        (*(v46 + 8))(v95, v29);
        return v36;
      }

LABEL_12:
      (*(v47 + 8))(v28, v106);
      (*(v46 + 8))(v32, v29);
      return v36;
    }

    v96 = v28;
    v48 = v41;
    HPKEEncryptedMessageWithKeyWrap.getKeys()();
    v50 = v114;
    v49 = v115;
    v51 = (*(v114 + 48))(v41, 1, v115);
    v52 = v106;
    if (v51 == 1)
    {
      sub_1000FA610(v48);
      (*(v116 + 104))(v118, enum case for DIPError.Code.idcsPayloadDecryptionFailureMissingKeys(_:), v117);
      sub_10002688C(_swiftEmptyArrayStorage);
      v36 = type metadata accessor for DIPError();
      sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v121 + 8))(v96, v52);
      (*(v122 + 8))(v32, v29);
      return v36;
    }

    v95 = v32;
    v53 = *(v50 + 32);
    v54 = v50;
    v55 = v112;
    v53(v112, v48, v49);
    (*(v42 + 16))(v108, v37 + qword_100203210, v109);
    v56 = v113;
    HPKESuiteKwV1.init(skR:info:)();
    v57 = *(v37 + qword_100203218);
    v58 = *(v33 + 48);
    v59 = *(v33 + 52);
    swift_allocObject();
    v60 = v49;
    v61 = JSONDecoder.init()();
    v126 = v33;
    v127 = &protocol witness table for JSONDecoder;
    v124 = v61;
    sub_100004E70(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA678();
    sub_1000FA734();
    v36 = v56;
    v62 = v123;
    HPKESuiteKwV1.openMessageHPKE<A>(envelope:authenticationContext:decoder:)();
    if (v62)
    {
      (*(v111 + 8))(v56, v110);
      (*(v54 + 8))(v55, v60);
      (*(v121 + 8))(v96, v106);
      (*(v122 + 8))(v95, v29);
      sub_100005090(&v124);
      return v36;
    }

    v123 = v29;
    sub_100005090(&v124);
    v63 = v128;
    v64 = SealedMessage.keyID.getter();
    if (*(v63 + 16))
    {
      v66 = sub_100099644(v64, v65);
      v68 = v67;

      v69 = v111;
      v70 = v118;
      if (v68)
      {
        v71 = v104;
        v72 = *(v63 + 56) + *(v104 + 72) * v66;
        v73 = v100;
        v74 = v105;
        (*(v104 + 16))(v100, v72, v105);

        (*(v71 + 32))(v107, v73, v74);
        v75 = v101;
        HPKEEnvelope.params.getter();
        v76 = HPKEParams.pkISm.getter();
        v78 = v77;
        (*(v102 + 8))(v75, v103);
        if (v78 >> 60 == 15)
        {
          v76 = 0;
          v79 = 0xC000000000000000;
        }

        else
        {
          v81 = v78;
          v82 = v97;
          defaultLogger()();
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "pkISm is set; using it for aad", v85, 2u);
          }

          (*(v98 + 8))(v82, v99);
          v79 = v81;
        }

        v120 = v79;
        v86 = SealedMessage.data.getter();
        v88 = v87;
        v89 = HPKESuiteKwV1.openMessageAEAD(cipherText:key:aad:)();
        v90 = (v71 + 8);
        v91 = (v111 + 8);
        v92 = (v114 + 8);
        v36 = v89;
        sub_1000092BC(v86, v88);
        sub_1000092BC(v76, v120);
        (*v90)(v107, v105);
        (*v91)(v113, v110);
        (*v92)(v112, v115);
        v46 = v122;
        v29 = v123;
        v47 = v121;
        v32 = v95;
        v28 = v96;
        goto LABEL_12;
      }
    }

    else
    {

      v69 = v111;
      v70 = v118;
    }

    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v124 = 0xD000000000000021;
    v125 = 0x80000001001BA7D0;
    v80._countAndFlagsBits = SealedMessage.keyID.getter();
    String.append(_:)(v80);

    v36 = v124;
    (*(v116 + 104))(v70, enum case for DIPError.Code.idcsPayloadDecryptionFailureMissingKeys(_:), v117);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v69 + 8))(v113, v110);
    (*(v114 + 8))(v112, v115);
    (*(v121 + 8))(v96, v106);
    (*(v122 + 8))(v95, v123);
    return v36;
  }

  return v36;
}

uint64_t sub_1000F9D80()
{
  v1 = v0;
  v2 = type metadata accessor for HPKEPrivateKey();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HPKESuiteKwV1();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_1002032A0, &qword_1001ADBA8);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for JSONDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  sub_100055454(&qword_1002032A8, &qword_1002032A0, &qword_1001ADBA8);
  v18 = v33[8];
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v18)
  {
    v20 = v27;
    (*(v28 + 16))(v5, v0 + qword_100203210, v29);
    v21 = v32;
    HPKESuiteKwV1.init(skR:info:)();
    v22 = v31;
    v33[3] = v31;
    v33[4] = &protocol witness table for HPKESuiteKwV1;
    v23 = sub_10001A9A4(v33);
    v24 = v30;
    (*(v30 + 16))(v23, v21, v22);
    v25 = *(v1 + qword_100203218);
    HPKEEncryptedMessagePlain.open(with:authenticationContext:)();
    (*(v24 + 8))(v32, v22);
    (*(v20 + 8))(v12, v9);
    sub_100005090(v33);
    return v33[5];
  }

  return result;
}

uint64_t *sub_1000FA0DC()
{
  v1 = *v0;
  sub_1000092BC(v0[14], v0[15]);
  v2 = qword_100203210;
  v3 = type metadata accessor for HPKEPrivateKey();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 128);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FA1C8()
{
  sub_1000FA0DC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000FA20C(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000F7930(a1, a2);
}

uint64_t sub_1000FA2B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EDCBC;

  return sub_1000F7BAC(a1);
}

uint64_t sub_1000FA350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000EE1A0;

  return sub_1000F8094(a1, a2, a3, a4, a5);
}

uint64_t sub_1000FA418(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_1000F7E20(a1);
}

uint64_t sub_1000FA4B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EE1A0;

  return sub_1000F8318();
}

uint64_t sub_1000FA544()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000FA564, v2, 0);
}

uint64_t sub_1000FA564()
{
  v1 = *(v0 + 16);
  v2 = sub_1000F8588();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000FA610(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002032B0, &qword_1001ADBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FA678()
{
  result = qword_1002032E0;
  if (!qword_1002032E0)
  {
    sub_100021ED0(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA7F0(&qword_1002032E8, &type metadata accessor for AEADKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002032E0);
  }

  return result;
}

unint64_t sub_1000FA734()
{
  result = qword_1002032F0;
  if (!qword_1002032F0)
  {
    sub_100021ED0(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA7F0(&qword_1002032F8, &type metadata accessor for AEADKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002032F0);
  }

  return result;
}

uint64_t sub_1000FA7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FA838(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Initializing InaccessiblyEncryptedPayloadProcessor", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1000FA98C()
{
  v2 = v1;
  v99 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v99 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v99);
  v98 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v72 - v7;
  v93 = type metadata accessor for AnyCodable();
  v9 = *(v93 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v93);
  v92 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ISO18013IssuerSignedItem();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v91 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v19 = &v72 - v18;
  v20 = *(v0 + 112);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v26 = (v9 + 16);
  v27 = v16;
  v89 = (v17 + 16);
  v90 = v26;
  v84 = v3 + 8;
  v85 = v3;
  v86 = (v3 + 16);
  v87 = (v17 + 8);
  v81 = v3 + 40;
  v82 = v3 + 32;

  v28 = 0;
  v29 = _swiftEmptyDictionarySingleton;
  v100 = v8;
  v88 = v19;
  v75 = v20;
  v74 = v20 + 64;
  v73 = v25;
  v83 = v27;
  if (!v24)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v80 = v29;
    v78 = v24;
    v77 = v28;
    v31 = __clz(__rbit64(v24)) | (v28 << 6);
    v32 = *(v20 + 56);
    v33 = (*(v20 + 48) + 16 * v31);
    v34 = v33[1];
    v76 = *v33;
    v35 = *(v32 + 8 * v31);
    v36 = *(v35 + 16);
    v79 = v34;
    swift_bridgeObjectRetain_n();

    v95 = v36;
    if (v36)
    {
      v37 = 0;
      v38 = (v35 + 40);
      v39 = _swiftEmptyDictionarySingleton;
      v94 = v35;
      while (v37 < *(v35 + 16))
      {
        v42 = v39;
        v96 = v38;
        v97 = v37;
        v44 = *(v38 - 1);
        v43 = *v38;
        v45 = qword_1001FFFD8;
        swift_bridgeObjectRetain_n();
        if (v45 != -1)
        {
          swift_once();
        }

        v46 = v93;
        v47 = sub_1000FC128(v93, qword_100205D38);
        (*v90)(v92, v47, v46);
        ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)();
        (*v89)(v91, v19, v27);
        v48 = type metadata accessor for CBOREncoder();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        CBOREncoder.init()();
        sub_1000FC160(&qword_100202430, &type metadata accessor for ISO18013IssuerSignedItem);
        sub_1000FC160(&qword_100202438, &type metadata accessor for ISO18013IssuerSignedItem);
        v51 = v100;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        if (v2)
        {

          swift_bridgeObjectRelease_n();

          (*v87)(v88, v27);

          v29 = v80;

          return v29;
        }

        (*v86)(v98, v51, v99);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v42;
        v53 = v43;
        v55 = sub_100099644(v44, v43);
        v56 = v42[2];
        v57 = (v54 & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_32;
        }

        v59 = v54;
        if (v42[3] >= v58)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100109C70();
          }
        }

        else
        {
          sub_100108710(v58, isUniquelyReferenced_nonNull_native);
          v60 = sub_100099644(v44, v43);
          if ((v59 & 1) != (v61 & 1))
          {
            goto LABEL_35;
          }

          v55 = v60;
        }

        v2 = 0;
        v39 = v101;
        if (v59)
        {
          v40 = v85;
          v41 = v99;
          (*(v85 + 40))(v101[7] + *(v85 + 72) * v55, v98, v99);

          (*(v40 + 8))(v100, v41);
          v19 = v88;
          v27 = v83;
          (*v87)(v88, v83);
        }

        else
        {
          v101[(v55 >> 6) + 8] |= 1 << v55;
          v62 = (v39[6] + 16 * v55);
          *v62 = v44;
          v62[1] = v53;
          v63 = v85;
          v64 = v99;
          (*(v85 + 32))(v39[7] + *(v85 + 72) * v55, v98, v99);
          (*(v63 + 8))(v100, v64);
          v19 = v88;
          v27 = v83;
          (*v87)(v88, v83);
          v65 = v39[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_34;
          }

          v39[2] = v67;
        }

        v37 = v97 + 1;
        v38 = v96 + 2;
        v35 = v94;
        if (v95 == v97 + 1)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v39 = _swiftEmptyDictionarySingleton;
LABEL_26:
    v24 = (v78 - 1) & v78;
    v68 = v39;
    v69 = v80;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v69;
    sub_1001217F4(v68, v76, v79, v70);

    swift_bridgeObjectRelease_n();
    v29 = v101;
    v20 = v75;
    v21 = v74;
    v25 = v73;
    v28 = v77;
  }

  while (v24);
LABEL_4:
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      return v29;
    }

    v24 = *(v21 + 8 * v30);
    ++v28;
    if (v24)
    {
      v28 = v30;
      goto LABEL_8;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FB14C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB20C, v1, 0);
}

uint64_t sub_1000FB20C()
{
  v1 = v0[3];
  v2 = sub_1000FA98C();
  v3 = sub_100123368(v0[2], v2);

  v4 = v0[6];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000FB410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB4D8, v5, 0);
}

uint64_t sub_1000FB4D8()
{
  v1 = v0[7];
  v2 = sub_1000FA98C();
  v3 = sub_100111F78(v0[2], v0[3], v0[4], v2, v0[5], v0[6]);

  v4 = v0[10];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000FB6E8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB7A8, v0, 0);
}

uint64_t sub_1000FB7A8()
{
  v1 = v0[2];
  v2 = sub_1000FA98C();
  v3 = sub_100123C64(v2);

  v4 = v0[5];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1000FB9B0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000FBA0C()
{
  v2 = type metadata accessor for DIPError.Code();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = *v0;

  return _swift_task_switch(sub_1000FBAC8, v5, 0);
}

uint64_t sub_1000FBAC8()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.idcsEncryptedPayloadInaccessible(_:), v0[2]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000FC160(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FBC40(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EDCBC;

  return sub_1000FB14C(a1);
}