uint64_t sub_10021D9F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301778, *a1);

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

void sub_10021DA54(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x4866666F646E6168;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10021DB5C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NoticeTapAction(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100223908(v1, v10, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v16[0] = 0x284C52556E65706FLL;
      v16[1] = 0xE800000000000000;
      sub_100223AD4(&qword_100343268, &type metadata accessor for URL);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v16[0];
      (*(v3 + 8))(v6, v2);
      return v14;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    sub_1002238A8(v10, type metadata accessor for NoticeTapAction);
    return 0xD000000000000014;
  }
}

uint64_t sub_10021DD98(void *a1)
{
  v2 = sub_100035D04(&qword_10034E750, &qword_10028FB58);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v42 = &v38 - v4;
  v5 = type metadata accessor for URL();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_10034E758, &qword_10028FB60);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_100035D04(&qword_10034E760, &qword_10028FB68);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NoticeTapAction(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100035D04(&qword_10034E768, &unk_10028FB70);
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = *(v48 + 64);
  __chkstk_darwin(v20);
  v23 = &v38 - v22;
  v24 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100225470();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v47, v19, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v43;
      v26 = v44;
      v28 = v41;
      (*(v43 + 32))(v41, v19, v44);
      LOBYTE(v50) = 2;
      sub_1002254C4();
      v29 = v42;
      v30 = v49;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100223AD4(&qword_100348538, &type metadata accessor for URL);
      v31 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v45 + 8))(v29, v31);
      (*(v27 + 8))(v28, v26);
      return (*(v48 + 8))(v23, v30);
    }

    else
    {
      LOBYTE(v50) = 0;
      sub_10022556C();
      v37 = v49;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v15, v12);
      return (*(v48 + 8))(v23, v37);
    }
  }

  else
  {
    v33 = *v19;
    v34 = v19[1];
    LOBYTE(v50) = 1;
    sub_100225518();
    v35 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = v33;
    v51 = v34;
    sub_100165FDC();
    v36 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v11, v36);
    (*(v48 + 8))(v23, v35);
    return sub_100010708(v33, v34);
  }
}

uint64_t sub_10021E348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_100035D04(&qword_10034E710, &qword_10028FB38);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v58 = &v49 - v6;
  v61 = sub_100035D04(&qword_10034E718, &qword_10028FB40);
  v55 = *(v61 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v61);
  v60 = &v49 - v8;
  v9 = sub_100035D04(&qword_10034E720, &qword_10028FB48);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v59 = &v49 - v11;
  v12 = sub_100035D04(&qword_10034E728, &qword_10028FB50);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = type metadata accessor for NoticeTapAction(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v49 - v22;
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v70 = a1;
  sub_10000EBC0(a1, v27);
  sub_100225470();
  v28 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v29 = v59;
    v50 = v23;
    v51 = v20;
    v52 = v25;
    v30 = v60;
    v31 = v61;
    v64 = v16;
    v32 = v62;
    v33 = KeyedDecodingContainer.allKeys.getter();
    v34 = (2 * *(v33 + 16)) | 1;
    v66 = v33;
    v67 = v33 + 32;
    v68 = 0;
    v69 = v34;
    v35 = sub_100218008();
    if (v35 == 3 || v68 != v69 >> 1)
    {
      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      v40 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v39 = v64;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
      swift_willThrow();
      (*(v63 + 8))(v15, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          LOBYTE(v65) = 1;
          sub_100225518();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v36 = v63;
          sub_100165E88();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v55 + 8))(v30, v31);
          (*(v36 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v45 = v50;
          *v50 = v65;
          swift_storeEnumTagMultiPayload();
          v46 = v45;
          v47 = v52;
          sub_100223A18(v46, v52, type metadata accessor for NoticeTapAction);
          v48 = v32;
        }

        else
        {
          LOBYTE(v65) = 2;
          sub_1002254C4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v48 = v32;
          type metadata accessor for URL();
          sub_100223AD4(&qword_100348498, &type metadata accessor for URL);
          v42 = v51;
          v43 = v56;
          v44 = v58;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v57 + 8))(v44, v43);
          (*(v63 + 8))(v15, v12);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v47 = v52;
          sub_100223A18(v42, v52, type metadata accessor for NoticeTapAction);
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_10022556C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v53 + 8))(v29, v54);
        (*(v63 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v47 = v52;
        swift_storeEnumTagMultiPayload();
        v48 = v32;
      }

      sub_100223A18(v47, v48, type metadata accessor for NoticeTapAction);
    }
  }

  return sub_10000903C(v70);
}

uint64_t sub_10021EAE0()
{
  v1 = 0x634172656461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C52556E65706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10021EB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100224118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10021EB64(uint64_t a1)
{
  v2 = sub_100225470();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EBA0(uint64_t a1)
{
  v2 = sub_100225470();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021EBDC(uint64_t a1)
{
  v2 = sub_100225518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EC18(uint64_t a1)
{
  v2 = sub_100225518();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021EC54(uint64_t a1)
{
  v2 = sub_10022556C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021EC90(uint64_t a1)
{
  v2 = sub_10022556C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ECCC(uint64_t a1)
{
  v2 = sub_1002254C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021ED08(uint64_t a1)
{
  v2 = sub_1002254C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021ED7C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LeaderNoticeTapAction(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100223908(v1, v10, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v12 = 0x726566736E617274;
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v10;
      v14 = v10[1];
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v20, "transferCall(");
      HIWORD(v20[1]) = -4864;
      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      return v20[0];
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    strcpy(v20, "openURL(");
    BYTE1(v20[1]) = 0;
    WORD1(v20[1]) = 0;
    HIDWORD(v20[1]) = -402653184;
    sub_100223AD4(&qword_100343268, &type metadata accessor for URL);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v12 = v20[0];
    (*(v3 + 8))(v6, v2);
  }

  return v12;
}

uint64_t sub_10021EFF0(void *a1)
{
  v2 = sub_100035D04(&qword_10034EA10, &qword_100290F40);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2);
  v38 = &v35 - v4;
  v41 = sub_100035D04(&qword_10034EA18, &qword_100290F48);
  v39 = *(v41 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v41);
  v37 = &v35 - v6;
  v40 = sub_100035D04(&qword_10034EA20, &qword_100290F50);
  v36 = *(v40 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v40);
  v9 = &v35 - v8;
  v10 = type metadata accessor for URL();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LeaderNoticeTapAction(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100035D04(&qword_10034EA28, &qword_100290F58);
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v47);
  v21 = &v35 - v20;
  v22 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100226B00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v46, v17, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v17;
      v25 = v17[1];
      v49 = 1;
      sub_100226BA8();
      v26 = v37;
      v27 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v41;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v39 + 8))(v26, v28);
      return (*(v18 + 8))(v21, v27);
    }

    else
    {
      v50 = 2;
      sub_100226B54();
      v33 = v38;
      v34 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v33, v43);
      return (*(v18 + 8))(v21, v34);
    }
  }

  else
  {
    v30 = v36;
    (*(v44 + 32))(v13, v17, v45);
    v48 = 0;
    sub_100226BFC();
    v31 = v47;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100223AD4(&qword_100348538, &type metadata accessor for URL);
    v32 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v9, v32);
    (*(v44 + 8))(v13, v45);
    return (*(v18 + 8))(v21, v31);
  }
}

uint64_t sub_10021F56C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = sub_100035D04(&qword_10034E9D0, &qword_100290F20);
  v64 = *(v66 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v66);
  v70 = &v57 - v4;
  v61 = sub_100035D04(&qword_10034E9D8, &qword_100290F28);
  v65 = *(v61 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v61);
  v69 = &v57 - v6;
  v7 = sub_100035D04(&qword_10034E9E0, &qword_100290F30);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = sub_100035D04(&qword_10034E9E8, &qword_100290F38);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v15 = type metadata accessor for LeaderNoticeTapAction(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v22 = &v57 - v21;
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v73 = a1;
  sub_10000EBC0(a1, v26);
  sub_100226B00();
  v27 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v57 = v19;
    v58 = v22;
    v28 = v69;
    v29 = v70;
    v72 = 0;
    v59 = v24;
    v60 = v15;
    v31 = v67;
    v30 = v68;
    v32 = v71;
    v33 = KeyedDecodingContainer.allKeys.getter();
    v34 = (2 * *(v33 + 16)) | 1;
    v74 = v33;
    v75 = v33 + 32;
    v76 = 0;
    v77 = v34;
    v35 = sub_100218008();
    v36 = v14;
    if (v35 == 3 || v76 != v77 >> 1)
    {
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      v43 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v42 = v60;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
      swift_willThrow();
    }

    else if (v35)
    {
      if (v35 == 1)
      {
        v78 = 1;
        sub_100226BA8();
        v37 = v28;
        v38 = v72;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v38)
        {
          v39 = v61;
          v52 = KeyedDecodingContainer.decode(_:forKey:)();
          v54 = v53;
          (*(v65 + 8))(v37, v39);
          (*(v31 + 8))(v14, v30);
          swift_unknownObjectRelease();
          v55 = v57;
          *v57 = v52;
          v55[1] = v54;
          swift_storeEnumTagMultiPayload();
          v56 = v55;
LABEL_17:
          v51 = v59;
          sub_100223A18(v56, v59, type metadata accessor for LeaderNoticeTapAction);
          v50 = v32;
          goto LABEL_18;
        }
      }

      else
      {
        v78 = 2;
        sub_100226B54();
        v49 = v72;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v49)
        {
          v50 = v32;
          (*(v64 + 8))(v29, v66);
          (*(v31 + 8))(v14, v30);
          swift_unknownObjectRelease();
          v51 = v59;
          swift_storeEnumTagMultiPayload();
LABEL_18:
          sub_100223A18(v51, v50, type metadata accessor for LeaderNoticeTapAction);
          return sub_10000903C(v73);
        }
      }
    }

    else
    {
      v78 = 0;
      sub_100226BFC();
      v45 = v10;
      v46 = v72;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v46)
      {
        type metadata accessor for URL();
        sub_100223AD4(&qword_100348498, &type metadata accessor for URL);
        v47 = v58;
        v48 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v62 + 8))(v45, v48);
        (*(v31 + 8))(v14, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v47;
        goto LABEL_17;
      }
    }

    (*(v31 + 8))(v36, v30);
    swift_unknownObjectRelease();
  }

  return sub_10000903C(v73);
}

uint64_t sub_10021FCEC()
{
  *v0;
  if (*v0)
  {
    return 0x726566736E617274;
  }

  else
  {
    return 0x4C52556E65706FLL;
  }
}

uint64_t sub_10021FD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100224234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10021FD84(uint64_t a1)
{
  v2 = sub_100226B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FDC0(uint64_t a1)
{
  v2 = sub_100226B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021FDFC(uint64_t a1)
{
  v2 = sub_100226BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FE38(uint64_t a1)
{
  v2 = sub_100226BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_10021FF0C(uint64_t a1)
{
  v2 = sub_100226BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FF48(uint64_t a1)
{
  v2 = sub_100226BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021FF84(uint64_t a1)
{
  v2 = sub_100226B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021FFC0(uint64_t a1)
{
  v2 = sub_100226B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100220034(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_100035D04(&qword_10034E5B0, &qword_10028FA78);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_100035D04(&qword_10034E5B8, &qword_10028FA80);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100035D04(&qword_10034E5C0, &qword_10028FA88);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_10034E5C8, &qword_10028FA90);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1002249E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_100224A88();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_100224A34();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_100224ADC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1002203B4(void *a1)
{
  v2 = sub_100035D04(&qword_10034E640, &qword_10028FAC0);
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  __chkstk_darwin(v2);
  v59 = &v51 - v4;
  v57 = type metadata accessor for ShareableContentExposedContext(0);
  v5 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034E648, &qword_10028FAC8);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v51 - v9;
  v10 = sub_100035D04(&qword_10034E650, &qword_10028FAD0);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_100035D04(&qword_10034E658, &qword_10028FAD8);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v18 = type metadata accessor for NoticeContent(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_100035D04(&qword_10034E660, &qword_10028FAE0);
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  __chkstk_darwin(v22);
  v25 = &v51 - v24;
  v26 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100224B30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100223908(v62, v21, type metadata accessor for NoticeContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *v21;
      v34 = v21[1];
      v36 = v21[2];
      v35 = v21[3];
      LOBYTE(v65) = 2;
      sub_100224BD8();
      v37 = v54;
      v38 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = v33;
      v66 = v34;
      v67 = v36;
      v68 = v35;
      sub_100224DD0();
      v39 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v37, v39);
      (*(v63 + 8))(v25, v38);
    }

    else
    {
      v47 = v58;
      sub_100223A18(v21, v58, type metadata accessor for ShareableContentExposedContext);
      LOBYTE(v65) = 3;
      sub_100224B84();
      v48 = v59;
      v49 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100223AD4(&qword_10034E668, type metadata accessor for ShareableContentExposedContext);
      v50 = v61;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v60 + 8))(v48, v50);
      sub_1002238A8(v47, type metadata accessor for ShareableContentExposedContext);
      return (*(v63 + 8))(v25, v49);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v42 = *v21;
      v41 = v21[1];
      v44 = v21[2];
      v43 = v21[3];
      LOBYTE(v65) = 1;
      sub_100224C80();
      v45 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = v42;
      v66 = v41;
      v67 = v44;
      v68 = v43;
      sub_100224E24();
      v46 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v52 + 8))(v13, v46);
      (*(v63 + 8))(v25, v45);
    }

    else
    {
      v29 = *v21;
      v28 = v21[1];
      v31 = v21[2];
      v30 = v21[3];
      LOBYTE(v65) = 0;
      sub_100224D28();
      v32 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = v29;
      v66 = v28;
      v67 = v31;
      v68 = v30;
      sub_100224E78();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v17, v14);
      (*(v63 + 8))(v25, v32);
    }
  }
}

uint64_t sub_100220AB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_100035D04(&qword_10034E5D0, &qword_10028FA98);
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v87 = &v69 - v6;
  v7 = sub_100035D04(&qword_10034E5D8, &qword_10028FAA0);
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v86 = &v69 - v10;
  v76 = sub_100035D04(&qword_10034E5E0, &qword_10028FAA8);
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v76);
  v85 = &v69 - v12;
  v74 = sub_100035D04(&qword_10034E5E8, &qword_10028FAB0);
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v74);
  v81 = &v69 - v14;
  v15 = sub_100035D04(&qword_10034E5F0, &qword_10028FAB8);
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  __chkstk_darwin(v15);
  v18 = &v69 - v17;
  v82 = type metadata accessor for NoticeContent(0);
  v19 = *(*(v82 - 8) + 64);
  v20 = __chkstk_darwin(v82);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v69 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v69 - v30;
  __chkstk_darwin(v29);
  v33 = &v69 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v97 = a1;
  sub_10000EBC0(a1, v34);
  sub_100224B30();
  v36 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v36)
  {
    v69 = v31;
    v70 = v28;
    v71 = v25;
    v72 = v22;
    v38 = v85;
    v37 = v86;
    v89 = v33;
    v40 = v83;
    v39 = v84;
    v42 = v87;
    v41 = v88;
    v43 = KeyedDecodingContainer.allKeys.getter();
    v44 = (2 * *(v43 + 16)) | 1;
    v93 = v43;
    v94 = v43 + 32;
    v95 = 0;
    v96 = v44;
    v45 = sub_100218018();
    if (v45 == 4 || v95 != v96 >> 1)
    {
      v52 = type metadata accessor for DecodingError();
      swift_allocError();
      v53 = v39;
      v55 = v54;
      v56 = v18;
      v57 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v55 = v82;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v52 - 8) + 104))(v55, enum case for DecodingError.typeMismatch(_:), v52);
      swift_willThrow();
      (*(v40 + 8))(v56, v53);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v45 > 1u)
      {
        if (v45 == 2)
        {
          LOBYTE(v90) = 2;
          sub_100224BD8();
          v58 = v37;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224C2C();
          v59 = v77;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v78 + 8))(v58, v59);
          (*(v40 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v64 = v91;
          v65 = v92;
          v66 = v71;
          *v71 = v90;
          *(v66 + 16) = v64;
          *(v66 + 24) = v65;
        }

        else
        {
          LOBYTE(v90) = 3;
          sub_100224B84();
          v61 = v42;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ShareableContentExposedContext(0);
          sub_100223AD4(&qword_10034E608, type metadata accessor for ShareableContentExposedContext);
          v66 = v72;
          v62 = v79;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v80 + 8))(v61, v62);
          (*(v40 + 8))(v18, v39);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v68 = v89;
        sub_100223A18(v66, v89, type metadata accessor for NoticeContent);
        v46 = v41;
      }

      else
      {
        v46 = v41;
        if (v45)
        {
          LOBYTE(v90) = 1;
          sub_100224C80();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224CD4();
          v60 = v76;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v75 + 8))(v38, v60);
          (*(v40 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v49 = v91;
          v50 = v92;
          v51 = v70;
          *v70 = v90;
        }

        else
        {
          LOBYTE(v90) = 0;
          sub_100224D28();
          v47 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_100224D7C();
          v48 = v74;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v73 + 8))(v47, v48);
          (*(v40 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v49 = v91;
          v50 = v92;
          v51 = v69;
          *v69 = v90;
        }

        *(v51 + 2) = v49;
        *(v51 + 3) = v50;
        swift_storeEnumTagMultiPayload();
        v67 = v51;
        v68 = v89;
        sub_100223A18(v67, v89, type metadata accessor for NoticeContent);
      }

      sub_100223A18(v68, v46, type metadata accessor for NoticeContent);
    }
  }

  return sub_10000903C(v97);
}

