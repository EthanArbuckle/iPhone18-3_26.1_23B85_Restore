unint64_t sub_100055D8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65646F4E61746164;
    v7 = 0xD000000000000016;
    if (a1 != 10)
    {
      v7 = 0x696C696261706163;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v8 = 0x6974726F70707573;
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4874736575716572;
    v2 = 0xD000000000000017;
    v3 = 0x61746144766469;
    if (a1 != 4)
    {
      v3 = 0x6465696669726576;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x776F6C666B726F77;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100055F58(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836E98, &qword_1006C9590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ABF90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v19 = *v3;
  *&v20 = v11;
  *(&v20 + 1) = v12;
  v22 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[3];
    v19 = v3[2];
    v20 = v13;
    v21 = v3[4];
    v22 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 10);
    v15 = *(v3 + 11);
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = type metadata accessor for IdentityProofingRequest(0);
    v17 = v16[7];
    LOBYTE(v19) = 3;
    type metadata accessor for HardwareAttestationType();
    sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v19 = *(v3 + v16[8]);
    v22 = 4;
    sub_100007224(&qword_100836E48, &qword_1006C9580);
    sub_1000AC31C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v19 = *(v3 + v16[9]);
    v22 = 5;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    sub_1000ABC00();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + v16[10]);
    v22 = 6;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    sub_1000AB518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + v16[11]);
    v22 = 7;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    sub_1000ABEB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v19 = *(v3 + v16[12]);
    v22 = 8;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + v16[13]);
    v22 = 9;
    sub_100007224(&qword_100836200, &qword_1006C5160);
    sub_1000AC3CC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + v16[14]);
    v22 = 10;
    sub_100007224(&qword_100836210, &qword_1006C5168);
    sub_1000AC4A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + v16[15]);
    v22 = 11;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    sub_1000AC57C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100056464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = type metadata accessor for HardwareAttestationType();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100007224(&qword_100836E38, &qword_1006C9578);
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v11 = v54 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for IdentityProofingRequest(0);
  v17 = *(*(v71 - 1) + 64);
  __chkstk_darwin(v71);
  v19 = (v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  UUID.init()();
  UUID.uuidString.getter();
  v72 = v20;
  (*(v13 + 8))(v16, v12);
  v21 = a1[3];
  v22 = a1[4];
  v68 = a1;
  sub_10000BA08(a1, v21);
  sub_1000ABF90();
  v61 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v70 = v19;
  if (v2)
  {
    v69 = v2;
    LODWORD(v61) = 0;
    v23 = 0;
    v24 = 0;
    LODWORD(v62) = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v79 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v33 = v74;
    v34 = v75;
    v35 = v76;
    *v19 = v73;
    v19[1] = v33;
    v19[2] = v34;
    v19[3] = v35;
    v72 = v35;
    v79 = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v74;
    v37 = v75;
    v38 = v76;
    v39 = v77;
    v40 = v78;
    v57 = v73;
    v19[4] = v73;
    v19[5] = v36;
    v55 = v36;
    v56 = v37;
    v19[6] = v37;
    v19[7] = v38;
    v54[0] = v38;
    v54[2] = v39;
    v19[8] = v39;
    v19[9] = v40;
    v54[1] = v40;
    LOBYTE(v73) = 2;
    v19[10] = KeyedDecodingContainer.decode(_:forKey:)();
    v19[11] = v41;
    LOBYTE(v73) = 3;
    sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType);
    v42 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v71;
    (*(v59 + 32))(v19 + v71[7], v7, v42);
    sub_100007224(&qword_100836E48, &qword_1006C9580);
    v79 = 4;
    sub_1000ABFE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v19 + v43[8]) = v73;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    v79 = 5;
    sub_1000ABA20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v43[9];
    v67 = v73;
    *(v19 + v44) = v73;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v79 = 6;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v43[10];
    v66 = v73;
    *(v19 + v45) = v73;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    v79 = 7;
    sub_1000ABDE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v70 + v71[11]) = v73;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v79 = 8;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v69 = 0;
    v46 = v71[12];
    v65 = v73;
    *(v70 + v46) = v73;
    sub_100007224(&qword_100836200, &qword_1006C5160);
    v79 = 9;
    sub_1000AC094();
    v47 = v69;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v69 = v47;
    if (v47)
    {
      (*(v8 + 8))(v61, v62);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v48 = v71[13];
      v64 = v73;
      *(v70 + v48) = v73;
      sub_100007224(&qword_100836210, &qword_1006C5168);
      v79 = 10;
      sub_1000AC16C();
      v49 = v69;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v69 = v49;
      if (v49)
      {
        (*(v8 + 8))(v61, v62);
        v63 = 0;
      }

      else
      {
        v50 = v71[14];
        v63 = v73;
        *(v70 + v50) = v73;
        sub_100007224(&qword_100836E80, &qword_1006C9588);
        v79 = 11;
        sub_1000AC244();
        v51 = v69;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v69 = v51;
        if (!v51)
        {
          v52 = v71[15];
          (*(v8 + 8))(v61, v62);
          v53 = v70;
          *(v70 + v52) = v73;
          sub_10009ED78(v53, v58, type metadata accessor for IdentityProofingRequest);
          sub_10000BB78(v68);
          return sub_10009EDE0(v53, type metadata accessor for IdentityProofingRequest);
        }

        (*(v8 + 8))(v61, v62);
      }
    }

    LODWORD(v61) = 1;
    v23 = 1;
    v24 = 1;
    LODWORD(v62) = 1;
    v25 = v57;
    v26 = v55;
  }

  sub_10000BB78(v68);

  sub_1000AB97C(v25, v26);
  v27 = v70;
  if (!v61)
  {
    v28 = v71;
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_12:
    (*(v59 + 8))(&v27[v28[7]], v60);
    if (!v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v32 = v70[11];

  v28 = v71;
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v24)
  {
LABEL_7:
    v29 = *&v27[v28[8]];
  }

LABEL_8:

  if (v62)
  {
    v30 = *&v27[v28[11]];
  }
}

uint64_t sub_100056F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000855B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100056F78(uint64_t a1)
{
  v2 = sub_1000ABF90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056FB4(uint64_t a1)
{
  v2 = sub_1000ABF90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100057024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = type metadata accessor for DIPError.Code();
  v54 = *(v55 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v55);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DIPCertUsage();
  v59 = *(v62 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DIPOIDVerifier();
  v58 = *(v57 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v57);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100836270, &unk_1006C5180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_100007224(&qword_100837938, &qword_1006C99F0);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = type metadata accessor for IdentityProofingResponse(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 28);
  v24 = type metadata accessor for VerifiedClaim(0);
  v25 = *(*(v24 - 8) + 56);
  v76 = v23;
  v66 = v22;
  v25(&v22[v23], 1, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v65 = a1;
  sub_10000BA08(a1, v27);
  sub_1000B24B0();
  v28 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v29 = v76;
    v32 = v66;
    sub_10000BB78(v65);
    sub_10000BE18(&v32[v29], &qword_100836270, &unk_1006C5180);
  }

  else
  {
    v53 = v24;
    v64 = v13;
    v52 = v18;
    v51 = v9;
    v69 = 0;
    sub_1000ACC1C();
    v30 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v76;
    v34 = v73;
    v35 = v74;
    v36 = v71;
    v37 = v66;
    *(v66 + 2) = v72;
    *(v37 + 48) = v34;
    v38 = v75;
    *(v37 + 64) = v35;
    *(v37 + 80) = v38;
    *v37 = v70;
    *(v37 + 16) = v36;
    LOBYTE(v68[0]) = 1;
    *(v37 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v37 + 104) = v39;
    v50 = v39;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v67 = 2;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v68[0];
    *(v37 + 112) = v68[0];
    LOBYTE(v68[0]) = 3;
    sub_10009F43C(&qword_100837948, type metadata accessor for VerifiedClaim);
    v40 = v64;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v40, v37 + v31, &qword_100836270, &unk_1006C5180);
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v67 = 4;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v63;
    v42 = v52;
    *(v37 + *(v52 + 32)) = v68[0];
    type metadata accessor for LegacyWorkflowPackage(0);
    v67 = 5;
    sub_10009F43C(&qword_100837950, type metadata accessor for LegacyWorkflowPackage);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v64 = v30;
    *(v37 + *(v42 + 36)) = v68[0];
    if (v49)
    {
      v68[3] = type metadata accessor for DateProvider();
      v68[4] = &protocol witness table for DateProvider;
      sub_100032DBC(v68);
      DateProvider.init()();
      DIPOIDVerifier.init(dateProvider:)();
      v43 = v59 + 104;
      v44 = v60;
      (*(v59 + 104))(v60, enum case for DIPCertUsage.clientIdentity(_:), v62);
      v45 = DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)();
      v46 = (v43 - 96);
      v59 = v58 + 8;
      v47 = v61;

      (*v46)(v44, v62);
      (*v59)(v51, v57);
    }

    else
    {
      v47 = v61;
    }

    (*(v41 + 8))(v64, v14);
    sub_10009ED78(v37, v47, type metadata accessor for IdentityProofingResponse);
    sub_10000BB78(v65);
    return sub_10009EDE0(v37, type metadata accessor for IdentityProofingResponse);
  }
}

uint64_t sub_100057B58(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837958, &qword_1006C99F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B24B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v35 = v2[3];
  v36 = v11;
  v12 = v2[4];
  v37 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v33 = v2[1];
  v34 = v14;
  v15 = *v2;
  v29 = v35;
  v30 = v12;
  v31 = v2[5];
  v32 = v15;
  v26 = v13;
  v27 = v33;
  v28 = v10;
  v25 = 0;
  sub_1000B1478(&v32, v24);
  sub_1000B14B0();
  v16 = v38;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_1000ACC70(v24);
  if (!v16)
  {
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v2 + 14);
    HIBYTE(v22) = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = type metadata accessor for IdentityProofingResponse(0);
    v21 = v20[7];
    LOBYTE(v23) = 3;
    type metadata accessor for VerifiedClaim(0);
    sub_10009F43C(&qword_100837960, type metadata accessor for VerifiedClaim);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v2 + v20[8]);
    HIBYTE(v22) = 4;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    sub_1000AB518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v2 + v20[9]);
    HIBYTE(v22) = 5;
    type metadata accessor for LegacyWorkflowPackage(0);
    sub_10009F43C(&qword_1008377C8, type metadata accessor for LegacyWorkflowPackage);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100057F4C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837200, &qword_1006C96C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AED80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = *v3;
  v13[0] = 0;
  sub_1000AEE7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    memcpy(v13, v3 + 8, 0x148uLL);
    v13[351] = 1;
    sub_1000AEED0(v3, v12);
    sub_1000AEF08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v12, v13, 0x148uLL);
    sub_1000AEF5C(v12);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100058138()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x6465696669726576;
  v4 = 0x6B726F577478656ELL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x45656D69746E7572;
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

