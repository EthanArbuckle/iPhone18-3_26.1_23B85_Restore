unint64_t sub_10006FCA4()
{
  v1 = 0x656D737365737361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_10006FD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009656C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006FD38(uint64_t a1)
{
  v2 = sub_1000AC654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006FD74(uint64_t a1)
{
  v2 = sub_1000AC654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FDE0(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837A20, &qword_1006C9A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v44 = v2[3];
  v45 = v11;
  v12 = v2[4];
  v46 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v42 = v2[1];
  v43 = v14;
  v15 = *v2;
  v38 = v44;
  v39 = v12;
  v40 = v2[5];
  v41 = v15;
  v35 = v13;
  v36 = v42;
  v37 = v10;
  v34 = 0;
  sub_1000B1478(&v41, &v28);
  sub_1000B14B0();
  v16 = v47;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v28 = v35;
    v29 = v36;
    sub_1000ACC70(&v28);
  }

  else
  {
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v28 = v35;
    v29 = v36;
    sub_1000ACC70(&v28);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    v27 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v2 + 14);
    v20 = *(v2 + 15);
    v27 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v2 + 16);
    v22 = *(v2 + 17);
    v27 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v2 + 18);
    v24 = *(v2 + 19);
    v27 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100070070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837078, &qword_1006C9638);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD250();
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

uint64_t sub_100070204()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x6954707570657473;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x746163696C707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6F6ELL;
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