uint64_t sub_10022159C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = sub_100035D04(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = sub_10000EBC0(a1, a1[3]);
  a8(v16, v17, v18);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v19 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10022172C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034E6A0, &qword_10028FAF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100224ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ShareableContentExposedContext(0);
    v14 = *(v13 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for ShareableContent(0);
    sub_100223AD4(&qword_100348178, type metadata accessor for ShareableContent);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    sub_100224F74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10022192C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ShareableContent(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034E688, &qword_10028FAE8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = type metadata accessor for ShareableContentExposedContext(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100224ECC();
  v31 = v10;
  v16 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_10000903C(a1);
  }

  v17 = v6;
  v32 = v11;
  v18 = v29;
  v19 = v30;
  LOBYTE(v33) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v20;
  v26[1] = v20;
  v27 = v14;
  LOBYTE(v33) = 1;
  sub_100223AD4(&qword_100348150, type metadata accessor for ShareableContent);
  v21 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v32;
  sub_100223A18(v21, v27 + *(v32 + 20), type metadata accessor for ShareableContent);
  v34 = 2;
  sub_100224F20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v31, v19);
  v24 = v27;
  v23 = v28;
  *(v27 + *(v22 + 24)) = v33;
  sub_100223908(v24, v23, type metadata accessor for ShareableContentExposedContext);
  sub_10000903C(a1);
  return sub_1002238A8(v24, type metadata accessor for ShareableContentExposedContext);
}

uint64_t sub_100221CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100224358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100221D08(uint64_t a1)
{
  v2 = sub_1002249E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221D44(uint64_t a1)
{
  v2 = sub_1002249E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221D80(uint64_t a1)
{
  v2 = sub_100224ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221DBC(uint64_t a1)
{
  v2 = sub_100224ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221DF8(uint64_t a1)
{
  v2 = sub_100224A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221E34(uint64_t a1)
{
  v2 = sub_100224A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221E70(uint64_t a1)
{
  v2 = sub_100224A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221EAC(uint64_t a1)
{
  v2 = sub_100224A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100221EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100224470(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100221F40(uint64_t a1)
{
  v2 = sub_100224D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221F7C(uint64_t a1)
{
  v2 = sub_100224D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100221FB8()
{
  v1 = 1819042147;
  v2 = 0x616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x636972656E6567;
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

uint64_t sub_10022202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10022501C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100222054(uint64_t a1)
{
  v2 = sub_100224B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222090(uint64_t a1)
{
  v2 = sub_100224B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002220CC(uint64_t a1)
{
  v2 = sub_100224C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222108(uint64_t a1)
{
  v2 = sub_100224C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222144(uint64_t a1)
{
  v2 = sub_100224BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222180(uint64_t a1)
{
  v2 = sub_100224BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002221BC(uint64_t a1)
{
  v2 = sub_100224B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002221F8(uint64_t a1)
{
  v2 = sub_100224B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222268(uint64_t a1)
{
  v2 = sub_10022541C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002222A4(uint64_t a1)
{
  v2 = sub_10022541C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022237C(uint64_t a1)
{
  v2 = sub_1002253C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002223B8(uint64_t a1)
{
  v2 = sub_1002253C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100222438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_100225184(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_1002224D0(uint64_t a1)
{
  v2 = sub_100225374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022250C(uint64_t a1)
{
  v2 = sub_100225374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002225E4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100222688()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1002226D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002269EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100222700(uint64_t a1)
{
  v2 = sub_100224ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022273C(uint64_t a1)
{
  v2 = sub_100224ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002227BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_100222844(uint64_t a1)
{
  v2 = sub_100224FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100222880(uint64_t a1)
{
  v2 = sub_100224FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002228BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_10034E6B0, &qword_10028FAF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100224FC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000903C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_100222A38(void *a1)
{
  v3 = sub_100035D04(&qword_10034E6C0, &qword_10028FB00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100224FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100222B74(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100222C04()
{
  result = qword_10034E4E0;
  if (!qword_10034E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E4E0);
  }

  return result;
}

unint64_t sub_100222C8C()
{
  result = qword_10034E4F8;
  if (!qword_10034E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E4F8);
  }

  return result;
}

unint64_t sub_100222CE0()
{
  result = qword_10034E500;
  if (!qword_10034E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E500);
  }

  return result;
}

uint64_t sub_100222D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NoticeTapAction(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v30 - v13);
  v15 = sub_100035D04(&qword_10034E510, &qword_10028FA38);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v30 - v18;
  v20 = (&v30 + *(v17 + 56) - v18);
  sub_100223908(a1, &v30 - v18, type metadata accessor for NoticeTapAction);
  sub_100223908(a2, v20, type metadata accessor for NoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100223908(v19, v14, type metadata accessor for NoticeTapAction);
    v25 = *v14;
    v26 = v14[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = *v20;
      v28 = v20[1];
      v23 = sub_1001B1F40(v25, v26, *v20, v28);
      sub_100010708(v27, v28);
      sub_100010708(v25, v26);
      goto LABEL_12;
    }

    sub_100010708(v25, v26);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100223908(v19, v12, type metadata accessor for NoticeTapAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v31;
      (*(v31 + 32))(v7, v20, v4);
      v23 = static URL.== infix(_:_:)();
      v24 = *(v22 + 8);
      v24(v7, v4);
      v24(v12, v4);
LABEL_12:
      sub_1002238A8(v19, type metadata accessor for NoticeTapAction);
      return v23 & 1;
    }

    (*(v31 + 8))(v12, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1000097E8(v19, &qword_10034E510, &qword_10028FA38);
    v23 = 0;
    return v23 & 1;
  }

  sub_1002238A8(v19, type metadata accessor for NoticeTapAction);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1002230A8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ShareableContentExposedContext(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = *(a1 + v6 + 8);
  v10 = *(a2 + v6 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v8 && v9 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = type metadata accessor for ShareableContent(0);
  if (sub_1001E25FC(v7 + *(v12 + 20), v8 + *(v12 + 20)))
  {
    v13 = *(v5 + 24);
    v14 = (a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = (a2 + v13);
    v17 = v16[1];
    if (v15)
    {
      if (v17)
      {
        v18 = *v14 == *v16 && v15 == v17;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v17)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002231B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareableContentExposedContext(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NoticeContent(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = (&v56 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = (&v56 - v17);
  __chkstk_darwin(v16);
  v20 = (&v56 - v19);
  v21 = sub_100035D04(&qword_10034E508, &qword_10028FA30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = (&v56 + *(v23 + 56) - v24);
  v26 = a1;
  v27 = &v56 - v24;
  sub_100223908(v26, &v56 - v24, type metadata accessor for NoticeContent);
  sub_100223908(a2, v25, type metadata accessor for NoticeContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100223908(v27, v18, type metadata accessor for NoticeContent);
      v30 = *v18;
      v29 = v18[1];
      v32 = v18[2];
      v31 = v18[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_19:
        v45 = v27;
        v46 = *v25;
        v47 = v25[1];
        v49 = v25[2];
        v48 = v25[3];
        v50 = v30 == v46 && v29 == v47;
        if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

LABEL_39:
          sub_1002238A8(v45, type metadata accessor for NoticeContent);
          goto LABEL_35;
        }

        if (v32 == v49 && v31 == v48)
        {
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v52 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v54 = v45;
LABEL_42:
        sub_1002238A8(v54, type metadata accessor for NoticeContent);
        v53 = 1;
        return v53 & 1;
      }
    }

    else
    {
      sub_100223908(v27, v20, type metadata accessor for NoticeContent);
      v30 = *v20;
      v29 = v20[1];
      v32 = v20[2];
      v31 = v20[3];
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100223908(v27, v15, type metadata accessor for NoticeContent);
    v34 = *v15;
    v33 = v15[1];
    v36 = v15[2];
    v35 = v15[3];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_30:

LABEL_34:
      sub_1000097E8(v27, &qword_10034E508, &qword_10028FA30);
LABEL_35:
      v53 = 0;
      return v53 & 1;
    }

    v37 = v27;
    v38 = *v25;
    v39 = v25[1];
    v41 = v25[2];
    v40 = v25[3];
    v42 = v34 == v38 && v33 == v39;
    if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v36 == v41 && v35 == v40)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v54 = v37;
      goto LABEL_42;
    }

LABEL_45:
    sub_1002238A8(v37, type metadata accessor for NoticeContent);
    goto LABEL_35;
  }

  sub_100223908(v27, v12, type metadata accessor for NoticeContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1002238A8(v12, type metadata accessor for ShareableContentExposedContext);
    goto LABEL_34;
  }

  sub_100223A18(v25, v7, type metadata accessor for ShareableContentExposedContext);
  v53 = sub_1002230A8(v12, v7);
  sub_1002238A8(v7, type metadata accessor for ShareableContentExposedContext);
  sub_1002238A8(v12, type metadata accessor for ShareableContentExposedContext);
  sub_1002238A8(v27, type metadata accessor for NoticeContent);
  return v53 & 1;
}

uint64_t sub_100223750(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v6 = 0x4866666F646E6168;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (*(a1 + 16))
  {
    v7 = 0xEB00000000746E69;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*(a2 + 16))
  {
    v8 = 0x4866666F646E6168;
  }

  else
  {
    v8 = 0x647261646E617473;
  }

  if (*(a2 + 16))
  {
    v9 = 0xEB00000000746E69;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = type metadata accessor for NoticeContext(0);
  if ((sub_100222D34(a1 + v12[6], a2 + v12[6]) & 1) == 0 || *(a1 + v12[7]) != *(a2 + v12[7]))
  {
    return 0;
  }

  v13 = v12[8];

  return sub_1002231B8(a1 + v13, a2 + v13);
}

uint64_t sub_1002238A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100223908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100223970()
{
  result = qword_10034E520;
  if (!qword_10034E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E520);
  }

  return result;
}

unint64_t sub_1002239C4()
{
  result = qword_10034E528;
  if (!qword_10034E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E528);
  }

  return result;
}

uint64_t sub_100223A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100223A80()
{
  result = qword_10034E538;
  if (!qword_10034E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E538);
  }

  return result;
}

uint64_t sub_100223AD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100223B1C()
{
  result = qword_10034E550;
  if (!qword_10034E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E550);
  }

  return result;
}

unint64_t sub_100223B70()
{
  result = qword_10034E560;
  if (!qword_10034E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E560);
  }

  return result;
}

uint64_t sub_100223BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LeaderNoticeTapAction(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = sub_100035D04(&qword_10034EA30, &unk_100290F60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_100223908(a1, &v32 - v18, type metadata accessor for LeaderNoticeTapAction);
  sub_100223908(a2, v20, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v33;
    sub_100223908(v19, v14, type metadata accessor for LeaderNoticeTapAction);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v27 + 32))(v7, v20, v4);
      v28 = static URL.== infix(_:_:)();
      v29 = *(v27 + 8);
      v29(v7, v4);
      v29(v14, v4);
      sub_1002238A8(v19, type metadata accessor for LeaderNoticeTapAction);
      return v28 & 1;
    }

    (*(v27 + 8))(v14, v4);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

LABEL_15:
    sub_1000097E8(v19, &qword_10034EA30, &unk_100290F60);
    goto LABEL_16;
  }

  sub_100223908(v19, v12, type metadata accessor for LeaderNoticeTapAction);
  v23 = *v12;
  v22 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  if (v23 == *v20 && v22 == v20[1])
  {
    v30 = v20[1];

    goto LABEL_19;
  }

  v25 = v20[1];
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_19:
    sub_1002238A8(v19, type metadata accessor for LeaderNoticeTapAction);
    v28 = 1;
    return v28 & 1;
  }

  sub_1002238A8(v19, type metadata accessor for LeaderNoticeTapAction);
LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_100223F68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65746E49706174 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_100224118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x634172656461656CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_100224234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC0000006C6C6143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED0000616964654DLL)
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

uint64_t sub_100224358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766965636572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000)
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

uint64_t sub_100224470(uint64_t *a1)
{
  v36 = sub_100035D04(&qword_10034E570, &qword_10028FA50);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v38 = &v31 - v3;
  v37 = sub_100035D04(&qword_10034E578, &qword_10028FA58);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v7 = sub_100035D04(&qword_10034E580, &qword_10028FA60);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_100035D04(&qword_10034E588, &unk_10028FA68);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_10000EBC0(a1, v16);
  sub_1002249E0();
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_100218008();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_100224A88();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v40);
          return v12;
        }

        v45 = 2;
        sub_100224A34();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_100224ADC();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v27 = &type metadata for NoticeTapIntent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v40);
  return v12;
}

unint64_t sub_1002249E0()
{
  result = qword_10034E590;
  if (!qword_10034E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E590);
  }

  return result;
}

unint64_t sub_100224A34()
{
  result = qword_10034E598;
  if (!qword_10034E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E598);
  }

  return result;
}

unint64_t sub_100224A88()
{
  result = qword_10034E5A0;
  if (!qword_10034E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5A0);
  }

  return result;
}

unint64_t sub_100224ADC()
{
  result = qword_10034E5A8;
  if (!qword_10034E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5A8);
  }

  return result;
}

unint64_t sub_100224B30()
{
  result = qword_10034E5F8;
  if (!qword_10034E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E5F8);
  }

  return result;
}

unint64_t sub_100224B84()
{
  result = qword_10034E600;
  if (!qword_10034E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E600);
  }

  return result;
}

unint64_t sub_100224BD8()
{
  result = qword_10034E610;
  if (!qword_10034E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E610);
  }

  return result;
}

unint64_t sub_100224C2C()
{
  result = qword_10034E618;
  if (!qword_10034E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E618);
  }

  return result;
}

unint64_t sub_100224C80()
{
  result = qword_10034E620;
  if (!qword_10034E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E620);
  }

  return result;
}

unint64_t sub_100224CD4()
{
  result = qword_10034E628;
  if (!qword_10034E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E628);
  }

  return result;
}

unint64_t sub_100224D28()
{
  result = qword_10034E630;
  if (!qword_10034E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E630);
  }

  return result;
}

unint64_t sub_100224D7C()
{
  result = qword_10034E638;
  if (!qword_10034E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E638);
  }

  return result;
}

unint64_t sub_100224DD0()
{
  result = qword_10034E670;
  if (!qword_10034E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E670);
  }

  return result;
}

unint64_t sub_100224E24()
{
  result = qword_10034E678;
  if (!qword_10034E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E678);
  }

  return result;
}

unint64_t sub_100224E78()
{
  result = qword_10034E680;
  if (!qword_10034E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E680);
  }

  return result;
}

unint64_t sub_100224ECC()
{
  result = qword_10034E690;
  if (!qword_10034E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E690);
  }

  return result;
}

unint64_t sub_100224F20()
{
  result = qword_10034E698;
  if (!qword_10034E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E698);
  }

  return result;
}

unint64_t sub_100224F74()
{
  result = qword_10034E6A8;
  if (!qword_10034E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6A8);
  }

  return result;
}

unint64_t sub_100224FC8()
{
  result = qword_10034E6B8;
  if (!qword_10034E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6B8);
  }

  return result;
}

uint64_t sub_10022501C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819042147 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001002A6670 == a2)
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

uint64_t sub_100225184(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_100035D04(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000EBC0(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v7);
  }

  sub_10000903C(a1);
  return v11;
}

unint64_t sub_100225374()
{
  result = qword_10034E6D0;
  if (!qword_10034E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6D0);
  }

  return result;
}

unint64_t sub_1002253C8()
{
  result = qword_10034E6E8;
  if (!qword_10034E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E6E8);
  }

  return result;
}

unint64_t sub_10022541C()
{
  result = qword_10034E700;
  if (!qword_10034E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E700);
  }

  return result;
}

unint64_t sub_100225470()
{
  result = qword_10034E730;
  if (!qword_10034E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E730);
  }

  return result;
}

unint64_t sub_1002254C4()
{
  result = qword_10034E738;
  if (!qword_10034E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E738);
  }

  return result;
}

unint64_t sub_100225518()
{
  result = qword_10034E740;
  if (!qword_10034E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E740);
  }

  return result;
}

unint64_t sub_10022556C()
{
  result = qword_10034E748;
  if (!qword_10034E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E748);
  }

  return result;
}