uint64_t sub_100058220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000859A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100058248(uint64_t a1)
{
  v2 = sub_1000B24B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058284(uint64_t a1)
{
  v2 = sub_1000B24B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100058308()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100058414@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100085BCC(*a1);
  *a2 = result;
  return result;
}

void sub_100058444(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5919309;
  v5 = 0xE800000000000000;
  v6 = 0x444145525F43464ELL;
  if (v2 != 5)
  {
    v6 = 0x454B4F545F494950;
    v5 = 0xE90000000000004ELL;
  }

  v7 = 0x80000001006F8E70;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x4E495F444559454BLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5391183;
  if (v2 != 1)
  {
    v10 = 0x454349564544;
    v9 = 0xE600000000000000;
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

uint64_t sub_1000585C8()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x72756F5361746164;
  }

  *v0;
  return result;
}

uint64_t sub_100058600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1000586E4(uint64_t a1)
{
  v2 = sub_1000AED80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058720(uint64_t a1)
{
  v2 = sub_1000AED80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005875C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100085C18(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x150uLL);
  }

  return result;
}

uint64_t sub_1000589B0(char a1)
{
  result = 0x3731345F666470;
  switch(a1)
  {
    case 1:
      result = 0x616E5F7473726966;
      break;
    case 2:
      v3 = 0x656C6464696DLL;
      goto LABEL_16;
    case 3:
      result = 0x6D616E5F7473616CLL;
      break;
    case 4:
    case 5:
      result = 0x5F73736572646461;
      break;
    case 6:
      result = 2037672291;
      break;
    case 7:
      result = 0x6574617473;
      break;
    case 8:
      result = 0x635F6C6174736F70;
      break;
    case 9:
      result = 0x7972746E756F63;
      break;
    case 10:
      result = 6451044;
      break;
    case 11:
      result = 0x726575737369;
      break;
    case 12:
      result = 0x61636F6C5F737067;
      break;
    case 13:
      v3 = 0x656369766564;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E5F000000000000;
      break;
    case 14:
      result = 1684628851;
      break;
    case 15:
      result = 0x6469636369;
      break;
    case 16:
      result = 0x756E5F656E6F6870;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6F666E497A726DLL;
      break;
    case 19:
      result = 6514286;
      break;
    case 20:
      result = 0x6E656B6F54696970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100058C34(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_100058CE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100058D64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100058DD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100058E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100085E24();
  *a2 = result;
  return result;
}

uint64_t sub_100058E6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000589B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100058EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100085E24();
  *a1 = result;
  return result;
}

uint64_t sub_100058ED4(uint64_t a1)
{
  v2 = sub_1000B28DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058F10(uint64_t a1)
{
  v2 = sub_1000B28DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100058F4C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837A38, &qword_1006C9A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B28DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v53) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[11];
    v14 = v3[12];
    LOBYTE(v53) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[13];
    v16 = v3[14];
    LOBYTE(v53) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[15];
    v18 = v3[16];
    LOBYTE(v53) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[17];
    v20 = v3[18];
    LOBYTE(v53) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[19];
    v22 = v3[20];
    LOBYTE(v53) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[21];
    v24 = v3[22];
    LOBYTE(v53) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[23];
    v26 = v3[24];
    LOBYTE(v53) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[25];
    v28 = v3[26];
    LOBYTE(v53) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v3[27];
    v30 = v3[28];
    LOBYTE(v53) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = v3[29];
    v32 = v3[30];
    LOBYTE(v53) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = v3[31];
    v34 = v3[32];
    LOBYTE(v53) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v53 = v3[2];
    v52[7] = 12;
    sub_100007224(&qword_1008355A8, &qword_1006C1A08);
    sub_10009D7D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = v3[3];
    v36 = v3[4];
    LOBYTE(v53) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v3[5];
    v38 = v3[6];
    LOBYTE(v53) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = v3[7];
    v40 = v3[8];
    LOBYTE(v53) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v3[9];
    v42 = v3[10];
    LOBYTE(v53) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = v3[33];
    v44 = v3[34];
    LOBYTE(v53) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = v3[35];
    v46 = v3[36];
    LOBYTE(v53) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = v3[37];
    v48 = v3[38];
    LOBYTE(v53) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = v3[39];
    v50 = v3[40];
    LOBYTE(v53) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1000593B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100085E78(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x148uLL);
  }

  return result;
}

uint64_t sub_100059414()
{
  v1 = v0;
  _StringGuts.grow(_:)(227);
  v2._countAndFlagsBits = 0x6144373134666470;
  v2._object = 0xEC000000203A6174;
  String.append(_:)(v2);
  v4 = *v0;
  v3 = v0[1];
  if (v3)
  {
    v5 = *v0;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = v0[1];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6E5F74737269660ALL;
  v8._object = 0xED0000203A656D61;
  String.append(_:)(v8);
  v10 = v0[11];
  v9 = v0[12];
  if (v9)
  {
    v11 = v0[11];
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v0[12];
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x5F656C6464696D0ALL;
  v14._object = 0xEE00203A656D616ELL;
  String.append(_:)(v14);
  v16 = v0[13];
  v15 = v0[14];
  if (v15)
  {
    v17 = v0[13];
  }

  else
  {
    v17 = 0;
  }

  if (v15)
  {
    v18 = v0[14];
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19._countAndFlagsBits = v17;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x616E5F7473616C0ALL;
  v20._object = 0xEC000000203A656DLL;
  String.append(_:)(v20);
  v22 = v0[15];
  v21 = v0[16];
  if (v21)
  {
    v23 = v0[15];
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v0[16];
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._object = 0x80000001006FD330;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v28 = v0[17];
  v27 = v0[18];
  if (v27)
  {
    v29 = v0[17];
  }

  else
  {
    v29 = 0;
  }

  if (v27)
  {
    v30 = v0[18];
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  v32._object = 0x80000001006FD350;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v34 = v0[19];
  v33 = v0[20];
  if (v33)
  {
    v35 = v0[19];
  }

  else
  {
    v35 = 0;
  }

  if (v33)
  {
    v36 = v0[20];
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37._countAndFlagsBits = v35;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x203A797469630ALL;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  v40 = v0[21];
  v39 = v0[22];
  if (v39)
  {
    v41 = v0[21];
  }

  else
  {
    v41 = 0;
  }

  if (v39)
  {
    v42 = v0[22];
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v43._countAndFlagsBits = v41;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0x203A65746174730ALL;
  v44._object = 0xE800000000000000;
  String.append(_:)(v44);
  v46 = v0[23];
  v45 = v0[24];
  if (v45)
  {
    v47 = v0[23];
  }

  else
  {
    v47 = 0;
  }

  if (v45)
  {
    v48 = v0[24];
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  v49._countAndFlagsBits = v47;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x5F6C6174736F700ALL;
  v50._object = 0xEE00203A65646F63;
  String.append(_:)(v50);
  v52 = v0[25];
  v51 = v0[26];
  if (v51)
  {
    v53 = v0[25];
  }

  else
  {
    v53 = 0;
  }

  if (v51)
  {
    v54 = v0[26];
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  v55._countAndFlagsBits = v53;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0x7972746E756F630ALL;
  v56._object = 0xEA0000000000203ALL;
  String.append(_:)(v56);
  v58 = v0[27];
  v57 = v0[28];
  if (v57)
  {
    v59 = v0[27];
  }

  else
  {
    v59 = 0;
  }

  if (v57)
  {
    v60 = v0[28];
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v61._countAndFlagsBits = v59;
  v61._object = v60;
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0x203A626F640ALL;
  v62._object = 0xE600000000000000;
  String.append(_:)(v62);
  v64 = v0[29];
  v63 = v0[30];
  if (v63)
  {
    v65 = v0[29];
  }

  else
  {
    v65 = 0;
  }

  if (v63)
  {
    v66 = v0[30];
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  v67._countAndFlagsBits = v65;
  v67._object = v66;
  String.append(_:)(v67);

  v68._countAndFlagsBits = 0x3A7265757373690ALL;
  v68._object = 0xE900000000000020;
  String.append(_:)(v68);
  v70 = v0[31];
  v69 = v0[32];
  if (v69)
  {
    v71 = v0[31];
  }

  else
  {
    v71 = 0;
  }

  if (v69)
  {
    v72 = v0[32];
  }

  else
  {
    v72 = 0xE000000000000000;
  }

  v73._countAndFlagsBits = v71;
  v73._object = v72;
  String.append(_:)(v73);

  v74._countAndFlagsBits = 0x61636F4C7370670ALL;
  v74._object = 0xEE00203A6E6F6974;
  String.append(_:)(v74);
  if (v0[2])
  {
    v75 = v0[2];
  }

  v76 = Array.description.getter();
  v78 = v77;

  v79._countAndFlagsBits = v76;
  v79._object = v78;
  String.append(_:)(v79);

  v80._countAndFlagsBits = 0x4E6563697665640ALL;
  v80._object = 0xED0000203A656D61;
  String.append(_:)(v80);
  v82 = v1[3];
  v81 = v1[4];
  if (v81)
  {
    v83 = v1[3];
  }

  else
  {
    v83 = 0;
  }

  if (v81)
  {
    v84 = v1[4];
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  v85._countAndFlagsBits = v83;
  v85._object = v84;
  String.append(_:)(v85);

  v86._countAndFlagsBits = 0x203A646965730ALL;
  v86._object = 0xE700000000000000;
  String.append(_:)(v86);
  v88 = v1[5];
  v87 = v1[6];
  if (v87)
  {
    v89 = v1[5];
  }

  else
  {
    v89 = 0;
  }

  if (v87)
  {
    v90 = v1[6];
  }

  else
  {
    v90 = 0xE000000000000000;
  }

  v91._countAndFlagsBits = v89;
  v91._object = v90;
  String.append(_:)(v91);

  v92._countAndFlagsBits = 0x203A64696363690ALL;
  v92._object = 0xE800000000000000;
  String.append(_:)(v92);
  v94 = v1[7];
  v93 = v1[8];
  if (v93)
  {
    v95 = v1[7];
  }

  else
  {
    v95 = 0;
  }

  if (v93)
  {
    v96 = v1[8];
  }

  else
  {
    v96 = 0xE000000000000000;
  }

  v97._countAndFlagsBits = v95;
  v97._object = v96;
  String.append(_:)(v97);

  v98._countAndFlagsBits = 0x754E656E6F68700ALL;
  v98._object = 0xEE00203A7265626DLL;
  String.append(_:)(v98);
  v100 = v1[9];
  v99 = v1[10];
  if (v99)
  {
    v101 = v1[9];
  }

  else
  {
    v101 = 0;
  }

  if (v99)
  {
    v102 = v1[10];
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v103._countAndFlagsBits = v101;
  v103._object = v102;
  String.append(_:)(v103);

  _StringGuts.grow(_:)(23);

  v105 = v1[35];
  v104 = v1[36];
  if (v104)
  {
    v106 = v1[35];
  }

  else
  {
    v106 = 0;
  }

  if (v104)
  {
    v107 = v1[36];
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  v108._countAndFlagsBits = v106;
  v108._object = v107;
  String.append(_:)(v108);

  v109._countAndFlagsBits = 0x63666E202020200ALL;
  v109._object = 0xEA0000000000203ALL;
  String.append(_:)(v109);
  v111 = v1[37];
  v110 = v1[38];
  if (v110)
  {
    v112 = v1[37];
  }

  else
  {
    v112 = 0;
  }

  if (v110)
  {
    v113 = v110;
  }

  else
  {
    v113 = 0xE000000000000000;
  }

  v114._countAndFlagsBits = v112;
  v114._object = v113;
  String.append(_:)(v114);

  v115._countAndFlagsBits = 0x3A7A726D20202020;
  v115._object = 0xE900000000000020;
  String.append(_:)(v115);

  return 0;
}

uint64_t sub_100059A80(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837240, &qword_1006C96D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AEF8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_100007224(&qword_100833688, &qword_1006BF6D0);
  sub_1000BA30C(&qword_100837248, &qword_100833688, &qword_1006BF6D0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for ProofingData(0) + 20));
    v12[15] = 1;
    sub_100007224(&unk_100835CC0, &qword_1006C2148);
    sub_1000AF0B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100059C6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100007224(&qword_100833698, &qword_1006BF6E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_100007224(&qword_100837218, &qword_1006C96C8);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ProofingData(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AEF8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v22 = v16;
  sub_100007224(&qword_100833688, &qword_1006BF6D0);
  v28 = 0;
  sub_1000BA30C(&qword_100837228, &qword_100833688, &qword_1006BF6D0);
  v18 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v22;
  sub_1000B1FC8(v7, v22, &qword_100833698, &qword_1006BF6E0);
  sub_100007224(&unk_100835CC0, &qword_1006C2148);
  v27 = 1;
  sub_1000AEFE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v25 + 8))(v12, v18);
  *(v19 + *(v13 + 20)) = v26;
  sub_10009ED78(v19, v23, type metadata accessor for ProofingData);
  sub_10000BB78(a1);
  return sub_10009EDE0(v19, type metadata accessor for ProofingData);
}

uint64_t sub_100059FC0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837358, &qword_1006C9730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF9C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 3);
    v18 = *(v3 + 2);
    v19 = v16;
    v20 = v3[8];
    v17[15] = 2;
    sub_1000AFAD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005A1A8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100838370, &qword_1006CFCC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005A348(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100837738, &qword_1006C98F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B171C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100007224(&qword_100837720, &qword_1006C98E8);
  sub_1000B1850();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10005A4A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_100007224(&qword_100837320, &qword_1006C9720);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF6BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_100007224(&qword_1008372F8, &qword_1006C9710);
  sub_1000AF86C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = a4;
    v16 = 2;
    sub_100007224(&qword_100837310, &qword_1006C9718);
    sub_1000AF944();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10005A6E4(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 10:
    case 36:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
    case 12:
    case 13:
    case 16:
      result = 0xD000000000000012;
      break;
    case 11:
    case 14:
    case 41:
    case 51:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x5465727574706163;
      break;
    case 17:
    case 19:
    case 33:
    case 40:
      result = 0x746E656D75636F64;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 1952867692;
      goto LABEL_38;
    case 21:
      result = 0x6972447468676972;
      break;
    case 22:
      result = 0x74666972447075;
      break;
    case 23:
      v3 = 1853321060;
LABEL_38:
      result = v3 | 0x6669724400000000;
      break;
    case 24:
      result = 0x666E6F4365636166;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0x73656361466D756ELL;
      break;
    case 27:
      result = 0x6C6576654C78756CLL;
      break;
    case 28:
      result = 0x6544373134666470;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x61436F7475417369;
      break;
    case 31:
      result = 0x456873616C467369;
      break;
    case 32:
      result = 0x754E726575737369;
      break;
    case 34:
      result = 0x7465446572616C67;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0x6556746567726174;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x686374614D72636FLL;
      break;
    case 43:
      result = 0x6365446C65646F6DLL;
      break;
    case 44:
      result = 0x7265566C65646F6DLL;
      break;
    case 45:
      result = 0x7461726F6C707865;
      break;
    case 46:
      result = 0x6F436E6163736572;
      break;
    case 47:
      result = 0x7373656E6576696CLL;
      break;
    case 48:
      result = 0x646F43726F727265;
      break;
    case 49:
      result = 0x6165706552626F64;
      break;
    case 50:
      result = 0x6165706552656F64;
      break;
    case 52:
      result = 0xD000000000000017;
      break;
    case 53:
      result = 0x526E6163537A726DLL;
      break;
    case 54:
      result = 0x636F44664F656761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AD84(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008372B8, &qword_1006C9700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v99 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 4);
  LOBYTE(v99[0]) = 0;
  v101 = v12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 12);
    LOBYTE(v99[0]) = 1;
    v101 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = *(v3 + 20);
    LOBYTE(v99[0]) = 2;
    v101 = v16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = *(v3 + 28);
    LOBYTE(v99[0]) = 3;
    v101 = v18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[8];
    v20 = *(v3 + 36);
    LOBYTE(v99[0]) = 4;
    v101 = v20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[10];
    v22 = *(v3 + 44);
    LOBYTE(v99[0]) = 5;
    v101 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[12];
    v24 = *(v3 + 52);
    LOBYTE(v99[0]) = 6;
    v101 = v24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[14];
    v26 = *(v3 + 60);
    LOBYTE(v99[0]) = 7;
    v101 = v26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[16];
    v28 = *(v3 + 68);
    LOBYTE(v99[0]) = 8;
    v101 = v28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = v3[18];
    v31 = *(v3 + 76);
    LOBYTE(v99[0]) = 9;
    v101 = v31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = v3[20];
    v33 = *(v3 + 84);
    LOBYTE(v99[0]) = 10;
    v101 = v33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = v3[22];
    v35 = *(v3 + 92);
    LOBYTE(v99[0]) = 11;
    v101 = v35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = v3[24];
    v37 = *(v3 + 100);
    LOBYTE(v99[0]) = 12;
    v101 = v37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = v3[26];
    v39 = *(v3 + 108);
    LOBYTE(v99[0]) = 13;
    v101 = v39;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = v3[28];
    v41 = *(v3 + 116);
    LOBYTE(v99[0]) = 14;
    v101 = v41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = v3[30];
    v43 = *(v3 + 124);
    LOBYTE(v99[0]) = 15;
    v101 = v43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = v3[32];
    v45 = *(v3 + 132);
    LOBYTE(v99[0]) = 16;
    v101 = v45;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = v3[34];
    v47 = *(v3 + 140);
    LOBYTE(v99[0]) = 17;
    v101 = v47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = v3[36];
    v49 = *(v3 + 148);
    LOBYTE(v99[0]) = 18;
    v101 = v49;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = v3[38];
    v51 = *(v3 + 156);
    LOBYTE(v99[0]) = 19;
    v101 = v51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = v3[40];
    v53 = *(v3 + 164);
    LOBYTE(v99[0]) = 20;
    v101 = v53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = v3[42];
    v55 = *(v3 + 172);
    LOBYTE(v99[0]) = 21;
    v101 = v55;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = v3[44];
    v57 = *(v3 + 180);
    LOBYTE(v99[0]) = 22;
    v101 = v57;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = v3[46];
    v59 = *(v3 + 188);
    LOBYTE(v99[0]) = 23;
    v101 = v59;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v99[0] = *(v3 + 24);
    v101 = 24;
    sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
    sub_1000AF4BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 25);
    v101 = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v60 = *(v3 + 26);
    v61 = *(v3 + 216);
    LOBYTE(v99[0]) = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = *(v3 + 28);
    v63 = *(v3 + 232);
    LOBYTE(v99[0]) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = *(v3 + 233);
    LOBYTE(v99[0]) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v65 = *(v3 + 234);
    LOBYTE(v99[0]) = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v66 = *(v3 + 235);
    LOBYTE(v99[0]) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v67 = *(v3 + 236);
    LOBYTE(v99[0]) = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v68 = *(v3 + 30);
    v69 = *(v3 + 31);
    LOBYTE(v99[0]) = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v70 = *(v3 + 32);
    v71 = *(v3 + 33);
    LOBYTE(v99[0]) = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v72 = *(v3 + 272);
    LOBYTE(v99[0]) = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v99[0] = *(v3 + 35);
    v101 = 35;
    sub_100007224(&qword_100837278, &unk_1006DA590);
    sub_1000AF538();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 36);
    v101 = 36;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 37);
    v101 = 37;
    sub_100007224(&qword_100837288, &qword_1006C96F0);
    sub_1000AF5B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 38);
    v101 = 38;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 39);
    v101 = 39;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 40);
    v101 = 40;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v73 = *(v3 + 102);
    v99[4] = *(v3 + 98);
    *v100 = v73;
    *&v100[10] = *(v3 + 418);
    v74 = *(v3 + 86);
    v99[0] = *(v3 + 82);
    v99[1] = v74;
    v75 = *(v3 + 94);
    v99[2] = *(v3 + 90);
    v99[3] = v75;
    v101 = 41;
    sub_1000AF668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v99[0] = *(v3 + 55);
    v101 = 42;
    sub_100007224(&qword_1008372A8, &qword_1006C96F8);
    sub_1000AF3E4(&qword_1008372E0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v76 = *(v3 + 56);
    v77 = *(v3 + 57);
    LOBYTE(v99[0]) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = *(v3 + 58);
    v79 = *(v3 + 59);
    LOBYTE(v99[0]) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v80 = *(v3 + 480);
    LOBYTE(v99[0]) = 45;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v81 = *(v3 + 61);
    v82 = *(v3 + 496);
    LOBYTE(v99[0]) = 46;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v83 = *(v3 + 63);
    v84 = *(v3 + 64);
    LOBYTE(v99[0]) = 47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = *(v3 + 65);
    v86 = *(v3 + 528);
    LOBYTE(v99[0]) = 48;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v87 = *(v3 + 67);
    v88 = *(v3 + 544);
    LOBYTE(v99[0]) = 49;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = *(v3 + 69);
    v90 = *(v3 + 560);
    LOBYTE(v99[0]) = 50;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v91 = *(v3 + 71);
    v92 = *(v3 + 576);
    LOBYTE(v99[0]) = 51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v93 = *(v3 + 73);
    v94 = *(v3 + 592);
    LOBYTE(v99[0]) = 52;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v95 = *(v3 + 75);
    v96 = *(v3 + 76);
    LOBYTE(v99[0]) = 53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v97 = *(v3 + 77);
    v98 = *(v3 + 624);
    LOBYTE(v99[0]) = 54;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005BA00(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100838358, &qword_1006CFCB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v26[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v26[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v26[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v26[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[8];
  v20 = *(v3 + 72);
  v26[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = v3[10];
  v22 = *(v3 + 88);
  v26[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = v3[12];
  v25 = *(v3 + 104);
  v26[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005BC3C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008375A8, &qword_1006C9808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = 0;
  sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for LivenessDataV2(0) + 20));
    v13 = v12[3];
    v14 = v12[5];
    v30 = v12[4];
    v31 = v14;
    v15 = v12[5];
    v32 = v12[6];
    v16 = v12[1];
    v17 = v12[3];
    v28 = v12[2];
    v29 = v17;
    v18 = v12[1];
    v27[0] = *v12;
    v27[1] = v18;
    v24 = v30;
    v25 = v15;
    v26 = v12[6];
    v20 = v27[0];
    v21 = v16;
    v22 = v28;
    v23 = v13;
    v33 = 1;
    sub_1000B0DAC(v27, v19);
    sub_1000B0DE4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19[4] = v24;
    v19[5] = v25;
    v19[6] = v26;
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_1000B0E38(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005BEB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v33 = sub_100007224(&qword_100837590, &qword_1006C9800);
  v30 = *(v33 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v33);
  v10 = &v27 - v9;
  v11 = type metadata accessor for LivenessDataV2(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v16 = v30;
  v17 = v31;
  v28 = v14;
  LOBYTE(v34) = 0;
  sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0);
  v18 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v28, v7, v18);
  v41 = 1;
  sub_1000B0D58();
  v19 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v10, v19);
  v21 = v28;
  v20 = v29;
  v22 = &v28[*(v11 + 20)];
  v23 = v39;
  *(v22 + 4) = v38;
  *(v22 + 5) = v23;
  *(v22 + 6) = v40;
  v24 = v35;
  *v22 = v34;
  *(v22 + 1) = v24;
  v25 = v37;
  *(v22 + 2) = v36;
  *(v22 + 3) = v25;
  sub_10009ED78(v21, v20, type metadata accessor for LivenessDataV2);
  sub_10000BB78(a1);
  return sub_10009EDE0(v21, type metadata accessor for LivenessDataV2);
}

uint64_t sub_10005C230(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835830, &unk_1006C1B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F1DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[7];
  v12 = v3[9];
  v59 = v3[8];
  v60[0] = v12;
  *(v60 + 14) = *(v3 + 158);
  v13 = v3[3];
  v14 = v3[5];
  v55 = v3[4];
  v56 = v14;
  v15 = v3[5];
  v16 = v3[7];
  v57 = v3[6];
  v58 = v16;
  v17 = v3[1];
  v52[0] = *v3;
  v52[1] = v17;
  v18 = v3[3];
  v20 = *v3;
  v19 = v3[1];
  v53 = v3[2];
  v54 = v18;
  v21 = v3[9];
  v46 = v59;
  v47[0] = v21;
  *(v47 + 14) = *(v3 + 158);
  v42 = v55;
  v43 = v15;
  v44 = v57;
  v45 = v11;
  v38 = v20;
  v39 = v19;
  v40 = v53;
  v41 = v13;
  v37 = 0;
  sub_10000BBC4(v52, v35, &qword_100835828, &qword_1006C1B18);
  sub_10009F340();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v35[8] = v46;
  *v36 = v47[0];
  *&v36[14] = *(v47 + 14);
  v35[4] = v42;
  v35[5] = v43;
  v35[6] = v44;
  v35[7] = v45;
  v35[0] = v38;
  v35[1] = v39;
  v35[2] = v40;
  v35[3] = v41;
  sub_10000BE18(v35, &qword_100835828, &qword_1006C1B18);
  if (!v2)
  {
    v23 = v3[14];
    v24 = v3[12];
    v49 = v3[13];
    v50 = v23;
    v25 = v3[14];
    v51[0] = v3[15];
    *(v51 + 10) = *(v3 + 250);
    v26 = v3[12];
    v48[0] = v3[11];
    v48[1] = v26;
    v32 = v49;
    v33 = v25;
    v34[0] = v3[15];
    *(v34 + 10) = *(v3 + 250);
    v30 = v48[0];
    v31 = v24;
    v29 = 1;
    sub_10000BBC4(v48, v27, &qword_100835840, &unk_1006DB6D0);
    sub_10009F394();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[2] = v32;
    v27[3] = v33;
    *v28 = v34[0];
    *&v28[10] = *(v34 + 10);
    v27[0] = v30;
    v27[1] = v31;
    sub_10000BE18(v27, &qword_100835840, &unk_1006DB6D0);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10005C594(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      return 0x7365727574736567;
    case 2:
      return 0x746169636F737361;
    case 3:
      return 0xD000000000000017;
    case 4:
      return 0xD000000000000010;
    case 5:
      v3 = 10;
      goto LABEL_17;
    case 6:
      return 0x6C416F54656D6974;
    case 7:
    case 13:
      v3 = 5;
      goto LABEL_17;
    case 8:
      return 0x6B6174655278616DLL;
    case 9:
      return 0x546E6F6973736573;
    case 10:
      return 0xD000000000000014;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0xD000000000000012;
    case 14:
      return 0xD000000000000013;
    case 15:
      return 0xD00000000000001ELL;
    case 16:
      v3 = 13;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 17:
      result = 0x7365726975716572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x65526569666C6573;
      break;
    case 21:
      result = 0x7541656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005C8A4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836BE0, &qword_1006C94D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA8A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v39) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v39 = v3[2];
    v38[7] = 1;
    sub_100007224(&qword_100836BB8, &qword_1006C94C0);
    sub_1000AAAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v39) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[5];
    LOBYTE(v39) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[6];
    LOBYTE(v39) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[7];
    LOBYTE(v39) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[8];
    LOBYTE(v39) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[9];
    LOBYTE(v39) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[10];
    LOBYTE(v39) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[11];
    LOBYTE(v39) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[12];
    LOBYTE(v39) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[13];
    LOBYTE(v39) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[14];
    LOBYTE(v39) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[15];
    LOBYTE(v39) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v3[16];
    v27 = *(v3 + 136);
    LOBYTE(v39) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v3[18];
    v29 = *(v3 + 152);
    LOBYTE(v39) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = v3[20];
    v31 = *(v3 + 168);
    LOBYTE(v39) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 169);
    LOBYTE(v39) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 170);
    LOBYTE(v39) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = *(v3 + 171);
    LOBYTE(v39) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = *(v3 + 172);
    LOBYTE(v39) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = *(v3 + 173);
    LOBYTE(v39) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10005CD60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x6B6174655278616DLL;
    v7 = 0x546E6F6973736573;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x746169636F737361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6172466C61746F74;
    v2 = 0x7541656C62616E65;
    if (a1 == 9)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 6)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v3 = 0x7365726975716572;
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

uint64_t sub_10005CF10(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836BF8, &qword_1006C94D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAA34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v28[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v28[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v28[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = *(v3 + 56);
    v28[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 57);
    v28[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 58);
    v28[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 59);
    v28[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[8];
    v23 = *(v3 + 72);
    v28[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[10];
    v25 = *(v3 + 88);
    v28[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v3 + 89);
    v28[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005D1C4(void *a1)
{
  v3 = sub_100007224(&qword_1008382E0, &qword_1006CFC78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA168();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10005D34C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6D617473656D6974;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x65756C615678756CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x536465726F6E6769;
    if (a1 != 6)
    {
      v8 = 0x656D737365737361;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7373656E6576696CLL;
    v2 = 0x656D737365737361;
    v3 = 0x6F4C63634E78616DLL;
    if (a1 != 4)
    {
      v3 = 0x694863634E78616DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656D737365737361;
    if (a1 != 1)
    {
      v4 = 0x6D617473656D6974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10005D528(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837600, &qword_1006C9830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0E68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v27 = v3[2];
    v26 = 1;
    sub_100007224(&qword_100837278, &unk_1006DA590);
    sub_1000AF538();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v3[3];
    v26 = 2;
    sub_100007224(&qword_1008375C8, &qword_1006C9818);
    sub_1000B1094();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 8);
    v14 = *(v3 + 36);
    LOBYTE(v27) = 3;
    v26 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 10);
    v16 = *(v3 + 44);
    LOBYTE(v27) = 4;
    v26 = v16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 12);
    v18 = *(v3 + 52);
    LOBYTE(v27) = 5;
    v26 = v18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[7];
    v20 = *(v3 + 64);
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[9];
    v26 = 7;
    sub_100007224(&qword_1008375E8, &qword_1006C9828);
    sub_1000B1194();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + 20);
    v22 = *(v3 + 84);
    LOBYTE(v27) = 8;
    v26 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[11];
    v26 = 9;
    v23 = sub_100007224(&qword_1008375E0, &qword_1006C9820);
    sub_1000B1118();
    v25 = v23;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v3[12];
    v26 = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = v3[13];
    v26 = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005D948(void *a1)
{
  v3 = sub_100007224(&qword_100837A50, &qword_1006C9A80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10005DAD4()
{
  if (*v0)
  {
    result = 0x646564616F6C7075;
  }

  else
  {
    result = 0x61746144766469;
  }

  *v0;
  return result;
}

uint64_t sub_10005DB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144766469 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646564616F6C7075 && a2 == 0xEC00000061746144)
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

uint64_t sub_10005DBF8(uint64_t a1)
{
  v2 = sub_1000AEF8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DC34(uint64_t a1)
{
  v2 = sub_1000AEF8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005DCA0()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4961746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644979656BLL;
  }
}

uint64_t sub_10005DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100086D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005DD28(uint64_t a1)
{
  v2 = sub_1000AF9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DD64(uint64_t a1)
{
  v2 = sub_1000AF9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005DDA0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100086E7C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10005DE0C()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x48746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644964726F636572;
  }
}

uint64_t sub_10005DE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100087188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005DE90(uint64_t a1)
{
  v2 = sub_1000BA3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DECC(uint64_t a1)
{
  v2 = sub_1000BA3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005DF08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000872A4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10005DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D7363697274656DLL && a2 == 0xEA00000000007061)
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

uint64_t sub_10005E01C(uint64_t a1)
{
  v2 = sub_1000B171C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E058(uint64_t a1)
{
  v2 = sub_1000B171C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000874B8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10005E0DC()
{
  v1 = 0x4D65727574706163;
  if (*v0 != 1)
  {
    v1 = 0x74654D6F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D656E696C6E69;
  }
}

uint64_t sub_10005E158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008763C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E180(uint64_t a1)
{
  v2 = sub_1000AF6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E1BC(uint64_t a1)
{
  v2 = sub_1000AF6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E1F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100087768(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10005E250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000879EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E284(uint64_t a1)
{
  v2 = sub_1000AF190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E2C0(uint64_t a1)
{
  v2 = sub_1000AF190();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100088AE8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x271uLL);
  }

  return result;
}

uint64_t sub_10005E360()
{
  v1 = *v0;
  v2 = 0x6D614E7473726966;
  v3 = 6451044;
  if (v1 != 5)
  {
    v3 = 0x6F436C6174736F70;
  }

  v4 = 0x6D754E6573756F68;
  if (v1 != 3)
  {
    v4 = 0x746565727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
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

uint64_t sub_10005E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008A8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E464(uint64_t a1)
{
  v2 = sub_1000BA3A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E4A0(uint64_t a1)
{
  v2 = sub_1000BA3A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E4DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008AB2C(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_10005E548()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x7373656E6576696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_10005E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373656E6576696CLL && a2 == 0xEE006769666E6F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE330 == a2)
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

uint64_t sub_10005E680(uint64_t a1)
{
  v2 = sub_1000B0D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E6BC(uint64_t a1)
{
  v2 = sub_1000B0D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10005E728()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_10005E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FD5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FD5F0 == a2)
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

uint64_t sub_10005E844(uint64_t a1)
{
  v2 = sub_10009F1DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E880(uint64_t a1)
{
  v2 = sub_10009F1DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10008AE24(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x10AuLL);
  }

  return result;
}

uint64_t sub_10005E928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008B118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E95C(uint64_t a1)
{
  v2 = sub_1000AA8A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E998(uint64_t a1)
{
  v2 = sub_1000AA8A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E9D4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008B840(a1, v9);
  if (!v2)
  {
    v5 = v10[0];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 158) = *(v10 + 14);
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10005EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008BFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005EA8C(uint64_t a1)
{
  v2 = sub_1000AAA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EAC8(uint64_t a1)
{
  v2 = sub_1000AAA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005EB04@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008C3A0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 74) = *(v8 + 10);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_10005EB70()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x65727574736567;
  }

  *v0;
  return result;
}

uint64_t sub_10005EBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65727574736567 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_10005EC80(uint64_t a1)
{
  v2 = sub_1000BA168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ECBC(uint64_t a1)
{
  v2 = sub_1000BA168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ECF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008C8FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10005ED24(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10005D1C4(a1);
}

uint64_t sub_10005ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008CAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005ED7C(uint64_t a1)
{
  v2 = sub_1000B0E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EDB8(uint64_t a1)
{
  v2 = sub_1000B0E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005EDF4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008CEA0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10005EE60()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x326567617473;
  }

  *v0;
  return result;
}

uint64_t sub_10005EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x326567617473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_10005EF7C(uint64_t a1)
{
  v2 = sub_1000B2968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EFB8(uint64_t a1)
{
  v2 = sub_1000B2968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EFF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008D5EC(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_10005F024(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_10005D948(a1);
}

uint64_t sub_10005F044()
{
  _StringGuts.grow(_:)(26);
  v0._countAndFlagsBits = 0x3A3265676174730ALL;
  v0._object = 0xE900000000000020;
  String.append(_:)(v0);
  Float.write<A>(to:)();
  v1._countAndFlagsBits = 0x7473656D6974202CLL;
  v1._object = 0xED0000203A706D61;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0;
}

uint64_t sub_10005F12C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_100007224(&qword_100837378, &qword_1006C9740);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10005F308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837660, &qword_1006C9850);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B13D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10005F49C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_10005F044();
}

uint64_t sub_10005F4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008D798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005F51C(uint64_t a1)
{
  v2 = sub_1000AFB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F558(uint64_t a1)
{
  v2 = sub_1000AFB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008D8B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10005F5E4()
{
  if (*v0)
  {
    result = 0x7461747365747461;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_10005F62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001006FE370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_10005F718(uint64_t a1)
{
  v2 = sub_1000B13D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F754(uint64_t a1)
{
  v2 = sub_1000B13D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100837650, &qword_1006C9848, sub_1000B13D0);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10005F80C(char a1)
{
  result = 0x4874736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x776F6C666B726F77;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x6574707972636E65;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x415064656E676973;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x49746375646F7270;
      break;
    case 11:
      result = 0x7373656E6576696CLL;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x676E69666F6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005FA44(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008371A0, &qword_1006C96B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AE7B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v34 = *v3;
  *&v35 = v11;
  *(&v35 + 1) = v12;
  v37 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[3];
    v34 = v3[2];
    v35 = v13;
    v36 = v3[4];
    v37 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 10);
    v15 = *(v3 + 11);
    LOBYTE(v34) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 12);
    v17 = *(v3 + 13);
    LOBYTE(v34) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v34 = *(v3 + 14);
    v37 = 4;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    sub_1000AEAC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = type metadata accessor for IdentityProofingRequestV2(0);
    v19 = v18[9];
    LOBYTE(v34) = 5;
    type metadata accessor for TiberiusWrappedAssessment(0);
    sub_10009F43C(&qword_100836EF0, type metadata accessor for TiberiusWrappedAssessment);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v34 = *(v3 + v18[10]);
    v37 = 6;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v34 = *(v3 + v18[11]);
    v37 = 7;
    sub_1000AEB74();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v34 = *(v3 + v18[12]);
    v37 = 8;
    sub_100007224(&qword_100837170, &qword_1006C96A8);
    sub_1000AEBC8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = (v3 + v18[13]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v34) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = (v3 + v18[14]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v34) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v18[15];
    LOBYTE(v34) = 11;
    type metadata accessor for LivenessDataV2(0);
    sub_10009F43C(&qword_1008371C8, type metadata accessor for LivenessDataV2);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v34 = *(v3 + v18[16]);
    v37 = 12;
    sub_100007224(&unk_100835EE8, &qword_1006C4A28);
    sub_1000AECA0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = (v3 + v18[17]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v34) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + v18[18]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v34) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005FF8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_100007224(&qword_100835E40, &qword_1006C49F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v95 = v82 - v5;
  v6 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v82 - v8;
  v88 = sub_100007224(&qword_100837140, &qword_1006C9698);
  v87 = *(v88 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v88);
  v12 = v82 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IdentityProofingRequestV2(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v101 = v22;
  (*(v14 + 8))(v17, v13);
  v23 = *(v18 + 36);
  v24 = type metadata accessor for TiberiusWrappedAssessment(0);
  v25 = *(*(v24 - 8) + 56);
  v102 = v23;
  v25(&v21[v23], 1, 1, v24);
  v26 = *(v18 + 60);
  v27 = type metadata accessor for LivenessDataV2(0);
  v28 = *(*(v27 - 8) + 56);
  v96 = v26;
  v99 = v21;
  v28(&v21[v26], 1, 1, v27);
  v30 = a1[3];
  v29 = a1[4];
  v94 = a1;
  v31 = a1;
  v32 = v12;
  sub_10000BA08(v31, v30);
  sub_1000AE7B4();
  v33 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    v100 = v33;
    LODWORD(v88) = 0;
    LODWORD(v87) = 0;
    v95 = 0;
    v89 = 0;
    v97 = 0;
    v98 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v37 = 0;
    v38 = 0;
    v90 = _swiftEmptyArrayStorage;
    v39 = v99;
  }

  else
  {
    v34 = v9;
    v89 = v27;
    v85 = v18;
    v35 = v87;
    v109 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v102;

    v44 = v104;
    v45 = v105;
    v46 = v106;
    v39 = v99;
    *v99 = v103;
    v39[1] = v44;
    v84 = v44;
    v39[2] = v45;
    v39[3] = v46;
    v101 = v46;
    v109 = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v32;
    v37 = v103;
    v48 = v104;
    v49 = v105;
    v50 = v106;
    v51 = v107;
    v52 = v108;
    v39[4] = v103;
    v39[5] = v48;
    v82[4] = v49;
    v39[6] = v49;
    v39[7] = v50;
    v82[2] = v50;
    v82[3] = v51;
    v39[8] = v51;
    v39[9] = v52;
    LOBYTE(v103) = 2;
    v83 = v47;
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    v82[1] = v52;
    v39[10] = v53;
    v39[11] = v54;
    LOBYTE(v103) = 3;
    v39[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39[13] = v55;
    v93 = v55;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    v109 = 4;
    sub_1000AE808();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39[14] = v103;
    LOBYTE(v103) = 5;
    sub_10009F43C(&qword_100837160, type metadata accessor for TiberiusWrappedAssessment);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v34, v39 + v36, &qword_100835E38, &qword_1006C49F0);
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v109 = 6;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = v85;
    v57 = v85[10];
    v92 = v103;
    *(v39 + v57) = v103;
    v109 = 7;
    sub_1000AE8B8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v100 = 0;
    v82[0] = v48;
    v58 = v56[11];
    v91 = v103;
    *(v39 + v58) = v103;
    sub_100007224(&qword_100837170, &qword_1006C96A8);
    v109 = 8;
    sub_1000AE90C();
    v59 = v88;
    v60 = v100;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v100 = v60;
    if (v60)
    {
      (*(v35 + 8))(v83, v59);
      v95 = 0;
      v89 = 0;
      v97 = 0;
      v98 = 0;
      v90 = _swiftEmptyArrayStorage;
      LODWORD(v88) = 1;
      LODWORD(v87) = 1;
      v38 = v82[0];
    }

    else
    {
      v61 = v56[12];
      v90 = v103;
      *(v39 + v61) = v103;
      LOBYTE(v103) = 9;
      v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v98 = v63;
      v100 = 0;
      v64 = (v99 + v85[13]);
      *v64 = v62;
      v64[1] = v63;
      LOBYTE(v103) = 10;
      v65 = v100;
      v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v97 = v67;
      v100 = v65;
      if (v65)
      {
        (*(v35 + 8))(v83, v88);
        v95 = 0;
        v89 = 0;
        v97 = 0;
      }

      else
      {
        v68 = (v99 + v85[14]);
        v69 = v97;
        *v68 = v66;
        v68[1] = v69;
        LOBYTE(v103) = 11;
        sub_10009F43C(&qword_100837188, type metadata accessor for LivenessDataV2);
        v70 = v100;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v100 = v70;
        if (!v70)
        {
          sub_1000B2764(v95, v99 + v96, &qword_100835E40, &qword_1006C49F8);
          sub_100007224(&unk_100835EE8, &qword_1006C4A28);
          v109 = 12;
          sub_1000AE9E4();
          v71 = v100;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v100 = v71;
          if (!v71)
          {
            v72 = v85[16];
            v89 = v103;
            *(v99 + v72) = v103;
            LOBYTE(v103) = 13;
            v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v95 = v74;
            v100 = 0;
            v75 = (v99 + v85[17]);
            *v75 = v73;
            v75[1] = v74;
            LOBYTE(v103) = 14;
            v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v100 = 0;
            v77 = v76;
            v79 = v78;
            v80 = v99;
            v81 = (v99 + v85[18]);
            (*(v35 + 8))(v83, v88);
            *v81 = v77;
            v81[1] = v79;
            sub_10009ED78(v80, v86, type metadata accessor for IdentityProofingRequestV2);
            sub_10000BB78(v94);
            return sub_10009EDE0(v80, type metadata accessor for IdentityProofingRequestV2);
          }
        }

        (*(v35 + 8))(v83, v88);
        v95 = 0;
        v89 = 0;
      }

      LODWORD(v88) = 1;
      LODWORD(v87) = 1;
      v39 = v99;
      v38 = v82[0];
    }
  }

  sub_10000BB78(v94);

  sub_1000AB97C(v37, v38);
  if (v88)
  {
    v40 = v39[11];
  }

  v41 = v102;
  if (v87)
  {
    v42 = v39[14];
  }

  sub_10000BE18(v39 + v41, &qword_100835E38, &qword_1006C49F0);

  sub_10000BE18(v39 + v96, &qword_100835E40, &qword_1006C49F8);
}

uint64_t sub_100060DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008DB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100060E04(uint64_t a1)
{
  v2 = sub_1000AE7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100060E40(uint64_t a1)
{
  v2 = sub_1000AE7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100060EAC(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837830, &qword_1006C9958);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1EB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v42 = v2[3];
  v43 = v11;
  v12 = v2[4];
  v44 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v40 = v2[1];
  v41 = v14;
  v15 = *v2;
  v36 = v42;
  v37 = v12;
  v38 = v2[5];
  v39 = v15;
  v33 = v13;
  v34 = v40;
  v35 = v10;
  v32 = 0;
  sub_1000B1478(&v39, &v26);
  sub_1000B14B0();
  v16 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v26 = v33;
    v27 = v34;
    sub_1000ACC70(&v26);
  }

  else
  {
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v26 = v33;
    v27 = v34;
    sub_1000ACC70(&v26);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    v25 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v2 + 14);
    v20 = *(v2 + 120);
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v2 + 16);
    v22 = *(v2 + 17);
    v25 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_100061118()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x45656D69746E7572;
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

uint64_t sub_1000611B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008E004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000611DC(uint64_t a1)
{
  v2 = sub_1000B1EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061218(uint64_t a1)
{
  v2 = sub_1000B1EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100061254@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008E180(a1, v8);
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

uint64_t sub_1000612C8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F20, &qword_1006C95B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 4);
  LOBYTE(v17) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + 5);
  v15 = *(v3 + 6);
  LOBYTE(v17) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100061480()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x64496863746162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4874736575716572;
  }
}

uint64_t sub_1000614E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008E4D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100061510(uint64_t a1)
{
  v2 = sub_1000AC808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006154C(uint64_t a1)
{
  v2 = sub_1000AC808();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100061588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008E5F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000615F0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F30, &qword_1006C95B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC85C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v20 = *v3;
  v21 = v11;
  v19 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 4);
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 5);
    v14 = *(v3 + 6);
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 7);
    v16 = *(v3 + 8);
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = *(v3 + 9);
    v19 = 4;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    sub_1000AC8B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100061848()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006193C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100061A1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100061B0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008E914(*a1);
  *a2 = result;
  return result;
}

void sub_100061B3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007265646165;
  v4 = 0x4874736575716572;
  v5 = 0xE800000000000000;
  v6 = 0x644968637461426BLL;
  v7 = 0xE700000000000000;
  v8 = 0x64496B7361546BLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001006F8F90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F69737265566BLL;
    v3 = 0xE800000000000000;
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

uint64_t sub_100061BEC()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x644968637461426BLL;
  v4 = 0x64496B7361546BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F69737265566BLL;
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

unint64_t sub_100061C98@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008E914(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100061CC0(uint64_t a1)
{
  v2 = sub_1000AC85C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061CFC(uint64_t a1)
{
  v2 = sub_1000AC85C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100061D38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008E960(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100061D9C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008376C0, &qword_1006C9898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACF74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 1);
  v13 = v3[16];
  v19[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v19[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 5);
  v18 = *(v3 + 6);
  v19[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100061F60()
{
  v1 = 0x7964616572;
  v2 = 0x6F43737574617473;
  if (*v0 != 2)
  {
    v2 = 0x654D737574617473;
  }

  if (*v0)
  {
    v1 = 0x746E497972746572;
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

uint64_t sub_100061FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008EDF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006201C(uint64_t a1)
{
  v2 = sub_1000ACF74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062058(uint64_t a1)
{
  v2 = sub_1000ACF74();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100062094@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EF68(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000620FC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008376C8, &qword_1006C98A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACE04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v26 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v25 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v24 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[6];
    v22[15] = 3;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    sub_1000AC8B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[7];
    v18 = v3[8];
    v22[14] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[9];
    v20 = *(v3 + 80);
    v22[13] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006236C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100062474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F1A4(*a1);
  *a2 = result;
  return result;
}

void sub_1000624A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F69737265566BLL;
  v5 = 0xE900000000000073;
  v6 = 0x646E616D6D6F436BLL;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 4)
  {
    v8 = 0x6461655278614D6BLL;
    v7 = 0xEC000000657A6953;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x644968637461426BLL;
  if (v2 != 1)
  {
    v10 = 0x64496B7361546BLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100062574()
{
  v1 = *v0;
  v2 = 0x6E6F69737265566BLL;
  v3 = 0x646E616D6D6F436BLL;
  v4 = 0x6F43737574617473;
  if (v1 != 4)
  {
    v4 = 0x6461655278614D6BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x644968637461426BLL;
  if (v1 != 1)
  {
    v5 = 0x64496B7361546BLL;
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

unint64_t sub_100062640@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F1A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062668(uint64_t a1)
{
  v2 = sub_1000ACE04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000626A4(uint64_t a1)
{
  v2 = sub_1000ACE04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000626E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008F1F0(a1, v7);
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

Swift::Int sub_100062760()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000627B4()
{
  v1 = *v0;
  String.hash(into:)();
}

Swift::Int sub_1000627EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10006283C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082140(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062930()
{
  sub_100007224(&qword_100835958, &qword_1006C1B88);
  v1 = *(type metadata accessor for URLQueryItem() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006C0990;
  v5 = *v0;
  v6 = v0[1];
  URLQueryItem.init(name:value:)();
  v7 = v0[2];
  v8 = v0[3];
  URLQueryItem.init(name:value:)();
  v9 = v0[4];
  v10 = v0[5];
  URLQueryItem.init(name:value:)();
  v11 = v0[6];
  v12 = v0[7];
  URLQueryItem.init(name:value:)();
  v13 = v0[8];
  v14 = v0[9];
  URLQueryItem.init(name:value:)();
  v15 = *(v0 + 80) + 48;
  URLQueryItem.init(name:value:)();

  return v4;
}

uint64_t sub_100062AD4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008373E8, &qword_1006C9770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFEB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v22[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v22[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    v22[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22[10] = *(v3 + 80);
    v22[9] = 5;
    sub_1000AFFC0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100062D14(uint64_t a1)
{
  v2 = v1;
  v3 = __chkstk_darwin(a1);
  v4 = sub_100007224(&qword_1008376D0, &qword_1006C98A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7 - 8];
  v9 = v3[4];
  sub_10000BA08(v3, v3[3]);
  sub_1000ACDB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v2, sizeof(v13));
  sub_1000B1558(v2, v12);
  sub_1000B0600();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v12, v13, 0x2181uLL);
  sub_1000B1590(v12);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100062EC0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837580, &qword_1006C97F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0CB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ActionRequest(0);
    v14 = *(v13 + 20);
    v19[14] = 1;
    type metadata accessor for PendingActionContext(0);
    sub_10009F43C(&qword_100837588, type metadata accessor for PendingActionContext);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000630AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - v6;
  v8 = sub_100007224(&qword_100837568, &qword_1006C97F0);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ActionRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0CB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v17 = v29;
  v33 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v18;
  v26[1] = v18;
  v27 = v15;
  type metadata accessor for PendingActionContext(0);
  v32 = 1;
  sub_10009F43C(&qword_100837578, type metadata accessor for PendingActionContext);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B1FC8(v7, v27 + *(v12 + 20), &unk_100840960, &qword_1006DBCB0);
  v31 = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  (*(v17 + 8))(v11, v30);
  v23 = v27;
  v22 = v28;
  v24 = (v27 + *(v12 + 24));
  *v24 = v19;
  v24[1] = v21;
  sub_10009ED78(v23, v22, type metadata accessor for ActionRequest);
  sub_10000BB78(a1);
  return sub_10009EDE0(v23, type metadata accessor for ActionRequest);
}

uint64_t sub_10006344C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0x6E6F69676572;
  v4 = 0x65676175676E616CLL;
  if (v1 != 4)
  {
    v4 = 0x74656B637562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6973726556736FLL;
  if (v1 != 1)
  {
    v5 = 0x6F69737265566462;
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

uint64_t sub_100063510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008F644(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063538(uint64_t a1)
{
  v2 = sub_1000AFEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063574(uint64_t a1)
{
  v2 = sub_1000AFEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000635B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008F848(a1, v7);
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

uint64_t sub_100063640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006F8C00 == a2)
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

uint64_t sub_1000636D4(uint64_t a1)
{
  v2 = sub_1000ACDB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063710(uint64_t a1)
{
  v2 = sub_1000ACDB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10006374C(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  result = sub_10008FCE8(v2);
  if (!v1)
  {
    return memcpy(v4, __src, 0x2181uLL);
  }

  return result;
}

uint64_t sub_1000637B4(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  memcpy(__dst, v1, sizeof(__dst));
  return sub_100062D14(v2);
}

uint64_t sub_100063824()
{
  v1 = 0x747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_100063880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008FEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000638A8(uint64_t a1)
{
  v2 = sub_1000B0CB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000638E4(uint64_t a1)
{
  v2 = sub_1000B0CB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100063950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE0059525445525FLL;
  v4 = 0xD000000000000010;
  v5 = 0x80000001006F8AB0;
  if (v2 == 1)
  {
    v4 = 0x45444F4348545541;
  }

  else
  {
    v3 = 0x80000001006F8AB0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x45444F4348545541;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 == 1)
  {
    v8 = 0x45444F4348545541;
    v5 = 0xEE0059525445525FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x45444F4348545541;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100063A44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100063AE8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100063B78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100063C18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008FFD8(*a1);
  *a2 = result;
  return result;
}

void sub_100063C48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE0059525445525FLL;
  v5 = 0x45444F4348545541;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001006F8AB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x45444F4348545541;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100063D68()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0x45444F4348545541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x45444F4348545541;
  }
}

uint64_t sub_100063DC4(uint64_t a1)
{
  v2 = sub_1000B0BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E00(uint64_t a1)
{
  v2 = sub_1000B0BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100063E3C(char a1)
{
  result = 0x5372656E74726170;
  switch(a1)
  {
    case 1:
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6C616548666C6573;
      break;
    case 4:
      result = 0x676E69666F6F7270;
      break;
    case 5:
    case 23:
      result = 0xD000000000000010;
      break;
    case 6:
    case 16:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x4D79616C70736964;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
    case 12:
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 15:
      result = 0x776F6C666B726F77;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x5570657453646964;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0x7373656E6576696CLL;
      break;
    case 26:
    case 29:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x6179727465527369;
      break;
    case 28:
      result = 0x6E656B6F54696970;
      break;
    case 30:
      result = 0x6374614D65636166;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_100064214(uint64_t a1)
{
  v3 = v1;
  v4 = __chkstk_darwin(a1);
  v5 = sub_100007224(&qword_100837468, &qword_1006C9790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v77 - v8;
  v10 = v4[4];
  sub_10000BA08(v4, v4[3]);
  sub_1000B0014();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v85[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v85[0] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v85[0] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v85[0] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    v85[0] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 80);
    v85[0] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[11];
    v24 = v3[12];
    v85[0] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v116 = v3[13];
    v115 = 7;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *(v3 + 10);
    v26 = *(v3 + 8);
    v111 = *(v3 + 9);
    v112 = v25;
    v27 = *(v3 + 10);
    v28 = *(v3 + 12);
    v113 = *(v3 + 11);
    v114 = v28;
    v29 = *(v3 + 8);
    v110[0] = *(v3 + 7);
    v110[1] = v29;
    v106 = v111;
    v107 = v27;
    v30 = *(v3 + 12);
    v108 = v113;
    v109 = v30;
    v104 = v110[0];
    v105 = v26;
    v103 = 8;
    sub_10000BBC4(v110, v85, &qword_100837410, &qword_1006C9788);
    sub_1000B045C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v102[2] = v106;
    v102[3] = v107;
    v102[4] = v108;
    v102[5] = v109;
    v102[0] = v104;
    v102[1] = v105;
    sub_10000BE18(v102, &qword_100837410, &qword_1006C9788);
    v31 = *(v3 + 14);
    *v85 = *(v3 + 13);
    *&v85[16] = v31;
    v84[0] = 9;
    sub_1000B04B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = v3[30];
    v33 = v3[31];
    v85[0] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = v3[32];
    v35 = v3[33];
    v85[0] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = *(v3 + 18);
    *v85 = *(v3 + 17);
    *&v85[16] = v36;
    v84[0] = 12;
    sub_1000B0504();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = v3[38];
    v38 = v3[39];
    v85[0] = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = type metadata accessor for PendingActionContext(0);
    v117 = v78[18];
    v85[0] = 14;
    type metadata accessor for WorkflowRecommendationResponse();
    sub_10009F43C(&qword_100837488, type metadata accessor for WorkflowRecommendationResponse);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v85[0] = *(v3 + v78[19]);
    v84[0] = 15;
    sub_1000B0558();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v85 = *(v3 + v78[20]);
    v84[0] = 16;
    sub_1000B05AC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = (v3 + v78[21]);
    v40 = *v39;
    v41 = *(v39 + 8);
    v85[0] = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = (v3 + v78[22]);
    v43 = *v42;
    v44 = *(v42 + 8);
    v85[0] = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = *(v3 + v78[23]);
    v85[0] = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = (v3 + v78[24]);
    v47 = *v46;
    v48 = *(v46 + 8);
    v85[0] = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = (v3 + v78[25]);
    v50 = *v49;
    v51 = *(v49 + 8);
    v101 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = (v3 + v78[26]);
    v53 = v52[1];
    v100[0] = *v52;
    v100[1] = v53;
    v54 = v52[3];
    v56 = *v52;
    v55 = v52[1];
    v100[2] = v52[2];
    v100[3] = v54;
    v96 = v56;
    v97 = v55;
    v57 = v52[3];
    v98 = v52[2];
    v99 = v57;
    v95 = 22;
    sub_10000BBC4(v100, v85, &qword_100837408, &qword_1006C9780);
    v117 = sub_1000AFCF8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v93[0] = v96;
    v93[1] = v97;
    v93[2] = v98;
    v93[3] = v99;
    sub_10000BE18(v93, &qword_100837408, &qword_1006C9780);
    v58 = (v3 + v78[27]);
    v59 = v58[1];
    v94[0] = *v58;
    v94[1] = v59;
    v60 = v58[3];
    v62 = *v58;
    v61 = v58[1];
    v94[2] = v58[2];
    v94[3] = v60;
    v89 = v62;
    v90 = v61;
    v63 = v58[3];
    v91 = v58[2];
    v92 = v63;
    v88 = 23;
    sub_10000BBC4(v94, v85, &qword_100837408, &qword_1006C9780);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v87[0] = v89;
    v87[1] = v90;
    v87[2] = v91;
    v87[3] = v92;
    sub_10000BE18(v87, &qword_100837408, &qword_1006C9780);
    v64 = (v3 + v78[28]);
    v65 = *v64;
    v66 = v64[1];
    v85[0] = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v117 = v78[29];
    v86 = 25;
    sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v67 = v78[30];
    memcpy(v85, v3 + v67, sizeof(v85));
    memcpy(v84, v3 + v67, sizeof(v84));
    v83[8583] = 26;
    sub_10000BBC4(v85, v83, &qword_100839990, &unk_1006C19E0);
    sub_1000B0600();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v83, v84, 0x2181uLL);
    sub_10000BE18(v83, &qword_100839990, &unk_1006C19E0);
    v68 = *(v3 + v78[31]);
    LOBYTE(v79) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v69 = (v3 + v78[32]);
    v70 = v69[1];
    v79 = *v69;
    v80 = v70;
    v82 = 28;
    sub_1000B0654();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v79 = *(v3 + v78[33]);
    v82 = 29;
    sub_100007224(&qword_100835A50, &qword_1006C1ED0);
    sub_1000B06A8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v71 = (v3 + v78[34]);
    v72 = *(v71 + 4);
    v73 = v71[1];
    v79 = *v71;
    v80 = v73;
    v81 = v72;
    v82 = 30;
    sub_1000B0780();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v74 = (v3 + v78[35]);
    v75 = *(v74 + 4);
    v76 = v74[1];
    v79 = *v74;
    v80 = v76;
    v81 = v75;
    v82 = 31;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100064EE0(uint64_t a1)
{
  v95 = v1;
  v2 = __chkstk_darwin(a1);
  v68 = v3;
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v66 - v6;
  v7 = sub_100007224(&qword_100835968, &qword_1006DBC90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_100007224(&qword_1008373F8, &qword_1006C9778);
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v15 = type metadata accessor for PendingActionContext(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[4];
  sub_10000BA08(v2, v2[3]);
  sub_1000B0014();
  v71 = v14;
  v20 = v95;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_10000BB78(v2);
  }

  v66 = v10;
  v95 = v2;
  LOBYTE(v94[0]) = 0;
  *v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 1) = v21;
  LOBYTE(v94[0]) = 1;
  *(v18 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 3) = v22;
  LOBYTE(v94[0]) = 2;
  *(v18 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 5) = v23;
  LOBYTE(v94[0]) = 3;
  *(v18 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 7) = v24;
  LOBYTE(v94[0]) = 4;
  *(v18 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 9) = v25;
  LOBYTE(v94[0]) = 5;
  v18[80] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v94[0]) = 6;
  *(v18 + 11) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 12) = v26;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v88) = 7;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v18 + 13) = *&v94[0];
  v87 = 8;
  sub_1000B0138();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v91;
  *(v18 + 9) = v90;
  *(v18 + 10) = v27;
  v28 = v93;
  *(v18 + 11) = v92;
  *(v18 + 12) = v28;
  v29 = v89;
  *(v18 + 7) = v88;
  *(v18 + 8) = v29;
  LOBYTE(v83) = 9;
  sub_1000B018C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v94[1];
  *(v18 + 13) = v94[0];
  *(v18 + 14) = v30;
  LOBYTE(v94[0]) = 10;
  *(v18 + 30) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 31) = v31;
  LOBYTE(v94[0]) = 11;
  *(v18 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 33) = v32;
  LOBYTE(v83) = 12;
  sub_1000B01E0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v94[1];
  *(v18 + 17) = v94[0];
  *(v18 + 18) = v33;
  LOBYTE(v94[0]) = 13;
  *(v18 + 38) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v18 + 39) = v34;
  type metadata accessor for WorkflowRecommendationResponse();
  LOBYTE(v94[0]) = 14;
  sub_10009F43C(&qword_100837430, type metadata accessor for WorkflowRecommendationResponse);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B1FC8(v66, &v18[v15[18]], &qword_100835968, &qword_1006DBC90);
  LOBYTE(v83) = 15;
  sub_1000B0234();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18[v15[19]] = v94[0];
  LOBYTE(v83) = 16;
  sub_1000B0288();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v15[20]] = *&v94[0];
  LOBYTE(v94[0]) = 17;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = &v18[v15[21]];
  *v36 = v35;
  v36[8] = v37 & 1;
  LOBYTE(v94[0]) = 18;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = &v18[v15[22]];
  *v39 = v38;
  v39[8] = v40 & 1;
  LOBYTE(v94[0]) = 19;
  v18[v15[23]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v94[0]) = 20;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = &v18[v15[24]];
  *v42 = v41;
  v42[8] = v43 & 1;
  LOBYTE(v94[0]) = 21;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = &v18[v15[25]];
  *v45 = v44;
  v45[8] = v46 & 1;
  v82 = 22;
  sub_1000AFBD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = &v18[v15[26]];
  v48 = v84;
  v49 = v85;
  *v47 = v83;
  *(v47 + 1) = v48;
  v50 = v86;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  v77 = 23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = &v18[v15[27]];
  v52 = v79;
  *v51 = v78;
  *(v51 + 1) = v52;
  v53 = v81;
  *(v51 + 2) = v80;
  *(v51 + 3) = v53;
  LOBYTE(v94[0]) = 24;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v55 = &v18[v15[28]];
  *v55 = v54;
  v55[1] = v56;
  sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  LOBYTE(v94[0]) = 25;
  sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B1FC8(v67, &v18[v15[29]], &qword_100835970, &unk_1006C1EA0);
  v76 = 26;
  sub_10007FDA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v18[v15[30]], v94, 0x2181uLL);
  LOBYTE(v72) = 27;
  v18[v15[31]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 28;
  sub_1000B02DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v57 = &v18[v15[32]];
  v58 = v73;
  *v57 = v72;
  *(v57 + 1) = v58;
  sub_100007224(&qword_100835A50, &qword_1006C1ED0);
  v75 = 29;
  sub_1000B0330();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v15[33]] = v72;
  v75 = 30;
  sub_1000B0408();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = v74;
  v60 = &v18[v15[34]];
  v61 = v73;
  *v60 = v72;
  *(v60 + 1) = v61;
  *(v60 + 4) = v59;
  v75 = 31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v69 + 8))(v71, v70);
  v62 = v74;
  v63 = &v18[v15[35]];
  v64 = v73;
  *v63 = v72;
  *(v63 + 1) = v64;
  *(v63 + 4) = v62;
  sub_10009ED78(v18, v68, type metadata accessor for PendingActionContext);
  sub_10000BB78(v95);
  return sub_10009EDE0(v18, type metadata accessor for PendingActionContext);
}

uint64_t sub_100065F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837548, &qword_1006C97D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0C08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000660DC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008373C0, &qword_1006C9760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFD4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16 = 0;
  sub_1000AFE5C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[3];
  v17 = v3[2];
  v18 = v12;
  v16 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v14 = v3[5];
  v17 = v3[4];
  v18 = v14;
  v16 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000662C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100838388, &qword_1006CFCD8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA450();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100066454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837560, &qword_1006C97E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0C5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000665E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100090024(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10006661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009085C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066650(uint64_t a1)
{
  v2 = sub_1000B0014();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006668C(uint64_t a1)
{
  v2 = sub_1000B0014();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000666F8()
{
  v1 = 0x6973726556636166;
  v2 = 0x566C6F6F74646170;
  if (*v0 != 2)
  {
    v2 = 0x6973726556647270;
  }

  if (*v0)
  {
    v1 = 0x65736F5065636166;
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

uint64_t sub_10006678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100091240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000667B4(uint64_t a1)
{
  v2 = sub_1000B0B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000667F0(uint64_t a1)
{
  v2 = sub_1000B0B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006689C()
{
  if (*v0)
  {
    result = 0x657079546469;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1000668D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000)
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

uint64_t sub_1000669A4(uint64_t a1)
{
  v2 = sub_1000B0C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000669E0(uint64_t a1)
{
  v2 = sub_1000B0C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066A80()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x726F4D6E7261656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_100066AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000916B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066B10(uint64_t a1)
{
  v2 = sub_1000AFD4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066B4C(uint64_t a1)
{
  v2 = sub_1000AFD4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100066B88@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000917DC(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100066BEC()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x69546E6F74747562;
  }

  *v0;
  return result;
}

uint64_t sub_100066C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_100066D08(uint64_t a1)
{
  v2 = sub_1000BA450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066D44(uint64_t a1)
{
  v2 = sub_1000BA450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066DC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_100091C24(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_100066E24()
{
  if (*v0)
  {
    result = 0x656D614E707061;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_100066E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
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

uint64_t sub_100066F34(uint64_t a1)
{
  v2 = sub_1000B0C5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066F70(uint64_t a1)
{
  v2 = sub_1000B0C5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067010(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837128, &qword_1006C9690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AE548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v20 = *v3;
  v21 = v11;
  v23 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[3];
    v20 = v3[2];
    v21 = v12;
    v22 = v3[4];
    v23 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 10);
    v14 = *(v3 + 11);
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 12);
    v16 = *(v3 + 13);
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v20 = *(v3 + 14);
    v23 = 4;
    sub_100007224(&qword_100837110, &qword_1006C9688);
    sub_1000AE6DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 15);
    v18 = *(v3 + 16);
    LOBYTE(v20) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100067278(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837398, &qword_1006C9750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 3);
    v31 = *(v3 + 2);
    v32 = v14;
    v15 = *(v3 + 3);
    v33 = *(v3 + 4);
    v26 = v13;
    v27 = v31;
    v16 = *(v3 + 1);
    v28 = v15;
    v29 = *(v3 + 4);
    v30 = v16;
    v25 = 1;
    sub_1000AFCC0(&v30, v24);
    sub_1000AFCF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    sub_1000AFC28(v24);
    v17 = v3[10];
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[11];
    v23 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[12];
    v20 = v3[13];
    v23 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100067504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008383A8, &qword_1006CFCE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA4F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100067698(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008374E8, &qword_1006C97A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B07D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 3);
    v15 = *(v3 + 1);
    v16 = v12;
    v14[15] = 1;
    sub_1000B087C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100067818()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x776F6C666B726F77;
  v4 = 0x736E6F69746361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6F436E6F69676572;
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

uint64_t sub_1000678F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100091E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100067918(uint64_t a1)
{
  v2 = sub_1000AE548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067954(uint64_t a1)
{
  v2 = sub_1000AE548();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100067990@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100092028(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
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

unint64_t sub_100067A14()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0x7373656E6576696CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100067AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100092620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100067AF4(uint64_t a1)
{
  v2 = sub_1000AFB80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067B30(uint64_t a1)
{
  v2 = sub_1000AFB80();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100067B6C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000927D8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_100067BD8()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_100067C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001006FE670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE690 == a2)
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

uint64_t sub_100067CF8(uint64_t a1)
{
  v2 = sub_1000BA4F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067D34(uint64_t a1)
{
  v2 = sub_1000BA4F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067D70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100838398, &qword_1006CFCE0, sub_1000BA4F8);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100067DEC()
{
  if (*v0)
  {
    result = 0x7265566C65646F6DLL;
  }

  else
  {
    result = 0x656D737365737361;
  }

  *v0;
  return result;
}

uint64_t sub_100067E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xED0000736E6F6973)
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

uint64_t sub_100067F24(uint64_t a1)
{
  v2 = sub_1000B07D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067F60(uint64_t a1)
{
  v2 = sub_1000B07D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100067F9C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100092B14(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100067FFC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008370F8, &qword_1006C9678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AE48C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v22 = *v3;
  v23 = v11;
  v25 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[3];
    v22 = v3[2];
    v23 = v12;
    v24 = v3[4];
    v25 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 10);
    v14 = *(v3 + 11);
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 12);
    v16 = *(v3 + 13);
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 16);
    v20 = *(v3 + 17);
    LOBYTE(v22) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100068238(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_100007224(&qword_1008383F8, &qword_1006CFD18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA5F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1000BA69C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000683E0()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x776F6C666B726F77;
  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6F436E6F69676572;
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

uint64_t sub_1000684B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100092CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000684E0(uint64_t a1)
{
  v2 = sub_1000AE48C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006851C(uint64_t a1)
{
  v2 = sub_1000AE48C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100068558@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100092F00(a1, v8);
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

uint64_t sub_1000685CC()
{
  if (*v0)
  {
    result = 0x656D614E707061;
  }

  else
  {
    result = 0x657079546469;
  }

  *v0;
  return result;
}

uint64_t sub_100068604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546469 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
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

uint64_t sub_1000686DC(uint64_t a1)
{
  v2 = sub_1000BA5F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068718(uint64_t a1)
{
  v2 = sub_1000BA5F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100068754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000934DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000687A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x44495F4554415453;
  if (v2 != 1)
  {
    v3 = 0x54524F5053534150;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x5F474E4956495244;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF45534E4543494CLL;
  }

  v6 = 0x44495F4554415453;
  if (*a2 != 1)
  {
    v6 = 0x54524F5053534150;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x5F474E4956495244;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xEF45534E4543494CLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000688B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100068960()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000689FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100068AA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000936A0(*a1);
  *a2 = result;
  return result;
}

void sub_100068AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF45534E4543494CLL;
  v4 = 0x44495F4554415453;
  if (v2 != 1)
  {
    v4 = 0x54524F5053534150;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x5F474E4956495244;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100068BF4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837800, &qword_1006C9948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1BEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v37 = *(v3 + 32);
  v38 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v39 = *(v3 + 64);
  v40 = v14;
  v15 = *(v3 + 16);
  v36[0] = *v3;
  v36[1] = v15;
  v32 = v37;
  v33 = v13;
  v16 = *(v3 + 80);
  v34 = v39;
  v35 = v16;
  v30 = v36[0];
  v31 = v12;
  v42 = 0;
  sub_1000B1478(v36, &v24);
  sub_1000B14B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    sub_1000ACC70(&v24);
  }

  else
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    sub_1000ACC70(&v24);
    v17 = *(v3 + 96);
    v18 = *(v3 + 104);
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 112);
    v20 = *(v3 + 120);
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v22 = *(v3 + 128);
    v41 = 3;
    sub_100007224(&qword_1008377E0, &qword_1006C9940);
    sub_1000B1DB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + 136);
    v23 = *(v3 + 152);
    v41 = 4;
    sub_1000B1E64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100068EC0()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD00000000000001ALL;
  v4 = 0x736E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x45656D69746E7572;
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

uint64_t sub_100068F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000936EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100068F9C(uint64_t a1)
{
  v2 = sub_1000B1BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068FD8(uint64_t a1)
{
  v2 = sub_1000B1BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100069014@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000938B0(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_100069088(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F68, &qword_1006C95D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC9B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v24 = *v3;
  v25 = v11;
  v27 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[3];
    v24 = v3[2];
    v25 = v12;
    v26 = v3[4];
    v27 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 10);
    v14 = *(v3 + 11);
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 12);
    v16 = *(v3 + 13);
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    LOBYTE(v24) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 16);
    v20 = *(v3 + 17);
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 18);
    v22 = *(v3 + 19);
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000692EC()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x7373656E6576696CLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6F436E6F69676572;
  if (v1 != 3)
  {
    v4 = 0x6F69676552627573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x72656469766F7270;
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

uint64_t sub_100069404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100093CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006942C(uint64_t a1)
{
  v2 = sub_1000AC9B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069468(uint64_t a1)
{
  v2 = sub_1000AC9B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000694A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100093F1C(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_100069518(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837698, &qword_1006C9880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACFC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v39 = v2[3];
  v40 = v11;
  v12 = v2[4];
  v41 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v37 = v2[1];
  v38 = v14;
  v15 = *v2;
  v33 = v39;
  v34 = v12;
  v35 = v2[5];
  v36 = v15;
  v30 = v13;
  v31 = v37;
  v32 = v10;
  v29 = 0;
  sub_1000B1478(&v36, &v23);
  sub_1000B14B0();
  v16 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_1000ACC70(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_1000ACC70(&v23);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    v22 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(type metadata accessor for IdentityProofingLivenessConfigResponseV2(0) + 24);
    v22 = 2;
    sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000697B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v28 = sub_100007224(&qword_100837030, &qword_1006C9618);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_10000BA08(a1, v15);
  sub_1000ACFC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v29);
  }

  v17 = v27;
  v24 = v7;
  v37 = 0;
  sub_1000ACC1C();
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v34;
  *(v14 + 2) = v33;
  *(v14 + 3) = v19;
  v20 = v36;
  *(v14 + 4) = v35;
  *(v14 + 5) = v20;
  v21 = v32;
  *v14 = v31;
  *(v14 + 1) = v21;
  v30 = 1;
  *(v14 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v14 + 13) = v22;
  v30 = 2;
  sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v10, v18);
  (*(v25 + 32))(&v14[*(v11 + 24)], v24, v4);
  sub_10009ED78(v14, v26, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  sub_10000BB78(v29);
  return sub_10009EDE0(v14, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
}

uint64_t sub_100069BDC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837640, &qword_1006C9840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B126C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 3);
    v18 = *(v3 + 2);
    v19 = v16;
    v20 = *(v3 + 4);
    v17[15] = 2;
    sub_1000B137C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100069DC4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008383C0, &qword_1006CFCF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA54C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  HIBYTE(v16) = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  LOBYTE(v17) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v13 = v3[3];
  v14 = *(v3 + 32);
  LOBYTE(v17) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[5];
  HIBYTE(v16) = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100069FC8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837840, &qword_1006C9968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1F74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22[0]) = 0;
  type metadata accessor for HardwareAttestationType();
  sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SharingRegistrationInfo(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v22[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v22[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = v18[1];
    v22[0] = *v18;
    v22[1] = v19;
    v23 = 3;
    sub_1000ABCB4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v11[8];
    LOBYTE(v22[0]) = 4;
    sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
    sub_1000BA30C(&qword_100836DF0, &qword_10084A0E0, &qword_1006E9E70);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006A284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for HardwareAttestationType();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100007224(&qword_100837850, &qword_1006C9970);
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v37);
  v12 = &v31 - v11;
  v13 = type metadata accessor for SharingRegistrationInfo(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1F74();
  v36 = v12;
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000BB78(a1);
  }

  v38 = v6;
  v19 = v33;
  LOBYTE(v39) = 0;
  sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType);
  v20 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v16, v20, v7);
  LOBYTE(v39) = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = &v16[v13[5]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v39) = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = &v16[v13[6]];
  *v25 = v24;
  v25[1] = v26;
  v41 = 3;
  sub_1000ABAD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = 0;
  v27 = &v16[v13[7]];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
  LOBYTE(v39) = 4;
  sub_1000BA30C(&qword_100836DB0, &qword_10084A0E0, &qword_1006E9E70);
  v29 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v35 + 8))(v36, v37);
  sub_1000B1FC8(v29, &v16[v13[8]], &qword_100835F50, &qword_1006C4E18);
  sub_10009ED78(v16, v32, type metadata accessor for SharingRegistrationInfo);
  sub_10000BB78(a1);
  return sub_10009EDE0(v16, type metadata accessor for SharingRegistrationInfo);
}

uint64_t sub_10006A814()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x7373656E6576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006A890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100094584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006A8B8(uint64_t a1)
{
  v2 = sub_1000ACFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A8F4(uint64_t a1)
{
  v2 = sub_1000ACFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A960()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_10006A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000946B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006A9DC(uint64_t a1)
{
  v2 = sub_1000B126C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006AA18(uint64_t a1)
{
  v2 = sub_1000B126C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10006AA54@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000947C0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_10006AAB8()
{
  v1 = 0x644964726F636572;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_10006AB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100094B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006AB68(uint64_t a1)
{
  v2 = sub_1000BA54C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006ABA4(uint64_t a1)
{
  v2 = sub_1000BA54C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006ABE0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100094C74(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10006AC3C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6144434150736469;
  if (v1 != 3)
  {
    v4 = 0x6144656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_10006ACE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100094F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006AD08(uint64_t a1)
{
  v2 = sub_1000B1F74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006AD44(uint64_t a1)
{
  v2 = sub_1000B1F74();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006ADB0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4874736575716572;
    v7 = 0xD000000000000017;
    v8 = 0xD00000000000001ELL;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
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
    v1 = 0x6144434150736469;
    v2 = 0x6144656369766564;
    if (a1 != 9)
    {
      v2 = 0x6563697665447369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6465696669726576;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x6144434150736469;
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

uint64_t sub_10006AF54(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836DB8, &qword_1006C9558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AB928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v29 = *v3;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  v32 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[3];
  v29 = v3[2];
  v30 = v13;
  v31 = v3[4];
  v32 = 1;
  sub_1000ABBAC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v14 = type metadata accessor for SharingRegistrationRequest(0);
  v15 = v14[6];
  LOBYTE(v29) = 2;
  type metadata accessor for HardwareAttestationType();
  sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = (v3 + v14[7]);
  v17 = *v16;
  v18 = v16[1];
  LOBYTE(v29) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = (v3 + v14[8]);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v29) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v29 = *(v3 + v14[9]);
  v32 = 5;
  sub_100007224(&qword_1008361D8, &qword_1006C5150);
  sub_1000ABC00();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *&v29 = *(v3 + v14[10]);
  v32 = 6;
  sub_100007224(&qword_1008361E8, &qword_1006C5158);
  sub_1000AB518();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = (v3 + v14[11]);
  v23 = v22[1];
  v29 = *v22;
  v30 = v23;
  v32 = 7;
  sub_1000ABCB4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v29 = *(v3 + v14[12]);
  v32 = 8;
  sub_100007224(&unk_100836508, &qword_1006C5248);
  sub_1000ABD08();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v28 = v6;
  v24 = v14[13];
  LOBYTE(v29) = 9;
  sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
  sub_1000BA30C(&qword_100836DF0, &qword_10084A0E0, &qword_1006E9E70);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v25 = *(v3 + v14[14]);
  LOBYTE(v29) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v28 + 8))(v9, v5);
}

uint64_t sub_10006B3FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v68 - v5;
  v74 = type metadata accessor for HardwareAttestationType();
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v74);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100836D78, &qword_1006C9550);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  __chkstk_darwin(v10);
  v13 = v68 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SharingRegistrationRequest(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  UUID.init()();
  UUID.uuidString.getter();
  v90 = v23;
  (*(v15 + 8))(v18, v14);
  v89 = v19;
  v24 = *(v19 + 52);
  v25 = sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
  v26 = *(*(v25 - 8) + 56);
  v86 = v24;
  v87 = v22;
  v26(v22 + v24, 1, 1, v25);
  v28 = a1[3];
  v27 = a1[4];
  v85 = a1;
  sub_10000BA08(a1, v28);
  sub_1000AB928();
  v29 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v88 = v29;
    LODWORD(v75) = 0;
    LODWORD(v76) = 0;
    LODWORD(v77) = 0;
    v78 = 0;
    v79 = 0;
    v81 = 0;
    v82 = 0;
    v80 = 0;
    v83 = 0;
    v84 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v87;
  }

  else
  {
    v30 = v9;
    v72 = v6;
    v97 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v38 = v92;
    v39 = v93;
    v40 = v94;
    v33 = v87;
    *v87 = v91;
    *(v33 + 1) = v38;
    v70 = v38;
    *(v33 + 2) = v39;
    *(v33 + 3) = v40;
    v90 = v40;
    v97 = 1;
    sub_1000AB9CC();
    v71 = v13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v92;
    v43 = v93;
    v42 = v94;
    v44 = v95;
    v45 = v96;
    v69 = v91;
    *(v33 + 4) = v91;
    *(v33 + 5) = v41;
    *(v33 + 6) = v43;
    *(v33 + 7) = v42;
    v68[4] = v42;
    v68[3] = v44;
    *(v33 + 8) = v44;
    *(v33 + 9) = v45;
    v68[2] = v45;
    LOBYTE(v91) = 2;
    sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType);
    v46 = v74;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v68[1] = v43;
    v47 = v69;
    v48 = v89;
    (*(v73 + 32))(&v33[v89[6]], v30, v46);
    LOBYTE(v91) = 3;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = &v33[v48[7]];
    *v50 = v49;
    v50[1] = v51;
    v84 = v51;
    LOBYTE(v91) = 4;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = &v33[v48[8]];
    *v53 = v52;
    v53[1] = v54;
    v83 = v54;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    v97 = 5;
    sub_1000ABA20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v33[v48[9]] = v91;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v97 = 6;
    sub_1000AB2B0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v33[v48[10]] = v91;
    v97 = 7;
    sub_1000ABAD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v88 = 0;
    v55 = v76;
    v68[0] = v41;
    v56 = &v33[v48[11]];
    v57 = v92;
    v58 = v93;
    v59 = v94;
    v81 = v92;
    v82 = v91;
    *v56 = v91;
    v56[1] = v57;
    v79 = v59;
    v80 = v58;
    v56[2] = v58;
    v56[3] = v59;
    sub_100007224(&unk_100836508, &qword_1006C5248);
    v97 = 8;
    sub_1000ABB28();
    v60 = v88;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v88 = v60;
    if (v60)
    {
      (*(v55 + 8))(v71, v77);
      v78 = 0;
      LODWORD(v75) = 1;
      LODWORD(v76) = 1;
      LODWORD(v77) = 1;
      v31 = v47;
      v32 = v68[0];
    }

    else
    {
      v61 = v89[12];
      v78 = v91;
      *&v33[v61] = v91;
      LOBYTE(v91) = 9;
      sub_1000BA30C(&qword_100836DB0, &qword_10084A0E0, &qword_1006E9E70);
      v62 = v88;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v88 = v62;
      if (!v62)
      {
        sub_1000B2764(v72, v87 + v86, &qword_100835F50, &qword_1006C4E18);
        LOBYTE(v91) = 10;
        v63 = v88;
        v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v88 = v63;
        if (!v63)
        {
          v65 = v64;
          v66 = v89[14];
          (*(v76 + 8))(v71, v77);
          v67 = v87;
          *(v87 + v66) = v65;
          sub_10009ED78(v67, v75, type metadata accessor for SharingRegistrationRequest);
          sub_10000BB78(v85);
          return sub_10009EDE0(v67, type metadata accessor for SharingRegistrationRequest);
        }
      }

      (*(v76 + 8))(v71, v77);
      LODWORD(v75) = 1;
      LODWORD(v76) = 1;
      LODWORD(v77) = 1;
      v33 = v87;
      v31 = v47;
      v32 = v68[0];
    }
  }

  sub_10000BB78(v85);

  sub_1000AB97C(v31, v32);
  v34 = v89;
  if (v75)
  {
    (*(v73 + 8))(&v33[v89[6]], v74);
  }

  if (v76)
  {
    v35 = *&v33[v34[9]];
  }

  if (v77)
  {
    v36 = *&v33[v34[10]];
  }

  sub_1000B00AC(v82, v81);

  return sub_10000BE18(&v33[v86], &qword_100835F50, &qword_1006C4E18);
}

uint64_t sub_10006C06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100095108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C094(uint64_t a1)
{
  v2 = sub_1000AB928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C0D0(uint64_t a1)
{
  v2 = sub_1000AB928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C13C(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008379E8, &qword_1006C9A40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2710();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v39 = v2[3];
  v40 = v11;
  v12 = v2[4];
  v41 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v37 = v2[1];
  v38 = v14;
  v15 = *v2;
  v33 = v39;
  v34 = v12;
  v35 = v2[5];
  v36 = v15;
  v30 = v13;
  v31 = v37;
  v32 = v10;
  v29 = 0;
  sub_1000B1478(&v36, &v23);
  sub_1000B14B0();
  v16 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_1000ACC70(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_1000ACC70(&v23);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    v22 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(type metadata accessor for SharingRegistrationResponse(0) + 24);
    v22 = 2;
    type metadata accessor for SharingCredentials(0);
    sub_10009F43C(&qword_1008379F0, type metadata accessor for SharingCredentials);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10006C3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100007224(&unk_100849FF0, &unk_1006C5310);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v27 - v6;
  v30 = sub_100007224(&qword_1008379D0, &qword_1006C9A38);
  v29 = *(v30 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v30);
  v10 = v27 - v9;
  v11 = type metadata accessor for SharingRegistrationResponse(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 32);
  v17 = type metadata accessor for SharingCredentials(0);
  v18 = *(*(v17 - 8) + 56);
  v31 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2710();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
    return sub_10000BE18(&v15[v31], &unk_100849FF0, &unk_1006C5310);
  }

  else
  {
    v20 = v29;
    v39 = 0;
    sub_1000ACC1C();
    v21 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v36;
    *(v15 + 2) = v35;
    *(v15 + 3) = v22;
    v23 = v38;
    *(v15 + 4) = v37;
    *(v15 + 5) = v23;
    v24 = v34;
    *v15 = v33;
    *(v15 + 1) = v24;
    v32 = 1;
    *(v15 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v15 + 13) = v25;
    v27[1] = v25;
    v32 = 2;
    sub_10009F43C(&qword_1008379E0, type metadata accessor for SharingCredentials);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v10, v21);
    sub_1000B2764(v7, &v15[v31], &unk_100849FF0, &unk_1006C5310);
    sub_10009ED78(v15, v28, type metadata accessor for SharingRegistrationResponse);
    sub_10000BB78(a1);
    return sub_10009EDE0(v15, type metadata accessor for SharingRegistrationResponse);
  }
}

uint64_t sub_10006C810()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006C884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000954AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006C8AC(uint64_t a1)
{
  v2 = sub_1000B2710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C8E8(uint64_t a1)
{
  v2 = sub_1000B2710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C954(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F78, &qword_1006C95D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACA0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v20 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 4);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 5);
    v14 = *(v3 + 6);
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 72);
    v17 = *(v3 + 56);
    v18 = v15;
    v19 = *(v3 + 88);
    v20 = 3;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10006CB78()
{
  v1 = 0x4874736575716572;
  v2 = 0x72656469766F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F4365636E6F6ELL;
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

uint64_t sub_10006CC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000955D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006CC34(uint64_t a1)
{
  v2 = sub_1000ACA0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006CC70(uint64_t a1)
{
  v2 = sub_1000ACA0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10006CCAC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009575C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10006CD24(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008378B8, &qword_1006C99B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD01C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v38 = v2[3];
  v39 = v11;
  v12 = v2[4];
  v40 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v36 = v2[1];
  v37 = v14;
  v15 = *v2;
  v32 = v38;
  v33 = v12;
  v34 = v2[5];
  v35 = v15;
  v29 = v13;
  v30 = v36;
  v31 = v10;
  v28 = 0;
  sub_1000B1478(&v35, &v22);
  sub_1000B14B0();
  v16 = v41;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v22 = v29;
    v23 = v30;
    sub_1000ACC70(&v22);
  }

  else
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v22 = v29;
    v23 = v30;
    sub_1000ACC70(&v22);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v2 + 14);
    v20[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10006CF90()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x7365636E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100095B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006D024(uint64_t a1)
{
  v2 = sub_1000AD01C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D060(uint64_t a1)
{
  v2 = sub_1000AD01C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006D09C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100095C8C(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_10006D11C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836CF8, &qword_1006C9528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AB154();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v21 = *v3;
  v22 = v11;
  v23 = v12;
  v24 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v20 = type metadata accessor for IdentitySharingRequest(0);
    v13 = *(v20 + 20);
    LOBYTE(v21) = 1;
    sub_100007224(&unk_100836448, &unk_1006C5210);
    sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v20;
    *&v21 = *(v3 + *(v20 + 24));
    v24 = 2;
    sub_100007224(&qword_100836CB8, &qword_1006C9518);
    sub_1000AB464();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v21 = *(v3 + v14[7]);
    v24 = 3;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    sub_1000AB518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v21 = *(v3 + v14[8]);
    v24 = 4;
    sub_100007224(&unk_100836720, &qword_1006C5448);
    sub_1000AB5C8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + v14[9]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006D444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_100007224(&unk_100836448, &unk_1006C5210);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = v39 - v6;
  v41 = sub_100007224(&qword_100836C98, &qword_1006C9510);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v11 = v39 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for IdentitySharingRequest(0);
  v17 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v45 = v20;
  (*(v13 + 8))(v16, v12);
  v21 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AB154();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v22 = v8;
    v23 = v40;
    v50 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v24 = v47;
    v25 = v48;
    v26 = v49;
    *v19 = v46;
    *(v19 + 1) = v24;
    v39[1] = v24;
    *(v19 + 2) = v25;
    *(v19 + 3) = v26;
    v45 = v26;
    LOBYTE(v46) = 1;
    sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210);
    v27 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v19;
    v29 = v44;
    v30 = *(v44 + 20);
    v31 = *(v42 + 32);
    v39[0] = v28;
    v31(&v28[v30], v7, v27);
    sub_100007224(&qword_100836CB8, &qword_1006C9518);
    v50 = 2;
    sub_1000AB1FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v39[0] + v29[6]) = v46;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v50 = 3;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v39[0] + v29[7]) = v46;
    sub_100007224(&unk_100836720, &qword_1006C5448);
    v50 = 4;
    sub_1000AB360();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v39[0] + v29[8]) = v46;
    LOBYTE(v46) = 5;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v39[0];
    v34 = (v39[0] + v29[9]);
    v35 = v11;
    v37 = v36;
    (*(v22 + 8))(v35, v41);
    *v34 = v32;
    v34[1] = v37;
    sub_10009ED78(v33, v23, type metadata accessor for IdentitySharingRequest);
    sub_10000BB78(a1);
    return sub_10009EDE0(v33, type metadata accessor for IdentitySharingRequest);
  }
}

uint64_t sub_10006DADC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835730, &qword_1006C1AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009ED24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v26 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v15 = *(v3 + 32);
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = type metadata accessor for AssessmentAdditionalInfo(0);
    v16 = *(v22 + 28);
    v24 = 3;
    sub_100007224(&unk_100835208, &unk_1006C0D10);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + *(v22 + 32));
    v18 = *v17;
    v19 = *(v17 + 8);
    v23 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006DD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31[-v6];
  v36 = sub_100007224(&qword_100835718, &qword_1006C1AA0);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v11 = &v31[-v10];
  v12 = type metadata accessor for AssessmentAdditionalInfo(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1[3];
  v16 = a1[4];
  v37 = a1;
  sub_10000BA08(a1, v17);
  sub_10009ED24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v37);
  }

  v18 = v8;
  v42 = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 1) = v20;
  v33 = v20;
  v41 = 1;
  v15[16] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = 2;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = 0;
  *(v15 + 3) = v21;
  v15[32] = v22 & 1;
  sub_100007224(&unk_100835208, &unk_1006C0D10);
  v39 = 3;
  v23 = v36;
  sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10);
  v24 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v24;
  if (v24)
  {
    (*(v18 + 8))(v11, v23);
    v25 = 0;
  }

  else
  {
    sub_1000B1FC8(v7, &v15[*(v12 + 28)], &qword_100835180, &unk_1006C0CE0);
    v38 = 4;
    v26 = v34;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v28;
    v34 = v26;
    if (!v26)
    {
      v29 = v27;
      (*(v18 + 8))(v11, v36);
      v30 = &v15[*(v12 + 32)];
      *v30 = v29;
      v30[8] = v32 & 1;
      sub_10009ED78(v15, v35, type metadata accessor for AssessmentAdditionalInfo);
      sub_10000BB78(v37);
      return sub_10009EDE0(v15, type metadata accessor for AssessmentAdditionalInfo);
    }

    (*(v18 + 8))(v11, v36);
    v25 = 1;
  }

  sub_10000BB78(v37);

  if (v25)
  {
    return sub_10000BE18(&v15[*(v12 + 28)], &qword_100835180, &unk_1006C0CE0);
  }

  return result;
}

unint64_t sub_10006E1C8()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x61746144766469;
  if (v1 != 4)
  {
    v3 = 0x746163696C707061;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000019;
  if (v1 != 1)
  {
    v4 = 0x6465696669726576;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_10006E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100095FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006E2D4(uint64_t a1)
{
  v2 = sub_1000AB154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006E310(uint64_t a1)
{
  v2 = sub_1000AB154();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006E37C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0x5F64616F6C796170;
  v4 = 0xD000000000000033;
  if (v1 == 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10006E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000961D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006E464(uint64_t a1)
{
  v2 = sub_10009ED24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006E4A0(uint64_t a1)
{
  v2 = sub_10009ED24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E50C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837980, &qword_1006C9A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v42 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v41[0] = *(v3 + 1);
    v41[1] = v13;
    v14 = *(v3 + 4);
    v16 = *(v3 + 1);
    v15 = *(v3 + 2);
    v41[2] = *(v3 + 3);
    v41[3] = v14;
    v37 = v16;
    v38 = v15;
    v17 = *(v3 + 4);
    v39 = *(v3 + 3);
    v40 = v17;
    v36 = 1;
    sub_10000BBC4(v41, v35, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_10000BE18(v35, &qword_100835770, &qword_1006C1AD0);
    v18 = *(v3 + 6);
    v33[0] = *(v3 + 5);
    v33[1] = v18;
    v20 = *(v3 + 5);
    v19 = *(v3 + 6);
    v34[0] = *(v3 + 7);
    *(v34 + 9) = *(v3 + 121);
    v30 = v20;
    v31 = v19;
    v32[0] = *(v3 + 7);
    *(v32 + 9) = *(v3 + 121);
    v29 = 2;
    sub_10000BBC4(v33, v27, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[0] = v30;
    v27[1] = v31;
    *v28 = v32[0];
    *&v28[9] = *(v32 + 9);
    sub_10000BE18(v27, &qword_100835768, &qword_1006DB770);
    v21 = v3[18];
    v22 = v3[19];
    v26 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(type metadata accessor for TiberiusWrappedAssessment(0) + 32);
    v26 = 4;
    type metadata accessor for AssessmentAdditionalInfo(0);
    sub_10009F43C(&qword_100837988, type metadata accessor for AssessmentAdditionalInfo);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006E8AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v35 - v5;
  v40 = sub_100007224(&qword_100837968, &qword_1006C9A00);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v40);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TiberiusWrappedAssessment(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 1) = 0u;
  v14 = v13 + 16;
  *(v13 + 5) = 0u;
  v15 = v13 + 80;
  *(v13 + 6) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  *(v13 + 15) = 0;
  *(v13 + 16) = 0;
  *(v13 + 14) = 1;
  v13[136] = 0;
  *(v13 + 18) = 0;
  *(v13 + 19) = 0;
  v16 = *(v11 + 40);
  v17 = type metadata accessor for AssessmentAdditionalInfo(0);
  v18 = *(*(v17 - 8) + 56);
  v35 = v16;
  v18(&v13[v16], 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v62 = a1;
  sub_10000BA08(a1, v20);
  sub_1000B2504();
  v39 = v8;
  v21 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v23 = v38;
    v22 = v39;
    LOBYTE(v58) = 0;
    *v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v13 + 1) = v24;
    v57 = 1;
    sub_10009EF3C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v26 = *(v13 + 2);
    v56[0] = *v14;
    v56[1] = v26;
    v27 = *(v13 + 4);
    v56[2] = *(v13 + 3);
    v56[3] = v27;
    sub_10000BE18(v56, &qword_100835770, &qword_1006C1AD0);
    v28 = v53;
    *v14 = v52;
    *(v13 + 2) = v28;
    v29 = v55;
    *(v13 + 3) = v54;
    *(v13 + 4) = v29;
    v48 = 2;
    sub_10009EF90();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v49;
    v44 = v50;
    v45[0] = v51[0];
    *(v45 + 9) = *(v51 + 9);
    v30 = *(v13 + 6);
    v46[0] = *v15;
    v46[1] = v30;
    *v47 = *(v13 + 7);
    *&v47[9] = *(v13 + 121);
    sub_10000BE18(v46, &qword_100835768, &qword_1006DB770);
    v31 = v44;
    *v15 = v43;
    *(v13 + 6) = v31;
    *(v13 + 7) = v45[0];
    *(v13 + 121) = *(v45 + 9);
    v42 = 3;
    v32 = v40;
    *(v13 + 18) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v13 + 19) = v33;
    v42 = 4;
    sub_10009F43C(&qword_100837978, type metadata accessor for AssessmentAdditionalInfo);
    v34 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v22, v32);
    sub_1000B2764(v34, &v13[v35], &qword_100836328, &unk_1006C51B0);
    sub_10009ED78(v13, v36, type metadata accessor for TiberiusWrappedAssessment);
  }

  sub_10000BB78(v62);
  return sub_10009EDE0(v13, type metadata accessor for TiberiusWrappedAssessment);
}

uint64_t sub_10006ED64()
{
  v1 = *v0;
  v2 = 0x656D737365737361;
  v3 = 0x666E49726F727265;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F697469646461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7364656573;
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

uint64_t sub_10006EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009639C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006EE44(uint64_t a1)
{
  v2 = sub_1000B2504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006EE80(uint64_t a1)
{
  v2 = sub_1000B2504();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006EEEC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for EncodingError();
  v48 = *(v52 - 8);
  v7 = *(v48 + 64);
  v8 = __chkstk_darwin(v52);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v46 = &v44 - v13;
  v14 = type metadata accessor for TiberiusWrappedAssessment(0);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007224(&qword_100836EE0, &qword_1006C9598);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v58 = 0;
  sub_100007224(&unk_100836448, &unk_1006C5210);
  sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210);
  v24 = v54;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    (*(v19 + 8))(v22, v18);
    v29 = v49;
    v55 = v24;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v30 = v52;
    if (swift_dynamicCast())
    {

      v32 = v47;
      v31 = v48;
      (*(v48 + 32))(v47, v29, v30);
      swift_allocError();
      (*(v31 + 16))(v33, v32, v30);
      (*(v50 + 104))(v53, enum case for DIPError.Code.jsonEncodingFailed(_:), v51);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v31 + 8))(v32, v30);
    }

    else
    {

      (*(v50 + 104))(v53, enum case for DIPError.Code.tiberiusWrappedAssessmentEncodingFailed(_:), v51);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v54 = v17;
    v25 = type metadata accessor for TiberiusIdentitySharingRequest(0);
    v26 = (v2 + *(v25 + 24));
    v27 = *v26;
    v28 = v26[1];
    v57 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = v18;
    v35 = v46;
    sub_10000BBC4(v2 + *(v25 + 20), v46, &qword_100835E38, &qword_1006C49F0);
    if ((*(v45 + 48))(v35, 1, v14) == 1)
    {
      (*(v19 + 8))(v22, v44);
      return sub_10000BE18(v35, &qword_100835E38, &qword_1006C49F0);
    }

    else
    {
      v36 = v54;
      sub_1000AC6A8(v35, v54);
      v37 = type metadata accessor for JSONEncoder();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      sub_10009F43C(&qword_100836EF0, type metadata accessor for TiberiusWrappedAssessment);
      v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v42 = v41;

      Data.base64EncodedString(options:)(0);
      sub_10000B90C(v40, v42);
      v56 = 1;
      v43 = v44;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_10009EDE0(v36, type metadata accessor for TiberiusWrappedAssessment);
      return (*(v19 + 8))(v22, v43);
    }
  }
}

uint64_t sub_10006F7E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v32 - v5;
  v6 = sub_100007224(&qword_10084A120, &unk_1006C51E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v38 = &v32 - v8;
  v40 = sub_100007224(&qword_100837990, &qword_1006C9A10);
  v36 = *(v40 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v40);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TiberiusIdentitySharingRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&unk_100836448, &unk_1006C5210);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v35 = v12;
  v17 = *(v12 + 20);
  v18 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v18 - 8) + 56))(&v15[v17], 1, 1, v18);
  v19 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC654();
  v39 = v11;
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = a1;
  if (v20)
  {
    sub_10000BB78(a1);
    sub_10000BE18(v15, &qword_10084A120, &unk_1006C51E0);
    return sub_10000BE18(&v15[v17], &qword_100835E38, &qword_1006C49F0);
  }

  else
  {
    v22 = v35;
    v23 = v36;
    v33 = v21;
    v41 = v17;
    v24 = v37;
    v44 = 0;
    sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210);
    v26 = v38;
    v25 = v39;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v26, v15, &qword_10084A120, &unk_1006C51E0);
    v43 = 1;
    sub_10009F43C(&qword_100837160, type metadata accessor for TiberiusWrappedAssessment);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v24, &v15[v41], &qword_100835E38, &qword_1006C49F0);
    v42 = 2;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    (*(v23 + 8))(v25, v40);
    v30 = &v15[*(v22 + 24)];
    *v30 = v27;
    v30[1] = v29;
    sub_10009ED78(v15, v34, type metadata accessor for TiberiusIdentitySharingRequest);
    sub_10000BB78(v33);
    return sub_10009EDE0(v15, type metadata accessor for TiberiusIdentitySharingRequest);
  }
}