uint64_t sub_1000702BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009669C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000702E4(uint64_t a1)
{
  v2 = sub_1000B2820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070320(uint64_t a1)
{
  v2 = sub_1000B2820();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007035C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100096868(a1, v10);
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

uint64_t sub_1000703D0()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_100070400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1000704D8(uint64_t a1)
{
  v2 = sub_1000AD250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070514(uint64_t a1)
{
  v2 = sub_1000AD250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100070550@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100837678, &qword_1006C9868, sub_1000AD250);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000705CC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008356C8, &qword_1006C1A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009E958();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = *v3;
  v15 = 0;
  sub_100007224(&qword_1008356A8, &qword_1006C1A70);
  sub_10009EAE0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = *(v3 + 8);
    v15 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 32);
    v15 = 3;
    sub_10009EBC0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000707F0()
{
  v1 = 0x52746C7561666544;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100070888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000708B0(uint64_t a1)
{
  v2 = sub_10009E958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000708EC(uint64_t a1)
{
  v2 = sub_10009E958();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100070928@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100096DBC(a1, v6);
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

uint64_t sub_100070984(char a1)
{
  result = 0x5255726576726573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 26:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x3256726576726573;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 17:
      result = 0xD000000000000013;
      break;
    case 10:
    case 18:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x656D737365737361;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 19:
    case 28:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 1114530915;
      goto LABEL_17;
    case 21:
      v3 = 1114403435;
LABEL_17:
      result = v3 | 0x5565736100000000;
      break;
    case 22:
      result = 0xD000000000000034;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    case 24:
      result = 0x2D656C6261736964;
      break;
    case 25:
      result = 0x6C2D786966657270;
      break;
    case 27:
      result = 0x55657361426D7374;
      break;
    case 29:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_100070D3C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836B88, &qword_1006C94A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA5D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v67 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v67 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v67 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v67 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v67 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v67 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    v67 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[10];
    v22 = v3[11];
    v67 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[12];
    v24 = v3[13];
    v67 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[14];
    v26 = v3[15];
    v67 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v3[16];
    v28 = *(v3 + 136);
    v67 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v3[18];
    v30 = *(v3 + 152);
    v67 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = v3[20];
    v32 = v3[21];
    v67 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = v3[22];
    v34 = *(v3 + 184);
    v67 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = v3[24];
    v36 = *(v3 + 200);
    v67 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v3[26];
    v38 = *(v3 + 216);
    v67 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = v3[28];
    v40 = *(v3 + 232);
    v67 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v3[30];
    v42 = *(v3 + 248);
    v67 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = v3[32];
    v44 = v3[33];
    v67 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = v3[34];
    v46 = v3[35];
    v67 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = v3[36];
    v48 = v3[37];
    v67 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = v3[38];
    v50 = v3[39];
    v67 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = v3[40];
    v52 = *(v3 + 328);
    v67 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v53 = v3[42];
    v54 = *(v3 + 344);
    v67 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v55 = *(v3 + 345);
    v67 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = v3[44];
    v57 = *(v3 + 360);
    v67 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = v3[46];
    v59 = *(v3 + 376);
    v67 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = v3[48];
    v61 = v3[49];
    v67 = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = v3[50];
    v63 = v3[51];
    v67 = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = *(v3 + 416);
    v67 = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100071308(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_100836B90, &qword_1006C94B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA68C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1000AA7C0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_100007224(&qword_100836B78, &qword_1006C94A0);
    sub_1000AA814();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100071514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000970CC();
  *a2 = result;
  return result;
}

uint64_t sub_100071544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100070984(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100071578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000970CC();
  *a1 = result;
  return result;
}

uint64_t sub_1000715AC(uint64_t a1)
{
  v2 = sub_1000AA5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000715E8(uint64_t a1)
{
  v2 = sub_1000AA5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100071624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100097120(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1A1uLL);
  }

  return result;
}

uint64_t sub_100071688(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F436E6F69676552;
  }

  else
  {
    v4 = 0x43746C7561666544;
  }

  if (v3)
  {
    v5 = 0xEE00736769666E6FLL;
  }

  else
  {
    v5 = 0xED0000736769666ELL;
  }

  if (*a2)
  {
    v6 = 0x6F436E6F69676552;
  }

  else
  {
    v6 = 0x43746C7561666544;
  }

  if (*a2)
  {
    v7 = 0xED0000736769666ELL;
  }

  else
  {
    v7 = 0xEE00736769666E6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100071748()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000717E4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007186C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100071910(uint64_t *a1@<X8>)
{
  v2 = 0x43746C7561666544;
  if (*v1)
  {
    v2 = 0x6F436E6F69676552;
  }

  v3 = 0xEE00736769666E6FLL;
  if (*v1)
  {
    v3 = 0xED0000736769666ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100071968()
{
  if (*v0)
  {
    result = 0x6F436E6F69676552;
  }

  else
  {
    result = 0x43746C7561666544;
  }

  *v0;
  return result;
}

uint64_t sub_1000719C8@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100071A28(uint64_t a1)
{
  v2 = sub_1000AA68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A64(uint64_t a1)
{
  v2 = sub_1000AA68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100098168(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100071AF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100071B64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100071C00@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007F9728, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100071C58(uint64_t a1)
{
  v2 = sub_1000BA114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071C94(uint64_t a1)
{
  v2 = sub_1000BA114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008382B8, &qword_1006CFC60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA114();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000BB78(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_100071E30(void *a1)
{
  v3 = sub_100007224(&qword_1008382C8, &qword_1006CFC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100071F68()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100071F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_100071FA8(uint64_t a1)
{
  v2 = sub_1000B2250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071FE4(uint64_t a1)
{
  v2 = sub_1000B2250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = sub_100007224(&qword_100837908, &qword_1006C99E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2328();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = a2;
  v20 = 0;
  sub_100007224(&qword_100837918, &qword_1006C99E8);
  sub_1000B237C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v15 = v19;
    v21 = v18;
    v20 = 1;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    sub_1000ACB5C(&qword_10084A240);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = a4;
    v20 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v15;
    v20 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10007227C()
{
  v1 = 0x656372756F736572;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10007230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100072334(uint64_t a1)
{
  v2 = sub_1000B2328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072370(uint64_t a1)
{
  v2 = sub_1000B2328();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000723AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100098354(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100072414()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10007250C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098CCC(*a1);
  *a2 = result;
  return result;
}

void sub_10007253C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xE300000000000000;
  v6 = 7369839;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001006F93E0;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6172656D6163;
  if (v2 != 3)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x72656B636970;
  if (v2 != 1)
  {
    v10 = 1702125924;
    v9 = 0xE400000000000000;
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

uint64_t sub_1000726AC(char a1)
{
  result = 0x707954646C656966;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x4679616C70736964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x697373696D627573;
      break;
    case 6:
      v3 = 1282304365;
      goto LABEL_16;
    case 7:
      v3 = 1282957677;
LABEL_16:
      result = v3 | 0x74676E6500000000;
      break;
    case 8:
      result = 0x6554657275636573;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x636972656D756ELL;
      break;
    case 11:
      result = 0x79614473776F6873;
      break;
    case 12:
      result = 0x6E6F4D73776F6873;
      break;
    case 13:
      result = 0x61655973776F6873;
      break;
    case 14:
      result = 0x736D657469;
      break;
    case 15:
      result = 0x7461766972507369;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x656C6261636E7973;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6974726F70707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100072944(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837AC0, &qword_1006C9AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v36) = *v3;
  v37 = 0;
  sub_1000B2D6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v36) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v36) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v36) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    LOBYTE(v36) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    LOBYTE(v36) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 88);
    LOBYTE(v36) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 96);
    LOBYTE(v36) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 104);
    LOBYTE(v36) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 105);
    LOBYTE(v36) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + 106);
    LOBYTE(v36) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 107);
    LOBYTE(v36) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + 108);
    LOBYTE(v36) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + 109);
    LOBYTE(v36) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v3 + 112);
    v37 = 14;
    sub_100007224(&qword_100837AA8, &qword_1006C9A98);
    sub_1000B2DC0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = *(v3 + 120);
    LOBYTE(v36) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + 121);
    LOBYTE(v36) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + 122);
    LOBYTE(v36) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v3 + 128);
    LOBYTE(v36) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v3 + 136);
    v34 = *(v3 + 144);
    LOBYTE(v36) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100072D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100838420, &qword_1006CFD28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA744();
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

uint64_t sub_100072F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008382F8, &qword_1006CFC88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA1BC();
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

uint64_t sub_1000730C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008378D0, &qword_1006C99C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B21A8();
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

uint64_t sub_100073254(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008379C8, &qword_1006C9A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v24 = 0;
  sub_1000AB028();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v25 = *(v3 + 4);
    v24 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 5);
    v13 = *(v3 + 6);
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v25 = *(v3 + 7);
    v24 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 8);
    v15 = *(v3 + 9);
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 10);
    v17 = *(v3 + 11);
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 12);
    v19 = *(v3 + 13);
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 14);
    v21 = *(v3 + 15);
    LOBYTE(v25) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100073500(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_100007224(&qword_1008379A8, &qword_1006C9A20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2558();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2 & 1;
  v16 = 0;
  sub_1000B2600();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000736B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000996A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000736E8(uint64_t a1)
{
  v2 = sub_1000B2BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073724(uint64_t a1)
{
  v2 = sub_1000B2BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100073760@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100098D18(a1, v9);
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

unint64_t sub_1000737EC()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_100073828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FE590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_10007390C(uint64_t a1)
{
  v2 = sub_1000BA744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073948(uint64_t a1)
{
  v2 = sub_1000BA744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100838410, &qword_1006CFD20, sub_1000BA744);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100073A00()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_100073A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449)
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

uint64_t sub_100073B1C(uint64_t a1)
{
  v2 = sub_1000BA1BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073B58(uint64_t a1)
{
  v2 = sub_1000BA1BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073B94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008382E8, &qword_1006CFC80, sub_1000BA1BC);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100073C10()
{
  if (*v0)
  {
    result = 1953259891;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_100073C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000)
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

uint64_t sub_100073D2C(uint64_t a1)
{
  v2 = sub_1000B21A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073D68(uint64_t a1)
{
  v2 = sub_1000B21A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073DA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008378C0, &qword_1006C99B8, sub_1000B21A8);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100073E20()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0xD00000000000001FLL;
    if (v1 != 6)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0x6575716552647364;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x6974617269707865;
    if (v1 != 2)
    {
      v2 = 0x6976726553766469;
    }

    v3 = 0xD000000000000015;
    if (!*v0)
    {
      v3 = 0xD000000000000011;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100073F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100099CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100073F68(uint64_t a1)
{
  v2 = sub_1000B2654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073FA4(uint64_t a1)
{
  v2 = sub_1000B2654();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100073FE0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100099FA8(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_10007404C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "deviceConfidenceAssessment";
  }

  else
  {
    v2 = "identityDocument";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "deviceConfidenceAssessment";
  }

  else
  {
    v4 = "identityDocument";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000740F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100074168()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000741CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10007424C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "deviceConfidenceAssessment";
  }

  else
  {
    v2 = "identityDocument";
  }

  *a1 = 0xD00000000000001ALL;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100074334()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x7463616669747261;
  }

  *v0;
  return result;
}

uint64_t sub_100074370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463616669747261 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_100074450(uint64_t a1)
{
  v2 = sub_1000B2558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007448C(uint64_t a1)
{
  v2 = sub_1000B2558();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000744C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009A58C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10007451C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836C78, &qword_1006C9508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAE40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 3);
    v23 = *(v3 + 2);
    v24 = v16;
    v22 = 2;
    sub_1000AB028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v23 = v3[8];
    v22 = 3;
    sub_100007224(&qword_100836C60, &qword_1006C9500);
    sub_1000AB07C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[9];
    v18 = v3[10];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[11];
    v20 = v3[12];
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100074790()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7463616669747261;
  v4 = 0x64657461657263;
  if (v1 != 4)
  {
    v4 = 0x6974617269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6465696669726576;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_100074858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009A750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100074880(uint64_t a1)
{
  v2 = sub_1000AAE40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000748BC(uint64_t a1)
{
  v2 = sub_1000AAE40();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000748F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009A964(a1, v7);
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

uint64_t sub_100074970(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835688, &qword_1006C1A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009E888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = v3[2];
    v16[15] = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v16[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100074B28(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835950, &qword_1006C1B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009FCD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = v3[2];
    v16[15] = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v16[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100074CE0()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 1953259891;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100074D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009AEC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100074D60(uint64_t a1)
{
  v2 = sub_10009E888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074D9C(uint64_t a1)
{
  v2 = sub_10009E888();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100074DD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009AFDC(a1, v6);
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

uint64_t sub_100074E54()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_100074EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009B254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100074EE0(uint64_t a1)
{
  v2 = sub_10009FCD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074F1C(uint64_t a1)
{
  v2 = sub_10009FCD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100074F58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009B374(a1, v6);
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

uint64_t sub_100074FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_100836E20, &qword_1006C9570);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ABD8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  sub_1000AB81C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    sub_1000ABEB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100075178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008378E8, &qword_1006C99D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B21FC();
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

unint64_t sub_10007530C()
{
  if (*v0)
  {
    result = 0x4464656D69616C63;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_100075354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4464656D69616C63 && a2 == 0xEB00000000617461)
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

uint64_t sub_100075440(uint64_t a1)
{
  v2 = sub_1000ABD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007547C(uint64_t a1)
{
  v2 = sub_1000ABD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000754B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B5EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100075500()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_100075548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000644965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE430 == a2)
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

uint64_t sub_100075630(uint64_t a1)
{
  v2 = sub_1000B21FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007566C(uint64_t a1)
{
  v2 = sub_1000B21FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000756A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008378D8, &qword_1006C99C8, sub_1000B21FC);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100838310, &qword_1006CFC98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA210();
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

unint64_t sub_1000758B8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1000758F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE650 == a2)
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

uint64_t sub_1000759DC(uint64_t a1)
{
  v2 = sub_1000BA210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075A18(uint64_t a1)
{
  v2 = sub_1000BA210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075A54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_100838300, &qword_1006CFC90, sub_1000BA210);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100835750, &qword_1006C1AB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009EE40();
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

unint64_t sub_100075C64()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_100075CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FD500 == a2)
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

uint64_t sub_100075D88(uint64_t a1)
{
  v2 = sub_10009EE40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075DC4(uint64_t a1)
{
  v2 = sub_10009EE40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_100835740, &qword_1006C1AB0, sub_10009EE40);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100075E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008357E8, &qword_1006C1AF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F134();
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

uint64_t sub_100076010(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836D60, &qword_1006C9548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AB678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v15[0] = *v3;
  v16 = 0;
  sub_100007224(&unk_10084A070, &unk_1006E7DF0);
  sub_1000AB81C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v15[0] = *(v3 + 8);
    v15[1] = v11;
    v16 = 1;
    sub_1000AB8D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = *(v3 + 48);
    LOBYTE(v15[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000761E4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837A08, &qword_1006C9A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B27CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13[15] = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for SharingCredentials(0) + 20);
    v13[14] = 1;
    sub_100007224(&unk_100836448, &unk_1006C5210);
    sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000763D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_100007224(&unk_100836448, &unk_1006C5210);
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v22 - v5;
  v30 = sub_100007224(&qword_1008379F8, &qword_1006C9A48);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v30);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SharingCredentials(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B27CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v25 = a1;
  v15 = v13;
  v17 = v28;
  v16 = v29;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v32 = 0;
  sub_10007FD2C();
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v15;
  v24 = v33;
  *v15 = v33;
  v31 = 1;
  sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v9, v18);
  v19 = *(v10 + 20);
  v20 = v23;
  (*(v26 + 32))(&v23[v19], v6, v16);
  sub_10009ED78(v20, v27, type metadata accessor for SharingCredentials);
  sub_10000BB78(v25);
  return sub_10009EDE0(v20, type metadata accessor for SharingCredentials);
}

uint64_t sub_100076748(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000033;
    if (a1 != 8)
    {
      v5 = 0x5F64616F6C796170;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000026;
    }

    v6 = 0x726F727265;
    if (a1 != 5)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x617461645F617564;
    v2 = 0x7364656573;
    v3 = 0x776F6C666B726F77;
    if (a1 != 3)
    {
      v3 = 0x5F656C69666F7270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000768AC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835800, &qword_1006C1B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F188();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v54[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v55 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 3);
    v54[0] = *(v3 + 2);
    v54[1] = v15;
    v16 = *(v3 + 5);
    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    v54[2] = *(v3 + 4);
    v54[3] = v16;
    v50 = v18;
    v51 = v17;
    v19 = *(v3 + 5);
    v52 = *(v3 + 4);
    v53 = v19;
    v49 = 2;
    sub_10000BBC4(v54, v48, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_10000BE18(v48, &qword_100835770, &qword_1006C1AD0);
    v20 = v3[12];
    v21 = v3[13];
    LOBYTE(v45[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[14];
    v23 = v3[15];
    v47 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 9);
    v45[0] = *(v3 + 8);
    v45[1] = v24;
    v26 = *(v3 + 8);
    v25 = *(v3 + 9);
    *v46 = *(v3 + 10);
    *&v46[9] = *(v3 + 169);
    v42 = v26;
    v43 = v25;
    v44[0] = *(v3 + 10);
    *(v44 + 9) = *(v3 + 169);
    v41 = 5;
    sub_10000BBC4(v45, v39, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39[0] = v42;
    v39[1] = v43;
    *v40 = v44[0];
    *&v40[9] = *(v44 + 9);
    sub_10000BE18(v39, &qword_100835768, &qword_1006DB770);
    v27 = *(v3 + 185);
    v38 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = type metadata accessor for ORDRequest(0);
    v28 = *(v56 + 44);
    v38 = 7;
    sub_100007224(&unk_100835208, &unk_1006C0D10);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = v56;
    v30 = (v3 + *(v56 + 48));
    v31 = *v30;
    v32 = *(v30 + 8);
    v38 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = (v3 + *(v29 + 52));
    v34 = *v33;
    v35 = *(v33 + 8);
    v38 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100076D3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v59 - v6;
  v65 = sub_100007224(&qword_1008357F0, &qword_1006C1B00);
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v65);
  v11 = &v59 - v10;
  v12 = type metadata accessor for ORDRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v66 = a1;
  sub_10000BA08(a1, v17);
  sub_10009F188();
  v64 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v66);
  }

  v61 = v7;
  v18 = v8;
  v62 = v12;
  LOBYTE(v70) = 0;
  v20 = v64;
  v19 = v65;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 1) = v22;
  v59 = v22;
  LOBYTE(v70) = 1;
  *(v15 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 3) = v23;
  v75 = 2;
  sub_10009EF3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v71;
  *(v15 + 2) = v70;
  *(v15 + 3) = v24;
  v25 = *&v72[16];
  *(v15 + 4) = *v72;
  *(v15 + 5) = v25;
  LOBYTE(v67) = 3;
  *(v15 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 13) = v26;
  LOBYTE(v67) = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = 0;
  *(v15 + 14) = v27;
  *(v15 + 15) = v28;
  v74 = 5;
  sub_10009EF90();
  v29 = v60;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v29)
  {
    v60 = v29;
    (*(v18 + 8))(v20, v19);
    sub_10000BB78(v66);

    v32 = *(v15 + 3);

    v30 = *(v15 + 3);
    v70 = *(v15 + 2);
    v71 = v30;
    v31 = *(v15 + 5);
    *v72 = *(v15 + 4);
    *&v72[16] = v31;
    sub_10000BE18(&v70, &qword_100835770, &qword_1006C1AD0);
    v33 = *(v15 + 13);

    v34 = *(v15 + 15);
  }

  v35 = v68;
  *(v15 + 8) = v67;
  *(v15 + 9) = v35;
  *(v15 + 10) = v69[0];
  *(v15 + 169) = *(v69 + 9);
  v73 = 6;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = 0;
  v15[185] = v36;
  sub_100007224(&unk_100835208, &unk_1006C0D10);
  v73 = 7;
  sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10);
  v37 = v61;
  v38 = v60;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60 = v38;
  if (v38)
  {
    (*(v18 + 8))(v20, v19);
    sub_10000BB78(v66);
    v39 = 0;
LABEL_9:
    v40 = v15;
    v41 = v62;
    goto LABEL_10;
  }

  v41 = v62;
  v40 = v15;
  sub_1000B1FC8(v37, &v15[*(v62 + 44)], &qword_100835180, &unk_1006C0CE0);
  v73 = 8;
  v49 = v60;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = v49;
  if (!v49)
  {
    v52 = &v15[*(v41 + 48)];
    *v52 = v50;
    v52[8] = v51 & 1;
    v73 = 9;
    v53 = v60;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = v53;
    if (!v53)
    {
      v56 = v54;
      v57 = v55;
      (*(v18 + 8))(v64, v65);
      v58 = &v15[*(v62 + 52)];
      *v58 = v56;
      v58[8] = v57 & 1;
      sub_10009ED78(v15, v63, type metadata accessor for ORDRequest);
      sub_10000BB78(v66);
      return sub_10009EDE0(v15, type metadata accessor for ORDRequest);
    }

    (*(v18 + 8))(v64, v65);
    sub_10000BB78(v66);
    v39 = 1;
    goto LABEL_9;
  }

  (*(v18 + 8))(v20, v19);
  sub_10000BB78(v66);
  v39 = 1;
LABEL_10:
  v42 = *(v40 + 1);

  v43 = *(v40 + 3);

  v44 = *(v40 + 3);
  v70 = *(v40 + 2);
  v71 = v44;
  v45 = *(v40 + 5);
  *v72 = *(v40 + 4);
  *&v72[16] = v45;
  sub_10000BE18(&v70, &qword_100835770, &qword_1006C1AD0);
  v46 = *(v40 + 13);

  v47 = *(v40 + 15);

  v48 = *(v40 + 9);
  v70 = *(v40 + 8);
  v71 = v48;
  *v72 = *(v40 + 10);
  *&v72[9] = *(v40 + 169);
  result = sub_10000BE18(&v70, &qword_100835768, &qword_1006DB770);
  if (v39)
  {
    return sub_10000BE18(&v40[*(v41 + 44)], &qword_100835180, &unk_1006C0CE0);
  }

  return result;
}

uint64_t sub_1000774D8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835710, &qword_1006C1A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009EC68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = *(v3 + 16);
  v20[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v20[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[5];
  v17 = v3[6];
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = *(v3 + 56);
  v20[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000776BC()
{
  if (*v0)
  {
    result = 0x656D737365737361;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_100077704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEF646975675F746ELL)
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

uint64_t sub_1000777E8(uint64_t a1)
{
  v2 = sub_10009F134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077824(uint64_t a1)
{
  v2 = sub_10009F134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077860@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009B7FC(a1, &qword_1008357D8, &qword_1006C1AF0, sub_10009F134);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1000778DC()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_100077934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009B9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007795C(uint64_t a1)
{
  v2 = sub_1000AB678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077998(uint64_t a1)
{
  v2 = sub_1000AB678();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000779D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009BAF8(a1, v6);
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

unint64_t sub_100077A3C()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_100077A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001006FE550 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001006FDAA0 == a2)
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

uint64_t sub_100077B54(uint64_t a1)
{
  v2 = sub_1000B27CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077B90(uint64_t a1)
{
  v2 = sub_1000B27CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009BDF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077C38(uint64_t a1)
{
  v2 = sub_10009F188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077C74(uint64_t a1)
{
  v2 = sub_10009F188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077CE0()
{
  v1 = *v0;
  v2 = 0x6F7272655F766469;
  v3 = 0x776F6C666B726F77;
  v4 = 0x6574617473;
  if (v1 != 3)
  {
    v4 = 0x6D6F6365725F7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F7272655F6E646FLL;
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

uint64_t sub_100077D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009C138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077DB4(uint64_t a1)
{
  v2 = sub_10009EC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077DF0(uint64_t a1)
{
  v2 = sub_10009EC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100077E2C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10009C300(a1, v6);
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

uint64_t sub_100077E90()
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
  v15 = v0[10];
  v16 = v0[11];
  URLQueryItem.init(name:value:)();
  return v4;
}

uint64_t sub_100078044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x666F72705F617564 && a2 == 0xEB00000000656C69)
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

uint64_t sub_1000780D0(uint64_t a1)
{
  v2 = sub_1000AD2A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007810C(uint64_t a1)
{
  v2 = sub_1000AD2A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000781E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D697473 && a2 == 0xE500000000000000)
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

uint64_t sub_100078268(uint64_t a1)
{
  v2 = sub_1000AD2F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000782A4(uint64_t a1)
{
  v2 = sub_1000AD2F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100078324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = sub_100007224(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_10000BB78(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = sub_10000BB78(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_1000784F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = sub_100007224(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100078638(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836EF8, &qword_1006C95A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC70C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000787D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v17[2] = a3;
  v17[1] = a4;
  v9 = sub_100007224(a5, a6);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  a7();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  v15 = v17[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100078968(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v14) = a4;
  v6 = sub_100007224(&qword_100836F08, &qword_1006C95A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC760();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = BYTE4(v14);
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v12 & 1;
    v16 = 2;
    sub_1000AC7B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100078B8C()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6E5F7374;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632436;
  }
}

uint64_t sub_100078BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009C5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100078C0C(uint64_t a1)
{
  v2 = sub_1000AC70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078C48(uint64_t a1)
{
  v2 = sub_1000AC70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100078C84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10009C700(a1, v6);
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

uint64_t sub_100078CE0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100078D10()
{
  if (*v0)
  {
    result = 0x695F747365676964;
  }

  else
  {
    result = 0x64616F6C796170;
  }

  *v0;
  return result;
}

uint64_t sub_100078D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x695F747365676964 && a2 == 0xEC0000007865646ELL)
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

uint64_t sub_100078E34(uint64_t a1)
{
  v2 = sub_10009F0E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078E70(uint64_t a1)
{
  v2 = sub_10009F0E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100078EF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_10009C94C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

void *sub_100078F7C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_100079058()
{
  v1 = 0x617461645F617564;
  v2 = 0x7079745F6B736174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
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

uint64_t sub_1000790DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009CB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100079104(uint64_t a1)
{
  v2 = sub_1000AC760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079140(uint64_t a1)
{
  v2 = sub_1000AC760();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10007917C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_10009CCA8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6 & 1;
    *(a2 + 25) = HIBYTE(v6);
  }
}

unint64_t sub_1000791E8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F635F64697374;
    v7 = 0x776F6C666B726F77;
    v8 = 0x617461645F617564;
    if (a1 != 3)
    {
      v8 = 0x6E6F6973726576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7364656573;
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
    v1 = 0x726F727265;
    v2 = 0x6B63616264656566;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0xD000000000000030;
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

uint64_t sub_100079370(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835798, &qword_1006C1AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009EE94();
  v11 = v3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 2);
  v64 = *v3;
  v65 = v12;
  v13 = v9;
  v63 = 0;
  sub_10009EFE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 40);
    v62[0] = *(v3 + 24);
    v62[1] = v14;
    v15 = *(v3 + 72);
    v62[2] = *(v3 + 56);
    v62[3] = v15;
    v16 = *(v3 + 40);
    v58 = *(v3 + 24);
    v59 = v16;
    v17 = *(v3 + 72);
    v60 = *(v3 + 56);
    v61 = v17;
    v57 = 1;
    sub_10000BBC4(v62, v56, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v56[0] = v58;
    v56[1] = v59;
    v56[2] = v60;
    v56[3] = v61;
    sub_10000BE18(v56, &qword_100835770, &qword_1006C1AD0);
    v18 = *(v3 + 11);
    v19 = *(v3 + 12);
    LOBYTE(v53[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 13);
    v21 = *(v3 + 14);
    LOBYTE(v53[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 15);
    LOBYTE(v53[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 128);
    LOBYTE(v53[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = type metadata accessor for OTDRequest(0);
    v66 = v9;
    v25 = v5;
    v44 = v24;
    v26 = *(v24 + 40);
    LOBYTE(v53[0]) = 6;
    sub_100007224(&qword_1008352C8, &qword_1006C0D50);
    sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50);
    v45 = v11;
    v5 = v25;
    v13 = v66;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = v44;
    v27 = v45;
    v29 = (v45 + v44[11]);
    v30 = *v29;
    v31 = *(v29 + 8);
    v55 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = (v27 + v28[12]);
    v33 = v32[1];
    v53[0] = *v32;
    v53[1] = v33;
    v35 = *v32;
    v34 = v32[1];
    *v54 = v32[2];
    *&v54[9] = *(v32 + 41);
    v50 = v35;
    v51 = v34;
    v52[0] = v32[2];
    *(v52 + 9) = *(v32 + 41);
    v49 = 8;
    sub_10000BBC4(v53, v47, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v47[0] = v50;
    v47[1] = v51;
    *v48 = v52[0];
    *&v48[9] = *(v52 + 9);
    sub_10000BE18(v47, &qword_100835768, &qword_1006DB770);
    v36 = (v27 + v28[13]);
    v37 = *v36;
    v38 = *(v36 + 8);
    v46 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = (v27 + v28[14]);
    v40 = *v39;
    v41 = v39[1];
    v46 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v13, v5);
}

uint64_t sub_10007985C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v51 = sub_100007224(&qword_100835758, &unk_1006C1AC0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v43 - v10;
  v12 = type metadata accessor for OTDRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v52 = a1;
  sub_10000BA08(a1, v17);
  sub_10009EE94();
  v50 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v52);
  }

  v48 = v7;
  v18 = v8;
  v47 = v12;
  LOBYTE(v53) = 0;
  sub_10009EEE8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(&v56 + 1);
  v20 = v57;
  *v15 = v56;
  *(v15 + 1) = v19;
  *(v15 + 2) = v20;
  v62 = 1;
  sub_10009EF3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v57;
  *(v15 + 24) = v56;
  *(v15 + 40) = v21;
  v22 = v59;
  *(v15 + 56) = v58;
  *(v15 + 72) = v22;
  LOBYTE(v53) = 2;
  *(v15 + 11) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 12) = v23;
  v45 = v23;
  LOBYTE(v53) = 3;
  *(v15 + 13) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 14) = v24;
  v46 = v24;
  LOBYTE(v53) = 4;
  *(v15 + 15) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v53) = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = 0;
  v15[128] = v25;
  sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v44 = v15;
  LOBYTE(v53) = 6;
  sub_1000BA30C(&qword_100835788, &qword_1008352C8, &qword_1006C0D50);
  v26 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v47;
  v28 = v44;
  sub_1000B1FC8(v26, &v44[v47[10]], &qword_100835248, &unk_1006E7940);
  LOBYTE(v53) = 7;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = &v28[v27[11]];
  *v30 = v29;
  v30[8] = v31 & 1;
  v61 = 8;
  sub_10009EF90();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = &v28[v27[12]];
  v33 = v54;
  *v32 = v53;
  *(v32 + 1) = v33;
  *(v32 + 2) = v55[0];
  *(v32 + 41) = *(v55 + 9);
  v60 = 9;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = &v15[v47[13]];
  *v35 = v34;
  v35[8] = v36 & 1;
  v60 = 10;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v38;
  v40 = v15;
  v41 = &v15[v47[14]];
  (*(v18 + 8))(v50, v51);
  *v41 = v37;
  v41[1] = v39;
  sub_10009ED78(v40, v49, type metadata accessor for OTDRequest);
  sub_10000BB78(v52);
  return sub_10009EDE0(v40, type metadata accessor for OTDRequest);
}

uint64_t sub_100079FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008356F8, &qword_1006C1A88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009EC14();
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

uint64_t sub_10007A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009CEFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A1AC(uint64_t a1)
{
  v2 = sub_10009EE94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A1E8(uint64_t a1)
{
  v2 = sub_10009EE94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A254()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 0x64616F6C796170;
  }

  *v0;
  return result;
}

uint64_t sub_10007A294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t sub_10007A378(uint64_t a1)
{
  v2 = sub_10009EC14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A3B4(uint64_t a1)
{
  v2 = sub_10009EC14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A3F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008356E8, &qword_1006C1A80, sub_10009EC14);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10007A46C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008355B8, &qword_1006C1A10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009D708();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v20 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[4];
    v18[15] = 2;
    sub_100007224(&qword_1008355A8, &qword_1006C1A08);
    sub_10009D7D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v18[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007A680()
{
  v1 = 1701667182;
  v2 = 0x61636F6C5F737067;
  if (*v0 != 2)
  {
    v2 = 1684628851;
  }

  if (*v0)
  {
    v1 = 0x756E5F656E6F6870;
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

uint64_t sub_10007A6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009D288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A724(uint64_t a1)
{
  v2 = sub_10009D708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A760(uint64_t a1)
{
  v2 = sub_10009D708();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007A79C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009D3F4(a1, v6);
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

Swift::Int sub_10007A804()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007A870()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007A8CC@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_10007A9E8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008355E0, &qword_1006C1A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009D854();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23[15] = 0;
  sub_100007224(&qword_100835138, &qword_1006C0B58);
  sub_1000BA30C(&qword_1008355E8, &qword_100835138, &qword_1006C0B58);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AugmentedProfile(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v23[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v23[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v23[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + v11[8]);
    v23[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007AC3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v32 = sub_100007224(&qword_1008355C8, &qword_1006C1A18);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v32);
  v11 = &v31 - v10;
  v33 = type metadata accessor for AugmentedProfile(0);
  v12 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_10000BA08(a1, v16);
  sub_10009D854();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(v34);
    sub_10000BE18(v14, &qword_1008350C0, &unk_1006C0B30);
  }

  else
  {
    v39 = 0;
    sub_1000BA30C(&qword_1008355D8, &qword_100835138, &qword_1006C0B58);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v7, v14, &qword_1008350C0, &unk_1006C0B30);
    v38 = 1;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v33;
    v20 = &v14[*(v33 + 20)];
    *v20 = v18;
    v20[1] = v21;
    v37 = 2;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = &v14[v19[6]];
    *v23 = v22;
    v23[1] = v24;
    v36 = 3;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = &v14[v19[7]];
    *v26 = v25;
    v26[1] = v27;
    v35 = 4;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v19[8];
    (*(v8 + 8))(v11, v32);
    *&v14[v29] = v28;
    sub_10009ED78(v14, v31, type metadata accessor for AugmentedProfile);
    sub_10000BB78(v34);
    return sub_10009EDE0(v14, type metadata accessor for AugmentedProfile);
  }
}

unint64_t sub_10007B0F4()
{
  v1 = *v0;
  v2 = 0x656C69666F7270;
  v3 = 0x49656C69666F7270;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_10007B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009D8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007B1C8(uint64_t a1)
{
  v2 = sub_10009D854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007B204(uint64_t a1)
{
  v2 = sub_10009D854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007B270(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7373657373416F6ELL;
  v4 = 0xEC000000746E656DLL;
  if (v2 != 1)
  {
    v3 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x7373657373416F6ELL;
  v8 = 0xEC000000746E656DLL;
  if (*a2 != 1)
  {
    v7 = 0x64656C6261736964;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10007B380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007B428()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007B4BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007B560@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DA70(*a1);
  *a2 = result;
  return result;
}

void sub_10007B590(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC000000746E656DLL;
  v5 = 0x7373657373416F6ELL;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10007B670()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007B73C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007B7F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007B8BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DABC(*a1);
  *a2 = result;
  return result;
}

void sub_10007B8EC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x73656E755469;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10007B9A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(_BYTE *, uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  sub_100020260(a1, v11);
  v9 = a3(v11, a2);
  result = sub_10000BB78(a1);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_10007BA8C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10007BBA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DB08(*a1);
  *a2 = result;
  return result;
}

void sub_10007BBD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64726143654DLL;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  v6 = 0xED0000796E6F6870;
  v7 = 0x656C655465726F43;
  if (v2 != 3)
  {
    v7 = 0x797469746E656449;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF64756F6C43692ELL;
  if (v2 != 1)
  {
    v8 = 0xEF73656E7554692ELL;
  }

  if (*v1)
  {
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = 0x73746E756F636341;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10007BD5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x80000001006F94E0;
  if (v2 == 1)
  {
    v5 = 0x80000001006F94E0;
  }

  else
  {
    v3 = 0x6146737961776C61;
    v5 = 0xEE006B6361626C6CLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x6146737961776C61;
    v4 = 0xEE006B6361626C6CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_10007BE70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007BF24()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007BFC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007C074@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DB54(*a1);
  *a2 = result;
  return result;
}

void sub_10007C0A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001006F94E0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x6146737961776C61;
    v4 = 0xEE006B6361626C6CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10007C134@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  sub_100020260(a1, v10);
  v7._rawValue = a2;
  v8 = sub_100081E3C(v10, 0, v7);
  result = sub_10000BB78(a1);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_10007C1F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73656E755469;
  }

  else
  {
    v2 = 0x64756F6C4369;
  }

  if (*a2)
  {
    v3 = 0x73656E755469;
  }

  else
  {
    v3 = 0x64756F6C4369;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10007C278()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C2E8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007C33C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C3B4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10007C410(uint64_t *a1@<X8>)
{
  v2 = 0x64756F6C4369;
  if (*v1)
  {
    v2 = 0x73656E755469;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_10007C440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100020260(a1, v7);
  v5 = sub_100081F48(v7, 0);
  result = sub_10000BB78(a1);
  if (!v2)
  {
    *a2 = v5 & 1;
  }

  return result;
}

uint64_t sub_10007C4B0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x74616E6974736564;
    if (a1 != 3)
    {
      v5 = 0x5468736572666572;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000019;
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4F646E6553657375;
    v2 = 0x447972616D697270;
    if (a1 != 9)
    {
      v2 = 0x79546769666E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 6)
    {
      v3 = 0x4F646E6553657375;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_10007C694(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10007C4B0(*a1);
  v5 = v4;
  if (v3 == sub_10007C4B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10007C71C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007C4B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007C780()
{
  sub_10007C4B0(*v0);
  String.hash(into:)();
}

Swift::Int sub_10007C7D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007C4B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007C834@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DBA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007C864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007C4B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10007C8AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DBA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007C8D4(uint64_t a1)
{
  v2 = sub_10009E3BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007C910(uint64_t a1)
{
  v2 = sub_10009E3BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007C94C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_100007224(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v6;
  v15 = v6[1];
  v28 = 0;
  v16 = v24[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = v6[3];
  v27 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v6[4];
  v20 = v6[5];
  v26 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v6[6];
  v23 = v6[7];
  v25 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

__n128 sub_10007CB14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009DBEC(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 93) = *(v8 + 13);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10007CB68()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unimplemented(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

unint64_t sub_10007CD20()
{
  v1 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 6581359;
  }

  v2 = 6583407;
  if (!*v0)
  {
    v2 = 6582895;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10007CD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A977C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007CDA8(uint64_t a1)
{
  v2 = sub_1000AA514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007CDE4(uint64_t a1)
{
  v2 = sub_1000AA514();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007CE4C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
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

uint64_t sub_10007CED8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F58, &qword_1006C95C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC964();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v18 = *v3;
  v19 = v11;
  v17[15] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 4);
  v13 = *(v3 + 5);
  LOBYTE(v18) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = *(v3 + 6);
  v16 = *(v3 + 7);
  LOBYTE(v18) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007D090()
{
  v1 = 0x69746E6564497072;
  if (*v0 != 1)
  {
    v1 = 0x72656469766F7270;
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

uint64_t sub_10007D104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A9BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007D12C(uint64_t a1)
{
  v2 = sub_1000AC964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D168(uint64_t a1)
{
  v2 = sub_1000AC964();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007D1A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000A9CF8(a1, v7);
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

uint64_t sub_10007D200(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008376D8, &qword_1006C98B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACCF4();
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
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10007D46C()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_10007D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000AA074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007D508(uint64_t a1)
{
  v2 = sub_1000ACCF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D544(uint64_t a1)
{
  v2 = sub_1000ACCF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007D580@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000AA1A0(a1, v8);
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

uint64_t sub_10007D618()
{
  v1 = *v0;
  String.hash(into:)();
}

unint64_t sub_10007D658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AA4C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007D6AC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AA4C8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007D6D4(uint64_t a1)
{
  v2 = sub_1000820EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D710(uint64_t a1)
{
  v2 = sub_1000820EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007D74C(uint64_t *a1)
{
  v4 = sub_100007224(&qword_100835588, &qword_1006C19F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000820EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CWTPayload();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 24) = v10;
    LOBYTE(v17) = 1;
    *(v1 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 40) = v11;
    LOBYTE(v17) = 2;
    *(v1 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 56) = v12;
    LOBYTE(v17) = 3;
    *(v1 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 72) = v13 & 1;
    LOBYTE(v17) = 4;
    *(v1 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 88) = v15 & 1;
    LOBYTE(v17) = 5;
    *(v1 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 104) = v16 & 1;
    v18 = 6;
    sub_10000B960();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 112) = v17;
  }

  sub_10000BB78(a1);
  return v1;
}

uint64_t sub_10007DA6C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EncodingError();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v10 = __chkstk_darwin(v8);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v35 - v12;
  v13 = sub_100007224(&qword_100835960, &unk_1006C1B90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000820EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *(v3 + 16);
  v20 = *(v3 + 24);
  LOBYTE(v41) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    (*(v14 + 8))(v17, v13);
    v41 = v2;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v29 = v37;
    if (swift_dynamicCast())
    {

      v31 = v35;
      v30 = v36;
      (*(v36 + 32))(v35, v29, v8);
      swift_allocError();
      (*(v30 + 16))(v32, v31, v8);
      (*(v38 + 104))(v40, enum case for DIPError.Code.cborEncodingFailed(_:), v39);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v30 + 8))(v31, v8);
    }

    else
    {

      (*(v38 + 104))(v40, enum case for DIPError.Code.cwtPayloadCBOREncodingFailed(_:), v39);
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
    v21 = *(v3 + 32);
    v22 = *(v3 + 40);
    LOBYTE(v41) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 48);
    v24 = *(v3 + 56);
    LOBYTE(v41) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 80);
    v26 = *(v3 + 88);
    LOBYTE(v41) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 96);
    v28 = *(v3 + 104);
    LOBYTE(v41) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 120);
    v41 = *(v3 + 112);
    v42 = v33;
    v43 = 6;
    sub_1000363B4(v41, v33);
    sub_10000B9B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000BD94(v41, v42);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10007E110()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_10000BD94(v0[14], v0[15]);

  return swift_deallocClassInstance();
}

__n128 sub_10007E184(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10007E1A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10007E1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10007E280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007E360(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10007E448()
{
  sub_1000A5F34(319, &qword_100835130, &qword_100835138, &qword_1006C0B58, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10007E530(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10007E55C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 109))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007E5A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 109) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 109) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007E614(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007E640(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007E688(uint64_t result, int a2, int a3)
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

__n128 sub_10007E6E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_10007E708(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10007E724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10007E780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10007E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10007E8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007E9B4()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_100835200, &unk_100835208, &unk_1006C0D10, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007EB28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100835248, &unk_1006E7940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835248, &unk_1006E7940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007ECC8()
{
  sub_1000A437C(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_1008352C0, &qword_1008352C8, &qword_1006C0D50, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008352D0, &type metadata for ODNErrorInfo, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000A437C(319, &unk_1008352D8, &type metadata for Double, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

__n128 sub_10007EEF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10007EF48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007F0E8()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008352D0, &type metadata for ODNErrorInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_100835200, &unk_100835208, &unk_1006C0D10, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10007F2C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

uint64_t sub_10007F310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007F3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007F3F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007F414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 266))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10007F470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
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
    *(result + 264) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 266) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 266) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10007F52C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F5FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007F6CC()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835450, &type metadata for String, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10007FA34(319, &qword_100835458, &type metadata accessor for HardwareAttestationType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_100835460, &qword_100835468, &unk_1006C0F40, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_100835470, &qword_100835478, &qword_1006D4980, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008351F8, &type metadata for Int, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_10007FA34(319, &qword_100835480, &type metadata accessor for IdentityProofingConsentFlow, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000A5F34(319, &qword_100835488, &unk_10084A230, &qword_1006C0F50, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1000A5F34(319, &qword_100835490, &qword_100835498, &qword_1006C0F58, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_1000A5F34(319, &qword_1008354A0, &unk_1008354A8, &qword_1006C0F60, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10007FA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007FA98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007FAE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10007FB40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

unint64_t sub_10007FBB0()
{
  result = qword_100835528;
  if (!qword_100835528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835528);
  }

  return result;
}

unint64_t sub_10007FC08()
{
  result = qword_100835530;
  if (!qword_100835530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835530);
  }

  return result;
}

uint64_t sub_10007FC5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CWTPayload();
  v5 = swift_allocObject();
  result = sub_10007D74C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_10007FCD8()
{
  result = qword_100835550;
  if (!qword_100835550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835550);
  }

  return result;
}

unint64_t sub_10007FD2C()
{
  result = qword_100839860;
  if (!qword_100839860)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839860);
  }

  return result;
}

unint64_t sub_10007FDA8()
{
  result = qword_100835558;
  if (!qword_100835558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835558);
  }

  return result;
}

uint64_t sub_10007FDFC()
{
  if (*v0)
  {
    result = 0x65636E6F6ELL;
  }

  else
  {
    result = 0x64616F6C796170;
  }

  *v0;
  return result;
}

uint64_t sub_10007FE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_10007FF0C(uint64_t a1)
{
  v2 = sub_1000BA2B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007FF48(uint64_t a1)
{
  v2 = sub_1000BA2B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007FF84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a4;
  v17[2] = a5;
  v18 = type metadata accessor for DIPError.Code();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v19 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100838338, &qword_1006CFCA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA2B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  Data.base64EncodedString(options:)(0);
  v22 = 0;
  v15 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    (*(v10 + 8))(v13, v9);

    (*(v6 + 104))(v19, enum case for DIPError.Code.jsonEncodingFailed(_:), v18);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {

    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1000802F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000AD3A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100080344(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1000C31A0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000803D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4874736575716572;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0xD00000000000001ELL;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6564496D616574;
    if (a1 != 4)
    {
      v3 = 0x6F54737365636361;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100080520(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008370D0, &qword_1006C9660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8 - 8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AE2E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v28 = *v3;
  v29 = v11;
  v27[0] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[3];
    v28 = v3[2];
    v29 = v12;
    v30 = v3[4];
    v27[0] = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 10);
    v14 = *(v3 + 11);
    LOBYTE(v28) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 12);
    v16 = *(v3 + 13);
    LOBYTE(v28) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    LOBYTE(v28) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 16);
    v20 = *(v3 + 17);
    LOBYTE(v28) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 144);
    LOBYTE(v28) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 168);
    v31[0] = *(v3 + 152);
    v31[1] = v22;
    v23 = *(v3 + 168);
    v28 = *(v3 + 152);
    v29 = v23;
    v27[39] = 7;
    sub_10000BBC4(v31, v27, &qword_1008370D8, &qword_1006C9668);
    sub_1000AE438();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000AE33C(v28, *(&v28 + 1), v29, *(&v29 + 1));
    v24 = *(v3 + 184);
    LOBYTE(v28) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008082C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000AD80C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100080860(uint64_t a1)
{
  v2 = sub_1000AE2E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008089C(uint64_t a1)
{
  v2 = sub_1000AE2E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000808D8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000ADB04(a1, v10);
  if (!v2)
  {
    v5 = v18;
    a2[8] = v17;
    a2[9] = v5;
    a2[10] = v19[0];
    *(a2 + 169) = *(v19 + 9);
    v6 = v14;
    a2[4] = v13;
    a2[5] = v6;
    v7 = v16;
    a2[6] = v15;
    a2[7] = v7;
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    result = *&v11;
    v9 = v12;
    a2[2] = v11;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_10008095C(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008376E0, &qword_1006C98B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-v7];
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACBC8();
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
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v2 + 14);
    v21[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = *(type metadata accessor for RegisterTerminalResponse(0) + 28);
    LOBYTE(v22) = 3;
    sub_100007224(&unk_100835E00, &qword_1006C46A0);
    sub_1000BA30C(&qword_1008376E8, &unk_100835E00, &qword_1006C46A0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100080C64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v50 = v46 - v5;
  v6 = sub_100007224(&qword_100836FA8, &qword_1006C95F0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v9 = v46 - v8;
  v10 = type metadata accessor for RegisterTerminalResponse(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 36);
  v16 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v53 = v15;
  v55 = v14;
  v18(&v14[v15], 1, 1, v16);
  v20 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACBC8();
  v21 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_10000BB78(a1);
    v25 = v55;
    return sub_10000BE18(v25 + v53, &qword_100835D88, &qword_1006DE890);
  }

  v48 = v19;
  v49 = v18;
  v54 = v16;
  v22 = v52;
  v59 = 0;
  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *&v58[19];
  v25 = v55;
  *(v55 + 2) = *&v58[17];
  *(v25 + 48) = v24;
  v26 = *&v58[23];
  *(v25 + 64) = *&v58[21];
  *(v25 + 80) = v26;
  v27 = *&v58[15];
  *v25 = *&v58[13];
  *(v25 + 16) = v27;
  LOBYTE(v58[0]) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v29;
  v47 = a1;
  *(v25 + 96) = v28;
  *(v25 + 104) = v29;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v56 = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v30;
  v32 = v58[0];
  *(v25 + 112) = v58[0];
  LOBYTE(v58[0]) = 3;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46[4] = v32;
  v46[3] = v31;
  v38 = v9;
  if (v34 && (v58[0] = v33, v58[1] = v34, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , v57))
  {
    v46[2] = Data.init(base64Encoded:options:)();
    v40 = v39;

    if (v40 >> 60 == 15)
    {
      LOBYTE(v58[0]) = 3;
      type metadata accessor for DecodingError();
      swift_allocError();
      sub_1000BA30C(&qword_100836FC8, &qword_100836FA8, &qword_1006C95F0);
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      (*(v22 + 8))(v38, v6);
      sub_10000BB78(v47);
      v35 = *(v25 + 48);
      *&v58[4] = *(v25 + 32);
      *&v58[6] = v35;
      v36 = *(v25 + 80);
      *&v58[8] = *(v25 + 64);
      *&v58[10] = v36;
      v37 = *(v25 + 16);
      *v58 = *v25;
      *&v58[2] = v37;
      sub_1000ACC70(v58);

      return sub_10000BE18(v25 + v53, &qword_100835D88, &qword_1006DE890);
    }

    type metadata accessor for MobileDocumentReaderExternalData();
    v42 = type metadata accessor for CBORDecoder();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v46[1] = CBORDecoder.init()();
    sub_10009F43C(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData);
    sub_10009F43C(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData);
    v45 = v50;
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    (*(v22 + 8))(v38, v6);
    v49(v45, 0, 1, v54);
    sub_1000B2764(v45, v25 + v53, &qword_100835D88, &qword_1006DE890);
  }

  else
  {
    (*(v22 + 8))(v9, v6);
  }

  v41 = v47;
  sub_10009ED78(v25, v51, type metadata accessor for RegisterTerminalResponse);
  sub_10000BB78(v41);
  return sub_10009EDE0(v25, type metadata accessor for RegisterTerminalResponse);
}

Swift::Int sub_100081418()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000814FC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000815CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000816AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B08D0(*a1);
  *a2 = result;
  return result;
}

void sub_1000816DC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00726564616548;
  v3 = 0x65736E6F70736572;
  v4 = 0x80000001006F9610;
  v5 = 0xD000000000000026;
  if (*v1 != 2)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v3 = 0x45656D69746E7572;
    v2 = 0xEC000000726F7272;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10008177C()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0x6C616E7265747865;
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

unint64_t sub_100081818@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B08D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100081840(uint64_t a1)
{
  v2 = sub_1000ACBC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008187C(uint64_t a1)
{
  v2 = sub_1000ACBC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000818B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837508, &qword_1006C97B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0B0C();
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

uint64_t sub_100081A4C()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_100081A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_100081B68(uint64_t a1)
{
  v2 = sub_1000B0B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100081BA4(uint64_t a1)
{
  v2 = sub_1000B0B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100081BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008374F8, &qword_1006C97A8, sub_1000B0B0C);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100081C5C(uint64_t *a1, unsigned int a2)
{
  v5 = a1[4];
  v6 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v10, v10[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v8 = sub_10009DABC(v9);
    if (v8 == 4)
    {
      v6 = a2;
    }

    else
    {
      v6 = v8;
    }

    sub_10000BB78(v10);
    sub_10000BB78(a1);
  }

  return v6;
}

unint64_t sub_100081D4C(uint64_t *a1, unsigned int a2)
{
  v5 = a1[4];
  v6 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v10, v10[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v8 = sub_10009DB08(v9);
    if (v8 == 7)
    {
      v6 = a2;
    }

    else
    {
      v6 = v8;
    }

    sub_10000BB78(v10);
    sub_10000BB78(a1);
  }

  return v6;
}

unint64_t sub_100081E3C(uint64_t *a1, unsigned int a2, Swift::OpaquePointer a3)
{
  v7 = a1[4];
  v8 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10000BA08(v12, v12[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v10 = _findStringSwitchCase(cases:string:)(a3, v11);

    if (v10 >= 3)
    {
      v8 = a2;
    }

    else
    {
      v8 = v10;
    }

    sub_10000BB78(v12);
    sub_10000BB78(a1);
  }

  return v8;
}

uint64_t sub_100081F48(uint64_t *a1, char a2)
{
  v5 = a1[4];
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_10000BA08(v9, v9[3]);
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(&off_1007F9AC8, v8);

  if (v7)
  {
    if (v7 == 1)
    {
      a2 = 1;
    }
  }

  else
  {
    a2 = 0;
  }

  sub_10000BB78(v9);
  sub_10000BB78(a1);
  return a2 & 1;
}

BOOL sub_10008205C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = 0;
  if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = a3[2];
    v9 = v8 <= 1 && v8 == a6[2];
    if (v9 && (!v8 || a3[4] == a6[4] && a3[5] == a6[5] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1000820EC()
{
  result = qword_100835590;
  if (!qword_100835590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100835590);
  }

  return result;
}

unint64_t sub_100082140(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F87B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008218C(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100837750, &qword_1006C98F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();

  (*(v9 + 8))(v12, v8);
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1930();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v17 = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v13;
}

uint64_t sub_1000823FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574617453627573 && a2 == 0xED000065646F4373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D737574617473 && a2 == 0xED00006567617373)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100082624@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008376A8, &qword_1006C9888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1504();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  LOBYTE(v45[0]) = 1;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v14;
  LOBYTE(v45[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v16;
  v33 = v15;
  LOBYTE(v45[0]) = 3;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v17;
  LOBYTE(v45[0]) = 4;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v18;
  v46 = 5;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = *(v6 + 8);
  v21 = v19;
  v30 = v22;
  v20(v9, v5);
  *&v39 = v11;
  *(&v39 + 1) = v13;
  *&v40 = v36;
  *(&v40 + 1) = v38;
  *&v41 = v33;
  *(&v41 + 1) = v37;
  *&v42 = v32;
  v23 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  v24 = v34;
  *(&v43 + 1) = v34;
  *&v44 = v21;
  v25 = v30;
  *(&v44 + 1) = v30;
  sub_1000B1478(&v39, v45);
  sub_10000BB78(a1);
  v45[0] = v11;
  v45[1] = v13;
  v45[2] = v36;
  v45[3] = v38;
  v45[4] = v33;
  v45[5] = v37;
  v45[6] = v32;
  v45[7] = v23;
  v45[8] = v31;
  v45[9] = v24;
  v45[10] = v21;
  v45[11] = v25;
  result = sub_1000ACC70(v45);
  v27 = v42;
  a2[2] = v41;
  a2[3] = v27;
  v28 = v44;
  a2[4] = v43;
  a2[5] = v28;
  v29 = v40;
  *a2 = v39;
  a2[1] = v29;
  return result;
}

uint64_t sub_100082AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
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

uint64_t sub_100082BE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837680, &qword_1006C9870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_10000BB78(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_100082DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1919248756 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDBF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F4365636E6F6ELL && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_100083184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_100007224(&qword_100837858, &qword_1006C9978);
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v61);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v107 = v14;
  (*(v10 + 8))(v13, v9);
  v15 = a1[3];
  v16 = a1[4];
  v62 = a1;
  sub_10000BA08(a1, v15);
  sub_1000ACA60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v67 = v2;
    v19 = 0;
    LODWORD(v61) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v20 = 0;
    v21 = 0;
    v63 = &off_1007F8AB0;
  }

  else
  {
    v17 = v5;
    LOBYTE(v68) = 0;
    sub_1000AB1A8();
    v18 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v23 = v80;
    v58 = v81;
    v24 = v82;
    v107 = v83;
    LOBYTE(v68) = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v24;
    v54 = v23;
    v21 = v81;
    v25 = v82;
    v56 = v83;
    v57 = v80;
    v26 = v84;
    v55 = v85;
    LOBYTE(v80) = 2;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v26;
    v60 = v27;
    LOBYTE(v80) = 3;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v28;
    LOBYTE(v80) = 4;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v29;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    LOBYTE(v68) = 5;
    sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v80;
    LOBYTE(v80) = 6;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v80) = 7;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = 0;
    v47 = v30;
    v64 = v31;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    LOBYTE(v68) = 8;
    sub_1000AC244();
    v32 = v67;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v32;
    if (v32)
    {
      (*(v17 + 8))(v8, v18);
      v63 = &off_1007F8AB0;
    }

    else
    {
      v63 = v80;
      LOBYTE(v80) = 9;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      v67 = 0;
      v34 = v33;
      sub_100007224(&unk_10084A230, &qword_1006C0F50);
      v104 = 10;
      sub_1000ACB5C(&qword_100835878);
      v35 = v67;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v67 = v35;
      if (!v35)
      {
        v36 = v34 & 1;
        (*(v17 + 8))(v8, v61);
        v61 = v105;
        v37 = v55;
        *&v68 = v54;
        *(&v68 + 1) = v58;
        v38 = v52;
        v39 = v107;
        *&v69 = v53;
        *(&v69 + 1) = v107;
        v40 = v56;
        *&v70 = v57;
        *(&v70 + 1) = v21;
        *&v71 = v25;
        *(&v71 + 1) = v56;
        *&v72 = v52;
        *(&v72 + 1) = v55;
        *&v73 = v51;
        *(&v73 + 1) = v60;
        *&v74 = v50;
        *(&v74 + 1) = v66;
        *&v75 = v49;
        *(&v75 + 1) = v65;
        *&v76 = v59;
        *(&v76 + 1) = v48;
        *&v77 = v47;
        *(&v77 + 1) = v64;
        *&v78 = v63;
        BYTE8(v78) = v36;
        *(&v78 + 9) = v106[0];
        HIDWORD(v78) = *(v106 + 3);
        v79 = v105;
        sub_1000B2030(&v68, &v80);
        sub_10000BB78(v62);
        v80 = v54;
        v81 = v58;
        v82 = v53;
        v83 = v39;
        v84 = v57;
        v85 = v21;
        v86 = v25;
        v87 = v40;
        v88 = v38;
        v89 = v37;
        v90 = v51;
        v91 = v60;
        v92 = v50;
        v93 = v66;
        v94 = v49;
        v95 = v65;
        v96 = v59;
        v97 = v48;
        v98 = v47;
        v99 = v64;
        v100 = v63;
        v101 = v36;
        *v102 = v106[0];
        *&v102[3] = *(v106 + 3);
        v103 = v61;
        result = sub_1000B2068(&v80);
        v41 = v77;
        *(a2 + 128) = v76;
        *(a2 + 144) = v41;
        *(a2 + 160) = v78;
        *(a2 + 176) = v79;
        v42 = v73;
        *(a2 + 64) = v72;
        *(a2 + 80) = v42;
        v43 = v75;
        *(a2 + 96) = v74;
        *(a2 + 112) = v43;
        v44 = v69;
        *a2 = v68;
        *(a2 + 16) = v44;
        v45 = v71;
        *(a2 + 32) = v70;
        *(a2 + 48) = v45;
        return result;
      }

      (*(v17 + 8))(v8, v61);
    }

    v19 = 1;
    LODWORD(v61) = 1;
    v20 = v57;
  }

  sub_10000BB78(v62);

  sub_1000AB97C(v20, v21);
  if (v19)
  {
  }

  if (v61)
  {
  }
}

uint64_t sub_100083A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100007224(&qword_100837058, &qword_1006C9628);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD0D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v11 = v25;
  v50 = 0;
  sub_1000ACC1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  v44 = *&v38[40];
  v45 = v39;
  LOBYTE(v34[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v24 = v12;
  sub_100020260(a1, v38);
  v15 = type metadata accessor for LegacyWorkflowPackage(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_10005034C(v38);
  (*(v10 + 8))(v8, v4);
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v26 = v44;
  v27 = v45;
  v19 = v24;
  *&v32 = v24;
  *(&v32 + 1) = v14;
  v33 = v18;
  sub_1000AD12C(&v26, v34);
  sub_10000BB78(a1);
  v34[2] = v46;
  v34[3] = v47;
  v34[4] = v48;
  v34[5] = v49;
  v34[0] = v44;
  v34[1] = v45;
  v35 = v19;
  v36 = v14;
  v37 = v18;
  result = sub_1000AD164(v34);
  v21 = v31;
  *(v11 + 64) = v30;
  *(v11 + 80) = v21;
  *(v11 + 96) = v32;
  *(v11 + 112) = v33;
  v22 = v27;
  *v11 = v26;
  *(v11 + 16) = v22;
  v23 = v29;
  *(v11 + 32) = v28;
  *(v11 + 48) = v23;
  return result;
}

uint64_t sub_100083D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE900000000000073)
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

unint64_t sub_100083E3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8AD8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100083E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447475706E69 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xED00006873614879)
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

uint64_t sub_100084008(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDC50 == a2)
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

uint64_t sub_10008418C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837068, &qword_1006C9630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v38) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v12 & 1;
  LOBYTE(v38) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v33 = v13;
  LOBYTE(v38) = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  v32 = v16;
  v47 = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = *(v6 + 8);
  v31 = v19;
  v21 = v9;
  v23 = v22;
  v20(v21, v5);
  v30 = v11;
  *&v34 = v11;
  LOBYTE(v11) = v46;
  BYTE8(v34) = v46;
  v25 = v32;
  v24 = v33;
  *&v35 = v33;
  *(&v35 + 1) = v15;
  *&v36 = v32;
  *(&v36 + 1) = v18;
  *&v37 = v31;
  *(&v37 + 1) = v23;
  sub_1000AD1E8(&v34, &v38);
  sub_10000BB78(a1);
  v38 = v30;
  v39 = v11;
  v40 = v24;
  v41 = v15;
  v42 = v25;
  v43 = v18;
  v44 = v31;
  v45 = v23;
  result = sub_1000AD220(&v38);
  v27 = v35;
  *a2 = v34;
  a2[1] = v27;
  v28 = v37;
  a2[2] = v36;
  a2[3] = v28;
  return result;
}

uint64_t sub_100084448(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100837780, &qword_1006C9918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_10000BA08(a1, v8);
  sub_1000B19D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    HIBYTE(v10) = 0;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v11;
    sub_100007224(&qword_100837790, &qword_1006C9920);
    HIBYTE(v10) = 1;
    sub_1000B1A2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_100084658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001006FDA20 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEE00373134464450 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDA60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F656D69547263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61756E614D7263 && a2 == 0xED000079616C6544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000848C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836C08, &qword_1006C94E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAC1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_100007224(&qword_100836C18, &qword_1006C94E8);
  LOBYTE(v30) = 0;
  sub_1000AAC70();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v33;
  LOBYTE(v33) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33) = 2;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33) = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v13 & 1;
  LOBYTE(v33) = 5;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v14 & 1;
  v46 = 6;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v24 = v15;
  v18(v9, v5);
  v17 &= 1u;
  v43 = v17;
  *&v30 = v11;
  v25 = v12;
  BYTE8(v30) = v12;
  BYTE9(v30) = v29;
  BYTE10(v30) = v28;
  v19 = v26;
  *&v31 = v27;
  LOBYTE(v12) = v45;
  BYTE8(v31) = v45;
  *v32 = v26;
  v20 = v44;
  v32[8] = v44;
  v21 = v24;
  *&v32[16] = v24;
  v32[24] = v17;
  sub_1000AAD24(&v30, &v33);
  sub_10000BB78(a1);
  v33 = v11;
  v34 = v25;
  v35 = v29;
  v36 = v28;
  v37 = v27;
  v38 = v12;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v17;
  result = sub_1000AAD5C(&v33);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  return result;
}

unint64_t sub_100084C60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8C08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100084CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69676552627573 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FD610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616E69676170 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E616353636F64 && a2 == 0xED00006769666E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6761506863746177 && a2 == 0xEF6E6F6974616E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E696761506D64 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100084ED4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = sub_100007224(&qword_100835900, &qword_1006C1B60);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v32);
  v8 = &v25 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009FAC8();
  v54 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v31 = a2;
  LOBYTE(v39[0]) = 0;
  v11 = v32;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v39[0]) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  LOBYTE(v33) = 2;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v39[0];
  v47 = 3;
  sub_10009FB1C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = v48;
  v52 = v49;
  v53[0] = v50[0];
  *(v53 + 9) = *(v50 + 9);
  LOBYTE(v33) = 4;
  v27 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v39[0];
  v45 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v30;
  (*(v10 + 8))(v54, v11);
  v16 = v46;
  *&v33 = v12;
  *(&v33 + 1) = v15;
  v17 = v28;
  v18 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v28;
  v19 = v26;
  v35 = v51;
  v36 = v52;
  v37[0] = v53[0];
  *(v37 + 9) = *(v53 + 9);
  *&v38 = v26;
  *(&v38 + 1) = v46;
  sub_10009FB70(&v33, v39);
  sub_10000BB78(a1);
  v39[0] = v12;
  v39[1] = v15;
  v39[2] = v18;
  v39[3] = v17;
  v40 = v51;
  v41 = v52;
  v42[0] = v53[0];
  *(v42 + 9) = *(v53 + 9);
  v43 = v19;
  v44 = v16;
  result = sub_10009FBA8(v39);
  v21 = v37[1];
  v22 = v31;
  v31[4] = v37[0];
  v22[5] = v21;
  v22[6] = v38;
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;
  v24 = v36;
  v22[2] = v35;
  v22[3] = v24;
  return result;
}

uint64_t sub_100085378(uint64_t *a1)
{
  v2 = sub_100007224(&qword_1008358C0, &qword_1006C1B48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F81C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_10009F870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v10[15] = 1;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_100085564()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000855B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEA00000000006449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006F8C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144766469 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEE00736D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974726F70707573 && a2 == 0xEE0061746144676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001006FDB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65646F4E61746164 && a2 == 0xEE0073666F6F7250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FDB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000859A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xED00006D69616C43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B726F577478656ELL && a2 == 0xEC000000776F6C66)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100085BCC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8EB8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_100085C18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a2;
  v4 = sub_100007224(&qword_1008371E0, &qword_1006C96B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AED80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v11 = v15;
  v18 = 0;
  sub_1000AEDD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v16[0];
  v18 = 1;
  sub_1000AEE28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v4);
  memcpy(&v17[7], v16, 0x148uLL);
  sub_10000BB78(a1);
  *v11 = v12;
  return memcpy(v11 + 1, v17, 0x14FuLL);
}

uint64_t sub_100085E24()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

void *sub_100085E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100837A28, &qword_1006C9A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v89 = a1;
  sub_10000BA08(a1, v10);
  sub_1000B28DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v89);
  }

  v12 = v6;
  LOBYTE(v91[0]) = 0;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = v15;
  LOBYTE(v91[0]) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = v17;
  v86 = 0;
  v18 = v16;
  LOBYTE(v91[0]) = 2;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v78 = v19;
  LOBYTE(v91[0]) = 3;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = v20;
  LOBYTE(v91[0]) = 4;
  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v76 = v21;
  LOBYTE(v91[0]) = 5;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = v22;
  LOBYTE(v91[0]) = 6;
  v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = v23;
  LOBYTE(v91[0]) = 7;
  v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v24;
  LOBYTE(v91[0]) = 8;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v25;
  v88 = 0;
  LOBYTE(v91[0]) = 9;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v27;
  v88 = 0;
  v28 = v26;
  LOBYTE(v91[0]) = 10;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v29;
  v88 = 0;
  LOBYTE(v91[0]) = 11;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v30;
  v88 = 0;
  sub_100007224(&qword_1008355A8, &qword_1006C1A08);
  LOBYTE(v90[0]) = 12;
  sub_10009D75C();
  v31 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v31;
  if (!v31)
  {
    v68 = v91[0];
    LOBYTE(v91[0]) = 13;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v32;
    v88 = 0;
    LOBYTE(v91[0]) = 14;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v33;
    v88 = 0;
    LOBYTE(v91[0]) = 15;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v34;
    v88 = 0;
    LOBYTE(v91[0]) = 16;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v35;
    v88 = 0;
    LOBYTE(v91[0]) = 17;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v36;
    v86 = 0;
    LOBYTE(v91[0]) = 18;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v37;
    v88 = 0;
    LOBYTE(v91[0]) = 19;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v38;
    v88 = 0;
    v92 = 20;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v40;
    v50 = v39;
    v88 = 0;
    (*(v12 + 8))(v9, v5);
    v41 = v87;
    v90[0] = v14;
    v90[1] = v87;
    v90[2] = v68;
    v90[3] = v61;
    v90[4] = v67;
    v90[5] = v60;
    v90[6] = v66;
    v90[7] = v59;
    v90[8] = v65;
    v90[9] = v57;
    v90[10] = v58;
    v90[11] = v18;
    v42 = v18;
    v44 = v78;
    v43 = v79;
    v90[12] = v79;
    v90[13] = v85;
    v90[14] = v78;
    v90[15] = v84;
    v45 = v76;
    v90[16] = v77;
    v90[17] = v83;
    v90[18] = v76;
    v90[19] = v82;
    v90[20] = v75;
    v90[21] = v81;
    v90[22] = v74;
    v90[23] = v80;
    v90[24] = v73;
    v90[25] = v64;
    v90[26] = v72;
    v48 = v28;
    v90[27] = v28;
    v90[28] = v71;
    v90[29] = v63;
    v90[30] = v70;
    v90[31] = v62;
    v90[32] = v69;
    v46 = v56;
    v90[33] = v55;
    v90[34] = v56;
    v90[35] = v52;
    v90[36] = v54;
    v90[37] = v51;
    v90[38] = v53;
    v90[39] = v50;
    v90[40] = v49;
    sub_1000B2930(v90, v91);
    sub_10000BB78(v89);
    v91[0] = v14;
    v91[1] = v41;
    v91[2] = v68;
    v91[3] = v61;
    v91[4] = v67;
    v91[5] = v60;
    v91[6] = v66;
    v91[7] = v59;
    v91[8] = v65;
    v91[9] = v57;
    v91[10] = v58;
    v91[11] = v42;
    v91[12] = v43;
    v91[13] = v85;
    v91[14] = v44;
    v91[15] = v84;
    v91[16] = v77;
    v91[17] = v83;
    v91[18] = v45;
    v91[19] = v82;
    v91[20] = v75;
    v91[21] = v81;
    v91[22] = v74;
    v91[23] = v80;
    v91[24] = v73;
    v91[25] = v64;
    v91[26] = v72;
    v91[27] = v48;
    v91[28] = v71;
    v91[29] = v63;
    v91[30] = v70;
    v91[31] = v62;
    v91[32] = v69;
    v91[33] = v55;
    v91[34] = v46;
    v91[35] = v52;
    v91[36] = v54;
    v91[37] = v51;
    v91[38] = v53;
    v91[39] = v50;
    v91[40] = v49;
    sub_1000AEF5C(v91);
    return memcpy(a2, v90, 0x148uLL);
  }

  (*(v12 + 8))(v9, v5);
  LODWORD(v83) = 0;
  LODWORD(v84) = 0;
  LODWORD(v85) = 0;
  LODWORD(v80) = 1;
  LODWORD(v81) = 1;
  LODWORD(v82) = 1;
  sub_10000BB78(v89);

  if (v83)
  {

    if ((v84 & 1) == 0)
    {
LABEL_12:
      if (!v85)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!v84)
  {
    goto LABEL_12;
  }

  if (v85)
  {
LABEL_13:
  }

LABEL_14:
  if (!v86)
  {

    if ((v80 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v80)
  {
LABEL_16:
  }

LABEL_21:

  if (v81)
  {

    if ((v82 & 1) == 0)
    {
    }

    goto LABEL_19;
  }

  if (v82)
  {
LABEL_19:
  }
}

uint64_t sub_100086D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644979656BLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4961746164 && a2 == 0xE800000000000000)
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

uint64_t sub_100086E7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_100837340, &qword_1006C9728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF9C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v29 = a2;
  v14 = v11;
  LOBYTE(v35[0]) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v28 + 1) = v16;
  *&v28 = v15;
  v45 = 2;
  sub_1000AFA1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v27 = v42;
  v17 = v43;
  v26 = *(&v42 + 1);
  v18 = *(&v43 + 1);
  v19 = v44;
  *&v30 = v14;
  *(&v30 + 1) = v13;
  v20 = v28;
  v31 = v28;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  sub_1000AFA70(&v30, v35);
  sub_10000BB78(a1);
  v35[0] = v14;
  v35[1] = v13;
  v36 = v20;
  v37 = v27;
  v38 = v26;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  result = sub_1000AFAA8(v35);
  v22 = v33;
  v23 = v29;
  *(v29 + 32) = v32;
  *(v23 + 48) = v22;
  *(v23 + 64) = v34;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  return result;
}

uint64_t sub_100087188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361)
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

uint64_t sub_1000872A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100838360, &qword_1006CFCC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000BB78(a1);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

void *sub_1000874B8(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100837710, &qword_1006C98E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_1000B171C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100007224(&qword_100837720, &qword_1006C98E8);
    sub_1000B1770();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000BB78(a1);
  }

  return v9;
}

uint64_t sub_10008763C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D656E696C6E69 && a2 == 0xED00007363697274;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D65727574706163 && a2 == 0xEE00736369727465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D6F65646976 && a2 == 0xEC00000073636972)
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

uint64_t sub_100087768(uint64_t *a1)
{
  v2 = sub_100007224(&qword_1008372E8, &qword_1006C9708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF6BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100007224(&qword_1008372F8, &qword_1006C9710);
  v11 = 0;
  sub_1000AF710();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v12;
  v11 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100007224(&qword_100837310, &qword_1006C9718);
  v11 = 2;
  sub_1000AF7E8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v9;
}

uint64_t sub_1000879EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5465727574706163 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x666E6F4365636166 && a2 == 0xEF7365636E656469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FDFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C6576654C78756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x61436F7475417369 && a2 == 0xEE00646572757470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x456873616C467369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x754E726575737369 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x7465446572616C67 && a2 == 0xED00006465746365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FE010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6556746567726174 && a2 == 0xEE00736563697472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF7372656E726F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x686374614D72636FLL && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6365446C65646F6DLL && a2 == 0xED00006E6F697369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x7461726F6C707865 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6F436E6163736572 && a2 == 0xEB00000000746E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xED00006574756843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6165706552626F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x6165706552656F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE0B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x526E6163537A726DLL && a2 == 0xED0000746C757365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0x636F44664F656761 && a2 == 0xED0000746E656D75)
  {

    return 54;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 54;
    }

    else
    {
      return 55;
    }
  }
}