uint64_t sub_1002255E0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100225654();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100225654()
{
  result = qword_10034E7F8;
  if (!qword_10034E7F8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034E7F8);
  }

  return result;
}

unint64_t sub_1002257B8()
{
  result = qword_10034E828;
  if (!qword_10034E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E828);
  }

  return result;
}

unint64_t sub_100225810()
{
  result = qword_10034E830;
  if (!qword_10034E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E830);
  }

  return result;
}

unint64_t sub_100225868()
{
  result = qword_10034E838;
  if (!qword_10034E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E838);
  }

  return result;
}

unint64_t sub_1002258C0()
{
  result = qword_10034E840;
  if (!qword_10034E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E840);
  }

  return result;
}

unint64_t sub_100225918()
{
  result = qword_10034E848;
  if (!qword_10034E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E848);
  }

  return result;
}

unint64_t sub_100225970()
{
  result = qword_10034E850;
  if (!qword_10034E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E850);
  }

  return result;
}

unint64_t sub_1002259C8()
{
  result = qword_10034E858;
  if (!qword_10034E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E858);
  }

  return result;
}

unint64_t sub_100225A20()
{
  result = qword_10034E860;
  if (!qword_10034E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E860);
  }

  return result;
}

unint64_t sub_100225A78()
{
  result = qword_10034E868;
  if (!qword_10034E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E868);
  }

  return result;
}

unint64_t sub_100225AD0()
{
  result = qword_10034E870;
  if (!qword_10034E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E870);
  }

  return result;
}

unint64_t sub_100225B28()
{
  result = qword_10034E878;
  if (!qword_10034E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E878);
  }

  return result;
}

unint64_t sub_100225B80()
{
  result = qword_10034E880;
  if (!qword_10034E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E880);
  }

  return result;
}

unint64_t sub_100225BD8()
{
  result = qword_10034E888;
  if (!qword_10034E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E888);
  }

  return result;
}

unint64_t sub_100225C30()
{
  result = qword_10034E890;
  if (!qword_10034E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E890);
  }

  return result;
}

unint64_t sub_100225C88()
{
  result = qword_10034E898;
  if (!qword_10034E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E898);
  }

  return result;
}

unint64_t sub_100225CE0()
{
  result = qword_10034E8A0;
  if (!qword_10034E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8A0);
  }

  return result;
}

unint64_t sub_100225D38()
{
  result = qword_10034E8A8;
  if (!qword_10034E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8A8);
  }

  return result;
}

unint64_t sub_100225D90()
{
  result = qword_10034E8B0;
  if (!qword_10034E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8B0);
  }

  return result;
}

unint64_t sub_100225DE8()
{
  result = qword_10034E8B8;
  if (!qword_10034E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8B8);
  }

  return result;
}

unint64_t sub_100225E40()
{
  result = qword_10034E8C0;
  if (!qword_10034E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8C0);
  }

  return result;
}

unint64_t sub_100225E98()
{
  result = qword_10034E8C8;
  if (!qword_10034E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8C8);
  }

  return result;
}

unint64_t sub_100225EF0()
{
  result = qword_10034E8D0;
  if (!qword_10034E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8D0);
  }

  return result;
}

unint64_t sub_100225F48()
{
  result = qword_10034E8D8;
  if (!qword_10034E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8D8);
  }

  return result;
}

unint64_t sub_100225FA0()
{
  result = qword_10034E8E0;
  if (!qword_10034E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8E0);
  }

  return result;
}

unint64_t sub_100225FF8()
{
  result = qword_10034E8E8;
  if (!qword_10034E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8E8);
  }

  return result;
}

unint64_t sub_100226050()
{
  result = qword_10034E8F0;
  if (!qword_10034E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8F0);
  }

  return result;
}

unint64_t sub_1002260A8()
{
  result = qword_10034E8F8;
  if (!qword_10034E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E8F8);
  }

  return result;
}

unint64_t sub_100226100()
{
  result = qword_10034E900;
  if (!qword_10034E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E900);
  }

  return result;
}

unint64_t sub_100226158()
{
  result = qword_10034E908;
  if (!qword_10034E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E908);
  }

  return result;
}

unint64_t sub_1002261B0()
{
  result = qword_10034E910;
  if (!qword_10034E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E910);
  }

  return result;
}

unint64_t sub_100226208()
{
  result = qword_10034E918;
  if (!qword_10034E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E918);
  }

  return result;
}

unint64_t sub_100226260()
{
  result = qword_10034E920;
  if (!qword_10034E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E920);
  }

  return result;
}

unint64_t sub_1002262B8()
{
  result = qword_10034E928;
  if (!qword_10034E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E928);
  }

  return result;
}

unint64_t sub_100226310()
{
  result = qword_10034E930;
  if (!qword_10034E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E930);
  }

  return result;
}

unint64_t sub_100226368()
{
  result = qword_10034E938;
  if (!qword_10034E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E938);
  }

  return result;
}

unint64_t sub_1002263C0()
{
  result = qword_10034E940;
  if (!qword_10034E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E940);
  }

  return result;
}

unint64_t sub_100226418()
{
  result = qword_10034E948;
  if (!qword_10034E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E948);
  }

  return result;
}

unint64_t sub_100226470()
{
  result = qword_10034E950;
  if (!qword_10034E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E950);
  }

  return result;
}

unint64_t sub_1002264C8()
{
  result = qword_10034E958;
  if (!qword_10034E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E958);
  }

  return result;
}

unint64_t sub_100226520()
{
  result = qword_10034E960;
  if (!qword_10034E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E960);
  }

  return result;
}

unint64_t sub_100226578()
{
  result = qword_10034E968;
  if (!qword_10034E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E968);
  }

  return result;
}

unint64_t sub_1002265D0()
{
  result = qword_10034E970;
  if (!qword_10034E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E970);
  }

  return result;
}

unint64_t sub_100226628()
{
  result = qword_10034E978;
  if (!qword_10034E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E978);
  }

  return result;
}

unint64_t sub_100226680()
{
  result = qword_10034E980;
  if (!qword_10034E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E980);
  }

  return result;
}

unint64_t sub_1002266D8()
{
  result = qword_10034E988;
  if (!qword_10034E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E988);
  }

  return result;
}

unint64_t sub_100226730()
{
  result = qword_10034E990;
  if (!qword_10034E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E990);
  }

  return result;
}

unint64_t sub_100226788()
{
  result = qword_10034E998;
  if (!qword_10034E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E998);
  }

  return result;
}

unint64_t sub_1002267E0()
{
  result = qword_10034E9A0;
  if (!qword_10034E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9A0);
  }

  return result;
}

unint64_t sub_100226838()
{
  result = qword_10034E9A8;
  if (!qword_10034E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9A8);
  }

  return result;
}

unint64_t sub_100226890()
{
  result = qword_10034E9B0;
  if (!qword_10034E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9B0);
  }

  return result;
}

unint64_t sub_1002268E8()
{
  result = qword_10034E9B8;
  if (!qword_10034E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9B8);
  }

  return result;
}

unint64_t sub_100226940()
{
  result = qword_10034E9C0;
  if (!qword_10034E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9C0);
  }

  return result;
}

unint64_t sub_100226998()
{
  result = qword_10034E9C8;
  if (!qword_10034E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9C8);
  }

  return result;
}

uint64_t sub_1002269EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
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

unint64_t sub_100226B00()
{
  result = qword_10034E9F0;
  if (!qword_10034E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9F0);
  }

  return result;
}

unint64_t sub_100226B54()
{
  result = qword_10034E9F8;
  if (!qword_10034E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034E9F8);
  }

  return result;
}

unint64_t sub_100226BA8()
{
  result = qword_10034EA00;
  if (!qword_10034EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA00);
  }

  return result;
}

unint64_t sub_100226BFC()
{
  result = qword_10034EA08;
  if (!qword_10034EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA08);
  }

  return result;
}

unint64_t sub_100226C94()
{
  result = qword_10034EA38;
  if (!qword_10034EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA38);
  }

  return result;
}

unint64_t sub_100226CEC()
{
  result = qword_10034EA40;
  if (!qword_10034EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA40);
  }

  return result;
}

unint64_t sub_100226D44()
{
  result = qword_10034EA48;
  if (!qword_10034EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA48);
  }

  return result;
}

unint64_t sub_100226D9C()
{
  result = qword_10034EA50;
  if (!qword_10034EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA50);
  }

  return result;
}

unint64_t sub_100226DF4()
{
  result = qword_10034EA58;
  if (!qword_10034EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA58);
  }

  return result;
}

unint64_t sub_100226E4C()
{
  result = qword_10034EA60;
  if (!qword_10034EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA60);
  }

  return result;
}

unint64_t sub_100226EA4()
{
  result = qword_10034EA68;
  if (!qword_10034EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA68);
  }

  return result;
}

unint64_t sub_100226EFC()
{
  result = qword_10034EA70;
  if (!qword_10034EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA70);
  }

  return result;
}

unint64_t sub_100226F54()
{
  result = qword_10034EA78;
  if (!qword_10034EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA78);
  }

  return result;
}

unint64_t sub_100226FAC()
{
  result = qword_10034EA80;
  if (!qword_10034EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA80);
  }

  return result;
}

unint64_t sub_100227004()
{
  result = qword_10034EA88;
  if (!qword_10034EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EA88);
  }

  return result;
}

uint64_t sub_10022707C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034EA90);
  sub_100003078(v0, qword_10034EA90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002270FC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v5 = *(v0 + 40);
    sub_100035D04(&qword_10034EBD0, qword_100291448);
    sub_100227B48();
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

void *sub_100227194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  v6 = sub_100035D04(&qword_10034EBD0, qword_100291448);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v2[5] = PassthroughSubject.init()();
  v2[6] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10034EA90);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Init", v12, 2u);
  }

  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t sub_1002272C4()
{
  v1 = v0;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034EA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 32);

  v7 = *(v1 + 40);

  v8 = *(v1 + 48);

  v9 = *(v1 + 56);

  return v1;
}

uint64_t sub_1002273CC()
{
  sub_1002272C4();

  return swift_deallocClassInstance();
}

void sub_100227424(uint64_t a1)
{
  v2 = v1;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034EA90);
  sub_10007E790(a1, v21);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    sub_10000903C(v21);
    if (*(v2 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_10007E790(a1, v21);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = objc_allocWithZone(type metadata accessor for PCViewServiceHandle());
    v17 = sub_10009D944(0xD000000000000012, 0x80000001002A6730, v21, sub_10001C2E0, v15);
    sub_10009DD84();
    v18 = *(v2 + 16);
    *(v2 + 16) = v17;

    return;
  }

  v7 = swift_slowAlloc();
  v20[0] = swift_slowAlloc();
  *v7 = 136315394;
  *(v7 + 4) = sub_100017494(0x28746E6573657270, 0xEE00293A68746977, v20);
  *(v7 + 12) = 2080;
  sub_10007E790(v21, &v19);
  sub_100035D04(&qword_10034EBC8, &qword_100291440);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  sub_10000903C(v21);
  v11 = sub_100017494(v8, v10, v20);

  *(v7 + 14) = v11;
  _os_log_impl(&_mh_execute_header, v5, v6, "%s: context=%s", v7, 0x16u);
  swift_arrayDestroy();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_5:
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "### Present attempted while already active?", v14, 2u);
  }
}

uint64_t sub_100227814()
{
  v1 = v0;
  if (qword_100339258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034EA90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v17);
    *(v5 + 12) = 2080;
    v6 = *(v1 + 16);
    if (v6)
    {
      v16 = *(v1 + 16);
      type metadata accessor for PCViewServiceHandle();
      v7 = v6;
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_100017494(v8, v10, v17);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.handle=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = v12;
    sub_10009DBD8();

    v12 = *(v1 + 16);
  }

  *(v1 + 16) = 0;

  swift_beginAccess();
  v14 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptySetSingleton;
}

unint64_t sub_100227A30()
{
  v1 = v0;
  _StringGuts.grow(_:)(29);

  v3 = *(v0 + 24);
  v2 = *(v1 + 32);

  sub_10000B584(8);

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000001ALL;
}

unint64_t sub_100227B48()
{
  result = qword_10034EBD8;
  if (!qword_10034EBD8)
  {
    sub_100035D4C(&qword_10034EBD0, qword_100291448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EBD8);
  }

  return result;
}

uint64_t sub_100227BC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034EBE0);
  sub_100003078(v0, qword_10034EBE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100227C44()
{
  type metadata accessor for ScreenOnMonitor();
  v0 = swift_allocObject();
  result = sub_100227C80();
  qword_10038B5D8 = v0;
  return result;
}

uint64_t sub_100227C80()
{
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v2 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 40) = v2;
  v3 = qword_1003391E8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];

  v5 = *(v0 + 40);
  v16 = sub_100228128;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_100314AA0;
  v6 = _Block_copy(&v12);
  v7 = v5;

  [v7 setScreenStateChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 40);
  v16 = sub_100228120;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_100314AC8;
  v9 = _Block_copy(&v12);

  v10 = v8;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);

  return v0;
}

uint64_t sub_100227E9C()
{
  [*(v0 + 40) invalidate];
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_100227F10()
{
  v1 = v0;
  v2 = [*(v0 + 40) screenState];
  v3 = v2;
  v5 = v2 == 40 || v2 == 30;
  if (qword_100339260 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034EBE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = 0xE300000000000000;
    v12 = 6710895;
    if (v3 == 40)
    {
      v12 = 28271;
      v11 = 0xE200000000000000;
    }

    if (v3 == 30)
    {
      v13 = 28271;
    }

    else
    {
      v13 = v12;
    }

    if (v3 == 30)
    {
      v14 = 0xE200000000000000;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_100017494(v13, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Screen state updated: %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  v16 = *(v1 + 16);
  if (v5 != *(v16 + 24))
  {
    if (v3 == 40 || v3 == 30)
    {
      v17 = mach_continuous_time();
      v18 = 0;
      v16 = *(v1 + 16);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    *(v1 + 24) = v17;
    *(v1 + 32) = v18;
    *(v16 + 24) = v5;

    sub_10005E50C();
    v20 = *(v16 + 24);
    CurrentValueSubject.send(_:)();
  }
}

unint64_t sub_100228134()
{
  result = qword_10034ECE8;
  if (!qword_10034ECE8)
  {
    sub_100035D4C(&qword_10034ECF0, &qword_100291558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ECE8);
  }

  return result;
}

unint64_t sub_1002283FC()
{
  result = qword_10034ED18;
  if (!qword_10034ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED18);
  }

  return result;
}

uint64_t sub_100228450(void *a1)
{
  v2 = v1;
  v62 = sub_100035D04(&qword_10034EDB0, &qword_100291768);
  v61 = *(v62 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin(v62);
  v60 = &v56 - v5;
  v59 = sub_100035D04(&qword_10034EDB8, &qword_100291770);
  v58 = *(v59 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v56 - v7;
  v8 = sub_100035D04(&qword_10034EDC0, &qword_100291778);
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  __chkstk_darwin(v8);
  v78 = &v56 - v10;
  v65 = sub_100035D04(&qword_10034EDC8, &qword_100291780);
  v64 = *(v65 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v65);
  v63 = &v56 - v12;
  v68 = sub_100035D04(&qword_10034EDD0, &qword_100291788);
  v67 = *(v68 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v56 - v14;
  v15 = sub_100035D04(&qword_10034EDD8, &qword_100291790);
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  __chkstk_darwin(v15);
  v75 = &v56 - v17;
  v18 = sub_100035D04(&qword_10034EDE0, &qword_100291798);
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v69 = &v56 - v20;
  v21 = sub_100035D04(&qword_10034EDE8, &qword_1002917A0);
  v73 = *(v21 - 8);
  v74 = v21;
  v22 = *(v73 + 64);
  __chkstk_darwin(v21);
  v72 = &v56 - v23;
  v91 = sub_100035D04(&qword_10034EDF0, &qword_1002917A8);
  v81 = *(v91 - 8);
  v24 = *(v81 + 64);
  __chkstk_darwin(v91);
  v26 = &v56 - v25;
  v27 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10022A4D0();
  v82 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = *v2;
  v28 = v2[1];
  v31 = v2[2];
  v30 = v2[3];
  v32 = v2[4];
  v33 = v2[5];
  v34 = v2[6];
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      LOBYTE(v83) = 5;
      sub_10022A5CC();
      v35 = v78;
      v36 = v91;
      v37 = v82;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v80;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v79 + 8))(v35, v38);
      return (*(v81 + 8))(v37, v36);
    }

    v42 = v32 | v33 | v34;
    if (v31 | v28 | v29 | v30 | v42)
    {
      v43 = v31 | v28 | v30 | v42;
      if (v29 != 1 || v43)
      {
        if (v29 != 2 || v43)
        {
          if (v29 != 3 || v43)
          {
            if (v29 != 4 || v43)
            {
              LOBYTE(v83) = 7;
              sub_10022A524();
              v55 = v60;
              v45 = v91;
              v46 = v82;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v50 = *(v61 + 8);
              v51 = v55;
              v52 = &v92;
            }

            else
            {
              LOBYTE(v83) = 6;
              sub_10022A578();
              v54 = v57;
              v45 = v91;
              v46 = v82;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v50 = *(v58 + 8);
              v51 = v54;
              v52 = &v90;
            }
          }

          else
          {
            LOBYTE(v83) = 4;
            sub_10022A620();
            v53 = v63;
            v45 = v91;
            v46 = v82;
            KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v50 = *(v64 + 8);
            v51 = v53;
            v52 = &v93;
          }
        }

        else
        {
          LOBYTE(v83) = 3;
          sub_10022A674();
          v49 = v66;
          v45 = v91;
          v46 = v82;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = *(v67 + 8);
          v51 = v49;
          v52 = &v94;
        }

        v50(v51, *(v52 - 32));
        return (*(v81 + 8))(v46, v45);
      }

      LOBYTE(v83) = 1;
      sub_10022A71C();
      v44 = v69;
      v45 = v91;
      v46 = v82;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v70;
      v47 = v71;
    }

    else
    {
      LOBYTE(v83) = 0;
      sub_10022A770();
      v44 = v72;
      v45 = v91;
      v46 = v82;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v73;
      v47 = v74;
    }

    (*(v48 + 8))(v44, v47);
    return (*(v81 + 8))(v46, v45);
  }

  LOBYTE(v83) = 2;
  sub_10022A6C8();
  v40 = v75;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v83 = v29;
  v84 = v28;
  v85 = v31;
  v86 = v30;
  v87 = v32;
  v88 = v33;
  v89 = v34;
  sub_10010B950();
  v41 = v77;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v76 + 8))(v40, v41);
  return (*(v81 + 8))(v82, v91);
}

unint64_t sub_100228D54()
{
  v1 = *v0;
  v2 = 0x6574736575716572;
  v3 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x65746E6573657270;
  if (v1 != 4)
  {
    v4 = 0x657373696D736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x69746E6573657270;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100228E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100229470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100228E74(uint64_t a1)
{
  v2 = sub_10022A4D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228EB0(uint64_t a1)
{
  v2 = sub_10022A4D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228EEC(uint64_t a1)
{
  v2 = sub_10022A578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228F28(uint64_t a1)
{
  v2 = sub_10022A578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228F64(uint64_t a1)
{
  v2 = sub_10022A524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228FA0(uint64_t a1)
{
  v2 = sub_10022A524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228FDC(uint64_t a1)
{
  v2 = sub_10022A5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229018(uint64_t a1)
{
  v2 = sub_10022A5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229054(uint64_t a1)
{
  v2 = sub_10022A6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229090(uint64_t a1)
{
  v2 = sub_10022A6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002290CC(uint64_t a1)
{
  v2 = sub_10022A71C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229108(uint64_t a1)
{
  v2 = sub_10022A71C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229144(uint64_t a1)
{
  v2 = sub_10022A620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229180(uint64_t a1)
{
  v2 = sub_10022A620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002291BC(uint64_t a1)
{
  v2 = sub_10022A674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002291F8(uint64_t a1)
{
  v2 = sub_10022A674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100229234(uint64_t a1)
{
  v2 = sub_10022A770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229270(uint64_t a1)
{
  v2 = sub_10022A770();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1002292AC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100229720(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100229324(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v4 != 3 || v17)
        {
          if (v4 != 4 || v17)
          {
            if (v2 != 2 || v6 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v6 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100229470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001002A67C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A67A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100229720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_100035D04(&qword_10034ED20, &qword_100291718);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  __chkstk_darwin(v3);
  v95 = &v73 - v5;
  v90 = sub_100035D04(&qword_10034ED28, &qword_100291720);
  v88 = *(v90 - 8);
  v6 = *(v88 + 64);
  __chkstk_darwin(v90);
  v94 = &v73 - v7;
  v89 = sub_100035D04(&qword_10034ED30, &qword_100291728);
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v89);
  v98 = &v73 - v9;
  v85 = sub_100035D04(&qword_10034ED38, &qword_100291730);
  v86 = *(v85 - 8);
  v10 = *(v86 + 64);
  __chkstk_darwin(v85);
  v97 = &v73 - v11;
  v81 = sub_100035D04(&qword_10034ED40, &qword_100291738);
  v82 = *(v81 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v81);
  v93 = &v73 - v13;
  v84 = sub_100035D04(&qword_10034ED48, &qword_100291740);
  v83 = *(v84 - 8);
  v14 = *(v83 + 64);
  __chkstk_darwin(v84);
  v96 = &v73 - v15;
  v80 = sub_100035D04(&qword_10034ED50, &qword_100291748);
  v79 = *(v80 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v80);
  v18 = &v73 - v17;
  v19 = sub_100035D04(&qword_10034ED58, &qword_100291750);
  v78 = *(v19 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v19);
  v22 = &v73 - v21;
  v23 = sub_100035D04(&qword_10034ED60, &unk_100291758);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v73 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v112 = a1;
  sub_10000EBC0(a1, v29);
  sub_10022A4D0();
  v30 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v31 = v30;
  if (v30)
  {
    return sub_10000903C(v112);
  }

  v75 = v22;
  v74 = v19;
  v76 = v18;
  v33 = v96;
  v32 = v97;
  v34 = v98;
  v35 = v99;
  v100 = v24;
  v77 = v27;
  v36 = KeyedDecodingContainer.allKeys.getter();
  v37 = (2 * *(v36 + 16)) | 1;
  v108 = v36;
  v109 = v36 + 32;
  v110 = 0;
  v111 = v37;
  v38 = sub_100218024();
  if (v38 == 8 || v110 != v111 >> 1)
  {
    v50 = v23;
    v51 = type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    v54 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v53 = &type metadata for HomeAccessoryViewEvent;
    v55 = v77;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.typeMismatch(_:), v51);
    swift_willThrow();
    (*(v100 + 8))(v55, v50);
    swift_unknownObjectRelease();
    return sub_10000903C(v112);
  }

  if (v38 > 3u)
  {
    v47 = v77;
    if (v38 > 5u)
    {
      v59 = v23;
      v60 = v100;
      if (v38 == 6)
      {
        LOBYTE(v101) = 6;
        sub_10022A578();
        v61 = v94;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v73 = 0;
        (*(v88 + 8))(v61, v90);
        (*(v60 + 8))(v47, v59);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 2;
        v43 = 4;
      }

      else
      {
        LOBYTE(v101) = 7;
        sub_10022A524();
        v66 = v95;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v73 = 0;
        (*(v91 + 8))(v66, v92);
        (*(v60 + 8))(v47, v59);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 2;
        v43 = 5;
      }
    }

    else
    {
      v57 = v100;
      if (v38 == 4)
      {
        LOBYTE(v101) = 4;
        sub_10022A620();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v73 = 0;
        (*(v86 + 8))(v32, v85);
        (*(v57 + 8))(v47, v23);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 2;
        v43 = 3;
      }

      else
      {
        LOBYTE(v101) = 5;
        sub_10022A5CC();
        v48 = v34;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v23;
        v70 = v89;
        v31 = 0;
        v43 = KeyedDecodingContainer.decode(_:forKey:)();
        v44 = v71;
        v73 = 0;
        (*(v87 + 8))(v48, v70);
        v72 = *(v57 + 8);
        v45 = v57 + 8;
        v72(v47, v46);
        swift_unknownObjectRelease();
        v49 = 1;
      }
    }
  }

  else if (v38 > 1u)
  {
    if (v38 == 2)
    {
      LOBYTE(v101) = 2;
      sub_10022A6C8();
      v58 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v67 = v23;
      sub_10010B758();
      v68 = v84;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v69 = v100;
      v73 = 0;
      (*(v83 + 8))(v33, v68);
      (*(v69 + 8))(v58, v67);
      swift_unknownObjectRelease();
      v49 = 0;
      v43 = v101;
      v44 = v102;
      v31 = v103;
      v45 = v104;
      v46 = v105;
      v47 = v106;
      v48 = v107;
    }

    else
    {
      LOBYTE(v101) = 3;
      sub_10022A674();
      v64 = v93;
      v65 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v73 = 0;
      (*(v82 + 8))(v64, v81);
      (*(v100 + 8))(v65, v23);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v43 = 2;
      v49 = 2;
    }
  }

  else
  {
    v39 = v23;
    v40 = v100;
    if (v38)
    {
      LOBYTE(v101) = 1;
      sub_10022A71C();
      v62 = v76;
      v63 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v73 = 0;
      (*(v79 + 8))(v62, v80);
      (*(v40 + 8))(v63, v39);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 2;
      v43 = 1;
    }

    else
    {
      LOBYTE(v101) = 0;
      sub_10022A770();
      v41 = v75;
      v42 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v73 = 0;
      (*(v78 + 8))(v41, v74);
      (*(v40 + 8))(v42, v39);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 2;
    }
  }

  result = sub_10000903C(v112);
  *v35 = v43;
  *(v35 + 8) = v44;
  *(v35 + 16) = v31;
  *(v35 + 24) = v45;
  *(v35 + 32) = v46;
  *(v35 + 40) = v47;
  *(v35 + 48) = v48;
  *(v35 + 56) = v49;
  return result;
}

unint64_t sub_10022A4D0()
{
  result = qword_10034ED68;
  if (!qword_10034ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED68);
  }

  return result;
}

unint64_t sub_10022A524()
{
  result = qword_10034ED70;
  if (!qword_10034ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED70);
  }

  return result;
}

unint64_t sub_10022A578()
{
  result = qword_10034ED78;
  if (!qword_10034ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED78);
  }

  return result;
}

unint64_t sub_10022A5CC()
{
  result = qword_10034ED80;
  if (!qword_10034ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED80);
  }

  return result;
}

unint64_t sub_10022A620()
{
  result = qword_10034ED88;
  if (!qword_10034ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED88);
  }

  return result;
}

unint64_t sub_10022A674()
{
  result = qword_10034ED90;
  if (!qword_10034ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED90);
  }

  return result;
}

unint64_t sub_10022A6C8()
{
  result = qword_10034ED98;
  if (!qword_10034ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ED98);
  }

  return result;
}

unint64_t sub_10022A71C()
{
  result = qword_10034EDA0;
  if (!qword_10034EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDA0);
  }

  return result;
}

unint64_t sub_10022A770()
{
  result = qword_10034EDA8;
  if (!qword_10034EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDA8);
  }

  return result;
}

unint64_t sub_10022A858()
{
  result = qword_10034EDF8;
  if (!qword_10034EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EDF8);
  }

  return result;
}

unint64_t sub_10022A8B0()
{
  result = qword_10034EE00;
  if (!qword_10034EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE00);
  }

  return result;
}

unint64_t sub_10022A908()
{
  result = qword_10034EE08;
  if (!qword_10034EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE08);
  }

  return result;
}

unint64_t sub_10022A960()
{
  result = qword_10034EE10;
  if (!qword_10034EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE10);
  }

  return result;
}

unint64_t sub_10022A9B8()
{
  result = qword_10034EE18;
  if (!qword_10034EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE18);
  }

  return result;
}

unint64_t sub_10022AA10()
{
  result = qword_10034EE20;
  if (!qword_10034EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE20);
  }

  return result;
}

unint64_t sub_10022AA68()
{
  result = qword_10034EE28;
  if (!qword_10034EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE28);
  }

  return result;
}

unint64_t sub_10022AAC0()
{
  result = qword_10034EE30;
  if (!qword_10034EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE30);
  }

  return result;
}

unint64_t sub_10022AB18()
{
  result = qword_10034EE38;
  if (!qword_10034EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE38);
  }

  return result;
}

unint64_t sub_10022AB70()
{
  result = qword_10034EE40;
  if (!qword_10034EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE40);
  }

  return result;
}

unint64_t sub_10022ABC8()
{
  result = qword_10034EE48;
  if (!qword_10034EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE48);
  }

  return result;
}

unint64_t sub_10022AC20()
{
  result = qword_10034EE50;
  if (!qword_10034EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE50);
  }

  return result;
}

unint64_t sub_10022AC78()
{
  result = qword_10034EE58;
  if (!qword_10034EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE58);
  }

  return result;
}

unint64_t sub_10022ACD0()
{
  result = qword_10034EE60;
  if (!qword_10034EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE60);
  }

  return result;
}

unint64_t sub_10022AD28()
{
  result = qword_10034EE68;
  if (!qword_10034EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE68);
  }

  return result;
}

unint64_t sub_10022AD80()
{
  result = qword_10034EE70;
  if (!qword_10034EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE70);
  }

  return result;
}

unint64_t sub_10022ADD8()
{
  result = qword_10034EE78;
  if (!qword_10034EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE78);
  }

  return result;
}

unint64_t sub_10022AE30()
{
  result = qword_10034EE80;
  if (!qword_10034EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE80);
  }

  return result;
}

unint64_t sub_10022AE88()
{
  result = qword_10034EE88;
  if (!qword_10034EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE88);
  }

  return result;
}

unint64_t sub_10022AEE0()
{
  result = qword_10034EE90;
  if (!qword_10034EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EE90);
  }

  return result;
}

unint64_t sub_10022AF38()
{
  result = qword_10034EE98[0];
  if (!qword_10034EE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034EE98);
  }

  return result;
}

uint64_t sub_10022AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for OutputEventContext();
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t OutputEventContext.description.getter(uint64_t a1)
{
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = *(a1 + 24);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0x3D7475706E69202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_10022B0F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022B180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_10022B35C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_10022B650(uint64_t a1)
{
  result = sub_10022B678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10022B678()
{
  result = qword_10034EF20;
  if (!qword_10034EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF20);
  }

  return result;
}

uint64_t sub_10022B6DC()
{
  v1 = 0x7661776B636F6873;
  if (*v0 != 1)
  {
    v1 = 0x7373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_10022B734()
{
  v1 = 0x6465746E6968;
  v2 = 0x64656C74746573;
  if (*v0 != 2)
  {
    v2 = 0x657373696D736964;
  }

  if (*v0)
  {
    v1 = 0x7661776B636F6873;
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

unint64_t sub_10022B7B8(uint64_t a1)
{
  result = sub_10022B7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10022B7E0()
{
  result = qword_10034EF28;
  if (!qword_10034EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF28);
  }

  return result;
}

unint64_t sub_10022B838()
{
  result = qword_10034EF30;
  if (!qword_10034EF30)
  {
    sub_100035D4C(&qword_10034EF38, qword_1002921A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034EF30);
  }

  return result;
}

__n128 sub_10022B8A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10022B8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10022B8FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10022B95C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034EF40, qword_1002922D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v17 = swift_allocObject();
  *(v17 + 1) = xmmword_100278930;
  v79 = 2112829;
  v80 = 0xE300000000000000;
  String.append(_:)(v0[1]);
  v18._countAndFlagsBits = 4013344;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19 = v80;
  *(v17 + 4) = v79;
  *(v17 + 5) = v19;
  v79 = 540689481;
  v80 = 0xE400000000000000;
  String.append(_:)(*v0);
  v20 = v80;
  *(v17 + 6) = v79;
  *(v17 + 7) = v20;
  v79 = 0x203A656369766544;
  v80 = 0xE800000000000000;
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v23._countAndFlagsBits = sub_1001EE1E4(v22);
  String.append(_:)(v23);
  v24 = v14;

  v25 = v80;
  *(v17 + 8) = v79;
  *(v17 + 9) = v25;
  *(v17 + 10) = 0x3A73746E657645;
  *(v17 + 11) = 0xE700000000000000;
  v71 = v16;
  result = static Date.distantFuture.getter();
  v27 = 0;
  object = v1[3]._object;
  v28 = object[2];
  v74 = (v10 + 32);
  v64 = "Expected Behavior";
  v65 = v28;
  v69 = v9;
  v70 = (v10 + 8);
  v66 = v24;
  v67 = v8;
  v68 = v6;
  v29 = v28 == 0;
  if (v28)
  {
    goto LABEL_3;
  }

LABEL_2:
  v30 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v27 = v28;
  while (1)
  {
    sub_10022C11C(v6, v8);
    v34 = sub_100035D04(&qword_10033E570, &unk_100274720);
    if ((*(*(v34 - 8) + 48))(v8, 1, v34) == 1)
    {
      v79 = v17;
      sub_100035D04(&qword_1003397D0, &qword_1002729A0);
      sub_10001CAF4();
      v61 = BidirectionalCollection<>.joined(separator:)();

      (*v70)(v71, v9);
      return v61;
    }

    v35 = &v8[*(v34 + 48)];
    v36 = *v35;
    v37 = v35[1];
    v72 = *v74;
    v73 = v17;
    v72(v24, v8, v9);
    v79 = v36;
    v80 = v37;
    v77 = 10;
    v78 = 0xE100000000000000;
    v75 = 592138;
    v76 = 0xE300000000000000;
    sub_10001369C();
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v40 = v39;

    v79 = 9;
    v80 = 0xE100000000000000;
    v41 = [objc_allocWithZone(NSDateFormatter) init];
    v42 = String._bridgeToObjectiveC()();
    [v41 setDateFormat:v42];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v41 stringFromDate:isa];

    v45 = v1;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v1 = v45;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = v38;
    v51._object = v40;
    String.append(_:)(v51);

    v53 = v79;
    v52 = v80;
    if ((v45[3]._countAndFlagsBits & 1) == 0)
    {
      v54 = *&v45[2]._object;
      Date.timeIntervalSince(_:)();
      if (v55 < -v54)
      {
        v79 = 10;
        v80 = 0xE100000000000000;
        v56._countAndFlagsBits = v53;
        v56._object = v52;
        String.append(_:)(v56);

        v53 = v79;
        v52 = v80;
      }
    }

    v6 = v68;
    v9 = v69;
    v17 = v73;
    v58 = *(v73 + 2);
    v57 = *(v73 + 3);
    if (v58 >= v57 >> 1)
    {
      v17 = sub_100009088((v57 > 1), v58 + 1, 1, v73);
    }

    v59 = v71;
    (*v70)(v71, v9);
    *(v17 + 2) = v58 + 1;
    v60 = &v17[16 * v58];
    *(v60 + 4) = v53;
    *(v60 + 5) = v52;
    v24 = v66;
    result = (v72)(v59, v66, v9);
    v8 = v67;
    v28 = v65;
    v29 = v27 >= v65;
    if (v27 == v65)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v29)
    {
      break;
    }

    v31 = sub_100035D04(&qword_10033E570, &unk_100274720);
    v32 = *(v31 - 8);
    result = sub_10022C0AC(object + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, v6);
    if (__OFADD__(v27++, 1))
    {
      goto LABEL_16;
    }

    (*(v32 + 56))(v6, 0, 1, v31);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10022C030()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B5E0);
  sub_100003078(v0, qword_10038B5E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10022C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022C11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034EF40, qword_1002922D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CardMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10022C2E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10022C2F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_10022C338()
{
  sub_10022C3E0();
  if (v0 <= 0x3F)
  {
    sub_10022C454(319, &qword_10034EFD0);
    if (v1 <= 0x3F)
    {
      sub_10022C454(319, &unk_10034EFD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10022C3E0()
{
  if (!qword_10034EFC8)
  {
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10034EFC8);
    }
  }
}

void sub_10022C454(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10022C4E0()
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_10022C58C();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NearbySharingInteractionDisplayContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_10022C58C()
{
  result = qword_10034F088;
  if (!qword_10034F088)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034F088);
  }

  return result;
}

uint64_t sub_10022C6E4(void *a1, int a2)
{
  v29 = a2;
  v28 = sub_100035D04(&qword_10034F100, &qword_1002924A0);
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v28);
  v24 = &v22 - v4;
  v27 = sub_100035D04(&qword_10034F108, &qword_1002924A8);
  v25 = *(v27 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v27);
  v7 = &v22 - v6;
  v8 = sub_100035D04(&qword_10034F110, &qword_1002924B0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_100035D04(&qword_10034F118, &qword_1002924B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  v17 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1002317E8();
  v18 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18 == 4)
  {
    v33 = 2;
    sub_10023183C();
    v19 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v26 + 8))(v19, v28);
    return (*(v13 + 8))(v16, v12);
  }

  if (v18 == 3)
  {
    v30 = 0;
    sub_100231938();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v23 + 8))(v11, v8);
    return (*(v13 + 8))(v16, v12);
  }

  v32 = 1;
  sub_100231890();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v31 = v18;
  sub_10023198C();
  v21 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v25 + 8))(v7, v21);
  return (*(v13 + 8))(v16, v12);
}

void sub_10022CAD0(void *a1)
{
  v2 = sub_100035D04(&qword_10034F278, &qword_100292580);
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  __chkstk_darwin(v2);
  v86 = &v62 - v4;
  v84 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034F280, &qword_100292588);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  __chkstk_darwin(v7);
  v81 = &v62 - v9;
  v10 = sub_100035D04(&qword_10034F288, &qword_100292590);
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  __chkstk_darwin(v10);
  v75 = &v62 - v12;
  v13 = sub_100035D04(&qword_10034F290, &qword_100292598);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  __chkstk_darwin(v13);
  v76 = &v62 - v15;
  v74 = sub_100035D04(&qword_10034F298, &qword_1002925A0);
  v73 = *(v74 - 8);
  v16 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v62 - v17;
  v71 = sub_100035D04(&qword_10034F2A0, &qword_1002925A8);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v71);
  v69 = &v62 - v19;
  v68 = sub_100035D04(&qword_10034F2A8, &qword_1002925B0);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  __chkstk_darwin(v68);
  v64 = &v62 - v21;
  v66 = sub_100035D04(&qword_10034F2B0, &qword_1002925B8);
  v65 = *(v66 - 8);
  v22 = *(v65 + 64);
  __chkstk_darwin(v66);
  v24 = &v62 - v23;
  v63 = type metadata accessor for ActivityDisplayContext(0);
  v25 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ViewServiceInput(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100035D04(&qword_10034F2B8, &qword_1002925C0);
  v33 = *(v32 - 8);
  v90 = v32;
  v91 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v62 - v35;
  v37 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100231E78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002321D4(v89, v31, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v41 = v90;
      if (EnumCaseMultiPayload == 4)
      {
        v42 = *v31;
        LOBYTE(v92) = 4;
        sub_100232030();
        v43 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v92 = v42;
        sub_100151898();
        v44 = v80;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v79 + 8))(v43, v44);
        (*(v91 + 8))(v36, v41);

        return;
      }

      v57 = *v31;
      LOBYTE(v92) = 6;
      sub_100231F88();
      v54 = v81;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v83;
      KeyedEncodingContainer.encode(_:forKey:)();
      v56 = v82;
      goto LABEL_14;
    }

    v41 = v90;
    if (EnumCaseMultiPayload == 6)
    {
      v50 = v85;
      sub_100231F20(v31, v85, type metadata accessor for NearbySharingInteractionDisplayContext);
      LOBYTE(v92) = 7;
      sub_100231ECC();
      v51 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10023223C(&qword_10034DB98, type metadata accessor for NearbySharingInteractionDisplayContext);
      v52 = v88;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v87 + 8))(v51, v52);
      sub_100232284(v50, type metadata accessor for NearbySharingInteractionDisplayContext);
LABEL_15:
      (*(v91 + 8))(v36, v41);
      return;
    }

    LOBYTE(v92) = 5;
    sub_100231FDC();
    v61 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v77 + 8))(v61, v78);
    (*(v91 + 8))(v36, v41);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_100231F20(v31, v27, type metadata accessor for ActivityDisplayContext);
        LOBYTE(v92) = 0;
        sub_100232180();
        v39 = v90;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10023223C(&qword_10034BB00, type metadata accessor for ActivityDisplayContext);
        v40 = v66;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v65 + 8))(v24, v40);
        sub_100232284(v27, type metadata accessor for ActivityDisplayContext);
        (*(v91 + 8))(v36, v39);
        return;
      }

      v53 = *v31;
      LOBYTE(v92) = 1;
      sub_10023212C();
      v54 = v64;
      v41 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v92) = v53;
      sub_10010BAF4();
      v55 = v68;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v56 = v67;
LABEL_14:
      (*(v56 + 8))(v54, v55);
      goto LABEL_15;
    }

    v45 = *v31;
    v46 = v31[1];
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v92) = 2;
      sub_1002320D8();
      v47 = v69;
      v48 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v71;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v70 + 8))(v47, v49);
      (*(v91 + 8))(v36, v48);
    }

    else
    {
      LOBYTE(v92) = 3;
      sub_100232084();
      v58 = v72;
      v59 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v92 = v45;
      v93 = v46;
      sub_1001D54C8();
      v60 = v74;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v73 + 8))(v58, v60);
      (*(v91 + 8))(v36, v59);
      sub_10001DAC4(v45);
    }
  }
}

uint64_t sub_10022D6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v117 = sub_100035D04(&qword_10034F1E8, &qword_100292538);
  v118 = *(v117 - 8);
  v3 = *(v118 + 64);
  __chkstk_darwin(v117);
  v130 = &v95 - v4;
  v129 = sub_100035D04(&qword_10034F1F0, &qword_100292540);
  v116 = *(v129 - 8);
  v5 = *(v116 + 64);
  __chkstk_darwin(v129);
  v123 = &v95 - v6;
  v114 = sub_100035D04(&qword_10034F1F8, &qword_100292548);
  v112 = *(v114 - 8);
  v7 = *(v112 + 64);
  __chkstk_darwin(v114);
  v121 = &v95 - v8;
  v115 = sub_100035D04(&qword_10034F200, &qword_100292550);
  v113 = *(v115 - 8);
  v9 = *(v113 + 64);
  __chkstk_darwin(v115);
  v122 = &v95 - v10;
  v111 = sub_100035D04(&qword_10034F208, &qword_100292558);
  v110 = *(v111 - 8);
  v11 = *(v110 + 64);
  __chkstk_darwin(v111);
  v119 = &v95 - v12;
  v108 = sub_100035D04(&qword_10034F210, &qword_100292560);
  v109 = *(v108 - 8);
  v13 = *(v109 + 64);
  __chkstk_darwin(v108);
  v128 = &v95 - v14;
  v107 = sub_100035D04(&qword_10034F218, &qword_100292568);
  v106 = *(v107 - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(v107);
  v120 = &v95 - v16;
  v105 = sub_100035D04(&qword_10034F220, &qword_100292570);
  v104 = *(v105 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v105);
  v125 = &v95 - v18;
  v127 = sub_100035D04(&qword_10034F228, &qword_100292578);
  v132 = *(v127 - 8);
  v19 = *(v132 + 64);
  __chkstk_darwin(v127);
  v21 = &v95 - v20;
  v124 = type metadata accessor for ViewServiceInput(0);
  v22 = *(*(v124 - 8) + 64);
  v23 = __chkstk_darwin(v124);
  v103 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v101 = (&v95 - v26);
  v27 = __chkstk_darwin(v25);
  v102 = (&v95 - v28);
  v29 = __chkstk_darwin(v27);
  v31 = &v95 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = (&v95 - v33);
  v35 = __chkstk_darwin(v32);
  v37 = &v95 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v95 - v39;
  __chkstk_darwin(v38);
  v42 = &v95 - v41;
  v43 = a1[3];
  v44 = a1[4];
  v134 = a1;
  sub_10000EBC0(a1, v43);
  sub_100231E78();
  v126 = v21;
  v45 = v133;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v45)
  {
    v96 = v37;
    v97 = v34;
    v99 = v40;
    v98 = v31;
    v46 = v125;
    v133 = 0;
    v47 = v128;
    v48 = v129;
    v49 = v130;
    v100 = v42;
    v50 = v131;
    v51 = v126;
    v52 = v127;
    v53 = KeyedDecodingContainer.allKeys.getter();
    v54 = (2 * *(v53 + 16)) | 1;
    v136 = v53;
    v137 = v53 + 32;
    v138 = 0;
    v139 = v54;
    v55 = sub_100218024();
    if (v55 == 8 || v138 != v139 >> 1)
    {
      v61 = type metadata accessor for DecodingError();
      swift_allocError();
      v63 = v62;
      v64 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v63 = v124;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v61 - 8) + 104))(v63, enum case for DecodingError.typeMismatch(_:), v61);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v55 <= 3u)
    {
      v56 = v133;
      if (v55 <= 1u)
      {
        if (!v55)
        {
          LOBYTE(v135) = 0;
          sub_100232180();
          v57 = v46;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v56)
          {
            type metadata accessor for ActivityDisplayContext(0);
            sub_10023223C(&qword_10034BAE0, type metadata accessor for ActivityDisplayContext);
            v58 = v99;
            v59 = v105;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v104 + 8))(v57, v59);
            (*(v132 + 8))(v51, v52);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v60 = v58;
LABEL_35:
            v79 = v100;
            sub_100231F20(v60, v100, type metadata accessor for ViewServiceInput);
            v66 = v50;
            goto LABEL_37;
          }

          goto LABEL_10;
        }

        LOBYTE(v135) = 1;
        sub_10023212C();
        v74 = v120;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v56)
        {
          sub_10010BAA0();
          v75 = v107;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v106 + 8))(v74, v75);
          (*(v132 + 8))(v51, v52);
          swift_unknownObjectRelease();
          v91 = v96;
          *v96 = v135;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v60 = v91;
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (v55 == 2)
      {
        LOBYTE(v135) = 2;
        sub_1002320D8();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v56)
        {
          goto LABEL_10;
        }

        v71 = v108;
        v87 = KeyedDecodingContainer.decode(_:forKey:)();
        v89 = v88;
        (*(v109 + 8))(v47, v71);
        (*(v132 + 8))(v51, v52);
        swift_unknownObjectRelease();
        v90 = v97;
        *v97 = v87;
        v90[1] = v89;
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v60 = v90;
        goto LABEL_35;
      }

      LOBYTE(v135) = 3;
      sub_100232084();
      v80 = v119;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v56)
      {
        sub_1001D5348();
        v81 = v111;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v110 + 8))(v80, v81);
        (*(v132 + 8))(v51, v52);
        swift_unknownObjectRelease();
        v91 = v98;
        *v98 = v135;
        goto LABEL_33;
      }

LABEL_10:
      (*(v132 + 8))(v51, v52);
      swift_unknownObjectRelease();
      return sub_10000903C(v134);
    }

    if (v55 > 5u)
    {
      if (v55 != 6)
      {
        LOBYTE(v135) = 7;
        sub_100231ECC();
        v82 = v49;
        v83 = v133;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v83)
        {
          goto LABEL_10;
        }

        type metadata accessor for NearbySharingInteractionDisplayContext();
        sub_10023223C(&qword_10034DB88, type metadata accessor for NearbySharingInteractionDisplayContext);
        v90 = v103;
        v84 = v117;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v118 + 8))(v82, v84);
        (*(v132 + 8))(v51, v52);
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v66 = v50;
      LOBYTE(v135) = 6;
      sub_100231F88();
      v72 = v123;
      v73 = v133;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v73)
      {
        goto LABEL_10;
      }

      KeyedDecodingContainer.decode(_:forKey:)();
      v85 = v132;
      v93 = v92;
      (*(v116 + 8))(v72, v48);
      (*(v85 + 8))(v51, v52);
      swift_unknownObjectRelease();
      v86 = v101;
      *v101 = v93;
    }

    else
    {
      v66 = v50;
      if (v55 != 4)
      {
        LOBYTE(v135) = 5;
        sub_100231FDC();
        v76 = v121;
        v77 = v133;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v132;
        if (!v77)
        {
          (*(v112 + 8))(v76, v114);
          (*(v78 + 8))(v51, v52);
          swift_unknownObjectRelease();
          v79 = v100;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_100231F20(v79, v66, type metadata accessor for ViewServiceInput);
          return sub_10000903C(v134);
        }

        goto LABEL_10;
      }

      LOBYTE(v135) = 4;
      sub_100232030();
      v67 = v122;
      v68 = v133;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v132;
      if (v68)
      {
        goto LABEL_10;
      }

      sub_1001517F0();
      v70 = v115;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v113 + 8))(v67, v70);
      (*(v69 + 8))(v51, v52);
      swift_unknownObjectRelease();
      v86 = v102;
      *v102 = v135;
    }

    swift_storeEnumTagMultiPayload();
    v94 = v86;
    v79 = v100;
    sub_100231F20(v94, v100, type metadata accessor for ViewServiceInput);
    goto LABEL_37;
  }

  return sub_10000903C(v134);
}

uint64_t sub_10022E7F4(void *a1)
{
  v78 = sub_100035D04(&qword_10034F1A0, &qword_100292508);
  v77 = *(v78 - 8);
  v2 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v67 - v3;
  v81 = sub_100035D04(&qword_10034F1A8, &qword_100292510);
  v72 = *(v81 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v81);
  v80 = &v67 - v5;
  v74 = sub_100035D04(&qword_10034F1B0, &qword_100292518);
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v74);
  v71 = &v67 - v7;
  v70 = sub_100035D04(&qword_10034F1B8, &qword_100292520);
  v69 = *(v70 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v67 - v9;
  v79 = sub_100035D04(&qword_10034F1C0, &qword_100292528);
  v67 = *(v79 - 8);
  v10 = *(v67 + 64);
  __chkstk_darwin(v79);
  v12 = &v67 - v11;
  v82 = type metadata accessor for Date();
  v83 = *(v82 - 8);
  v13 = *(v83 + 64);
  v14 = __chkstk_darwin(v82);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - v17;
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  v21 = type metadata accessor for ViewServiceOutput(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100035D04(&qword_10034F1C8, &qword_100292530);
  v85 = *(v87 - 8);
  v25 = *(v85 + 64);
  __chkstk_darwin(v87);
  v27 = &v67 - v26;
  v28 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1002319E0();
  v88 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002321D4(v84, v24, type metadata accessor for ViewServiceOutput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v84 = v20;
    v33 = v12;
    v34 = v80;
    v35 = v79;
    v36 = v81;
    if (EnumCaseMultiPayload)
    {
      v57 = *v24;
      v58 = sub_100035D04(&qword_100343140, &unk_100278FE0);
      v59 = v83;
      v60 = v18;
      v61 = v82;
      (*(v83 + 32))(v18, &v24[*(v58 + 48)], v82);
      LOBYTE(v92) = 3;
      sub_100231B30();
      v63 = v87;
      v62 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v92) = v57;
      LOBYTE(v89) = 0;
      sub_100231DD0();
      v64 = v86;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v64)
      {
        (*(v72 + 8))(v34, v36);
        (*(v59 + 8))(v60, v61);
        return (*(v85 + 8))(v62, v63);
      }

      else
      {
        LOBYTE(v92) = 1;
        sub_10023223C(&qword_100346608, &type metadata accessor for Date);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v72 + 8))(v34, v36);
        (*(v59 + 8))(v60, v61);
        return (*(v85 + 8))(v88, v63);
      }
    }

    else
    {
      v37 = *(v24 + 1);
      v92 = *v24;
      v93 = v37;
      *v94 = *(v24 + 2);
      *&v94[9] = *(v24 + 41);
      v38 = *(v24 + 9);
      v81 = *(v24 + 8);
      v39 = sub_100035D04(&qword_100343148, &qword_100292500);
      v40 = v83;
      v41 = v82;
      (*(v83 + 32))(v84, &v24[*(v39 + 64)], v82);
      LOBYTE(v89) = 0;
      sub_100231C80();
      v42 = v87;
      v43 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v89 = v92;
      v90 = v93;
      v91[0] = *v94;
      *(v91 + 9) = *&v94[9];
      v95 = 0;
      sub_100231E24();
      v44 = v86;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v44)
      {

        (*(v67 + 8))(v33, v35);
        (*(v40 + 8))(v84, v41);
        (*(v85 + 8))(v43, v42);
        return sub_100231D28(&v92);
      }

      else
      {
        sub_100231D28(&v92);
        LOBYTE(v89) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        LOBYTE(v89) = 2;
        sub_10023223C(&qword_100346608, &type metadata accessor for Date);
        v65 = v84;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v66 = v88;
        (*(v67 + 8))(v33, v35);
        (*(v40 + 8))(v65, v41);
        return (*(v85 + 8))(v66, v87);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v46 = *(v24 + 1);
    v92 = *v24;
    v93 = v46;
    *v94 = *(v24 + 2);
    *&v94[9] = *(v24 + 41);
    v47 = sub_100035D04(&qword_100343138, &unk_1002924F0);
    v48 = v83;
    v49 = v75;
    v50 = v82;
    (*(v83 + 32))(v75, &v24[*(v47 + 48)], v82);
    LOBYTE(v89) = 4;
    sub_100231A34();
    v51 = v76;
    v52 = v87;
    v53 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v89 = v92;
    v90 = v93;
    v91[0] = *v94;
    *(v91 + 9) = *&v94[9];
    v95 = 0;
    sub_100231D7C();
    v54 = v78;
    v55 = v86;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v55)
    {
      (*(v77 + 8))(v51, v54);
      (*(v48 + 8))(v49, v50);
      (*(v85 + 8))(v53, v52);
      return sub_100231ADC(&v92);
    }

    else
    {
      sub_100231ADC(&v92);
      LOBYTE(v89) = 1;
      sub_10023223C(&qword_100346608, &type metadata accessor for Date);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v77 + 8))(v51, v54);
      (*(v48 + 8))(v49, v50);
      return (*(v85 + 8))(v53, v52);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v92) = 1;
      sub_100231C2C();
      v30 = v68;
      v31 = v87;
      v32 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v69 + 8))(v30, v70);
    }

    else
    {
      LOBYTE(v92) = 2;
      sub_100231BD8();
      v56 = v71;
      v31 = v87;
      v32 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v73 + 8))(v56, v74);
    }

    return (*(v85 + 8))(v32, v31);
  }
}

uint64_t sub_10022F48C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v83 = sub_100035D04(&qword_10034F128, &qword_1002924C0);
  v85 = *(v83 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v83);
  v87 = &v73 - v4;
  v82 = sub_100035D04(&qword_10034F130, &qword_1002924C8);
  v84 = *(v82 - 8);
  v5 = *(v84 + 64);
  __chkstk_darwin(v82);
  v93 = &v73 - v6;
  v80 = sub_100035D04(&qword_10034F138, &qword_1002924D0);
  v77 = *(v80 - 8);
  v7 = *(v77 + 64);
  __chkstk_darwin(v80);
  v92 = &v73 - v8;
  v79 = sub_100035D04(&qword_10034F140, &qword_1002924D8);
  v78 = *(v79 - 8);
  v9 = *(v78 + 64);
  __chkstk_darwin(v79);
  v91 = &v73 - v10;
  v81 = sub_100035D04(&qword_10034F148, &qword_1002924E0);
  v86 = *(v81 - 8);
  v11 = *(v86 + 64);
  __chkstk_darwin(v81);
  v90 = &v73 - v12;
  v94 = sub_100035D04(&qword_10034F150, &qword_1002924E8);
  v89 = *(v94 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v94);
  v15 = &v73 - v14;
  v16 = type metadata accessor for ViewServiceOutput(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v73 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v73 - v25;
  __chkstk_darwin(v24);
  v28 = &v73 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v95 = a1;
  sub_10000EBC0(a1, v29);
  sub_1002319E0();
  v31 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    return sub_10000903C(v95);
  }

  v33 = v91;
  v32 = v92;
  v73 = v23;
  v74 = v20;
  v34 = v90;
  v35 = v93;
  v76 = 0;
  v96 = v16;
  v75 = v28;
  v36 = v89;
  v37 = v94;
  v38 = KeyedDecodingContainer.allKeys.getter();
  v39 = (2 * *(v38 + 16)) | 1;
  v98 = v38;
  v99 = v38 + 32;
  v100 = 0;
  v101 = v39;
  v40 = sub_100218020();
  v41 = v37;
  if (v40 == 5 || v100 != v101 >> 1)
  {
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    v51 = v37;
    v52 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v50 = v96;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v40 > 1u)
  {
    if (v40 == 2)
    {
      LOBYTE(v97) = 2;
      sub_100231BD8();
      v58 = v76;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v58)
      {
        v76 = 0;
        (*(v77 + 8))(v32, v80);
        (*(v36 + 8))(v15, v37);
        swift_unknownObjectRelease();
        v72 = v75;
        swift_storeEnumTagMultiPayload();
LABEL_27:
        v63 = v95;
        v54 = v88;
        goto LABEL_28;
      }

LABEL_17:
      (*(v36 + 8))(v15, v37);
      goto LABEL_11;
    }

    if (v40 == 3)
    {
      LOBYTE(v97) = 3;
      sub_100231B30();
      v42 = v35;
      v43 = v37;
      v44 = v76;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v36;
      if (!v44)
      {
        LOBYTE(v97) = 0;
        sub_100231B84();
        v46 = v73;
        v47 = v82;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v64 = *(sub_100035D04(&qword_100343140, &unk_100278FE0) + 48);
        type metadata accessor for Date();
        LOBYTE(v97) = 1;
        sub_10023223C(&qword_1003465F8, &type metadata accessor for Date);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v76 = 0;
        (*(v84 + 8))(v42, v47);
        (*(v45 + 8))(v15, v43);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v67 = v46;
LABEL_26:
        v72 = v75;
        sub_100231F20(v67, v75, type metadata accessor for ViewServiceOutput);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    LOBYTE(v97) = 4;
    sub_100231A34();
    v51 = v37;
    v59 = v76;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v59)
    {
      LOBYTE(v97) = 0;
      sub_100231A88();
      v60 = v74;
      v61 = v83;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v65 = *(sub_100035D04(&qword_100343138, &unk_1002924F0) + 48);
      type metadata accessor for Date();
      v102 = 1;
      sub_10023223C(&qword_1003465F8, &type metadata accessor for Date);
      v66 = v87;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v76 = 0;
      (*(v85 + 8))(v66, v61);
      (*(v36 + 8))(v15, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v67 = v60;
      goto LABEL_26;
    }

LABEL_10:
    (*(v36 + 8))(v15, v51);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_10000903C(v95);
  }

  v54 = v88;
  if (v40)
  {
    LOBYTE(v97) = 1;
    sub_100231C2C();
    v62 = v76;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v62)
    {
      (*(v36 + 8))(v15, v41);
      goto LABEL_11;
    }

    v76 = 0;
    (*(v78 + 8))(v33, v79);
    (*(v36 + 8))(v15, v41);
    swift_unknownObjectRelease();
    v72 = v75;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    LOBYTE(v97) = 0;
    sub_100231C80();
    v51 = v41;
    v55 = v76;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v55)
    {
      goto LABEL_10;
    }

    LOBYTE(v97) = 0;
    sub_100231CD4();
    v56 = v26;
    v57 = v81;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v102 = 1;
    v68 = KeyedDecodingContainer.decode(_:forKey:)();
    v93 = v15;
    v70 = v69;
    v71 = *(sub_100035D04(&qword_100343148, &qword_100292500) + 64);
    *(v26 + 8) = v68;
    *(v26 + 9) = v70;
    v92 = v70;
    type metadata accessor for Date();
    v102 = 2;
    sub_10023223C(&qword_1003465F8, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v76 = 0;
    (*(v86 + 8))(v34, v57);
    (*(v36 + 8))(v93, v94);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v72 = v75;
    sub_100231F20(v56, v75, type metadata accessor for ViewServiceOutput);
  }

  v63 = v95;
LABEL_28:
  sub_100231F20(v72, v54, type metadata accessor for ViewServiceOutput);
  return sub_10000903C(v63);
}

uint64_t sub_100230338(uint64_t a1)
{
  v2 = sub_100231938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230374(uint64_t a1)
{
  v2 = sub_100231938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002303B0()
{
  v1 = 0x6F69746163756465;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_100230410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002310F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100230438(uint64_t a1)
{
  v2 = sub_1002317E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230474(uint64_t a1)
{
  v2 = sub_1002317E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002304B0(uint64_t a1)
{
  v2 = sub_100231890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002304EC(uint64_t a1)
{
  v2 = sub_100231890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230528(uint64_t a1)
{
  v2 = sub_10023183C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230564(uint64_t a1)
{
  v2 = sub_10023183C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002305A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023121C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1002305F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_100230644(uint64_t a1)
{
  v2 = sub_100232180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230680(uint64_t a1)
{
  v2 = sub_100232180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002306BC(uint64_t a1)
{
  v2 = sub_10023212C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002306F8(uint64_t a1)
{
  v2 = sub_10023212C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100230734()
{
  v1 = *v0;
  v2 = 0x65646F4D64726163;
  v3 = 0x73736572676F7270;
  if (v1 != 6)
  {
    v3 = 0xD000000000000026;
  }

  v4 = 0x6E6F70736552726DLL;
  if (v1 != 4)
  {
    v4 = 1735289200;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7373696D736964;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100230838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002335F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100230860(uint64_t a1)
{
  v2 = sub_100231E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023089C(uint64_t a1)
{
  v2 = sub_100231E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002308D8(uint64_t a1)
{
  v2 = sub_1002320D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230914(uint64_t a1)
{
  v2 = sub_1002320D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230950(uint64_t a1)
{
  v2 = sub_100232084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023098C(uint64_t a1)
{
  v2 = sub_100232084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002309C8(uint64_t a1)
{
  v2 = sub_100232030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230A04(uint64_t a1)
{
  v2 = sub_100232030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230A40(uint64_t a1)
{
  v2 = sub_100231ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230A7C(uint64_t a1)
{
  v2 = sub_100231ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230AB8(uint64_t a1)
{
  v2 = sub_100231FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230AF4(uint64_t a1)
{
  v2 = sub_100231FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230B30(uint64_t a1)
{
  v2 = sub_100231F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230B6C(uint64_t a1)
{
  v2 = sub_100231F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230BD8()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100230C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100233898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100230C50(uint64_t a1)
{
  v2 = sub_100231C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230C8C(uint64_t a1)
{
  v2 = sub_100231C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230CC8()
{
  v1 = *v0;
  v2 = 0x6E65764564726163;
  v3 = 1735289200;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656873696E6966;
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

uint64_t sub_100230D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002339AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100230D8C(uint64_t a1)
{
  v2 = sub_1002319E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230DC8(uint64_t a1)
{
  v2 = sub_1002319E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230E04(uint64_t a1)
{
  v2 = sub_100231C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230E40(uint64_t a1)
{
  v2 = sub_100231C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230E7C(uint64_t a1)
{
  v2 = sub_100231A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230EB8(uint64_t a1)
{
  v2 = sub_100231A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230EF4(uint64_t a1)
{
  v2 = sub_100231BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230F30(uint64_t a1)
{
  v2 = sub_100231BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100230F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_100231048(uint64_t a1)
{
  v2 = sub_100231B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231084(uint64_t a1)
{
  v2 = sub_100231B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002310F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
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

uint64_t sub_10023121C(uint64_t *a1)
{
  v39 = sub_100035D04(&qword_10034F0B8, &qword_100292478);
  v44 = *(v39 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v39);
  v43 = &v37 - v3;
  v4 = sub_100035D04(&qword_10034F0C0, &qword_100292480);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_100035D04(&qword_10034F0C8, &qword_100292488);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_100035D04(&qword_10034F0D0, &unk_100292490);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v46 = a1;
  v20 = sub_10000EBC0(a1, v19);
  sub_1002317E8();
  v21 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v38 = v9;
    v45 = 0;
    v23 = v43;
    v22 = v44;
    v24 = v14;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v47 = v25;
    v48 = v25 + 32;
    v49 = 0;
    v50 = v26;
    v27 = sub_100218008();
    if (v27 == 3 || v49 != v50 >> 1)
    {
      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v32 = v31;
      v33 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v32 = &type metadata for CardMode;
      v20 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
      swift_willThrow();
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        v51 = 1;
        sub_100231890();
        v20 = v17;
        v28 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v28)
        {
          sub_1002318E4();
          v29 = v41;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v42 + 8))(v8, v29);
          (*(v14 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v20 = v51;
          goto LABEL_10;
        }
      }

      else
      {
        v51 = 2;
        sub_10023183C();
        v20 = v17;
        v36 = v45;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v36)
        {
          (*(v22 + 8))(v23, v39);
          (*(v14 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v20 = 4;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v51 = 0;
      sub_100231938();
      v20 = v17;
      v35 = v45;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v35)
      {
        (*(v40 + 8))(v12, v38);
        (*(v14 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v20 = 3;
        goto LABEL_10;
      }
    }

    (*(v24 + 8))(v17, v13);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000903C(v46);
  return v20;
}

unint64_t sub_1002317E8()
{
  result = qword_10034F0D8;
  if (!qword_10034F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0D8);
  }

  return result;
}

unint64_t sub_10023183C()
{
  result = qword_10034F0E0;
  if (!qword_10034F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0E0);
  }

  return result;
}

unint64_t sub_100231890()
{
  result = qword_10034F0E8;
  if (!qword_10034F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0E8);
  }

  return result;
}

unint64_t sub_1002318E4()
{
  result = qword_10034F0F0;
  if (!qword_10034F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0F0);
  }

  return result;
}

unint64_t sub_100231938()
{
  result = qword_10034F0F8;
  if (!qword_10034F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F0F8);
  }

  return result;
}

unint64_t sub_10023198C()
{
  result = qword_10034F120;
  if (!qword_10034F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F120);
  }

  return result;
}

unint64_t sub_1002319E0()
{
  result = qword_10034F158;
  if (!qword_10034F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F158);
  }

  return result;
}

unint64_t sub_100231A34()
{
  result = qword_10034F160;
  if (!qword_10034F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F160);
  }

  return result;
}

unint64_t sub_100231A88()
{
  result = qword_10034F168;
  if (!qword_10034F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F168);
  }

  return result;
}

unint64_t sub_100231B30()
{
  result = qword_10034F170;
  if (!qword_10034F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F170);
  }

  return result;
}

unint64_t sub_100231B84()
{
  result = qword_10034F178;
  if (!qword_10034F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F178);
  }

  return result;
}

unint64_t sub_100231BD8()
{
  result = qword_10034F180;
  if (!qword_10034F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F180);
  }

  return result;
}

unint64_t sub_100231C2C()
{
  result = qword_10034F188;
  if (!qword_10034F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F188);
  }

  return result;
}

unint64_t sub_100231C80()
{
  result = qword_10034F190;
  if (!qword_10034F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F190);
  }

  return result;
}

unint64_t sub_100231CD4()
{
  result = qword_10034F198;
  if (!qword_10034F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F198);
  }

  return result;
}

unint64_t sub_100231D7C()
{
  result = qword_10034F1D0;
  if (!qword_10034F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1D0);
  }

  return result;
}

unint64_t sub_100231DD0()
{
  result = qword_10034F1D8;
  if (!qword_10034F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1D8);
  }

  return result;
}

unint64_t sub_100231E24()
{
  result = qword_10034F1E0;
  if (!qword_10034F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F1E0);
  }

  return result;
}

unint64_t sub_100231E78()
{
  result = qword_10034F230;
  if (!qword_10034F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F230);
  }

  return result;
}

unint64_t sub_100231ECC()
{
  result = qword_10034F238;
  if (!qword_10034F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F238);
  }

  return result;
}

uint64_t sub_100231F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100231F88()
{
  result = qword_10034F240;
  if (!qword_10034F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F240);
  }

  return result;
}

unint64_t sub_100231FDC()
{
  result = qword_10034F248;
  if (!qword_10034F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F248);
  }

  return result;
}

unint64_t sub_100232030()
{
  result = qword_10034F250;
  if (!qword_10034F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F250);
  }

  return result;
}

unint64_t sub_100232084()
{
  result = qword_10034F258;
  if (!qword_10034F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F258);
  }

  return result;
}

unint64_t sub_1002320D8()
{
  result = qword_10034F260;
  if (!qword_10034F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F260);
  }

  return result;
}

unint64_t sub_10023212C()
{
  result = qword_10034F268;
  if (!qword_10034F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F268);
  }

  return result;
}

unint64_t sub_100232180()
{
  result = qword_10034F270;
  if (!qword_10034F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F270);
  }

  return result;
}

uint64_t sub_1002321D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023223C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100232284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100232418()
{
  result = qword_10034F2C0;
  if (!qword_10034F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2C0);
  }

  return result;
}

unint64_t sub_100232470()
{
  result = qword_10034F2C8;
  if (!qword_10034F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2C8);
  }

  return result;
}

unint64_t sub_1002324C8()
{
  result = qword_10034F2D0;
  if (!qword_10034F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2D0);
  }

  return result;
}

unint64_t sub_100232520()
{
  result = qword_10034F2D8;
  if (!qword_10034F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2D8);
  }

  return result;
}

unint64_t sub_100232578()
{
  result = qword_10034F2E0;
  if (!qword_10034F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2E0);
  }

  return result;
}

unint64_t sub_1002325D0()
{
  result = qword_10034F2E8;
  if (!qword_10034F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2E8);
  }

  return result;
}

unint64_t sub_100232628()
{
  result = qword_10034F2F0;
  if (!qword_10034F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2F0);
  }

  return result;
}

unint64_t sub_100232680()
{
  result = qword_10034F2F8;
  if (!qword_10034F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F2F8);
  }

  return result;
}

unint64_t sub_1002326D8()
{
  result = qword_10034F300;
  if (!qword_10034F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F300);
  }

  return result;
}

unint64_t sub_100232730()
{
  result = qword_10034F308;
  if (!qword_10034F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F308);
  }

  return result;
}

unint64_t sub_100232788()
{
  result = qword_10034F310;
  if (!qword_10034F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F310);
  }

  return result;
}

unint64_t sub_1002327E0()
{
  result = qword_10034F318;
  if (!qword_10034F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F318);
  }

  return result;
}

unint64_t sub_100232838()
{
  result = qword_10034F320;
  if (!qword_10034F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F320);
  }

  return result;
}

unint64_t sub_100232890()
{
  result = qword_10034F328;
  if (!qword_10034F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F328);
  }

  return result;
}

unint64_t sub_1002328E8()
{
  result = qword_10034F330;
  if (!qword_10034F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F330);
  }

  return result;
}

unint64_t sub_100232940()
{
  result = qword_10034F338;
  if (!qword_10034F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F338);
  }

  return result;
}

unint64_t sub_100232998()
{
  result = qword_10034F340;
  if (!qword_10034F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F340);
  }

  return result;
}

unint64_t sub_1002329F0()
{
  result = qword_10034F348;
  if (!qword_10034F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F348);
  }

  return result;
}

unint64_t sub_100232A48()
{
  result = qword_10034F350;
  if (!qword_10034F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F350);
  }

  return result;
}

unint64_t sub_100232AA0()
{
  result = qword_10034F358;
  if (!qword_10034F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F358);
  }

  return result;
}

unint64_t sub_100232AF8()
{
  result = qword_10034F360;
  if (!qword_10034F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F360);
  }

  return result;
}

unint64_t sub_100232B50()
{
  result = qword_10034F368;
  if (!qword_10034F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F368);
  }

  return result;
}

unint64_t sub_100232BA8()
{
  result = qword_10034F370;
  if (!qword_10034F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F370);
  }

  return result;
}

unint64_t sub_100232C00()
{
  result = qword_10034F378;
  if (!qword_10034F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F378);
  }

  return result;
}

unint64_t sub_100232C58()
{
  result = qword_10034F380;
  if (!qword_10034F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F380);
  }

  return result;
}

unint64_t sub_100232CB0()
{
  result = qword_10034F388;
  if (!qword_10034F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F388);
  }

  return result;
}

unint64_t sub_100232D08()
{
  result = qword_10034F390;
  if (!qword_10034F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F390);
  }

  return result;
}

unint64_t sub_100232D60()
{
  result = qword_10034F398;
  if (!qword_10034F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F398);
  }

  return result;
}

unint64_t sub_100232DB8()
{
  result = qword_10034F3A0;
  if (!qword_10034F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3A0);
  }

  return result;
}

unint64_t sub_100232E10()
{
  result = qword_10034F3A8;
  if (!qword_10034F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3A8);
  }

  return result;
}

unint64_t sub_100232E68()
{
  result = qword_10034F3B0;
  if (!qword_10034F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3B0);
  }

  return result;
}

unint64_t sub_100232EC0()
{
  result = qword_10034F3B8;
  if (!qword_10034F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3B8);
  }

  return result;
}

unint64_t sub_100232F18()
{
  result = qword_10034F3C0;
  if (!qword_10034F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3C0);
  }

  return result;
}

unint64_t sub_100232F70()
{
  result = qword_10034F3C8;
  if (!qword_10034F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3C8);
  }

  return result;
}

unint64_t sub_100232FC8()
{
  result = qword_10034F3D0;
  if (!qword_10034F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3D0);
  }

  return result;
}

unint64_t sub_100233020()
{
  result = qword_10034F3D8;
  if (!qword_10034F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3D8);
  }

  return result;
}

unint64_t sub_100233078()
{
  result = qword_10034F3E0;
  if (!qword_10034F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3E0);
  }

  return result;
}

unint64_t sub_1002330D0()
{
  result = qword_10034F3E8;
  if (!qword_10034F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3E8);
  }

  return result;
}

unint64_t sub_100233128()
{
  result = qword_10034F3F0;
  if (!qword_10034F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3F0);
  }

  return result;
}

unint64_t sub_100233180()
{
  result = qword_10034F3F8;
  if (!qword_10034F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F3F8);
  }

  return result;
}

unint64_t sub_1002331D8()
{
  result = qword_10034F400;
  if (!qword_10034F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F400);
  }

  return result;
}

unint64_t sub_100233230()
{
  result = qword_10034F408;
  if (!qword_10034F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F408);
  }

  return result;
}

unint64_t sub_100233288()
{
  result = qword_10034F410;
  if (!qword_10034F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F410);
  }

  return result;
}

unint64_t sub_1002332E0()
{
  result = qword_10034F418;
  if (!qword_10034F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F418);
  }

  return result;
}

unint64_t sub_100233338()
{
  result = qword_10034F420;
  if (!qword_10034F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F420);
  }

  return result;
}

unint64_t sub_100233390()
{
  result = qword_10034F428;
  if (!qword_10034F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F428);
  }

  return result;
}

unint64_t sub_1002333E8()
{
  result = qword_10034F430;
  if (!qword_10034F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F430);
  }

  return result;
}

unint64_t sub_100233440()
{
  result = qword_10034F438;
  if (!qword_10034F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F438);
  }

  return result;
}

unint64_t sub_100233498()
{
  result = qword_10034F440;
  if (!qword_10034F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F440);
  }

  return result;
}

unint64_t sub_1002334F0()
{
  result = qword_10034F448;
  if (!qword_10034F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F448);
  }

  return result;
}

unint64_t sub_100233548()
{
  result = qword_10034F450;
  if (!qword_10034F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F450);
  }

  return result;
}

unint64_t sub_1002335A0()
{
  result = qword_10034F458;
  if (!qword_10034F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F458);
  }

  return result;
}

uint64_t sub_1002335F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001002A6860 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D64726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002A6880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001002A68A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100233898(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_1002339AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65764564726163 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002A6820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001002A6840 == a2)
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

uint64_t sub_100233B78(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034F520, &qword_100293C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100235420();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for NoticeContext(0);
  sub_100235474(&qword_10034F460);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for PresentNoticeRequest() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100233D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for NoticeContext(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034F508, &qword_100293C38);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PresentNoticeRequest();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100235420();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v16 = v14;
  v17 = v28;
  v32 = 0;
  sub_100235474(&qword_10034F518);
  v18 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v16;
  sub_1001B3668(v30, v16);
  v31 = 1;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v17;
  v22 = v20;
  v24 = v23;
  v25 = (v19 + *(v11 + 20));
  (*(v21 + 8))(v10, v18);
  *v25 = v22;
  v25[1] = v24;
  sub_1002354B8(v19, v27);
  sub_10000903C(a1);
  return sub_10011F5A0(v19, type metadata accessor for PresentNoticeRequest);
}

uint64_t sub_100234014()
{
  if (*v0)
  {
    result = 0x496E6F6973736573;
  }

  else
  {
    result = 0x747865746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_100234054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
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

uint64_t sub_100234138(uint64_t a1)
{
  v2 = sub_100235420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100234174(uint64_t a1)
{
  v2 = sub_100235420();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002341E0()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v18[0] = 0x747865746E6F63;
  v18[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for NoticeContext(0);
  sub_100235474(&qword_10034F460);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  if (v1)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v7;
    *(inited + 80) = v9;
    v7 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
    v10 = (v2 + *(type metadata accessor for PresentNoticeRequest() + 20));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10;

      AnyHashable.init<A>(_:)();
      v17 = &type metadata for String;
      *&v16 = v12;
      *(&v16 + 1) = v11;
      sub_1000516B4(&v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D368(v15, v18, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v18);
    }
  }

  return v7;
}

uint64_t sub_10023443C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034F538, &qword_100293C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023551C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 3);
    v24[0] = *(v3 + 2);
    v24[1] = v15;
    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    v25[0] = *(v3 + 4);
    *(v25 + 9) = *(v3 + 73);
    v21 = v17;
    v22 = v16;
    v23[0] = *(v3 + 4);
    *(v23 + 9) = *(v3 + 73);
    v26 = 2;
    sub_1001835CC(v24, v19);
    sub_100234AF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19[0] = v21;
    v19[1] = v22;
    v20[0] = v23[0];
    *(v20 + 9) = *(v23 + 9);
    sub_100183628(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100234660()
{
  v1 = 0x496E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49747865746E6F63;
  }
}

uint64_t sub_1002346B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100234B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002346E0(uint64_t a1)
{
  v2 = sub_10023551C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023471C(uint64_t a1)
{
  v2 = sub_10023551C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100234758@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100234C6C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

unint64_t sub_1002347C4()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *&v18[0] = 0x746E657665;
  *(&v18[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v4 = v0[3];
  v18[0] = v0[2];
  v18[1] = v4;
  v19[0] = v0[4];
  *(v19 + 9) = *(v0 + 73);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100234AF4();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;

  if (v1)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v8;
    *(inited + 80) = v10;
    v8 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
    v20 = v2[1];
    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v12 = v20;
      sub_1000E8E50(&v20, v18);
      AnyHashable.init<A>(_:)();
      v17 = &type metadata for String;
      v16 = __PAIR128__(v11, v12);
      sub_1000516B4(&v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D368(v15, v18, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v18);
    }
  }

  return v8;
}

uint64_t sub_1002349F0()
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v1 = sub_10024D824(inited);
  swift_setDeallocating();
  result = sub_1000FC194(inited + 32);
  qword_10038B5F8 = v1;
  return result;
}

uint64_t type metadata accessor for PresentNoticeRequest()
{
  result = qword_10034F4D0;
  if (!qword_10034F4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100234AF4()
{
  result = qword_10034F468;
  if (!qword_10034F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F468);
  }

  return result;
}

uint64_t sub_100234B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
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

uint64_t sub_100234C6C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v4 = sub_100035D04(&qword_10034F528, &qword_100293C48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023551C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v10 = v5;
  LOBYTE(v26[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v26[0]) = 1;
  *&v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v20 + 1) = v14;
  v31 = 2;
  sub_10023524C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v4);
  v35 = v32;
  v36 = v33;
  v37[0] = v34[0];
  *(v37 + 9) = *(v34 + 9);
  *&v21 = v11;
  *(&v21 + 1) = v13;
  v15 = v20;
  v22 = v20;
  v23 = v32;
  v24 = v33;
  v25[0] = v34[0];
  *(v25 + 9) = *(v34 + 9);
  sub_10011F66C(&v21, v26);
  sub_10000903C(a1);
  v26[0] = v11;
  v26[1] = v13;
  v27 = v15;
  v28 = v35;
  v29 = v36;
  *v30 = v37[0];
  *&v30[9] = *(v37 + 9);
  result = sub_10011F6C8(v26);
  v17 = v24;
  v18 = v38;
  v38[2] = v23;
  v18[3] = v17;
  v18[4] = v25[0];
  *(v18 + 73) = *(v25 + 9);
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  return result;
}

uint64_t sub_100234F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = 0x49747865746E6F63;
  v31 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_1000851E8(v32);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_10001766C(*(a1 + 56) + 32 * v4, v29);
  sub_1000516C4(v32);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v7 = 0;
    v16 = 0;
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    goto LABEL_12;
  }

  v8 = v30;
  v7 = v31;
  v30 = 0x746E657665;
  v31 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v9 = sub_1000851E8(v32), (v10 & 1) == 0))
  {

LABEL_10:
    result = sub_1000516C4(v32);
    goto LABEL_11;
  }

  sub_10001766C(*(a1 + 56) + 32 * v9, v29);
  sub_1000516C4(v32);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = v30;
  v11 = v31;
  v13 = type metadata accessor for JSONDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10023524C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v25 = v11;

  v27 = v32[1];
  v28 = v32[0];
  v26 = v32[2];
  v21 = v33;
  v22 = v34;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v23 = sub_1000851E8(v29), (v24 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v23, &v30);
    sub_100010708(v12, v25);
    sub_1000516C4(v29);
    result = swift_dynamicCast();
    v16 = 0x496E6F6973736573;
    v17 = 0xE900000000000044;
    if (!result)
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    sub_100010708(v12, v25);
    result = sub_1000516C4(v29);
    v16 = 0;
    v17 = 0;
  }

  v19 = v27;
  v18 = v28;
  v20 = v26;
LABEL_12:
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  return result;
}