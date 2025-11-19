char *sub_1005C8110(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 72);
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 4);
    v33[0] = *(v5 - 40);
    v34 = v10;
    v35 = v8;
    v36 = v9;
    v37 = v7;
    v38 = v6;
    sub_100017D5C(v8, v9);
    sub_100017D5C(v7, v6);
    a1(&v27, v33);
    if (v3)
    {
      break;
    }

    v11 = v37;
    v12 = v38;
    sub_100016590(v35, v36);
    sub_100016590(v11, v12);
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    if (v27 == 2)
    {
      sub_10062C0A0(v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v24 = v31;
      v25 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100A5CBA0(0, *(v39 + 2) + 1, 1, v39);
      }

      v18 = *(v39 + 2);
      v17 = *(v39 + 3);
      if (v18 >= v17 >> 1)
      {
        v39 = sub_100A5CBA0((v17 > 1), v18 + 1, 1, v39);
      }

      v19 = v39;
      *(v39 + 2) = v18 + 1;
      v20 = &v19[48 * v18];
      v20[32] = v13 & 1;
      *(v20 + 5) = v14;
      *(v20 + 6) = v15;
      *(v20 + 7) = v16;
      *(v20 + 8) = v24;
      *(v20 + 9) = v25;
    }

    v5 += 6;
    if (!--v4)
    {
      return v39;
    }
  }

  v21 = v37;
  v22 = v38;
  sub_100016590(v35, v36);
  sub_100016590(v21, v22);

  return v39;
}

char *sub_1005C82E0(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v42 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      a1(&v35, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {
        v28 = v42;

        return v28;
      }

      v13 = v41;
      if (v41)
      {
        break;
      }

      result = sub_10062CC18(v35, v36, v37, v38, v39, v40, 0);
      if (v7 == v4)
      {
        return v42;
      }
    }

    v33 = v36;
    v34 = v35;
    v30 = v37;
    v31 = v39;
    v32 = v38;
    v29 = v40;
    v14 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100A5DF68(0, *(v14 + 2) + 1, 1, v14);
    }

    v15 = v14;
    v16 = *(v14 + 2);
    v17 = v15;
    v18 = *(v15 + 3);
    v19 = (v16 + 1);
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    if (v16 >= v18 >> 1)
    {
      v42 = (v16 + 1);
      v27 = sub_100A5DF68((v18 > 1), v16 + 1, 1, v17);
      v19 = v42;
      v23 = v32;
      v24 = v33;
      v21 = v30;
      v22 = v31;
      v20 = v29;
      v17 = v27;
      v25 = v34;
    }

    *(v17 + 2) = v19;
    v26 = &v17[56 * v16];
    result = v17;
    *(v26 + 4) = v25;
    *(v26 + 5) = v24;
    *(v26 + 6) = v21;
    *(v26 + 7) = v23;
    *(v26 + 8) = v22;
    *(v26 + 9) = v20;
    *(v26 + 10) = v13;
  }

  while (v7 != v4);
  return result;
}

void *sub_1005C84F0(void (*a1)(char *), uint64_t a2)
{
  v35 = a1;
  v4 = sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v34 = type metadata accessor for SharingCircleSecretValue();
  v30 = *(v34 - 8);
  v8 = *(v30 + 64);
  v9 = __chkstk_darwin(v34);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v29 = &v28 - v11;
  v12 = type metadata accessor for SharingCircleSecret();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v28 - v19;
  v36 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v21 = *(v13 + 48);
  v31 = v13 + 48;
  v32 = v12;
  if (v21(v20, 1, v12) == 1)
  {
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    v23 = (v30 + 48);
    v22 = _swiftEmptyArrayStorage;
    v28 = a2;
    while (1)
    {
      sub_10062CC64(v20, v16, type metadata accessor for SharingCircleSecret);
      v35(v16);
      if (v2)
      {
        break;
      }

      sub_10062CBB8(v16, type metadata accessor for SharingCircleSecret);
      if ((*v23)(v7, 1, v34) == 1)
      {
        sub_10000B3A8(v7, &qword_101697610, &unk_10138C4B0);
      }

      else
      {
        v24 = v29;
        sub_10062CC64(v7, v29, type metadata accessor for SharingCircleSecretValue);
        sub_10062CC64(v24, v33, type metadata accessor for SharingCircleSecretValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100A5E720(0, v22[2] + 1, 1, v22);
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          v22 = sub_100A5E720(v25 > 1, v26 + 1, 1, v22);
        }

        v22[2] = v26 + 1;
        sub_10062CC64(v33, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, type metadata accessor for SharingCircleSecretValue);
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v21(v20, 1, v32) == 1)
      {
        goto LABEL_14;
      }
    }

    sub_10062CBB8(v16, type metadata accessor for SharingCircleSecret);
  }

LABEL_14:

  return v22;
}

BOOL sub_1005C8928(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7261646E6F636553;
  }

  else
  {
    v4 = 0x7972616D697250;
  }

  if (a1)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v8 = 0x7261646E6F636553;
    }

    else
    {
      v8 = 0x7972616D697250;
    }

    if (*v3)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (v8 == v4 && v9 == v5)
    {

      return v6 != 0;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1005C8A30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

BOOL sub_1005C8B3C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_1013B37F0[v6] != qword_1013B37F0[a1]);
  return v4 != 0;
}

uint64_t sub_1005C8B7C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v43 = v4;
    v44 = v12;
    while (1)
    {
      sub_10062CD24(v11, v8, type metadata accessor for OwnerSharingCircle);
      v13 = *v8;
      v14 = v8[1];
      v16 = *a1;
      v15 = a1[1];
      v17 = v14 >> 62;
      v18 = v15 >> 62;
      if (v14 >> 62 == 3)
      {
        break;
      }

      if (v17 <= 1)
      {
        if (!v17)
        {
          v20 = BYTE6(v14);
          if (v18 <= 1)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }

        LODWORD(v20) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_69;
        }

        v20 = v20;
        goto LABEL_25;
      }

      if (v17 == 2)
      {
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        v24 = __OFSUB__(v22, v23);
        v20 = v22 - v23;
        if (v24)
        {
          goto LABEL_68;
        }

        goto LABEL_25;
      }

      v20 = 0;
      if (v18 <= 1)
      {
LABEL_26:
        if (v18)
        {
          LODWORD(v25) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_67;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v15);
        }

        goto LABEL_33;
      }

LABEL_31:
      if (v18 != 2)
      {
        if (v20)
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }

      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      v24 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v24)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

LABEL_33:
      if (v20 != v25)
      {
        goto LABEL_63;
      }

      if (v20 < 1)
      {
        goto LABEL_56;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          memset(v47, 0, 14);
LABEL_52:
          sub_100771A28(v47, v16, v15, &v46);
          if (!v46)
          {
            goto LABEL_63;
          }

          goto LABEL_56;
        }

        v45 = v10;
        v28 = *(v13 + 16);
        v42 = *(v13 + 24);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v28, v30))
          {
            goto LABEL_72;
          }

          v29 += v28 - v30;
        }

        if (__OFSUB__(v42, v28))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (!v17)
        {
          v47[0] = *v8;
          LOWORD(v47[1]) = v14;
          BYTE2(v47[1]) = BYTE2(v14);
          BYTE3(v47[1]) = BYTE3(v14);
          BYTE4(v47[1]) = BYTE4(v14);
          BYTE5(v47[1]) = BYTE5(v14);
          goto LABEL_52;
        }

        v45 = v10;
        v31 = v13;
        if (v13 >> 32 < v13)
        {
          goto LABEL_70;
        }

        v32 = __DataStorage._bytes.getter();
        if (v32)
        {
          v42 = v32;
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_73;
          }

          v29 = v31 - v33 + v42;
        }

        else
        {
          v29 = 0;
        }
      }

      __DataStorage._length.getter();
      v10 = v45;
      sub_100771A28(v29, v16, v15, v47);
      v4 = v43;
      v12 = v44;
      if ((v47[0] & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_56:
      v34 = v4[5];
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (v35 = v4[6], (static UUID.== infix(_:_:)() & 1) == 0) || *(v8 + v4[7]) != *(a1 + v4[7]) || (sub_100DE7CB4(*(v8 + v4[8]), *(a1 + v4[8])) & 1) == 0)
      {
LABEL_63:
        sub_10062CBB8(v8, type metadata accessor for OwnerSharingCircle);
        goto LABEL_64;
      }

      v36 = v4[9];
      v37 = *(v8 + v36);
      v38 = v10;
      v39 = *(a1 + v36);
      sub_10062CBB8(v8, type metadata accessor for OwnerSharingCircle);
      v19 = v37 == v39;
      v10 = v38;
      v12 = v44;
      if (v19)
      {
        return 1;
      }

LABEL_64:
      v11 += v12;
      if (!--v9)
      {
        return 0;
      }
    }

    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14 == 0xC000000000000000;
    }

    v20 = 0;
    v21 = v19 && v15 >> 62 == 3;
    if (v21 && !v16 && v15 == 0xC000000000000000)
    {
      goto LABEL_56;
    }

LABEL_25:
    if (v18 <= 1)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_1005C9000(uint64_t *a1, uint64_t a2)
{
  v108 = type metadata accessor for OwnedDeviceKeyRecord();
  v4 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v107 = a1;
    v11 = v108;
    v109 = v10;
    v110 = 0;
    while (1)
    {
      sub_10062CD24(v9, v7, type metadata accessor for OwnedDeviceKeyRecord);
      v12 = *v7;
      v13 = v7[1];
      v15 = *a1;
      v14 = a1[1];
      v16 = v13 >> 62;
      v17 = v14 >> 62;
      if (v13 >> 62 == 3)
      {
        break;
      }

      if (v16 <= 1)
      {
        if (!v16)
        {
          v19 = BYTE6(v13);
          if (v17 <= 1)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

        LODWORD(v19) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_158;
        }

        v19 = v19;
        goto LABEL_27;
      }

      if (v16 == 2)
      {
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        v23 = __OFSUB__(v21, v22);
        v19 = v21 - v22;
        if (v23)
        {
          goto LABEL_157;
        }

        goto LABEL_27;
      }

      v19 = 0;
      if (v17 <= 1)
      {
LABEL_28:
        if (v17)
        {
          LODWORD(v24) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_156;
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v14);
        }

        goto LABEL_35;
      }

LABEL_33:
      if (v17 != 2)
      {
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_57;
      }

      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      v23 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v23)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
      }

LABEL_35:
      if (v19 != v24)
      {
        goto LABEL_4;
      }

      if (v19 >= 1)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v28 = *(v12 + 16);
            v29 = *(v12 + 24);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = v30;
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v28, v32))
              {
                goto LABEL_161;
              }

              v33 = v29;
              v34 = v28 - v32 + v31;
              if (__OFSUB__(v33, v28))
              {
                goto LABEL_160;
              }
            }

            else
            {
              v41 = v29;
              v34 = 0;
              if (__OFSUB__(v41, v28))
              {
                goto LABEL_160;
              }
            }

            __DataStorage._length.getter();
            v38 = v34;
LABEL_55:
            v42 = v110;
            sub_100771A28(v38, v15, v14, v112);
            v110 = v42;
            v40 = v112[0];
            a1 = v107;
            v11 = v108;
          }

          else
          {
            memset(v112, 0, 14);
            v39 = v110;
            sub_100771A28(v112, v15, v14, &v111);
            v110 = v39;
            v40 = v111;
          }

          v10 = v109;
          if ((v40 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        if (v16)
        {
          v35 = v12;
          if (v12 >> 32 < v12)
          {
            goto LABEL_159;
          }

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_162;
            }

            v36 += v35 - v37;
          }

          __DataStorage._length.getter();
          v38 = v36;
          goto LABEL_55;
        }

        v112[0] = *v7;
        LOWORD(v112[1]) = v13;
        BYTE2(v112[1]) = BYTE2(v13);
        BYTE3(v112[1]) = BYTE3(v13);
        BYTE4(v112[1]) = BYTE4(v13);
        BYTE5(v112[1]) = BYTE5(v13);
        v27 = v110;
        sub_100771A28(v112, v15, v14, &v111);
        v110 = v27;
        v10 = v109;
        if ((v111 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_57:
      v43 = v11[5];
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v44 = v11[6];
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v45 = v11[7];
      v47 = *(v7 + v45);
      v46 = *(v7 + v45 + 8);
      v48 = (a1 + v45);
      v50 = *v48;
      v49 = v48[1];
      v51 = v46 >> 62;
      v52 = v49 >> 62;
      if (v46 >> 62 == 3)
      {
        v53 = 0;
        if (!v47 && v46 == 0xC000000000000000 && v49 >> 62 == 3)
        {
          v53 = 0;
          if (!v50 && v49 == 0xC000000000000000)
          {
            goto LABEL_106;
          }
        }

LABEL_76:
        if (v52 <= 1)
        {
          goto LABEL_77;
        }

        goto LABEL_82;
      }

      if (v51 <= 1)
      {
        if (!v51)
        {
          v53 = BYTE6(v46);
          if (v52 <= 1)
          {
            goto LABEL_77;
          }

          goto LABEL_82;
        }

        LODWORD(v53) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_165;
        }

        v53 = v53;
        goto LABEL_76;
      }

      if (v51 == 2)
      {
        v55 = *(v47 + 16);
        v54 = *(v47 + 24);
        v23 = __OFSUB__(v54, v55);
        v53 = v54 - v55;
        if (v23)
        {
          goto LABEL_166;
        }

        goto LABEL_76;
      }

      v53 = 0;
      if (v52 <= 1)
      {
LABEL_77:
        if (v52)
        {
          LODWORD(v56) = HIDWORD(v50) - v50;
          if (__OFSUB__(HIDWORD(v50), v50))
          {
            goto LABEL_163;
          }

          v56 = v56;
        }

        else
        {
          v56 = BYTE6(v49);
        }

        goto LABEL_84;
      }

LABEL_82:
      if (v52 != 2)
      {
        if (v53)
        {
          goto LABEL_4;
        }

        goto LABEL_106;
      }

      v58 = *(v50 + 16);
      v57 = *(v50 + 24);
      v23 = __OFSUB__(v57, v58);
      v56 = v57 - v58;
      if (v23)
      {
        goto LABEL_164;
      }

LABEL_84:
      if (v53 != v56)
      {
        goto LABEL_4;
      }

      if (v53 >= 1)
      {
        if (v51 > 1)
        {
          if (v51 != 2)
          {
            memset(v112, 0, 14);
            sub_100017D5C(v47, v46);
            sub_100017D5C(v50, v49);
            v73 = v110;
            sub_100771A28(v112, v50, v49, &v111);
            v110 = v73;
            sub_100016590(v50, v49);
            sub_100016590(v47, v46);
            v10 = v109;
            if ((v111 & 1) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_106;
          }

          v60 = v50;
          v61 = *(v47 + 16);
          v105 = *(v47 + 24);
          sub_100017D5C(v47, v46);
          v106 = v60;
          sub_100017D5C(v60, v49);
          v62 = __DataStorage._bytes.getter();
          if (v62)
          {
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v61, v63))
            {
              goto LABEL_175;
            }

            v62 += v61 - v63;
          }

          if (__OFSUB__(v105, v61))
          {
            goto LABEL_172;
          }

          __DataStorage._length.getter();
          v64 = v62;
          v65 = v106;
          v66 = v110;
          sub_100771A28(v64, v106, v49, v112);
          v110 = v66;
          sub_100016590(v65, v49);
          sub_100016590(v47, v46);
          v67 = v112[0];
          a1 = v107;
          goto LABEL_103;
        }

        if (v51)
        {
          v106 = v50;
          if (v47 >> 32 < v47)
          {
            goto LABEL_171;
          }

          sub_100017D5C(v47, v46);
          sub_100017D5C(v106, v49);
          v68 = __DataStorage._bytes.getter();
          if (v68)
          {
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v47, v69))
            {
              goto LABEL_176;
            }

            v68 += v47 - v69;
          }

          a1 = v107;
          __DataStorage._length.getter();
          v70 = v68;
          v71 = v106;
          v72 = v110;
          sub_100771A28(v70, v106, v49, v112);
          v110 = v72;
          sub_100016590(v71, v49);
          sub_100016590(v47, v46);
          v67 = v112[0];
LABEL_103:
          v11 = v108;
          v10 = v109;
          if ((v67 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_106;
        }

        v112[0] = v47;
        LOWORD(v112[1]) = v46;
        BYTE2(v112[1]) = BYTE2(v46);
        BYTE3(v112[1]) = BYTE3(v46);
        BYTE4(v112[1]) = BYTE4(v46);
        BYTE5(v112[1]) = BYTE5(v46);
        sub_100017D5C(v47, v46);
        sub_100017D5C(v50, v49);
        v11 = v108;
        v59 = v110;
        sub_100771A28(v112, v50, v49, &v111);
        v110 = v59;
        v10 = v109;
        sub_100016590(v50, v49);
        sub_100016590(v47, v46);
        if ((v111 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_106:
      v74 = v11[8];
      v76 = *(v7 + v74);
      v75 = *(v7 + v74 + 8);
      v77 = (a1 + v74);
      v78 = *v77;
      v79 = v77[1];
      v80 = v75 >> 62;
      v81 = v79 >> 62;
      if (v75 >> 62 == 3)
      {
        v82 = 0;
        if (!v76 && v75 == 0xC000000000000000 && v79 >> 62 == 3)
        {
          v82 = 0;
          if (!v78 && v79 == 0xC000000000000000)
          {
LABEL_153:
            sub_10062CBB8(v7, type metadata accessor for OwnedDeviceKeyRecord);
            return 1;
          }
        }

LABEL_123:
        if (v81 <= 1)
        {
          goto LABEL_124;
        }

        goto LABEL_129;
      }

      if (v80 <= 1)
      {
        if (!v80)
        {
          v82 = BYTE6(v75);
          if (v81 <= 1)
          {
            goto LABEL_124;
          }

          goto LABEL_129;
        }

        LODWORD(v82) = HIDWORD(v76) - v76;
        if (__OFSUB__(HIDWORD(v76), v76))
        {
          goto LABEL_170;
        }

        v82 = v82;
        goto LABEL_123;
      }

      if (v80 == 2)
      {
        v84 = *(v76 + 16);
        v83 = *(v76 + 24);
        v23 = __OFSUB__(v83, v84);
        v82 = v83 - v84;
        if (v23)
        {
          goto LABEL_169;
        }

        goto LABEL_123;
      }

      v82 = 0;
      if (v81 <= 1)
      {
LABEL_124:
        if (v81)
        {
          LODWORD(v85) = HIDWORD(v78) - v78;
          if (__OFSUB__(HIDWORD(v78), v78))
          {
            goto LABEL_168;
          }

          v85 = v85;
        }

        else
        {
          v85 = BYTE6(v79);
        }

        goto LABEL_131;
      }

LABEL_129:
      if (v81 != 2)
      {
        if (!v82)
        {
          goto LABEL_153;
        }

        goto LABEL_4;
      }

      v87 = *(v78 + 16);
      v86 = *(v78 + 24);
      v23 = __OFSUB__(v86, v87);
      v85 = v86 - v87;
      if (v23)
      {
        goto LABEL_167;
      }

LABEL_131:
      if (v82 != v85)
      {
        goto LABEL_4;
      }

      if (v82 < 1)
      {
        goto LABEL_153;
      }

      if (v80 <= 1)
      {
        if (!v80)
        {
          v112[0] = v76;
          LOWORD(v112[1]) = v75;
          BYTE2(v112[1]) = BYTE2(v75);
          BYTE3(v112[1]) = BYTE3(v75);
          BYTE4(v112[1]) = BYTE4(v75);
          BYTE5(v112[1]) = BYTE5(v75);
          sub_100017D5C(v78, v79);
          sub_100017D5C(v78, v79);
          v11 = v108;
          v88 = v110;
          sub_100771A28(v112, v78, v79, &v111);
          v110 = v88;
          v10 = v109;
          sub_100016590(v78, v79);
          sub_100016590(v78, v79);
          sub_100016590(v76, v75);
          if (v111)
          {
            goto LABEL_153;
          }

          goto LABEL_4;
        }

        v96 = v76;
        v76 = v76;
        v105 = (v96 >> 32) - v76;
        if (v96 >> 32 < v76)
        {
          goto LABEL_173;
        }

        sub_100017D5C(v78, v79);
        sub_100017D5C(v78, v79);
        v106 = v96;
        sub_100017D5C(v96, v75);
        v97 = __DataStorage._bytes.getter();
        if (v97)
        {
          v98 = __DataStorage._offset.getter();
          if (__OFSUB__(v76, v98))
          {
            goto LABEL_178;
          }

          v97 += v76 - v98;
        }

        v99 = v106;
        __DataStorage._length.getter();
        v100 = v97;
        v101 = v110;
        sub_100771A28(v100, v78, v79, v112);
        v110 = v101;
        sub_100016590(v78, v79);
        sub_100016590(v78, v79);
        sub_100016590(v99, v75);
        v95 = v112[0];
        goto LABEL_150;
      }

      if (v80 == 2)
      {
        v89 = v76;
        v90 = *(v76 + 16);
        v105 = *(v89 + 24);
        sub_100017D5C(v78, v79);
        sub_100017D5C(v78, v79);
        v106 = v89;
        sub_100017D5C(v89, v75);
        v91 = __DataStorage._bytes.getter();
        if (v91)
        {
          v92 = __DataStorage._offset.getter();
          if (__OFSUB__(v90, v92))
          {
            goto LABEL_177;
          }

          v91 += v90 - v92;
        }

        if (__OFSUB__(v105, v90))
        {
          goto LABEL_174;
        }

        __DataStorage._length.getter();
        v93 = v91;
        v94 = v110;
        sub_100771A28(v93, v78, v79, v112);
        v110 = v94;
        sub_100016590(v78, v79);
        sub_100016590(v78, v79);
        sub_100016590(v106, v75);
        v95 = v112[0];
        a1 = v107;
LABEL_150:
        v11 = v108;
        goto LABEL_152;
      }

      memset(v112, 0, 14);
      sub_100017D5C(v78, v79);
      sub_100017D5C(v78, v79);
      v102 = v110;
      sub_100771A28(v112, v78, v79, &v111);
      v110 = v102;
      sub_100016590(v78, v79);
      sub_100016590(v78, v79);
      sub_100016590(v76, v75);
      v95 = v111;
LABEL_152:
      v10 = v109;
      if (v95)
      {
        goto LABEL_153;
      }

LABEL_4:
      sub_10062CBB8(v7, type metadata accessor for OwnedDeviceKeyRecord);
      v9 += v10;
      if (!--v8)
      {
        return 0;
      }
    }

    if (v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13 == 0xC000000000000000;
    }

    v19 = 0;
    v20 = v18 && v14 >> 62 == 3;
    if (v20 && !v15 && v14 == 0xC000000000000000)
    {
      goto LABEL_57;
    }

LABEL_27:
    if (v17 <= 1)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_1005C9C88(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v8 | (v7 << 6))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005C9D54(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);

      sub_100DEA8E0(v14, v11, v12, v13);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1005C9E68(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_100DE8BCC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005CA078(uint64_t a1)
{
  v2 = v1;
  v65 = type metadata accessor for RawSearchResult();
  v59 = *(v65 - 1);
  v4 = *(v59 + 64);
  v5 = __chkstk_darwin(v65);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v55 - v9;
  v11 = __chkstk_darwin(v8);
  v63 = &v55 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v58 = &v55 - v16;
  v17 = 0;
  v60 = a1;
  v61 = v2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v64 = v15;
  v56 = v24;
  v57 = v19;
  if (v23)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_6:
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v25 >= v24)
    {
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
  }

  while (!v23);
LABEL_9:
  v26 = __clz(__rbit64(v23));
  v23 &= v23 - 1;
  v27 = *(v59 + 72);
  v28 = v58;
  sub_10062CD24(*(v60 + 48) + v27 * (v26 | (v25 << 6)), v58, type metadata accessor for RawSearchResult);
  sub_10062CC64(v28, v15, type metadata accessor for RawSearchResult);
  v29 = *v2;
  v30 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100D15128();
  v31 = Hasher._finalize()();
  v32 = -1 << *(v29 + 32);
  v33 = v31 & ~v32;
  if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
  {
    v34 = ~v32;
    v35 = *v15;
    do
    {
      sub_10062CD24(*(v29 + 48) + v33 * v27, v7, type metadata accessor for RawSearchResult);
      if (*v7 == v35 && (v36 = v65[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v7[v65[6]] == *&v64[v65[6]] && *&v7[v65[7]] == *&v64[v65[7]] && *&v7[v65[8]] == *&v64[v65[8]])
      {
        v37 = v65[12];
        v62 = static UUID.== infix(_:_:)();
        sub_10062CBB8(v7, type metadata accessor for RawSearchResult);
        if (v62)
        {
          v15 = v64;
          sub_10062CBB8(v64, type metadata accessor for RawSearchResult);
          v17 = v25;
          v2 = v61;
LABEL_40:
          v24 = v56;
          v19 = v57;
          if (!v23)
          {
            goto LABEL_6;
          }

LABEL_5:
          v25 = v17;
          goto LABEL_9;
        }
      }

      else
      {
        sub_10062CBB8(v7, type metadata accessor for RawSearchResult);
      }

      v33 = (v33 + 1) & v34;
    }

    while (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
  }

  v2 = v61;
  v38 = *v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v63;
  sub_10062CD24(v64, v63, type metadata accessor for RawSearchResult);
  v66 = *v2;
  v41 = v66;
  v42 = v66[2];
  if (v66[3] <= v42)
  {
    v43 = v42 + 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_100DF50BC(v43);
    }

    else
    {
      sub_100E08824(v43);
    }

    v41 = v66;
    v44 = v66[5];
    Hasher.init(_seed:)();
    sub_100D15128();
    v45 = Hasher._finalize()();
    v46 = -1 << *(v41 + 32);
    v33 = v45 & ~v46;
    if ((*(v41 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33))
    {
      v47 = ~v46;
      v48 = *v40;
      do
      {
        sub_10062CD24(v41[6] + v33 * v27, v10, type metadata accessor for RawSearchResult);
        if (*v10 == v48 && (v49 = v65[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v10[v65[6]] == *&v63[v65[6]] && *&v10[v65[7]] == *&v63[v65[7]] && *&v10[v65[8]] == *&v63[v65[8]])
        {
          v50 = v65[12];
          v62 = static UUID.== infix(_:_:)();
          sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
          if (v62)
          {
            goto LABEL_45;
          }
        }

        else
        {
          sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
        }

        v33 = (v33 + 1) & v47;
      }

      while (((*(v41 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) != 0);
      v2 = v61;
      v40 = v63;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04FE0();
    v41 = v66;
  }

  *(v41 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v33;
  sub_10062CC64(v40, v41[6] + v33 * v27, type metadata accessor for RawSearchResult);
  v15 = v64;
  sub_10062CBB8(v64, type metadata accessor for RawSearchResult);
  v51 = v41[2];
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (!v52)
  {
    v41[2] = v53;
    *v2 = v41;
    v17 = v25;
    goto LABEL_40;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005CA6B4(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Characteristic();
    sub_100009774(&qword_1016A5B28, type metadata accessor for Characteristic);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_1000128F8();
    }

    while (1)
    {
      sub_100DF104C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for Characteristic();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_1000128F8();
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_1000128F8();
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1005CA8D8(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, a2, a3);
    sub_100009CC8(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_1000128F8();
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1005CAAF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100771FF8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1005CABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_100771E30(a1, a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a3 + 56);
    v14 = a4(0);
    v21 = *(v14 - 8);
    sub_10062CD24(v13 + *(v21 + 72) * v12, a6, a5);
    v15 = *(v21 + 56);
    v16 = a6;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = a4(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a6;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1005CAD18(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000210EC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1005CAD68@<X0>(uint64_t *a1@<X8>)
{
  result = static Data.random(bytes:)();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 != 32)
  {
LABEL_13:
    v13 = v3;
    v14 = result;
    if (v4 == 1)
    {
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        while (1)
        {
          v11 = v4;
LABEL_22:
          sub_100018350();
          swift_allocError();
          *v12 = 32;
          *(v12 + 8) = v11;
          *(v12 + 16) = 0;
          swift_willThrow();
          sub_100016590(v14, v13);
          swift_unexpectedError();
          __break(1u);
        }
      }

      __break(1u);
    }

    if (v4 != 2)
    {
      v11 = BYTE6(v3);
      goto LABEL_22;
    }

    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = v10 - v9;
    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    v13 = v3;
    v14 = result;
    v11 = 0;
    goto LABEL_22;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005CAEA4@<X0>(uint64_t *a1@<X8>)
{
  result = static Data.random(bytes:)();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 != 6)
  {
LABEL_13:
    v13 = v3;
    v14 = result;
    if (v4 == 1)
    {
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        while (1)
        {
          v11 = v4;
LABEL_22:
          sub_100018350();
          swift_allocError();
          *v12 = 6;
          *(v12 + 8) = v11;
          *(v12 + 16) = 0;
          swift_willThrow();
          sub_100016590(v14, v13);
          swift_unexpectedError();
          __break(1u);
        }
      }

      __break(1u);
    }

    if (v4 != 2)
    {
      v11 = BYTE6(v3);
      goto LABEL_22;
    }

    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = v10 - v9;
    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    v13 = v3;
    v14 = result;
    v11 = 0;
    goto LABEL_22;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005CAFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LocationFetcher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  My = type metadata accessor for Feature.FindMy();
  v22[3] = My;
  v22[4] = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v12 = sub_1000280DC(v22);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v22);
  if (My)
  {
    v14 = v4[6];
    v15 = v4[7];
    sub_1000035D0(v4 + 3, v14);
    if ((*(v15 + 24))(v14, v15))
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      type metadata accessor for Transaction();
      sub_10062CD24(v4, &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
      v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v18 = swift_allocObject();
      v18[2] = sub_10013A884;
      v18[3] = v16;
      v18[4] = a1;
      sub_10062CC64(&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for LocationFetcher);

      static Transaction.asyncTask(name:block:)();
    }

    else
    {
      type metadata accessor for Transaction();
      sub_10062CD24(v4, &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
      v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v20 = swift_allocObject();
      v20[2] = a2;
      v20[3] = a3;
      v20[4] = a1;
      sub_10062CC64(&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LocationFetcher);

      static Transaction.asyncTask(name:block:)();
    }
  }

  return result;
}

uint64_t sub_1005CB328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LocationFetcher();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v3[6];
  v11 = v3[7];
  sub_1000035D0(v3 + 3, v10);
  if ((*(v11 + 24))(v10, v11))
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    type metadata accessor for Transaction();
    sub_10062CD24(v3, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = sub_100150F2C;
    v14[3] = v12;
    v14[4] = a1;
    sub_10062CC64(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    type metadata accessor for Transaction();
    sub_10062CD24(v3, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a1;
    sub_10062CC64(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_1005CB5CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF88);
  sub_1000076D4(v0, qword_10177AF88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB64C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFA0);
  sub_1000076D4(v0, qword_10177AFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB6CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFB8);
  sub_1000076D4(v0, qword_10177AFB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB748()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFD0);
  sub_1000076D4(v0, qword_10177AFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000035D0(a1, v4);
  LOBYTE(v4) = (*(v5 + 24))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000035D0(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  if (v4)
  {
    if (v8)
    {
      if (qword_101694808 != -1)
      {
        swift_once();
      }

      v9 = qword_10177AFD0;
    }

    else
    {
      if (qword_1016947F8 != -1)
      {
        swift_once();
      }

      v9 = qword_10177AFA0;
    }
  }

  else if (v8)
  {
    if (qword_101694800 != -1)
    {
      swift_once();
    }

    v9 = qword_10177AFB8;
  }

  else
  {
    if (qword_1016947F0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177AF88;
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000076D4(v10, v9);
  v12 = *(*(v10 - 8) + 16);

  return v12(a2, v11, v10);
}

uint64_t sub_1005CB9A8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v164 = a7;
  LODWORD(v162) = a3;
  v166 = type metadata accessor for UUID();
  v169 = *(v166 - 8);
  v14 = v169[8];
  v15 = __chkstk_darwin(v166);
  v151 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v161 = &v151 - v18;
  v19 = __chkstk_darwin(v17);
  v158 = &v151 - v20;
  v21 = __chkstk_darwin(v19);
  v157 = &v151 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v151 - v24;
  v26 = __chkstk_darwin(v23);
  v152 = &v151 - v27;
  __chkstk_darwin(v26);
  v154 = &v151 - v28;
  v29 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v151 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v163 = (&v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v155 = &v151 - v39;
  v40 = __chkstk_darwin(v38);
  v153 = &v151 - v41;
  __chkstk_darwin(v40);
  v168 = &v151 - v42;
  swift_beginAccess();
  v160 = a4;
  v43 = a4[2];
  if (*(v43 + 16) && (v44 = sub_1000210EC(a1), (v45 & 1) != 0))
  {
    v46 = *(*(v43 + 56) + 8 * v44);
    swift_endAccess();
    v173 = v46;
  }

  else
  {
    swift_endAccess();
    v46 = &_swiftEmptySetSingleton;
    v173 = &_swiftEmptySetSingleton;
  }

  v156 = v46[2];

  sub_1005CA078(v47);
  swift_beginAccess();
  v48 = *(a5 + 16);
  if (*(v48 + 16))
  {
    v49 = sub_1000210EC(a1);
    v50 = v168;
    if (v51)
    {
      (*(v34 + 16))(v32, *(v48 + 56) + *(v34 + 72) * v49, v33);
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }
  }

  else
  {
    v52 = 1;
    v50 = v168;
  }

  (*(v34 + 56))(v32, v52, 1, v33);
  swift_endAccess();
  v53 = *(v34 + 48);
  v54 = v53(v32, 1, v33);
  v167 = a6;
  if (v54 == 1)
  {
    static Date.distantPast.getter();
    if (v53(v32, 1, v33) != 1)
    {
      sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v34 + 32))(v50, v32, v33);
  }

  v55 = v173;
  if (!v173[2])
  {
    if (v162)
    {
      v165 = v173;
      v56 = *(type metadata accessor for LocationFetcher() + 32);
      v57 = v169;
      v58 = v169[2];
      v59 = v166;
      v58(v154, a1, v166);
      (*(v34 + 16))(v153, v50, v33);
      v60 = v152;
      v58(v152, a1, v59);
      v61 = v164;
      swift_retain_n();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        LODWORD(v167) = v63;
        v64 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v172[0] = v163;
        *v64 = 141558787;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v65 = v154;
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v59;
        v69 = v68;
        v70 = v57[1];
        v169 = v57 + 1;
        v70(v65, v67);
        v71 = sub_1000136BC(v66, v69, v172);

        *(v64 + 14) = v71;
        *(v64 + 22) = 2048;
        v72 = v155;
        static Date.trustedNow.getter(v155);
        v73 = v153;
        Date.timeIntervalSince(_:)();
        v75 = v74;
        v76 = *(v34 + 8);
        v76(v72, v33);
        v76(v73, v33);
        *(v64 + 24) = fabs(v75);
        *(v64 + 32) = 2048;
        swift_beginAccess();
        v77 = *(v61 + 16);
        if (*(v77 + 16) && (v78 = sub_1000210EC(v152), (v79 & 1) != 0))
        {
          v80 = *(*(v77 + 56) + 8 * v78);
        }

        else
        {
          v80 = 0;
        }

        v149 = v166;
        swift_endAccess();

        v70(v152, v149);
        *(v64 + 34) = v80;

        _os_log_impl(&_mh_execute_header, v62, v167, "No location found for beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v64, 0x2Au);
        sub_100007BAC(v163);

        v76(v168, v33);
      }

      else
      {

        v147 = v57[1];
        v147(v60, v59);

        v148 = *(v34 + 8);
        v148(v153, v33);
        v147(v154, v59);
        v148(v50, v33);
      }
    }

    goto LABEL_22;
  }

  if ((v162 & 1) == 0)
  {
LABEL_22:
    swift_beginAccess();
    v81 = *(a8 + 16);

    v82 = sub_1005CCB64(v55, a1, v81);

    if ((v82 & 1) == 0)
    {
      v131 = v160;
      swift_beginAccess();

      v132 = v131[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v131[2];
      v131[2] = 0x8000000000000000;
      sub_100FFC200(v55, a1, isUniquelyReferenced_nonNull_native);
      v131[2] = v171;
      swift_endAccess();
      LODWORD(v131) = *(type metadata accessor for LocationFetcher() + 32);
      v134 = v169;
      v135 = v151;
      v136 = v166;
      (v169[2])(v151, a1, v166);
      v137 = Logger.logObject.getter();
      v138 = v55;
      v139 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v139))
      {
        v140 = v135;
        v141 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v172[0] = v167;
        *v141 = 134218499;
        *(v141 + 4) = v138[2] - v156;
        *(v141 + 12) = 2160;
        *(v141 + 14) = 1752392040;
        *(v141 + 22) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v165 = v138;
        v142 = dispatch thunk of CustomStringConvertible.description.getter();
        v144 = v143;
        (v134[1])(v140, v136);
        v145 = sub_1000136BC(v142, v144, v172);

        *(v141 + 24) = v145;
        _os_log_impl(&_mh_execute_header, v137, v139, "Appended %ld location results for beacon %{private,mask.hash}s.", v141, 0x20u);
        sub_100007BAC(v167);

        (*(v34 + 8))(v168, v33);
      }

      else
      {

        (v134[1])(v135, v136);
        (*(v34 + 8))(v50, v33);
      }
    }
  }

  v162 = v34;
  v83 = v169;
  v84 = v169[2];
  v84(v25, a1, v166);
  swift_beginAccess();
  v85 = *(a8 + 16);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v85;
  v159 = v33;
  v165 = v55;
  if ((v86 & 1) == 0)
  {
    v85 = sub_100A5BFE0(0, v85[2] + 1, 1, v85);
    *(a8 + 16) = v85;
  }

  v88 = v85[2];
  v87 = v85[3];
  if (v88 >= v87 >> 1)
  {
    v85 = sub_100A5BFE0(v87 > 1, v88 + 1, 1, v85);
  }

  v85[2] = v88 + 1;
  v89 = v166;
  (v83[4])(v85 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + v83[9] * v88, v25, v166);
  *(a8 + 16) = v85;
  v90 = v89;
  sub_1000BC4D4(&qword_10169C9D0, &qword_101398A88);
  v91 = (sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280) - 8);
  v92 = *(*v91 + 72);
  v93 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_101385D80;
  v95 = v94 + v93;
  v96 = v91[14];
  v84(v95, a1, v89);
  *(v95 + v96) = v165;

  v97 = sub_1009089B8(v94);
  swift_setDeallocating();
  sub_10000B3A8(v95, &qword_10169C9D8, &qword_1013B3280);
  swift_deallocClassInstance();
  v98 = sub_1005CEE64(v97);

  swift_beginAccess();

  v99 = *(a9 + 16);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *(a9 + 16);
  *(a9 + 16) = 0x8000000000000000;
  sub_10062B3A4(v98, sub_10060D9AC, 0, v100, &v170);

  *(a9 + 16) = v170;
  swift_endAccess();

  v101 = v157;
  v84(v157, a1, v89);
  swift_beginAccess();
  sub_1001DE1B0(0, v101);
  swift_endAccess();
  LODWORD(v98) = *(type metadata accessor for LocationFetcher() + 32);
  v102 = v158;
  v84(v158, a1, v89);
  v103 = v162;
  v104 = v168;
  (*(v162 + 16))(v163, v168, v159);
  v105 = v161;
  v84(v161, a1, v89);
  v106 = v164;
  swift_retain_n();
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v107, v108))
  {
    LODWORD(v167) = v108;
    v109 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v170 = v160;
    *v109 = 134219011;
    *(v109 + 4) = v165[2] - v156;
    *(v109 + 12) = 2160;
    *(v109 + 14) = 1752392040;
    *(v109 + 22) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v111;
    v113 = v169[1];
    v114 = v90;
    ++v169;
    v115 = v113;
    v113(v102, v114);
    v116 = sub_1000136BC(v110, v112, &v170);

    *(v109 + 24) = v116;
    *(v109 + 32) = 2048;
    v117 = v155;
    static Date.trustedNow.getter(v155);
    v118 = v163;
    Date.timeIntervalSince(_:)();
    v120 = v119;
    v121 = *(v103 + 8);
    v122 = v159;
    v121(v117, v159);
    v162 = v103 + 8;
    v121(v118, v122);
    *(v109 + 34) = fabs(v120);
    *(v109 + 42) = 2048;
    swift_beginAccess();
    v123 = *(v106 + 16);
    if (*(v123 + 16))
    {
      v124 = v161;
      v125 = sub_1000210EC(v161);
      if (v126)
      {
        v127 = *(*(v123 + 56) + 8 * v125);
      }

      else
      {
        v127 = 0;
      }

      v146 = v168;
    }

    else
    {
      v127 = 0;
      v146 = v168;
      v124 = v161;
    }

    swift_endAccess();

    v115(v124, v166);
    *(v109 + 44) = v127;

    _os_log_impl(&_mh_execute_header, v107, v167, "Terminated fetch with %ld results and cleared beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v109, 0x34u);
    sub_100007BAC(v160);

    v121(v146, v122);
  }

  else
  {

    v128 = v169[1];
    v128(v105, v89);

    v129 = *(v103 + 8);
    v130 = v159;
    v129(v163, v159);
    v128(v102, v89);
    v129(v104, v130);
  }
}

unint64_t sub_1005CCB64(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v261 = a3;
  v277 = a2;
  v284 = a1;
  *&v263 = sub_1000BC4D4(&qword_10169EF28, &unk_10139FC10);
  v270 = *(v263 - 8);
  v5 = *(v270 + 64);
  v6 = __chkstk_darwin(v263);
  *&v262 = &v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v282 = (&v253 - v8);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v265 = &v253 - v11;
  v12 = type metadata accessor for UUID();
  v276 = *(v12 - 8);
  v13 = *(v276 + 64);
  v14 = __chkstk_darwin(v12);
  v283 = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v253 - v17;
  v19 = __chkstk_darwin(v16);
  v268 = &v253 - v20;
  v21 = __chkstk_darwin(v19);
  v257 = &v253 - v22;
  v23 = __chkstk_darwin(v21);
  v259 = &v253 - v24;
  v25 = __chkstk_darwin(v23);
  v269 = &v253 - v26;
  v27 = __chkstk_darwin(v25);
  v271 = &v253 - v28;
  v29 = __chkstk_darwin(v27);
  v279 = &v253 - v30;
  v31 = __chkstk_darwin(v29);
  v258 = &v253 - v32;
  v33 = __chkstk_darwin(v31);
  v267 = &v253 - v34;
  v35 = __chkstk_darwin(v33);
  v260 = &v253 - v36;
  v37 = __chkstk_darwin(v35);
  v264 = &v253 - v38;
  __chkstk_darwin(v37);
  v274 = &v253 - v39;
  v278 = type metadata accessor for LocationFetcher();
  v40 = *(*(v278 - 8) + 64);
  v41 = __chkstk_darwin(v278);
  v266 = &v253 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v273 = (&v253 - v43);
  v44 = type metadata accessor for RawSearchResult();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v253 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v49 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v50 = sub_101074188(v290);

    v51 = *(v4 + 48);
    v52 = *(v4 + 56);
    sub_1000035D0((v4 + 24), v51);
    v53 = (*(v52 + 40))(v51, v52);
    v275 = v50;
    if (v53)
    {
      v54 = *(v278 + 32);
      v55 = v276;
      v281 = *(v276 + 16);
      v281(v18, v277, v12);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v272 = v4;
        v280 = v54;
        v59 = v58;
        v60 = swift_slowAlloc();
        v290 = v60;
        *v59 = 141558275;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v282 = *(v55 + 8);
        v282(v18, v12);
        v64 = sub_1000136BC(v61, v63, &v290);

        *(v59 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "Exhaustive termination policy in effect for %{private,mask.hash}s.", v59, 0x16u);
        sub_100007BAC(v60);
      }

      else
      {

        v282 = *(v55 + 8);
        v282(v18, v12);
      }

      v71 = v283;
      v72 = v284[2];
      v73 = v275;
      v74 = v72 >= v275;
      v281(v283, v277, v12);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v72 >= v73;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v290 = v79;
        *v78 = 67109635;
        *(v78 + 4) = v77;
        *(v78 + 8) = 2160;
        *(v78 + 10) = 1752392040;
        *(v78 + 18) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v71;
        v83 = v82;
        v282(v81, v12);
        v84 = sub_1000136BC(v80, v83, &v290);

        *(v78 + 20) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "Found enough results: %{BOOL}d to terminate beacon: %{private,mask.hash}s.", v78, 0x1Cu);
        sub_100007BAC(v79);
      }

      else
      {

        v282(v71, v12);
      }

      return v74 & 1;
    }

    v272 = v4;
    v65 = v284;
    v66 = v284 + 7;
    v67 = -1 << *(v284 + 32);
    v18 = _HashTable.startBucket.getter();
    v68 = *(v65 + 9);
    v69 = 1 << *(v65 + 32);
    v283 = v12;
    if (v18 == v69)
    {
      break;
    }

    v85 = v65;
    v281 = (v65 + 8);
    while ((v18 & 0x8000000000000000) == 0 && v18 < v69)
    {
      v4 = v18 >> 6;
      v12 = 1 << v18;
      if ((v66[v18 >> 6] & (1 << v18)) == 0)
      {
        goto LABEL_101;
      }

      sub_10062CD24(v85[6] + *(v45 + 72) * v18, v48, type metadata accessor for RawSearchResult);
      v87 = v48[*(v44 + 36)];
      if (v87 == 12)
      {
        sub_10062CBB8(v48, type metadata accessor for RawSearchResult);
      }

      else
      {
        sub_10062CBB8(v48, type metadata accessor for RawSearchResult);
        if (v87 != 13)
        {
          v12 = v283;
          v70 = *(v284 + 9);
          v69 = 1 << *(v284 + 32);
          goto LABEL_30;
        }
      }

      v85 = v284;
      v86 = 1 << *(v284 + 32);
      if (v18 >= v86)
      {
        goto LABEL_102;
      }

      v88 = v66[v4];
      if ((v88 & v12) == 0)
      {
        goto LABEL_103;
      }

      if (v68 != *(v284 + 9))
      {
        goto LABEL_104;
      }

      v89 = v88 & (-2 << (v18 & 0x3F));
      if (v89)
      {
        v86 = __clz(__rbit64(v89)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v90 = v4 << 6;
        v91 = v4 + 1;
        v92 = (v281 + 8 * v4);
        while (v91 < (v86 + 63) >> 6)
        {
          v93 = *v92++;
          v4 = v93;
          v90 += 64;
          ++v91;
          if (v93)
          {
            sub_1000BB408(v18, v68, 0);
            v85 = v284;
            v86 = __clz(__rbit64(v4)) + v90;
            goto LABEL_12;
          }
        }

        sub_1000BB408(v18, v68, 0);
        v85 = v284;
      }

LABEL_12:
      v68 = *(v85 + 9);
      v69 = 1 << *(v85 + 32);
      v18 = v86;
      v70 = v68;
      v12 = v283;
      if (v86 == v69)
      {
        goto LABEL_31;
      }
    }

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
    swift_once();
  }

  v70 = v68;
LABEL_30:
  v86 = v18;
LABEL_31:
  result = sub_10061CDE4(v86, v68, 0, v69, v70, 0, v284, sub_1005E8344);
  v95 = v284[2];
  v96 = v95 - result;
  if (__OFSUB__(v95, result))
  {
    goto LABEL_107;
  }

  v97 = result;
  v98 = v272;
  sub_10062CD24(v272, v273, type metadata accessor for LocationFetcher);
  v99 = v276;
  v100 = (v276 + 16);
  v101 = *(v276 + 16);
  v102 = v277;
  v101(v274, v277, v12);
  v103 = *v98;
  sub_100025020(v102, &v287);
  if (!v288)
  {
    sub_10000B3A8(&v287, &qword_101696920, &unk_10138B200);
LABEL_43:
    v123 = *(v278 + 32);
    v124 = v268;
    v101(v268, v102, v12);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      v290 = v284;
      *v127 = 141558275;
      *(v127 + 4) = 1752392040;
      *(v127 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v128 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v97;
      v130 = v96;
      v132 = v131;
      v133 = *(v276 + 8);
      v133(v124, v12);
      v134 = sub_1000136BC(v128, v132, &v290);
      v96 = v130;
      v97 = v129;

      *(v127 + 14) = v134;
      _os_log_impl(&_mh_execute_header, v125, v126, "Single-beacon termination policy in effect for %{private,mask.hash}s.", v127, 0x16u);
      sub_100007BAC(v284);
    }

    else
    {

      v133 = *(v276 + 8);
      v133(v124, v12);
    }

    v135 = v273;
    v136 = v274;
    v74 = sub_1005E8380(v97, v96, _swiftEmptyArrayStorage, v275, v273, v274);
    v133(v136, v12);
    sub_10062CBB8(v135, type metadata accessor for LocationFetcher);
    return v74 & 1;
  }

  v256 = v103;
  v280 = v100;
  v281 = v101;
  sub_10000A748(&v287, &v290);
  v104 = v291;
  v105 = v292;
  sub_1000035D0(&v290, v291);
  v106 = v265;
  (*(v105 + 200))(v104, v105);
  if ((*(v99 + 48))(v106, 1, v12) == 1)
  {
    sub_10000B3A8(v106, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_42;
  }

  v107 = v106;
  v108 = v264;
  (*(v99 + 32))(v264, v107, v12);
  sub_100ACBC98(v108, &v285);
  if (!v286)
  {
    (*(v99 + 8))(v108, v12);
    sub_10000B3A8(&v285, &unk_1016AA480, &unk_1013BD050);
LABEL_42:
    sub_100007BAC(&v290);
    v101 = v281;
    goto LABEL_43;
  }

  sub_10000A748(&v285, &v287);
  v109 = v288;
  v110 = v289;
  sub_1000035D0(&v287, v288);
  if ((*(v110 + 24))(v109, v110) < 2u)
  {
    (*(v276 + 8))(v108, v12);
    sub_100007BAC(&v287);
    goto LABEL_42;
  }

  v253 = v97;
  v111 = *(v278 + 32);
  v112 = v260;
  v281(v260, v102, v12);
  v268 = v111;
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  v115 = os_log_type_enabled(v113, v114);
  v254 = v96;
  if (v115)
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v285 = v117;
    *v116 = 141558275;
    *(v116 + 4) = 1752392040;
    *(v116 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v112;
    v121 = v120;
    v278 = *(v276 + 8);
    (v278)(v119, v12);
    v122 = sub_1000136BC(v118, v121, &v285);

    *(v116 + 14) = v122;
    _os_log_impl(&_mh_execute_header, v113, v114, "Multipart termination policy for %{private,mask.hash}s.", v116, 0x16u);
    sub_100007BAC(v117);
    v102 = v277;
  }

  else
  {

    v278 = *(v276 + 8);
    (v278)(v112, v12);
  }

  v137 = v267;
  sub_10062CD24(v272, v266, type metadata accessor for LocationFetcher);
  v138 = v281;
  v281(v137, v102, v12);
  v139 = v288;
  v140 = v289;
  sub_1000035D0(&v287, v288);
  v141 = (*(v140 + 16))(v139, v140);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v142 = *(v276 + 72);
  v143 = (*(v276 + 80) + 32) & ~*(v276 + 80);
  v144 = swift_allocObject();
  v255 = xmmword_101385D80;
  *(v144 + 16) = xmmword_101385D80;
  v138(v144 + v143, v102, v12);
  *&v285 = v261;

  sub_100398278(v144);
  v145 = sub_100615D6C(v285, v141);

  if (!v145[2])
  {

    v163 = v278;
    (v278)(v267, v12);
    sub_10062CBB8(v266, type metadata accessor for LocationFetcher);
    v164 = v257;
    v138(v257, v277, v12);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v285 = v168;
      *v167 = 141558275;
      *(v167 + 4) = 1752392040;
      *(v167 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v169 = dispatch thunk of CustomStringConvertible.description.getter();
      v171 = v170;
      v163(v164, v12);
      v172 = sub_1000136BC(v169, v171, &v285);

      *(v167 + 14) = v172;
      _os_log_impl(&_mh_execute_header, v165, v166, "Multipart termination policy found all remaining peers for %{private,mask.hash}s - applying single-beacon policy.", v167, 0x16u);
      sub_100007BAC(v168);
    }

    else
    {

      v163(v164, v12);
    }

    v251 = v273;
    v252 = v274;
    v74 = sub_1005E8380(v253, v254, _swiftEmptyArrayStorage, v275, v273, v274);
    v163(v264, v12);
    v163(v252, v12);
    sub_10062CBB8(v251, type metadata accessor for LocationFetcher);
LABEL_99:
    sub_100007BAC(&v287);
    sub_100007BAC(&v290);
    return v74 & 1;
  }

  result = sub_1005E8FE4(&v290, v256);
  v146 = result;
  v265 = *(result + 16);
  if (!v265)
  {

    v162 = _swiftEmptyArrayStorage;
LABEL_71:
    v173 = v258;
    v174 = v277;
    v281(v258, v277, v12);

    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();

    v177 = os_log_type_enabled(v175, v176);
    v178 = v276;
    v179 = v271;
    if (v177)
    {
      v180 = swift_slowAlloc();
      v282 = swift_slowAlloc();
      *&v285 = v282;
      *v180 = 141558531;
      *(v180 + 4) = 1752392040;
      *(v180 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v181 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v178;
      v184 = v183;
      v185 = v173;
      v186 = v278;
      (v278)(v185, v12);
      v187 = sub_1000136BC(v181, v184, &v285);

      *(v180 + 14) = v187;
      *(v180 + 22) = 2082;
      v188 = Array.description.getter();
      v190 = sub_1000136BC(v188, v189, &v285);

      *(v180 + 24) = v190;
      v178 = v182;
      v191 = v176;
      v192 = v186;
      _os_log_impl(&_mh_execute_header, v175, v191, "Counting multipart results for %{private,mask.hash}s, multipart: %{public}s.", v180, 0x20u);
      swift_arrayDestroy();
      v174 = v277;
    }

    else
    {

      v192 = v278;
      (v278)(v173, v12);
    }

    v194 = *(v162 + 2);
    v260 = v162;
    v261 = v194;
    if (v194)
    {
      v195 = v162 + 32;
      v282 = _swiftEmptyDictionarySingleton;
      v270 = v178 + 8;
      *&v193 = 141558787;
      v263 = v193;
      *&v193 = 141558275;
      v262 = v193;
      v196 = v272;
      do
      {
        while (1)
        {
          v205 = *v195++;
          v204 = v205;
          if (v205 >= 3uLL)
          {
            break;
          }

          v279 = v195;
          v206 = v196;
          v207 = dword_1013B3950[v204];
          v208 = dword_1013B395C[v204];
          v209 = v284;
          v210 = v266;
          v211 = v267;
          v212 = sub_1005E88B4(v208 | v207, 0, v284, v266, v267);
          v213 = sub_1005E88B4(v208 | v207, 1, v209, v210, v211);
          sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
          v214 = swift_allocObject();
          *(v214 + 16) = v255;
          *(v214 + 32) = v204;
          v215 = sub_1005E8380(v212, v213, v214, v275, v273, v274);
          v174 = v277;

          v216 = v282;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v285 = v216;
          v196 = v206;
          sub_100FFE718(v215 & 1, v204, isUniquelyReferenced_nonNull_native);
          v282 = v285;
          v218 = v269;
          v281(v269, v174, v12);
          v219 = Logger.logObject.getter();
          v220 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            LODWORD(v265) = v215 & 1;
            v222 = v221;
            v223 = swift_slowAlloc();
            *&v285 = v223;
            *v222 = v263;
            *(v222 + 4) = 1752392040;
            *(v222 + 12) = 2081;
            sub_100009774(&qword_101696930, &type metadata accessor for UUID);
            v224 = dispatch thunk of CustomStringConvertible.description.getter();
            v226 = v225;
            v192 = v278;
            (v278)(v269, v12);
            v227 = sub_1000136BC(v224, v226, &v285);
            v196 = v272;

            *(v222 + 14) = v227;
            *(v222 + 22) = 256;
            *(v222 + 24) = v204;
            *(v222 + 25) = 1024;
            *(v222 + 27) = v265;
            _os_log_impl(&_mh_execute_header, v219, v220, "Multipart termination for %{private,mask.hash}s part %hhu foundEnoughConnectedPositions: %{BOOL}d.", v222, 0x1Fu);
            sub_100007BAC(v223);
            v174 = v277;
          }

          else
          {

            v230 = v218;
            v192 = v278;
            (v278)(v230, v12);
          }

          v179 = v271;
          v195 = v279;
          if (!--v194)
          {
            goto LABEL_87;
          }
        }

        v281(v179, v174, v12);
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v228, v229))
        {
          v197 = swift_slowAlloc();
          v279 = v195;
          v198 = v197;
          v199 = swift_slowAlloc();
          *&v285 = v199;
          *v198 = v262;
          *(v198 + 4) = 1752392040;
          *(v198 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v200 = dispatch thunk of CustomStringConvertible.description.getter();
          v202 = v201;
          v192(v271, v12);
          v203 = sub_1000136BC(v200, v202, &v285);
          v179 = v271;

          *(v198 + 14) = v203;
          _os_log_impl(&_mh_execute_header, v228, v229, "Could not determine multipart configuration for %{private,mask.hash}s - partId out of bounds.", v198, 0x16u);
          sub_100007BAC(v199);

          v195 = v279;
        }

        else
        {

          v192(v179, v12);
        }

        v174 = v277;
        --v194;
      }

      while (v194);
    }

    else
    {
      v282 = _swiftEmptyDictionarySingleton;
    }

LABEL_87:
    v192(v267, v12);
    sub_10062CBB8(v266, type metadata accessor for LocationFetcher);
    v231 = v273;
    v232 = v274;
    LODWORD(v284) = sub_1005E8380(v253, v254, _swiftEmptyArrayStorage, v275, v273, v274);
    v192(v232, v12);
    result = sub_10062CBB8(v231, type metadata accessor for LocationFetcher);
    v233 = 0;
    v234 = v259;
    v235 = v281;
    v236 = v260;
    v237 = v261;
    v238 = v282;
    do
    {
      v239 = v233;
      if (v237 == v233)
      {
        break;
      }

      if (v233 >= *(v236 + 2))
      {
        goto LABEL_108;
      }

      if (!*(v238 + 2))
      {
        break;
      }

      result = sub_1007721A4(v236[v233 + 32]);
      v238 = v282;
      if ((v240 & 1) == 0)
      {
        break;
      }

      v233 = v239 + 1;
    }

    while ((*(*(v282 + 7) + result) & 1) != 0);

    v241 = v283;
    v235(v234, v174, v283);
    v242 = Logger.logObject.getter();
    v243 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v242, v243))
    {
      LODWORD(v281) = v237 == v239;
      v244 = v234;
      v245 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      *&v285 = v280;
      *v245 = 141558787;
      *(v245 + 4) = 1752392040;
      *(v245 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v246 = dispatch thunk of CustomStringConvertible.description.getter();
      v248 = v247;
      v192(v244, v241);
      v249 = sub_1000136BC(v246, v248, &v285);

      *(v245 + 14) = v249;
      *(v245 + 22) = 1024;
      v250 = v284;
      *(v245 + 24) = v284 & 1;
      *(v245 + 28) = 1024;
      *(v245 + 30) = v281;
      _os_log_impl(&_mh_execute_header, v242, v243, "Multipart termination result for %{private,mask.hash}s, singleBeacon: %{BOOL}d, multipartResult: %{BOOL}d", v245, 0x22u);
      sub_100007BAC(v280);
      v237 = v261;

      v192(v264, v241);
    }

    else
    {

      v192(v234, v241);
      v192(v264, v241);

      v250 = v284;
    }

    v74 = v250 & (v237 == v239);
    goto LABEL_99;
  }

  v147 = 0;
  v261 = result + ((*(v270 + 80) + 32) & ~*(v270 + 80));
  v148 = v145 + 7;
  v260 = _swiftEmptyArrayStorage;
  v149 = v282;
  v257 = result;
  while (v147 < *(v146 + 2))
  {
    sub_1000D2A70(v261 + *(v270 + 72) * v147, v149, &qword_10169EF28, &unk_10139FC10);
    if (v145[2])
    {
      v150 = v145[5];
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
      v151 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v152 = -1 << *(v145 + 32);
      v153 = v151 & ~v152;
      if ((*(v148 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153))
      {
        v154 = ~v152;
        while (1)
        {
          v155 = v279;
          v281(v279, v145[6] + v153 * v142, v12);
          sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
          v156 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v278)(v155, v12);
          if (v156)
          {
            break;
          }

          v153 = (v153 + 1) & v154;
          if (((*(v148 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        v157 = v262;
        sub_1000D2AD8(v282, v262, &qword_10169EF28, &unk_10139FC10);
        v158 = *(v157 + *(v263 + 48));
        (v278)(v157, v12);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5D2EC(0, *(v260 + 2) + 1, 1, v260);
          v260 = result;
        }

        v160 = *(v260 + 2);
        v159 = *(v260 + 3);
        if (v160 >= v159 >> 1)
        {
          result = sub_100A5D2EC((v159 > 1), v160 + 1, 1, v260);
          v260 = result;
        }

        v161 = v260;
        *(v260 + 2) = v160 + 1;
        v161[v160 + 32] = v158;
        v149 = v282;
        v146 = v257;
      }

      else
      {
LABEL_52:
        v149 = v282;
        result = sub_10000B3A8(v282, &qword_10169EF28, &unk_10139FC10);
        v146 = v257;
      }
    }

    else
    {
      result = sub_10000B3A8(v149, &qword_10169EF28, &unk_10139FC10);
    }

    if (++v147 == v265)
    {

      v162 = v260;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_1005CEE64(uint64_t a1)
{
  v2 = 0;
  v3 = sub_1000BC4D4(&qword_1016A5888, &qword_1013B3288);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v208 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v202 = &v186 - v7;
  v225 = type metadata accessor for BeaconEstimatedLocation();
  v221 = *(v225 - 8);
  v8 = *(v221 + 64);
  v9 = __chkstk_darwin(v225);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v215 = &v186 - v12;
  v205 = type metadata accessor for RawSearchResult();
  v206 = *(v205 - 8);
  v13 = *(v206 + 8);
  v14 = __chkstk_darwin(v205);
  v186 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v204 = &v186 - v17;
  __chkstk_darwin(v16);
  v203 = &v186 - v18;
  v226 = type metadata accessor for UUID();
  v19 = *(v226 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v226);
  v227 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v209 = &v186 - v24;
  v25 = __chkstk_darwin(v23);
  v201 = &v186 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v186 - v28;
  __chkstk_darwin(v27);
  v200 = (&v186 - v30);
  v198 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v31 = *(*(v198 - 8) + 64);
  v32 = __chkstk_darwin(v198);
  v190 = &v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v197 = &v186 - v35;
  v36 = __chkstk_darwin(v34);
  v189 = (&v186 - v37);
  v38 = __chkstk_darwin(v36);
  v195 = &v186 - v39;
  __chkstk_darwin(v38);
  v188 = &v186 - v40;
  v41 = a1 + 64;
  v42 = 1 << *(a1 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(a1 + 64);
  v45 = (v42 + 63) >> 6;
  v224 = (v19 + 16);
  v210 = (v19 + 32);
  v217 = v19;
  v222 = (v19 + 8);
  v199 = a1;

  v46 = _swiftEmptyDictionarySingleton;
  v220 = xmmword_101385D80;
  v196 = 0;
  v194 = a1 + 64;
  v187 = v45;
LABEL_6:
  if (v44)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v47 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_135;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v41 + 8 * v47);
    ++v2;
    if (v44)
    {
      v2 = v47;
LABEL_11:
      v193 = (v44 - 1) & v44;
      v192 = v2;
      v48 = __clz(__rbit64(v44)) | (v2 << 6);
      v49 = v199;
      v50 = v199[6];
      v51 = v217;
      v211 = *(v217 + 72);
      v52 = v188;
      v53 = v226;
      v223 = *(v217 + 16);
      v223(v188, v50 + v211 * v48, v226);
      v54 = *(v49[7] + 8 * v48);
      v55 = v198;
      v56 = *(v198 + 48);
      v219 = *(v51 + 32);
      v57 = v195;
      (v219)(v195, v52, v53);
      *(v57 + v56) = v54;

      v191 = objc_autoreleasePoolPush();
      v58 = v189;
      sub_1000D2A70(v57, v189, &qword_1016A5890, &qword_1013B3290);
      v59 = *(v58 + *(v55 + 48));

      (v219)(v200, v58, v53);
      a1 = v197;
      sub_1000D2A70(v57, v197, &qword_1016A5890, &qword_1013B3290);
      v60 = 0;
      v61 = *(a1 + *(v55 + 48));
      v62 = 1 << *(v61 + 32);
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v64 = v63 & *(v61 + 56);
      v65 = (v62 + 63) >> 6;
      v218 = _swiftEmptyArrayStorage;
      while (1)
      {
        v66 = v60;
        if (!v64)
        {
          break;
        }

LABEL_19:
        v67 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v68 = *(v206 + 9);
        v69 = v204;
        sub_10062CD24(*(v61 + 48) + v68 * (v67 | (v60 << 6)), v204, type metadata accessor for RawSearchResult);
        v70 = v69;
        a1 = v203;
        sub_10062CC64(v70, v203, type metadata accessor for RawSearchResult);
        if (*(a1 + *(v205 + 36)) == 15)
        {
          sub_10062CC64(a1, v186, type metadata accessor for RawSearchResult);
          a1 = v218;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v228 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124E24(0, *(a1 + 16) + 1, 1);
            a1 = v228;
          }

          v73 = *(a1 + 16);
          v72 = *(a1 + 24);
          v74 = (v73 + 1);
          if (v73 >= v72 >> 1)
          {
            v218 = *(a1 + 16);
            v219 = (v73 + 1);
            sub_101124E24(v72 > 1, v73 + 1, 1);
            v73 = v218;
            v74 = v219;
            a1 = v228;
          }

          *(a1 + 16) = v74;
          v75 = *(v206 + 80);
          v218 = a1;
          sub_10062CC64(v186, a1 + ((v75 + 32) & ~v75) + v73 * v68, type metadata accessor for RawSearchResult);
        }

        else
        {
          sub_10062CBB8(a1, type metadata accessor for RawSearchResult);
        }
      }

      while (1)
      {
        v60 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_129;
        }

        if (v60 >= v65)
        {
          break;
        }

        v64 = *(v61 + 56 + 8 * v60);
        ++v66;
        if (v64)
        {
          goto LABEL_19;
        }
      }

      v219 = *v222;
      (v219)(v197, v226);
      a1 = v207;
      v76 = sub_1005EECCC(v200, v218);

      v77 = v76;
      v218 = *(v76 + 2);
      if (v218)
      {
        v78 = 0;
        v79 = *(v221 + 80);
        v80 = (v79 + 32) & ~v79;
        v213 = v77 + v80;
        v214 = v79;
        v81 = v215;
        v212 = v77;
        do
        {
          if (v78 >= *(v77 + 2))
          {
            goto LABEL_131;
          }

          sub_10062CD24(&v213[*(v221 + 72) * v78], v81, type metadata accessor for BeaconEstimatedLocation);
          v84 = *(v225 + 24);
          if (v46[2] && (v85 = sub_1000210EC(v81 + v84), (v86 & 1) != 0))
          {
            v87 = *(v46[7] + 8 * v85);
          }

          else
          {
            v87 = _swiftEmptyArrayStorage;
          }

          v223(v29, v81 + v84, v226);
          sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
          a1 = swift_allocObject();
          *(a1 + 16) = v220;
          sub_10062CD24(v81, a1 + v80, type metadata accessor for BeaconEstimatedLocation);
          v88 = v87[2];
          v89 = swift_isUniquelyReferenced_nonNull_native();
          if (!v89 || (v90 = v87[3] >> 1, v90 <= v88))
          {
            v87 = sub_100A5D0A0(v89, v88 + 1, 1, v87);
            v90 = v87[3] >> 1;
          }

          if (v90 <= v87[2])
          {
            goto LABEL_132;
          }

          swift_arrayInitWithCopy();

          ++v87[2];
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v228 = v46;
          a1 = v46;
          v93 = sub_1000210EC(v29);
          v94 = v46[2];
          v95 = (v92 & 1) == 0;
          v96 = v94 + v95;
          if (__OFADD__(v94, v95))
          {
            goto LABEL_133;
          }

          v97 = v92;
          if (v46[3] >= v96)
          {
            if (v91)
            {
              v46 = v228;
              if (v92)
              {
                goto LABEL_28;
              }
            }

            else
            {
              a1 = &v228;
              sub_101008794();
              v46 = v228;
              if (v97)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_100FED8A4(v96, v91);
            a1 = v228;
            v98 = sub_1000210EC(v29);
            if ((v97 & 1) != (v99 & 1))
            {
              goto LABEL_139;
            }

            v93 = v98;
            v46 = v228;
            if (v97)
            {
LABEL_28:
              v82 = v46[7];
              v83 = *(v82 + 8 * v93);
              *(v82 + 8 * v93) = v87;

              (v219)(v29, v226);
              v81 = v215;
              sub_10062CBB8(v215, type metadata accessor for BeaconEstimatedLocation);
              goto LABEL_29;
            }
          }

          v46[(v93 >> 6) + 8] |= 1 << v93;
          a1 = v226;
          v223((v46[6] + v93 * v211), v29, v226);
          *(v46[7] + 8 * v93) = v87;
          (v219)(v29, a1);
          v81 = v215;
          sub_10062CBB8(v215, type metadata accessor for BeaconEstimatedLocation);
          v100 = v46[2];
          v101 = __OFADD__(v100, 1);
          v102 = v100 + 1;
          if (v101)
          {
            goto LABEL_134;
          }

          v46[2] = v102;
LABEL_29:
          ++v78;
          v77 = v212;
        }

        while (v218 != v78);
      }

      (v219)(v200, v226);
      objc_autoreleasePoolPop(v191);
      sub_10000B3A8(v195, &qword_1016A5890, &qword_1013B3290);
      v41 = v194;
      v45 = v187;
      v44 = v193;
      v2 = v192;
      goto LABEL_6;
    }
  }

  v103 = v199;

  v228 = _swiftEmptyArrayStorage;
  v104 = 1 << *(v103 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & v103[8];
  v107 = (v104 + 63) >> 6;

  v108 = 0;
  v109 = v208;
  for (i = v199; v106; v41 = v194)
  {
    v111 = v108;
    a1 = v190;
LABEL_58:
    v112 = __clz(__rbit64(v106)) | (v111 << 6);
    (*(v217 + 16))(a1, i[6] + *(v217 + 72) * v112, v226);
    *(a1 + *(v198 + 48)) = *(i[7] + 8 * v112);

    v113 = v196;
    sub_1005F1ECC(&v228, a1);
    v114 = &v227;
    v196 = v113;
    if (v113)
    {
      goto LABEL_140;
    }

    v106 &= v106 - 1;
    sub_10000B3A8(a1, &qword_1016A5890, &qword_1013B3290);
    v108 = v111;
  }

  a1 = v190;
  while (1)
  {
    v111 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      goto LABEL_136;
    }

    if (v111 >= v107)
    {
      break;
    }

    v106 = *(v41 + 8 * v111);
    ++v108;
    if (v106)
    {
      goto LABEL_58;
    }
  }

  v115 = v228;
  v203 = v228[2];
  if (!v203)
  {
LABEL_124:

    return v46;
  }

  v116 = v109;
  v117 = 0;
  v118 = v228 + 4;
  v200 = v228;
  v199 = v228 + 4;
  v216 = v11;
LABEL_63:
  if (v117 >= v115[2])
  {
    goto LABEL_138;
  }

  v119 = v118[v117];
  v204 = v117 + 1;
  v120 = *(v119 + 64);
  v212 = (v119 + 64);
  v121 = 1 << *(v119 + 32);
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  else
  {
    v122 = -1;
  }

  a1 = v122 & v120;
  v205 = (v121 + 63) >> 6;
  v211 = v119;

  for (j = 0; ; j = v215)
  {
    if (a1)
    {
      v215 = j;
      v125 = j;
      goto LABEL_80;
    }

    v126 = v205 <= j + 1 ? j + 1 : v205;
    v127 = v126 - 1;
    do
    {
      v125 = j + 1;
      if (__OFADD__(j, 1))
      {
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

      if (v125 >= v205)
      {
        v183 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
        (*(*(v183 - 8) + 56))(v116, 1, 1, v183);
        v214 = 0;
        v215 = v127;
        goto LABEL_81;
      }

      a1 = *(v212 + v125);
      ++j;
    }

    while (!a1);
    v215 = v125;
LABEL_80:
    v214 = (a1 - 1) & a1;
    v128 = __clz(__rbit64(a1)) | (v125 << 6);
    v129 = v211;
    v130 = v217;
    v131 = v201;
    v132 = v226;
    (*(v217 + 16))(v201, *(v211 + 48) + *(v217 + 72) * v128, v226);
    v133 = *(*(v129 + 56) + 8 * v128);
    v134 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
    v135 = *(v134 + 48);
    v136 = *(v130 + 32);
    v116 = v208;
    v136(v208, v131, v132);
    *(v116 + v135) = v133;
    (*(*(v134 - 8) + 56))(v116, 0, 1, v134);

LABEL_81:
    v137 = v202;
    sub_1000D2AD8(v116, v202, &qword_1016A5888, &qword_1013B3288);
    a1 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
    if ((*(*(a1 - 8) + 48))(v137, 1, a1) == 1)
    {

      v117 = v204;
      v115 = v200;
      v118 = v199;
      if (v204 == v203)
      {
        goto LABEL_124;
      }

      goto LABEL_63;
    }

    v138 = *(v137 + *(a1 + 48));
    v139 = *v210;
    v140 = v209;
    (*v210)(v209, v137, v226);
    v124 = objc_autoreleasePoolPush();
    v141 = v140;
    a1 = v207;
    v142 = sub_1005EECCC(v141, v138);

    v219 = *(v142 + 2);
    if (v219)
    {
      break;
    }

LABEL_69:
    objc_autoreleasePoolPop(v124);
    (*v222)(v209, v226);
    a1 = v214;
  }

  v206 = v139;
  v213 = v124;
  v143 = 0;
  v144 = (*(v221 + 80) + 32) & ~*(v221 + 80);
  v218 = (v142 + v144);
  while (1)
  {
    if (v143 >= *(v142 + 2))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    sub_10062CD24(v218 + *(v221 + 72) * v143, v11, type metadata accessor for BeaconEstimatedLocation);
    v147 = *(v225 + 24);
    if (v46[2] && (v148 = sub_1000210EC(&v11[v147]), (v149 & 1) != 0))
    {
      v150 = *(v46[7] + 8 * v148);
    }

    else
    {
      v150 = _swiftEmptyArrayStorage;
    }

    v223 = *v224;
    v223(v227, &v11[v147], v226);
    sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
    a1 = swift_allocObject();
    *(a1 + 16) = v220;
    sub_10062CD24(v11, a1 + v144, type metadata accessor for BeaconEstimatedLocation);
    v151 = v150[2];
    v152 = swift_isUniquelyReferenced_nonNull_native();
    if (!v152 || (v153 = v150[3] >> 1, v153 <= v151))
    {
      v150 = sub_100A5D0A0(v152, v151 + 1, 1, v150);
      v153 = v150[3] >> 1;
    }

    if (v153 <= v150[2])
    {
      goto LABEL_126;
    }

    swift_arrayInitWithCopy();

    ++v150[2];
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v228 = v46;
    a1 = v46;
    v155 = sub_1000210EC(v227);
    v157 = v46[2];
    v158 = (v156 & 1) == 0;
    v101 = __OFADD__(v157, v158);
    v159 = v157 + v158;
    if (v101)
    {
      goto LABEL_127;
    }

    v160 = v156;
    if (v46[3] < v159)
    {
      sub_100FED8A4(v159, v154);
      v46 = v228;
      a1 = v228;
      v155 = sub_1000210EC(v227);
      if ((v160 & 1) != (v161 & 1))
      {
        goto LABEL_139;
      }

LABEL_100:
      if (v160)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }

    if (v154)
    {
      goto LABEL_100;
    }

    v190 = v155;
    a1 = sub_1000BC4D4(&qword_1016A58A0, &qword_1013B32A0);
    v198 = static _DictionaryStorage.copy(original:)();
    if (v46[2])
    {
      break;
    }

LABEL_119:

    v46 = v198;
    v155 = v190;
    if (v160)
    {
LABEL_84:
      v145 = v46[7];
      v146 = *(v145 + 8 * v155);
      *(v145 + 8 * v155) = v150;

      (*v222)(v227, v226);
      sub_10062CBB8(v11, type metadata accessor for BeaconEstimatedLocation);
      goto LABEL_85;
    }

LABEL_101:
    v46[(v155 >> 6) + 8] |= 1 << v155;
    v162 = v217;
    a1 = v155;
    v163 = v226;
    v164 = v227;
    v223((v46[6] + *(v217 + 72) * v155), v227, v226);
    *(v46[7] + 8 * a1) = v150;
    v165 = v164;
    v11 = v216;
    (*(v162 + 8))(v165, v163);
    sub_10062CBB8(v11, type metadata accessor for BeaconEstimatedLocation);
    v166 = v46[2];
    v101 = __OFADD__(v166, 1);
    v167 = v166 + 1;
    if (v101)
    {
      goto LABEL_128;
    }

    v46[2] = v167;
LABEL_85:
    if (++v143 == v219)
    {

      v116 = v208;
      v124 = v213;
      goto LABEL_69;
    }
  }

  v168 = (v198 + 64);
  v169 = (v46 + 8);
  v170 = ((1 << *(v198 + 32)) + 63) >> 6;
  v189 = v46 + 8;
  if (v198 != v46 || v168 >= &v169[8 * v170])
  {
    memmove(v168, v169, 8 * v170);
  }

  v171 = 0;
  *(v198 + 16) = v46[2];
  v172 = 1 << *(v46 + 32);
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  else
  {
    v173 = -1;
  }

  v174 = v173 & v46[8];
  v175 = ((v172 + 63) >> 6);
  v191 = v175;
  v192 = v142;
  if (v174)
  {
    do
    {
      v176 = __clz(__rbit64(v174));
      v193 = (v174 - 1) & v174;
LABEL_117:
      v179 = v176 | (v171 << 6);
      v180 = v46[6];
      v197 = *(v217 + 72) * v179;
      v181 = v201;
      v182 = v179;
      v195 = v179;
      v223(v201, v180 + v197, v226);
      v194 = *(v46[7] + 8 * v182);
      a1 = v198;
      v206((*(v198 + 48) + v197), v181, v226);
      *(*(a1 + 56) + 8 * v195) = v194;

      v142 = v192;
      v175 = v191;
      v174 = v193;
    }

    while (v193);
  }

  v177 = v171;
  while (1)
  {
    v171 = v177 + 1;
    if (__OFADD__(v177, 1))
    {
      break;
    }

    if (v171 >= v175)
    {
      goto LABEL_119;
    }

    v178 = v189[v171];
    ++v177;
    if (v178)
    {
      v176 = __clz(__rbit64(v178));
      v193 = (v178 - 1) & v178;
      goto LABEL_117;
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_140:
  v185 = *(v114 - 32);

  sub_10000B3A8(a1, &qword_1016A5890, &qword_1013B3290);

  __break(1u);
  return result;
}

BOOL sub_1005D050C(uint64_t a1, char *a2)
{
  v81 = a2;
  v85 = a1;
  v3 = type metadata accessor for MemberSharingCircle();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  v5 = __chkstk_darwin(v3);
  v91 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v11;
  v12 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v83 = &v70 - v15;
  v16 = type metadata accessor for URL();
  v87 = *(v16 - 8);
  v17 = v87[8];
  v18 = __chkstk_darwin(v16);
  v79 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v80 = &v70 - v21;
  __chkstk_darwin(v20);
  v86 = &v70 - v22;
  v23 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v82 = &v70 - v25;
  v26 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v70 - v28;
  v30 = type metadata accessor for SharedBeaconRecord(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(v85, &v90);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v35 = swift_dynamicCast();
  v36 = *(v31 + 56);
  if (v35)
  {
    v78 = v13;
    v85 = v2;
    v36(v29, 0, 1, v30);
    sub_10062CC64(v29, v34, type metadata accessor for SharedBeaconRecord);
    v37 = *v81;
    v38 = *(v30 + 20);
    v71 = v34;
    v81 = &v34[v38];
    v77 = *(v37 + 168);
    if (qword_101694680 != -1)
    {
LABEL_24:
      swift_once();
    }

    v39 = sub_1000076D4(v16, qword_10177AC60);
    v40 = v86;
    v41 = v87[2];
    v41(v86, v39, v16);
    v42 = v80;
    v41(v80, v40, v16);
    v43 = *(v12 + 40);
    v76 = v43;
    v73 = type metadata accessor for DirectorySequence();
    v44 = *(v73 - 8);
    v72 = *(v44 + 56);
    v74 = v44 + 56;
    v75 = v12;
    v45 = v83;
    v72(&v83[v43], 1, 1, v73);
    v41(v45, v42, v16);
    *&v45[*(v12 + 36)] = v77;
    v41(v79, v42, v16);

    v46 = v84;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v47 = v87[1];
    v47(v42, v16);
    v47(v86, v16);
    v72(v46, 0, 1, v73);
    v48 = v45;
    sub_10062BF70(v46, &v45[v76]);
    v49 = *(v78 + 56);
    v50 = v82;
    v51 = v75;
    v49(v82, 1, 1, v75);
    sub_10000B3A8(v50, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v48, v50, &qword_1016A5978, &qword_101410D20);
    v52 = (v49)(v50, 0, 1, v51);
    __chkstk_darwin(v52);
    *(&v70 - 2) = v81;
    v53 = v85;
    sub_100E6C1A4(sub_10062BFE0, (&v70 - 4));
    v55 = v54;
    v56 = *(v54 + 16);
    if (v56)
    {
      v85 = v53;
      v12 = 0;
      v57 = _swiftEmptyArrayStorage;
      do
      {
        if (v12 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v58 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v59 = *(v88 + 72);
        sub_10062CD24(v55 + v58 + v59 * v12, v8, type metadata accessor for MemberSharingCircle);
        v60 = v8[*(v89 + 40)];
        v61 = v60 > 4;
        v62 = (1 << v60) & 0x16;
        if (v61 || v62 == 0)
        {
          sub_10062CBB8(v8, type metadata accessor for MemberSharingCircle);
        }

        else
        {
          sub_10062CC64(v8, v91, type metadata accessor for MemberSharingCircle);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101123FA0(0, v57[2] + 1, 1);
            v57 = v90;
          }

          v66 = v57[2];
          v65 = v57[3];
          v16 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            sub_101123FA0(v65 > 1, v66 + 1, 1);
            v57 = v90;
          }

          v57[2] = v16;
          sub_10062CC64(v91, v57 + v58 + v66 * v59, type metadata accessor for MemberSharingCircle);
        }

        ++v12;
      }

      while (v56 != v12);

      v68 = v57[2];

      sub_10062CBB8(v71, type metadata accessor for SharedBeaconRecord);
      return v68 != 0;
    }

    else
    {
      sub_10062CBB8(v71, type metadata accessor for SharedBeaconRecord);

      return 0;
    }
  }

  else
  {
    v67 = 1;
    v36(v29, 1, 1, v30);
    sub_10000B3A8(v29, &unk_101698C30, &unk_101392630);
  }

  return v67;
}

void sub_1005D0DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, void (*a9)(char *, uint64_t, uint64_t), uint64_t a10)
{
  v115 = a8;
  v113 = a2;
  v112 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v16 = *(*(v112 - 8) + 64);
  v17 = __chkstk_darwin(v112);
  v116 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v108 - v19;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v21 = *(RequestBeacon - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(RequestBeacon - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a3;
  v128 = a4;
  v114 = a4;
  v129 = a5;
  v130 = a6;

  v25 = sub_10013D858(sub_10062B22C, v126, a1);
  v26 = v25;
  v123 = *(v25 + 16);
  if (!v123)
  {

    return;
  }

  v109 = 0;
  v27 = 0;
  v111 = a10;
  v110 = a9;
  v28 = *(v21 + 80);
  v121 = a7;
  v122 = v25 + ((v28 + 32) & ~v28);
  v119 = v25;
  v120 = v21;
  v118 = v24;
  do
  {
    if (v27 >= v26[2])
    {
      goto LABEL_70;
    }

    sub_10062CD24(v122 + *(v21 + 72) * v27, v24, type metadata accessor for FetchRequestBeacon);
    v31 = sub_100EA96D4();
    v33 = v32;
    v34 = *a7;
    if (*a7)[2] && (v35 = sub_1000210EC(v24), (v36))
    {
      v37 = *(v34[7] + 8 * v35);
    }

    else
    {
      v37 = sub_100904268(_swiftEmptyArrayStorage);
    }

    v124 = v27;
    v132 = v31;
    v38 = sub_100397EB4(v33);
    v39 = v132;
    v125 = v132[2];
    if (v125)
    {
      v40 = 0;
      v41 = v132 + 5;
      while (1)
      {
        if (v40 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v42 = *(v41 - 1);
        v43 = *v41;
        v44 = v37[2];

        if (v44)
        {
          v45 = sub_100771D58(v42, v43);
          if (v46)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v37;
        v59 = sub_100771D58(v42, v43);
        v60 = v37[2];
        v61 = (v58 & 1) == 0;
        v38 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          __break(1u);
          goto LABEL_65;
        }

        v62 = v58;
        if (v37[3] >= v38)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v58 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v38 = sub_101006344();
            if ((v62 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          sub_100FE8BB4(v38, isUniquelyReferenced_nonNull_native);
          v38 = sub_100771D58(v42, v43);
          if ((v62 & 1) != (v63 & 1))
          {
            goto LABEL_72;
          }

          v59 = v38;
          if ((v62 & 1) == 0)
          {
LABEL_28:
            v37 = v132;
            v132[(v59 >> 6) + 8] |= 1 << v59;
            v64 = (v37[6] + 16 * v59);
            *v64 = v42;
            v64[1] = v43;
            *(v37[7] + 8 * v59) = 1;
            v65 = v37[2];
            v53 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v53)
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            goto LABEL_38;
          }
        }

        v37 = v132;
        *(v132[7] + 8 * v59) = 1;
LABEL_12:
        v40 = (v40 + 1);
        v41 += 2;
        if (v125 == v40)
        {
          goto LABEL_3;
        }
      }

      v47 = *(v37[7] + 8 * v45);
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_67;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      v132 = v37;
      v38 = sub_100771D58(v42, v43);
      v51 = v37[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_68;
      }

      v55 = v50;
      if (v37[3] >= v54)
      {
        if ((v49 & 1) == 0)
        {
          v68 = v38;
          sub_101006344();
          v38 = v68;
          if ((v55 & 1) == 0)
          {
LABEL_37:
            v37 = v132;
            v132[(v38 >> 6) + 8] |= 1 << v38;
            v69 = (v37[6] + 16 * v38);
            *v69 = v42;
            v69[1] = v43;
            *(v37[7] + 8 * v38) = v48;
            v70 = v37[2];
            v53 = __OFADD__(v70, 1);
            v66 = v70 + 1;
            if (v53)
            {
              goto LABEL_69;
            }

LABEL_38:
            v37[2] = v66;
            goto LABEL_12;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_100FE8BB4(v54, v49);
        v38 = sub_100771D58(v42, v43);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_72;
        }
      }

      if ((v55 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_33:
      v67 = v38;

      v37 = v132;
      *(v132[7] + 8 * v67) = v48;
      goto LABEL_12;
    }

LABEL_3:
    v27 = v124 + 1;

    a7 = v121;
    v29 = *v121;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v132 = *a7;
    *a7 = 0x8000000000000000;
    v24 = v118;
    sub_100FFE844(v37, v118, v30);
    *a7 = v132;
    sub_10062CBB8(v24, type metadata accessor for FetchRequestBeacon);

    v26 = v119;
    v21 = v120;
  }

  while (v27 != v123);
  v71 = v114;
  v72 = v115;
  if (v115)
  {

    v73 = v109;
    v38 = sub_1005D1FE0(v26, v71 + 24, v72);
    if (!v73)
    {
LABEL_48:
      v85 = v38;

      v86 = v85 + 64;
      v87 = 1 << *(v85 + 32);
      v88 = -1;
      if (v87 < 64)
      {
        v88 = ~(-1 << v87);
      }

      v89 = v88 & *(v85 + 64);
      v90 = (v87 + 63) >> 6;
      v125 = v85;

      v91 = 0;
      while (v89)
      {
LABEL_58:
        v95 = __clz(__rbit64(v89)) | (v91 << 6);
        v96 = v125;
        isa = v125[6].isa;
        v98 = type metadata accessor for UUID();
        v99 = *(v98 - 8);
        v100 = v117;
        (*(v99 + 16))(v117, isa + *(v99 + 72) * v95, v98);
        v101 = *(v96[7].isa + v95);
        v102 = v112;
        *(v100 + *(v112 + 48)) = v101;
        v103 = v116;
        sub_1000D2A70(v100, v116, &qword_1016A5890, &qword_1013B3290);
        v104 = *(v103 + *(v102 + 48));

        v105 = v113;
        if (*(v113 + 16))
        {
          v106 = sub_1000210EC(v103);
          if (v107)
          {
            v92 = *(*(v105 + 56) + v106);
          }

          else
          {
            v92 = 0;
          }

          v103 = v116;
        }

        else
        {
          v92 = 0;
        }

        v89 &= v89 - 1;
        (*(v99 + 8))(v103, v98);
        v93 = v117;
        v110(v117, v101, v92);
        sub_10000B3A8(v93, &qword_1016A5890, &qword_1013B3290);
      }

      while (1)
      {
        v94 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_71;
        }

        if (v94 >= v90)
        {

          return;
        }

        v89 = *(v86 + 8 * v94);
        ++v91;
        if (v89)
        {
          v91 = v94;
          goto LABEL_58;
        }
      }
    }

    v74 = *(type metadata accessor for LocationFetcher() + 32);
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v131 = v73;
      v132 = v77;
      *v76 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v78 = String.init<A>(describing:)();
      v80 = sub_1000136BC(v78, v79, &v132);

      *(v76 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v40, v75, "Error fetching: %{public}s.", v76, 0xCu);
      sub_100007BAC(v77);
    }

    else
    {
LABEL_65:
    }
  }

  else
  {

    v81 = v71 + *(type metadata accessor for LocationFetcher() + 32);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Fatal: Error fetching - while policy specified from ACSN and no server interaction controller provided.", v84, 2u);
    }
  }
}

uint64_t sub_1005D1774(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v69 - v13;
  v75 = type metadata accessor for UUID();
  v77 = *(v75 - 8);
  v15 = *(v77 + 64);
  v16 = __chkstk_darwin(v75);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v69 - v18;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v20 = *(*(RequestBeacon - 8) + 64);
  v21 = __chkstk_darwin(RequestBeacon - 8);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v69 - v24;
  swift_beginAccess();
  v26 = *a2;
  v27 = a1;

  v28 = sub_1005C8A30(a1, v26);

  LODWORD(v26) = *(type metadata accessor for LocationFetcher() + 32);
  if (v28)
  {
    sub_10062CD24(v27, v23, type metadata accessor for FetchRequestBeacon);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v78[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_10062CBB8(v23, type metadata accessor for FetchRequestBeacon);
      v36 = sub_1000136BC(v33, v35, v78);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping completed beacon %{private,mask.hash}s which has enough locations.", v31, 0x16u);
      sub_100007BAC(v32);
    }

    else
    {

      sub_10062CBB8(v23, type metadata accessor for FetchRequestBeacon);
    }

    return !v28;
  }

  v71 = a5;
  v74 = v27;
  sub_10062CD24(v27, v25, type metadata accessor for FetchRequestBeacon);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78[0] = v69;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v40 = v75;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v14;
    v42 = v28;
    v44 = v43;
    sub_10062CBB8(v25, type metadata accessor for FetchRequestBeacon);
    v45 = sub_1000136BC(v41, v44, v78);
    v28 = v42;
    v14 = v70;

    *(v39 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Can continue fetching beacon %{private,mask.hash}s.", v39, 0x16u);
    sub_100007BAC(v69);
  }

  else
  {

    sub_10062CBB8(v25, type metadata accessor for FetchRequestBeacon);
    v40 = v75;
  }

  v46 = *(v77 + 16);
  v47 = v74;
  v46(v76, v74, v40);
  swift_beginAccess();
  v48 = *a4;
  v49 = v71;
  if (*(*a4 + 16) && (v50 = sub_1000210EC(v47), (v51 & 1) != 0))
  {
    v52 = *(*(v48 + 56) + 8 * v50);
  }

  else
  {
    v52 = 0;
  }

  result = swift_endAccess();
  if (!__OFADD__(v52, 1))
  {
    swift_beginAccess();
    v54 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *a4;
    *a4 = 0x8000000000000000;
    v56 = v76;
    sub_100FFE858(v52 + 1, v76, isUniquelyReferenced_nonNull_native);
    (*(v77 + 8))(v56, v40);
    *a4 = v79;
    swift_endAccess();
    swift_beginAccess();
    v57 = *v49;
    if (*(*v49 + 16) && (v58 = sub_1000210EC(v74), (v59 & 1) != 0))
    {
      v60 = v58;
      v61 = *(v57 + 56);
      v62 = type metadata accessor for Date();
      v63 = v28;
      v64 = *(v62 - 8);
      (*(v64 + 16))(v14, v61 + *(v64 + 72) * v60, v62);
      (*(v64 + 56))(v14, 0, 1, v62);
      v28 = v63;
      v40 = v75;
    }

    else
    {
      v62 = type metadata accessor for Date();
      (*(*(v62 - 8) + 56))(v14, 1, 1, v62);
    }

    swift_endAccess();
    type metadata accessor for Date();
    v65 = *(v62 - 8);
    v66 = (*(v65 + 48))(v14, 1, v62);
    sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
    if (v66 == 1)
    {
      v67 = v72;
      v46(v72, v74, v40);
      v68 = v73;
      static Date.trustedNow.getter(v73);
      (*(v65 + 56))(v68, 0, 1, v62);
      swift_beginAccess();
      sub_1001DEE50(v68, v67);
      swift_endAccess();
    }

    return !v28;
  }

  __break(1u);
  return result;
}

NSObject *sub_1005D1FE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = type metadata accessor for LocationFetcher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005DF640(a3, a1);
  if (!v4)
  {
    v14 = v13;
    v29[1] = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v16 = swift_allocObject();
    v33 = a1;
    v17 = v16;
    *(v16 + 16) = 0;
    v34 = (v16 + 16);
    v35 = v14;
    v32 = type metadata accessor for LocationFetcher;
    sub_10062CD24(v6, v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v18 = *(v10 + 80);
    v19 = (v18 + 16) & ~v18;
    v31 = v11 + 7;
    v20 = (v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v30 = type metadata accessor for LocationFetcher;
    sub_10062CC64(v12, v21 + v19, type metadata accessor for LocationFetcher);
    *(v21 + v20) = v17;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v36 = v17;

    v22 = v15;
    Future.addFailure(block:)();

    v23 = swift_allocObject();
    *(v23 + 16) = _swiftEmptyDictionarySingleton;
    v29[0] = v23 + 16;
    sub_10062CD24(v6, v12, v32);
    v24 = (v18 + 24) & ~v18;
    v25 = (v31 + v24) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    sub_10062CC64(v12, v26 + v24, v30);
    *(v26 + v25) = v33;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v5 = v22;

    Future.addSuccess(block:)();

    OS_dispatch_group.wait()();
    v27 = v34;
    swift_beginAccess();
    if (*v27)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {

      swift_beginAccess();
      v5 = *(v23 + 16);
    }
  }

  return v5;
}

uint64_t sub_1005D2344(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v6 = v3[6];
  v7 = v3[7];
  sub_1000035D0(v3 + 3, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v48[0] = a1;

  sub_100626D78(v48, v8);

  v9 = v48[0];
  v53 = 0;
  v51 = &_swiftEmptyDictionarySingleton;
  v52 = &_swiftEmptyDictionarySingleton;
  v10 = v4[6];
  v11 = v4[7];
  sub_1000035D0(v4 + 3, v10);
  v12 = v11[4](v10, v11);
  v13 = *(v12 + 16);
  v14 = (v12 + 32);
  while (v13)
  {
    if ((*v14 & 1) == 0)
    {

LABEL_7:

      v16 = v4[6];
      v11 = v4[7];
      sub_1000035D0(v4 + 3, v16);
      v17 = v11[4](v16, v11);
      v18 = *(v17 + 16);
      v19 = (v17 + 32);
      while (v18)
      {
        if (*v19)
        {

LABEL_22:

          v33 = (v9 + 4);
          v34 = -v9[2];
          v35 = -1;
          while (v34 + v35 != -1)
          {
            if (++v35 >= v9[2])
            {
              goto LABEL_35;
            }

            v36 = v33 + 40;
            sub_10001F280(v33, v48);
            v37 = v49;
            v38 = v50;
            sub_1000035D0(v48, v49);
            v39 = (*(v38 + 112))(v37, v38);
            sub_100007BAC(v48);
            v33 = v36;
            if (v39)
            {
              v40 = sub_10130A5E4();
              if (v40 < 0)
              {
                goto LABEL_36;
              }

              v41 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_37;
              }

              v42 = v4[6];
              v43 = v4[7];
              sub_1000035D0(v4 + 3, v42);
              v44 = sub_100890328(v42, v43);
              v23 = v44 * v41;
              if ((v44 * v41) >> 64 != (v44 * v41) >> 63)
              {
                goto LABEL_38;
              }

              v27 = 0;
              v28 = 1;
              v29 = v9[2];
              if (v29)
              {
                goto LABEL_17;
              }

              goto LABEL_30;
            }
          }

          goto LABEL_13;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v19;
        --v18;
        if (v20)
        {
          goto LABEL_22;
        }
      }

      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v14;
    --v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  v21 = v4[6];
  v22 = v4[7];
  sub_1000035D0(v4 + 3, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v24 = v4[6];
  v25 = v4[7];
  sub_1000035D0(v4 + 3, v24);
  v26 = (*(v25 + 32))(v24, v25);
  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = 0;
  v29 = v9[2];
  if (v29)
  {
LABEL_17:
    v30 = 0;
    v31 = (v9 + 4);
    while (v30 < v9[2])
    {
      sub_10001F280(v31, v48);
      v11 = objc_autoreleasePoolPush();
      sub_1005E4A90(v4, v48, v23, v27, &v53, &v52, v28, &v51, a2, a3);
      ++v30;
      objc_autoreleasePoolPop(v11);
      sub_100007BAC(v48);
      v31 += 40;
      if (v29 == v30)
      {
        v32 = v52;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    objc_autoreleasePoolPop(v11);
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_30:
    v32 = &_swiftEmptyDictionarySingleton;
LABEL_31:

    if (sub_1005E0BB4(v32)[2])
    {
      a2();
    }
  }

  return result;
}

uint64_t sub_1005D291C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v102 = a4;
  v98 = a3;
  v6 = type metadata accessor for UUID();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  __chkstk_darwin(v6);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v88 - v11;
  v13 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v95 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v92 = &v88 - v18;
  v19 = __chkstk_darwin(v17);
  v106 = &v88 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v88 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v88 - v24;
  __chkstk_darwin(v23);
  v26 = &v88 - v25;
  v27 = type metadata accessor for Date();
  v107 = *(v27 - 8);
  v28 = *(v107 + 64);
  v29 = __chkstk_darwin(v27);
  v93 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v104 = &v88 - v32;
  __chkstk_darwin(v31);
  v34 = &v88 - v33;
  v35 = a1;
  sub_1000D2A70(a1, v26, &qword_1016A5890, &qword_1013B3290);
  v99 = v13;
  v36 = *&v26[*(v13 + 48)];

  swift_beginAccess();
  v37 = *a2;
  if (*(v37 + 16) && (v38 = sub_1000210EC(v26), (v39 & 1) != 0))
  {
    v40 = v27;
    (*(v107 + 16))(v12, *(v37 + 56) + *(v107 + 72) * v38, v27);
    v41 = 0;
    v42 = v100;
  }

  else
  {
    v41 = 1;
    v42 = v100;
    v40 = v27;
  }

  v43 = v107;
  (*(v107 + 56))(v12, v41, 1, v40);
  swift_endAccess();
  v44 = *(v43 + 48);
  v45 = v44(v12, 1, v40);
  v103 = v40;
  if (v45 == 1)
  {
    static Date.distantPast.getter();
    if (v44(v12, 1, v40) != 1)
    {
      sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v43 + 32))(v34, v12, v40);
  }

  v46 = v42;
  v47 = *(v42 + 8);
  v48 = v101;
  v100 = v42 + 8;
  v96 = v47;
  v47(v26, v101);
  v49 = *(type metadata accessor for LocationFetcher() + 32);
  v50 = v35;
  v51 = v35;
  v52 = v97;
  sub_1000D2A70(v51, v97, &qword_1016A5890, &qword_1013B3290);
  sub_1000D2A70(v50, v105, &qword_1016A5890, &qword_1013B3290);
  v53 = v107;
  (*(v107 + 16))(v104, v34, v103);
  sub_1000D2A70(v50, v106, &qword_1016A5890, &qword_1013B3290);
  swift_retain_n();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v90 = v55;
    v91 = v54;
    v98 = v34;
    v56 = v48;
    v57 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v108 = v89;
    *v57 = 134219011;
    v58 = v92;
    sub_1000D2A70(v52, v92, &qword_1016A5890, &qword_1013B3290);
    v59 = v99;
    v60 = *(*(v58 + *(v99 + 48)) + 16);

    v61 = v96;
    v96(v58, v56);
    sub_10000B3A8(v52, &qword_1016A5890, &qword_1013B3290);
    *(v57 + 4) = v60;
    *(v57 + 12) = 2160;
    *(v57 + 14) = 1752392040;
    *(v57 + 22) = 2081;
    v62 = v105;
    sub_1000D2A70(v105, v58, &qword_1016A5890, &qword_1013B3290);
    v63 = *(v58 + *(v59 + 48));

    v64 = v94;
    (*(v46 + 32))(v94, v58, v56);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v61(v64, v56);
    sub_10000B3A8(v62, &qword_1016A5890, &qword_1013B3290);
    v68 = sub_1000136BC(v65, v67, &v108);

    *(v57 + 24) = v68;
    *(v57 + 32) = 2048;
    v69 = v93;
    static Date.trustedNow.getter(v93);
    v70 = v104;
    Date.timeIntervalSince(_:)();
    v72 = v71;
    v73 = *(v53 + 8);
    v74 = v69;
    v75 = v103;
    v73(v74, v103);
    v73(v70, v75);
    *(v57 + 34) = fabs(v72);
    *(v57 + 42) = 2048;
    v76 = v106;
    v77 = v95;
    sub_1000D2A70(v106, v95, &qword_1016A5890, &qword_1013B3290);
    v78 = *(v77 + *(v99 + 48));

    v79 = v102;
    swift_beginAccess();
    v80 = *(v79 + 16);
    if (*(v80 + 16) && (v81 = sub_1000210EC(v77), (v82 & 1) != 0))
    {
      v83 = *(*(v80 + 56) + 8 * v81);
    }

    else
    {
      v83 = 0;
    }

    swift_endAccess();
    v96(v77, v101);

    sub_10000B3A8(v76, &qword_1016A5890, &qword_1013B3290);
    *(v57 + 44) = v83;

    v87 = v91;
    _os_log_impl(&_mh_execute_header, v91, v90, "Unterminated fetch with %ld results for beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v57, 0x34u);
    sub_100007BAC(v89);

    return (v73)(v98, v75);
  }

  else
  {

    sub_10000B3A8(v106, &qword_1016A5890, &qword_1013B3290);
    sub_10000B3A8(v52, &qword_1016A5890, &qword_1013B3290);

    v84 = *(v53 + 8);
    v85 = v103;
    v84(v104, v103);
    sub_10000B3A8(v105, &qword_1016A5890, &qword_1013B3290);
    return (v84)(v34, v85);
  }
}

uint64_t sub_1005D322C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for BeaconObservation();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 8);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  v16 = *(v9 + 28);
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 16))(&v13[v16], a3, v17);
  v13[*(v9 + 32)] = a4;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v18 = *(v10 + 72);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  sub_10062CD24(v13, v20 + v19, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  v23 = v14;
  v24 = v20;
  v25 = 0;
  v26 = 0;
  static Transaction.named<A>(_:with:)();

  return sub_10062CBB8(v13, type metadata accessor for BeaconObservation);
}

uint64_t sub_1005D346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = type metadata accessor for BeaconEstimatedLocation();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v16 = type metadata accessor for DeviceEvent.Location(0);
  v3[20] = v16;
  v17 = *(v16 - 8);
  v3[21] = v17;
  v18 = *(v17 + 64) + 15;
  v3[22] = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
  v3[23] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v3[30] = v22;
  *v22 = v3;
  v22[1] = sub_1005D376C;

  return daemon.getter();
}

uint64_t sub_1005D376C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v12 = *v1;
  *(v3 + 248) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 256) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_1005D3948;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005D3948(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = a1;

  v7 = *(v4 + 248);
  if (v1)
  {

    v8 = sub_1005D3AA0;
    v9 = 0;
  }

  else
  {

    v8 = sub_1005D3C48;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1005D3AA0()
{
  v1 = *(v0 + 32);
  v2 = v1 + *(type metadata accessor for LocationFetcher() + 32);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Missing PencilPairingService!", v5, 2u);
  }

  v6 = sub_100909DD0(_swiftEmptyArrayStorage);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 176);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);
  **(v0 + 24) = v6;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005D3C48()
{
  v1 = *(v0[33] + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationsFetcher);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1005D3CEC;
  v3 = v0[5];

  return sub_100B6A720(v3);
}

uint64_t sub_1005D3CEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v7 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v5 = sub_1005D47A0;
  }

  else
  {
    v5 = sub_1005D3E00;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_1005D3E00()
{
  v1 = *(v0 + 280);
  v116 = *(v0 + 184);
  v103 = *(v0 + 160);
  v104 = *(v0 + 176);
  v96 = *(v0 + 128);
  v101 = *(v0 + 120);
  v102 = *(v0 + 144);
  v2 = *(v0 + 96);
  v100 = *(v0 + 72);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v110 = (*(v0 + 168) + 48);
  v114 = (v2 + 8);
  v8 = *(v0 + 56);
  v105 = (v8 + 16);
  v99 = (v8 + 56);
  v111 = *(v0 + 96);
  v97 = (v8 + 32);
  v98 = (v2 + 32);
  v112 = *(v0 + 280);

  v9 = 0;
  v106 = _swiftEmptyDictionarySingleton;
  v109 = v3;
  for (i = v7; v6; v7 = i)
  {
    v10 = v9;
LABEL_8:
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 152);
    v118 = *(v0 + 160);
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v10 << 6);
    v16 = *(v111 + 72);
    v107 = *(v111 + 16);
    v107(v11, *(v112 + 48) + v16 * v15, *(v0 + 88));
    v17 = *(v112 + 56);
    v18 = type metadata accessor for DeviceEvent(0);
    sub_10062CD24(v17 + *(*(v18 - 8) + 72) * v15, v11 + *(v116 + 48), type metadata accessor for DeviceEvent);
    sub_1000D2A70(v11, v12, &qword_1016A58E0, &unk_1013B3330);
    v19 = v12 + *(v116 + 48);
    v20 = v18;
    sub_1000D2A70(v19 + *(v18 + 28), v13, &qword_101699E50, &qword_1013D97C0);
    sub_10062CBB8(v19, type metadata accessor for DeviceEvent);
    v21 = (*v110)(v13, 1, v118);
    v22 = *(v0 + 224);
    if (v21 == 1)
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 88);
      sub_10000B3A8(*(v0 + 232), &qword_1016A58E0, &unk_1013B3330);
      sub_10000B3A8(v23, &qword_101699E50, &qword_1013D97C0);
      (*v114)(v22, v24);
    }

    else
    {
      v79 = v16;
      v25 = *(v0 + 208);
      v80 = *(v0 + 216);
      v82 = *(v0 + 112);
      v85 = *(v0 + 104);
      v87 = *(v0 + 176);
      v27 = *(v0 + 80);
      v26 = *(v0 + 88);
      v92 = *(v0 + 64);
      v94 = *(v0 + 200);
      v89 = *(v0 + 48);
      v28 = *(v0 + 232);
      sub_10062CC64(*(v0 + 152), v87, type metadata accessor for DeviceEvent.Location);
      v119 = *v114;
      (*v114)(v22, v26);
      sub_1000D2A70(v28, v80, &qword_1016A58E0, &unk_1013B3330);
      UUID.init()();
      sub_1000D2A70(v28, v25, &qword_1016A58E0, &unk_1013B3330);
      v29 = v25 + *(v116 + 48);
      v91 = v20;
      sub_10062CD24(v29 + *(v20 + 36), v27, type metadata accessor for BeaconIdentifier);
      sub_10062CBB8(v29, type metadata accessor for DeviceEvent);
      v107(v85, v27 + *(v100 + 20), v26);
      sub_10062CBB8(v27, type metadata accessor for BeaconIdentifier);
      v30 = *v87;
      v32 = *(v104 + 8);
      v31 = *(v104 + 16);
      v83 = *v105;
      (*v105)(v92, &v87[*(v103 + 28)], v89);
      sub_1000D2A70(v28, v94, &qword_1016A58E0, &unk_1013B3330);
      v33 = v94 + *(v116 + 48);
      LOBYTE(v29) = *(v33 + 9);
      sub_10062CBB8(v33, type metadata accessor for DeviceEvent);
      v34 = *(v0 + 232);
      v88 = 0x104121110040200uLL >> (8 * v29);
      v90 = *(v0 + 208);
      v35 = *(v0 + 192);
      v36 = *(v0 + 144);
      v93 = *(v0 + 136);
      v95 = *(v0 + 216);
      v81 = *(v0 + 112);
      v37 = *(v0 + 88);
      v84 = *(v0 + 104);
      v86 = *(v0 + 64);
      v38 = *(v0 + 48);
      v119(*(v0 + 200), v37);
      v39 = v101[12];
      sub_1000D2A70(v34, v35, &qword_1016A58E0, &unk_1013B3330);
      v40 = v35 + *(v116 + 48);
      v83(&v36[v39], (v40 + *(v91 + 24)), v38);
      sub_10062CBB8(v40, type metadata accessor for DeviceEvent);
      (*v99)(&v36[v39], 0, 1, v38);
      *v36 = 0;
      *(v102 + 8) = 0xC000000000000000;
      v41 = *v98;
      (*v98)(&v36[v101[5]], v81, v37);
      v41(&v36[v101[6]], v84, v37);
      *&v36[v101[7]] = v30;
      *&v36[v101[8]] = v32;
      *&v36[v101[9]] = v31;
      (*v97)(&v36[v101[10]], v86, v38);
      v36[v101[11]] = v88;
      *&v36[v101[13]] = 0;
      v119(v35, v37);
      v119(v90, v37);
      sub_10062CC64(v36, v93, type metadata accessor for BeaconEstimatedLocation);
      v42 = v106;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000210EC(v95);
      v46 = v106[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v50 = v45;
      if (v106[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = result;
          sub_101009DF0();
          result = v64;
          v42 = v106;
        }
      }

      else
      {
        v51 = *(v0 + 216);
        sub_100FEFF9C(v49, isUniquelyReferenced_nonNull_native);
        v42 = v106;
        result = sub_1000210EC(v51);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_27;
        }
      }

      v53 = *(v0 + 232);
      v106 = v42;
      if (v50)
      {
        v54 = *(v0 + 176);
        sub_10062AF58(*(v0 + 136), v42[7] + *(v96 + 72) * result);
        sub_10062CBB8(v54, type metadata accessor for DeviceEvent.Location);
        sub_10000B3A8(v53, &qword_1016A58E0, &unk_1013B3330);
      }

      else
      {
        v55 = *(v0 + 216);
        v56 = *(v0 + 176);
        v57 = *(v0 + 136);
        v58 = *(v0 + 88);
        v42[(result >> 6) + 8] |= 1 << result;
        v59 = result;
        v107(v42[6] + result * v79, v55, v58);
        sub_10062CC64(v57, v42[7] + *(v96 + 72) * v59, type metadata accessor for BeaconEstimatedLocation);
        sub_10062CBB8(v56, type metadata accessor for DeviceEvent.Location);
        result = sub_10000B3A8(v53, &qword_1016A58E0, &unk_1013B3330);
        v60 = v42[2];
        v48 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v48)
        {
          goto LABEL_31;
        }

        v42[2] = v61;
      }

      v62 = *(v0 + 216);
      v63 = *(v116 + 48);
      v119(v62, *(v0 + 88));
      sub_10062CBB8(v62 + v63, type metadata accessor for DeviceEvent);
    }

    v9 = v10;
    v3 = v109;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v65 = *(v0 + 280);
      v66 = *(v0 + 264);

      v68 = *(v0 + 224);
      v67 = *(v0 + 232);
      v70 = *(v0 + 208);
      v69 = *(v0 + 216);
      v72 = *(v0 + 192);
      v71 = *(v0 + 200);
      v73 = *(v0 + 176);
      v75 = *(v0 + 144);
      v74 = *(v0 + 152);
      v76 = *(v0 + 136);
      v113 = *(v0 + 112);
      v115 = *(v0 + 104);
      v117 = *(v0 + 80);
      v120 = *(v0 + 64);
      **(v0 + 24) = v106;

      v77 = *(v0 + 8);

      return v77();
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_27:
  v78 = *(v0 + 88);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1005D47A0()
{
  *(v0 + 16) = *(v0 + 288);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 296) == 1)
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 264);
  }

  else
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 32);
    v5 = *(type metadata accessor for LocationFetcher() + 32);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 288);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failure on local findable locations fetch! %{public}@", v9, 0xCu);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
    }

    v12 = *(v0 + 288);
    v13 = *(v0 + 264);
  }

  v14 = sub_100909DD0(_swiftEmptyArrayStorage);

  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 176);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  **(v0 + 24) = v14;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1005D4A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = *(type metadata accessor for LocationFetcher() - 8);
  v4[26] = v5;
  v4[27] = *(v5 + 64);
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[29] = v6;
  v7 = *(v6 - 8);
  v4[30] = v7;
  v4[31] = *(v7 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  v4[37] = v8;
  v9 = *(v8 - 8);
  v4[38] = v9;
  v10 = *(v9 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v4[41] = v12;
  *v12 = v4;
  v12[1] = sub_1005D4C24;

  return daemon.getter();
}

uint64_t sub_1005D4C24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v12 = *v1;
  *(v3 + 336) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 344) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1005D4E00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005D4E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *v2;
  *(*v2 + 352) = a1;

  v6 = *(v3 + 336);
  if (v1)
  {

    v7 = sub_1005D61F8;
  }

  else
  {

    v7 = sub_1005D4F50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005D4F50()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 352);
    *(v0 + 368) = 0;
    v4 = *(v0 + 288);
    sub_10001F280(v1 + 32, v0 + 16);
    v5 = *(v3 + 136);
    *(v0 + 376) = v5;
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);

    return _swift_task_switch(sub_1005D50E0, v5, 0);
  }

  else
  {
    v8 = *(v0 + 352);

    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    (*(v0 + 176))(v9);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1005D50E0()
{
  v1 = v0[47];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[30];
  v5 = v0[29];
  v6 = *(v4 + 16);
  v0[48] = v6;
  v0[49] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v3, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[51] = v10;
  v11 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v10 = v0;
  v10[1] = sub_1005D525C;

  return unsafeBlocking<A>(context:_:)(v0 + 19, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v8, v11);
}

uint64_t sub_1005D525C()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 376);
  v5 = *v0;

  return _swift_task_switch(sub_1005D5388, v3, 0);
}

uint64_t sub_1005D5388()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  v4 = *(v3 + 8);
  v0[52] = v4;
  v0[53] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v0[54] = v0[19];

  return _swift_task_switch(sub_1005D5414, 0, 0);
}

uint64_t sub_1005D5414()
{
  v55 = v0;
  v1 = *(v0 + 432);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = *(v0 + 296);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 232);
    v10 = *(*(v0 + 304) + 80);
    sub_10062CD24(v1 + ((v10 + 32) & ~v10), v4, type metadata accessor for MemberSharingCircle);

    sub_10062CC64(v4, v5, type metadata accessor for MemberSharingCircle);
    v3(v7, v5 + *(v6 + 28), v9);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v11);
    (*(*(*(v12 + 8) + 8) + 32))(v11);
    v13 = swift_task_alloc();
    *(v0 + 440) = v13;
    *v13 = v0;
    v13[1] = sub_1005D58EC;
    v14 = *(v0 + 352);
    v15 = *(v0 + 264);
    v16 = *(v0 + 272);

    return sub_1002D901C(v16, v15);
  }

  else
  {
    v18 = *(v0 + 432);

    if (qword_101694518 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177A830);
    sub_10001F280(v0 + 16, v0 + 96);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 416);
      v53 = *(v0 + 424);
      v23 = *(v0 + 288);
      v24 = *(v0 + 232);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      sub_1000035D0((v0 + 96), v28);
      (*(*(*(v27 + 8) + 8) + 32))(v28);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v22(v23, v24);
      sub_100007BAC((v0 + 96));
      v32 = sub_1000136BC(v29, v31, &v54);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "No member sharing circle found for imported beacon %{private,mask.hash}s.", v25, 0x16u);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100007BAC((v0 + 96));
    }

    v33 = *(v0 + 360);
    v34 = *(v0 + 368) + 1;
    sub_100007BAC((v0 + 16));
    if (v34 == v33)
    {
      v35 = *(v0 + 352);

      v38 = *(v0 + 312);
      v37 = *(v0 + 320);
      v40 = *(v0 + 280);
      v39 = *(v0 + 288);
      v42 = *(v0 + 264);
      v41 = *(v0 + 272);
      v43 = *(v0 + 256);
      v44 = *(v0 + 224);
      v45 = *(v0 + 184);
      (*(v0 + 176))(v36);

      v46 = *(v0 + 8);

      return v46();
    }

    else
    {
      v47 = *(v0 + 368);
      *(v0 + 368) = v47 + 1;
      v48 = *(v0 + 352);
      v49 = *(v0 + 288);
      sub_10001F280(*(v0 + 192) + 40 * v47 + 72, v0 + 16);
      v50 = *(v48 + 136);
      *(v0 + 376) = v50;
      v51 = *(v0 + 40);
      v52 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v51);
      (*(*(*(v52 + 8) + 8) + 32))(v51);

      return _swift_task_switch(sub_1005D50E0, v50, 0);
    }
  }
}

uint64_t sub_1005D58EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  v4[56] = v1;

  v7 = v4[53];
  v8 = v4[52];
  v9 = v4[33];
  v10 = v4[29];
  if (v1)
  {
    v8(v9, v10);
    v11 = sub_1005D62D0;
  }

  else
  {
    v4[57] = a1;
    v8(v9, v10);
    v11 = sub_1005D5A70;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1005D5A70()
{
  v1 = v0[57];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_10062CD24(v0[25], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[58] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v9 = swift_task_alloc();
  v0[59] = v9;
  v10 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v9 = v0;
  v9[1] = sub_1005D5BE0;

  return unsafeBlocking<A>(context:_:)(v0 + 21, 0xD000000000000011, 0x800000010135B520, sub_10062CFC4, v7, v10);
}

uint64_t sub_1005D5BE0()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v6 = *v0;

  v4 = *(v1 + 168);

  return _swift_task_switch(sub_1005D5D1C, 0, 0);
}

uint64_t sub_1005D5D1C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  (*(v0 + 416))(*(v0 + 272), *(v0 + 232));
  sub_10062CBB8(v2, type metadata accessor for MemberSharingCircle);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v4 == v3)
  {
    v5 = *(v0 + 352);

    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 256);
    v14 = *(v0 + 224);
    v15 = *(v0 + 184);
    (*(v0 + 176))(v6);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 368);
    *(v0 + 368) = v18 + 1;
    v19 = *(v0 + 352);
    v20 = *(v0 + 288);
    sub_10001F280(*(v0 + 192) + 40 * v18 + 72, v0 + 16);
    v21 = *(v19 + 136);
    *(v0 + 376) = v21;
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v22);
    (*(*(*(v23 + 8) + 8) + 32))(v22);

    return _swift_task_switch(sub_1005D50E0, v21, 0);
  }
}

uint64_t sub_1005D5EF8()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1005D66E8;
  }

  else
  {
    v3 = sub_1005D600C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005D600C()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  v6 = *(v0 + 232);

  v3(v5, v6);
  sub_10062CBB8(v4, type metadata accessor for MemberSharingCircle);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v8 == v7)
  {
    v9 = *(v0 + 352);

    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v19 = *(v0 + 184);
    (*(v0 + 176))(v10);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 368);
    *(v0 + 368) = v22 + 1;
    v23 = *(v0 + 352);
    v24 = *(v0 + 288);
    sub_10001F280(*(v0 + 192) + 40 * v22 + 72, v0 + 16);
    v25 = *(v23 + 136);
    *(v0 + 376) = v25;
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);

    return _swift_task_switch(sub_1005D50E0, v25, 0);
  }
}

uint64_t sub_1005D61F8()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 224);
  v9 = *(v0 + 184);
  (*(v0 + 176))();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005D62D0()
{
  if (qword_101694518 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 448);
  v2 = type metadata accessor for Logger();
  *(v0 + 496) = sub_1000076D4(v2, qword_10177A830);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 448);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch imported item locations: %@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = *(v0 + 448);

  *(v0 + 160) = v9;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144) == 1 && *(v0 + 136) > 5)
  {
    v37 = swift_task_alloc();
    *(v0 + 480) = v37;
    *v37 = v0;
    v37[1] = sub_1005D5EF8;
    v38 = *(v0 + 352);
    v39 = *(v0 + 272);

    return sub_100191968(v39, 2);
  }

  else
  {
    v10 = *(v0 + 448);
    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    v13 = *(v0 + 320);
    v14 = *(v0 + 272);
    v15 = *(v0 + 232);

    v12(v14, v15);
    sub_10062CBB8(v13, type metadata accessor for MemberSharingCircle);
    v16 = *(v0 + 360);
    v17 = *(v0 + 368) + 1;
    sub_100007BAC((v0 + 16));
    if (v17 == v16)
    {
      v18 = *(v0 + 352);

      v21 = *(v0 + 312);
      v20 = *(v0 + 320);
      v23 = *(v0 + 280);
      v22 = *(v0 + 288);
      v25 = *(v0 + 264);
      v24 = *(v0 + 272);
      v26 = *(v0 + 256);
      v27 = *(v0 + 224);
      v28 = *(v0 + 184);
      (*(v0 + 176))(v19);

      v29 = *(v0 + 8);

      return v29();
    }

    else
    {
      v31 = *(v0 + 368);
      *(v0 + 368) = v31 + 1;
      v32 = *(v0 + 352);
      v33 = *(v0 + 288);
      sub_10001F280(*(v0 + 192) + 40 * v31 + 72, v0 + 16);
      v34 = *(v32 + 136);
      *(v0 + 376) = v34;
      v35 = *(v0 + 40);
      v36 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v35);
      (*(*(*(v36 + 8) + 8) + 32))(v35);

      return _swift_task_switch(sub_1005D50E0, v34, 0);
    }
  }
}

uint64_t sub_1005D66E8()
{
  v58 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 392);
  (*(v0 + 384))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
  sub_10001F280(v0 + 16, v0 + 56);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 448);
  v9 = *(v0 + 416);
  v8 = *(v0 + 424);
  v10 = *(v0 + 320);
  if (v6)
  {
    v11 = *(v0 + 288);
    v55 = *(v0 + 448);
    v56 = *(v0 + 272);
    v53 = v5;
    v12 = *(v0 + 256);
    log = v4;
    v13 = *(v0 + 232);
    v51 = *(v0 + 488);
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v14 = 141559043;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v10;
    v17 = v16;
    v9(v12, v13);
    v18 = sub_1000136BC(v15, v17, &v57);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    sub_1000035D0((v0 + 56), v19);
    (*(*(*(v20 + 8) + 8) + 32))(v19);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v9(v11, v13);
    sub_100007BAC((v0 + 56));
    v24 = sub_1000136BC(v21, v23, &v57);

    *(v14 + 34) = v24;
    *(v14 + 42) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 44) = v25;
    *v52 = v25;
    _os_log_impl(&_mh_execute_header, log, v53, "Failed to stop imported share for share identifier %{private,mask.hash}s, beaconIdentifier: %{private,mask.hash}s: %@.", v14, 0x34u);
    sub_10000B3A8(v52, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v9(v56, v13);
    sub_10062CBB8(v54, type metadata accessor for MemberSharingCircle);
  }

  else
  {
    v26 = *(v0 + 272);
    v27 = *(v0 + 256);
    v28 = *(v0 + 232);

    v9(v27, v28);
    v9(v26, v28);
    sub_10062CBB8(v10, type metadata accessor for MemberSharingCircle);
    sub_100007BAC((v0 + 56));
  }

  v29 = *(v0 + 360);
  v30 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v30 == v29)
  {
    v31 = *(v0 + 352);

    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v38 = *(v0 + 264);
    v37 = *(v0 + 272);
    v39 = *(v0 + 256);
    v40 = *(v0 + 224);
    v41 = *(v0 + 184);
    (*(v0 + 176))(v32);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(v0 + 368);
    *(v0 + 368) = v44 + 1;
    v45 = *(v0 + 352);
    v46 = *(v0 + 288);
    sub_10001F280(*(v0 + 192) + 40 * v44 + 72, v0 + 16);
    v47 = *(v45 + 136);
    *(v0 + 376) = v47;
    v48 = *(v0 + 40);
    v49 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v48);
    (*(*(*(v49 + 8) + 8) + 32))(v48);

    return _swift_task_switch(sub_1005D50E0, v47, 0);
  }
}

uint64_t sub_1005D6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = *(type metadata accessor for LocationFetcher() - 8);
  v4[57] = v5;
  v4[58] = *(v5 + 64);
  v4[59] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[60] = v6;
  v7 = *(v6 - 8);
  v4[61] = v7;
  v8 = *(v7 + 64) + 15;
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v4[64] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[67] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4[68] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v4[70] = v14;
  v15 = *(v14 - 8);
  v4[71] = v15;
  v16 = *(v15 + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v4[74] = v18;
  *v18 = v4;
  v18[1] = sub_1005D6E68;

  return daemon.getter();
}

uint64_t sub_1005D6E68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 592);
  v12 = *v1;
  *(v3 + 600) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 608) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1005D7044;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005D7044(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  *(v4 + 616) = a1;
  *(v4 + 624) = v1;

  v7 = *(v3 + 600);
  if (v1)
  {

    v8 = sub_1005D8FD4;
  }

  else
  {

    v8 = sub_1005D7198;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005D7198()
{
  v90 = v0;
  v1 = *(v0 + 440);
  v2 = *(v1 + 16);
  *(v0 + 632) = v2;
  if (v2)
  {
    *(v0 + 752) = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v3 = *(v0 + 624);
    *(v0 + 640) = 0;
    sub_10001F280(v1 + 32, v0 + 160);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    sub_1000035D0((v0 + 160), v4);
    if ((*(v5 + 112))(v4, v5))
    {
      v6 = *(v0 + 584);
      v7 = *(v0 + 576);
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      static Date.trustedNow.getter(v7);
      Date.addingTimeInterval(_:)();
      (*(v8 + 8))(v7, v9);
LABEL_23:
      v38 = *(v0 + 448);
      v39 = v38[6];
      v40 = v38[7];
      sub_1000035D0(v38 + 3, v39);
      v41 = (*(v40 + 72))(v39, v40);
      if ((v43 & 1) != 0 || !v41)
      {
        v57 = *(v0 + 528);
        v58 = *(*(v0 + 512) + 48);
        (*(*(v0 + 568) + 16))(v57, *(v0 + 584), *(v0 + 560));
        *(v57 + v58) = 7;
        if (qword_101694510 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177A818);
        sub_10001F280(v0 + 160, v0 + 240);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = *(v0 + 504);
          v63 = *(v0 + 480);
          v64 = *(v0 + 488);
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v89 = v66;
          *v65 = 141558275;
          *(v65 + 4) = 1752392040;
          *(v65 + 12) = 2081;
          v68 = *(v0 + 264);
          v67 = *(v0 + 272);
          sub_1000035D0((v0 + 240), v68);
          (*(*(*(v67 + 8) + 8) + 32))(v68);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID);
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v70;
          (*(v64 + 8))(v62, v63);
          sub_100007BAC((v0 + 240));
          v72 = sub_1000136BC(v69, v71, &v89);

          *(v65 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v60, v61, "Fetching shared beacon: %{private,mask.hash}s.", v65, 0x16u);
          sub_100007BAC(v66);
        }

        else
        {

          sub_100007BAC((v0 + 240));
        }

        v73 = *(v0 + 520);
        v74 = *(v0 + 512);
        v75 = *(v0 + 448);
        sub_1000D2A70(*(v0 + 528), v73, &qword_10169C9C8, &qword_101398A58);
        v76 = *(v73 + *(v74 + 48));
        sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
        inited = swift_initStackObject();
        *(v0 + 680) = inited;
        *(inited + 16) = xmmword_101385D80;
        sub_10001F280(v0 + 160, inited + 32);
        v78 = v75[6];
        v79 = v75[7];
        sub_1000035D0(v75 + 3, v78);
        v80 = (*(v79 + 48))(v78, v79);
        v82 = v81;
        v84 = v83;
        *(v0 + 688) = v83;
        v85 = swift_task_alloc();
        *(v0 + 696) = v85;
        *v85 = v0;
        v85[1] = sub_1005D7E8C;
        v86 = *(v0 + 616);
        v87 = *(v0 + 520);

        return sub_1002A0294(v87, v76, inited, v80, v82, v84);
      }

      else
      {
        v44 = *(v0 + 448);
        v45 = v41;
        v46 = v42;
        sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
        v47 = swift_initStackObject();
        *(v0 + 648) = v47;
        *(v47 + 16) = xmmword_101385D80;
        sub_10001F280(v0 + 160, v47 + 32);
        v48 = v44[6];
        v49 = v44[7];
        sub_1000035D0(v44 + 3, v48);
        v50 = (*(v49 + 48))(v48, v49);
        v52 = v51;
        v54 = v53;
        *(v0 + 656) = v53;
        v55 = swift_task_alloc();
        *(v0 + 664) = v55;
        *v55 = v0;
        v55[1] = sub_1005D7BBC;
        v56 = *(v0 + 616);

        return sub_100291924(v45, v46, v47, v50, v52, v54);
      }
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v23 = [objc_opt_self() sharedInstance];
      v24 = [v23 isInternalBuild];

      if (v24)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v25 = *(v0 + 568);
        v26 = *(v0 + 560);
        v27 = *(v0 + 552);
        v28 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v28, v27, &unk_101696900, &unk_10138B1E0);
        if ((*(v25 + 48))(v27, 1, v26) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_23;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v29 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v31 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v31, v29, My);
    LOBYTE(v29) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v29)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v33 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v34 = type metadata accessor for TaskPriority();
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        sub_10025EDD4(0, 0, v33, &unk_10138B610, v35);
      }

      v36 = *(v0 + 584);
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v37 = *(v0 + 584);
      Date.init()();
    }

    goto LABEL_23;
  }

  v10 = *(v0 + 616);

  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 552);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 496);
  v18 = *(v0 + 504);
  v88 = *(v0 + 472);
  v20 = *(v0 + 432);
  (*(v0 + 424))(v11);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005D7BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v5 = v3[83];
  v6 = *v2;
  v4[84] = v1;

  v7 = v3[82];
  v8 = v3[81];

  swift_setDeallocating();
  sub_100007BAC((v8 + 32));
  if (v1)
  {
    v9 = sub_1005D90C4;
  }

  else
  {
    v9 = sub_1005D7D1C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005D7D1C()
{
  v1 = v0[42];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  sub_10062CD24(v0[56], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[89] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v9 = swift_task_alloc();
  v0[90] = v9;
  v10 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v9 = v0;
  v9[1] = sub_1005D81F4;

  return unsafeBlocking<A>(context:_:)(v0 + 52, 0xD000000000000011, 0x800000010135B520, sub_10062C8C4, v7, v10);
}

uint64_t sub_1005D7E8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[44] = v2;
  v4[45] = a1;
  v4[46] = v1;
  v5 = v3[87];
  v6 = *v2;
  v4[88] = v1;

  v7 = v3[86];
  v8 = v3[85];
  if (v1)
  {

    swift_setDeallocating();
    v9 = *(v8 + 16);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    swift_arrayDestroy();
    v10 = sub_1005D92EC;
  }

  else
  {
    v11 = v4[71];
    v12 = v4[70];
    v13 = v4[65];

    swift_setDeallocating();
    v14 = *(v8 + 16);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    swift_arrayDestroy();
    (*(v11 + 8))(v13, v12);
    v10 = sub_1005D806C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1005D806C()
{
  sub_10000B3A8(v0[66], &qword_10169C9C8, &qword_101398A58);
  v1 = v0[45];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  sub_10062CD24(v0[56], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[89] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v9 = swift_task_alloc();
  v0[90] = v9;
  v10 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v9 = v0;
  v9[1] = sub_1005D81F4;

  return unsafeBlocking<A>(context:_:)(v0 + 52, 0xD000000000000011, 0x800000010135B520, sub_10062C8C4, v7, v10);
}

uint64_t sub_1005D81F4()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 712);
  v6 = *v0;

  v4 = *(v1 + 416);

  return _swift_task_switch(sub_1005D8330, 0, 0);
}

uint64_t sub_1005D8330()
{
  (*(v0[71] + 8))(v0[73], v0[70]);
  v0[91] = 0;
  v1 = v0[62];
  v2 = v0[23];
  v3 = v0[24];
  sub_1000035D0(v0 + 20, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = swift_task_alloc();
  v0[92] = v4;
  *v4 = v0;
  v4[1] = sub_1005D8430;
  v5 = v0[62];
  v6 = v0[56];

  return sub_1005DA0E4(v5, 0);
}

uint64_t sub_1005D8430()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = v0;

  (*(v2[61] + 8))(v2[62], v2[60]);
  if (v0)
  {
    v5 = sub_1005D954C;
  }

  else
  {
    v5 = sub_1005D8598;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005D8598()
{
  v92 = v0;
  v1 = *(v0 + 728);

  v2 = *(v0 + 744);
  v3 = *(v0 + 632);
  v4 = *(v0 + 640) + 1;
  sub_100007BAC((v0 + 160));
  if (v4 == v3)
  {
    v5 = *(v0 + 616);

    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 552);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v14 = *(v0 + 496);
    v13 = *(v0 + 504);
    v90 = *(v0 + 472);
    v15 = *(v0 + 432);
    (*(v0 + 424))(v6);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 640);
  *(v0 + 640) = v18 + 1;
  sub_10001F280(*(v0 + 440) + 40 * v18 + 72, v0 + 160);
  v19 = *(v0 + 184);
  v20 = *(v0 + 192);
  sub_1000035D0((v0 + 160), v19);
  if (((*(v20 + 112))(v19, v20) & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v25 = [objc_opt_self() sharedInstance];
      v26 = [v25 isInternalBuild];

      if (v26)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 568);
        v28 = *(v0 + 560);
        v29 = *(v0 + 552);
        v30 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v30, v29, &unk_101696900, &unk_10138B1E0);
        if ((*(v27 + 48))(v29, 1, v28) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_23;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v31 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v33 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v33, v31, My);
    LOBYTE(v31) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v31)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v35 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v36 = type metadata accessor for TaskPriority();
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        sub_10025EDD4(0, 0, v35, &unk_10138B610, v37);
      }

      v38 = *(v0 + 584);
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v39 = *(v0 + 584);
      Date.init()();
    }

    goto LABEL_23;
  }

  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 568);
  v24 = *(v0 + 560);
  static Date.trustedNow.getter(v22);
  Date.addingTimeInterval(_:)();
  (*(v23 + 8))(v22, v24);
LABEL_23:
  v40 = *(v0 + 448);
  v41 = v40[6];
  v42 = v40[7];
  sub_1000035D0(v40 + 3, v41);
  v43 = (*(v42 + 72))(v41, v42);
  if ((v45 & 1) != 0 || !v43)
  {
    v59 = *(v0 + 528);
    v60 = *(*(v0 + 512) + 48);
    (*(*(v0 + 568) + 16))(v59, *(v0 + 584), *(v0 + 560));
    *(v59 + v60) = 7;
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177A818);
    sub_10001F280(v0 + 160, v0 + 240);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 504);
      v65 = *(v0 + 480);
      v66 = *(v0 + 488);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91 = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      v70 = *(v0 + 264);
      v69 = *(v0 + 272);
      sub_1000035D0((v0 + 240), v70);
      (*(*(*(v69 + 8) + 8) + 32))(v70);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      (*(v66 + 8))(v64, v65);
      sub_100007BAC((v0 + 240));
      v74 = sub_1000136BC(v71, v73, &v91);

      *(v67 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "Fetching shared beacon: %{private,mask.hash}s.", v67, 0x16u);
      sub_100007BAC(v68);
    }

    else
    {

      sub_100007BAC((v0 + 240));
    }

    v75 = *(v0 + 520);
    v76 = *(v0 + 512);
    v77 = *(v0 + 448);
    sub_1000D2A70(*(v0 + 528), v75, &qword_10169C9C8, &qword_101398A58);
    v78 = *(v75 + *(v76 + 48));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    inited = swift_initStackObject();
    *(v0 + 680) = inited;
    *(inited + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, inited + 32);
    v80 = v77[6];
    v81 = v77[7];
    sub_1000035D0(v77 + 3, v80);
    v82 = (*(v81 + 48))(v80, v81);
    v84 = v83;
    v86 = v85;
    *(v0 + 688) = v85;
    v87 = swift_task_alloc();
    *(v0 + 696) = v87;
    *v87 = v0;
    v87[1] = sub_1005D7E8C;
    v88 = *(v0 + 616);
    v89 = *(v0 + 520);

    return sub_1002A0294(v89, v78, inited, v82, v84, v86);
  }

  else
  {
    v46 = *(v0 + 448);
    v47 = v43;
    v48 = v44;
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v49 = swift_initStackObject();
    *(v0 + 648) = v49;
    *(v49 + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, v49 + 32);
    v50 = v46[6];
    v51 = v46[7];
    sub_1000035D0(v46 + 3, v50);
    v52 = (*(v51 + 48))(v50, v51);
    v54 = v53;
    v56 = v55;
    *(v0 + 656) = v55;
    v57 = swift_task_alloc();
    *(v0 + 664) = v57;
    *v57 = v0;
    v57[1] = sub_1005D7BBC;
    v58 = *(v0 + 616);

    return sub_100291924(v47, v48, v49, v52, v54, v56);
  }
}

uint64_t sub_1005D8FD4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 496);
  v7 = *(v0 + 504);
  v12 = *(v0 + 472);
  v9 = *(v0 + 432);
  (*(v0 + 424))();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005D90C4()
{
  (*(v0[71] + 8))(v0[73], v0[70]);
  v1 = v0[84];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch shared item locations: %@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[91] = v1;
  v8 = v0[62];
  v9 = v0[23];
  v10 = v0[24];
  sub_1000035D0(v0 + 20, v9);
  (*(*(*(v10 + 8) + 8) + 32))(v9);
  v11 = swift_task_alloc();
  v0[92] = v11;
  *v11 = v0;
  v11[1] = sub_1005D8430;
  v12 = v0[62];
  v13 = v0[56];

  return sub_1005DA0E4(v12, v1);
}

uint64_t sub_1005D92EC()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[65];
  sub_10000B3A8(v0[66], &qword_10169C9C8, &qword_101398A58);
  v5 = *(v2 + 8);
  v5(v1, v3);
  v5(v4, v3);
  v6 = v0[88];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch shared item locations: %@.", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[91] = v6;
  v13 = v0[62];
  v14 = v0[23];
  v15 = v0[24];
  sub_1000035D0(v0 + 20, v14);
  (*(*(*(v15 + 8) + 8) + 32))(v14);
  v16 = swift_task_alloc();
  v0[92] = v16;
  *v16 = v0;
  v16[1] = sub_1005D8430;
  v17 = v0[62];
  v18 = v0[56];

  return sub_1005DA0E4(v17, v6);
}

uint64_t sub_1005D954C()
{
  v106 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 744);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A818);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 744);
  v8 = *(v0 + 728);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v105[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 280);
    v11 = *(v0 + 288);
    v13 = *(v0 + 296);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v105);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to handle shared beacon revoke: %s.", v9, 0xCu);
    sub_100007BAC(v10);

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {
    v17 = *(v0 + 728);
  }

  v18 = *(v0 + 632);
  v19 = *(v0 + 640) + 1;
  sub_100007BAC((v0 + 160));
  if (v19 == v18)
  {
    v20 = *(v0 + 616);

    v22 = *(v0 + 584);
    v23 = *(v0 + 576);
    v24 = *(v0 + 552);
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v27 = *(v0 + 520);
    v29 = *(v0 + 496);
    v28 = *(v0 + 504);
    v104 = *(v0 + 472);
    v30 = *(v0 + 432);
    (*(v0 + 424))(v21);

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 640);
  *(v0 + 640) = v33 + 1;
  sub_10001F280(*(v0 + 440) + 40 * v33 + 72, v0 + 160);
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  sub_1000035D0((v0 + 160), v34);
  if (((*(v35 + 112))(v34, v35) & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v40 = [objc_opt_self() sharedInstance];
      v41 = [v40 isInternalBuild];

      if (v41)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v42 = *(v0 + 568);
        v43 = *(v0 + 560);
        v44 = *(v0 + 552);
        v45 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v45, v44, &unk_101696900, &unk_10138B1E0);
        if ((*(v42 + 48))(v44, 1, v43) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_28;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v46 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v48 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v48, v46, My);
    LOBYTE(v46) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v46)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v50 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v51 = type metadata accessor for TaskPriority();
        (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        sub_10025EDD4(0, 0, v50, &unk_10138B610, v52);
      }

      v53 = *(v0 + 584);
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v54 = *(v0 + 584);
      Date.init()();
    }

    goto LABEL_28;
  }

  v36 = *(v0 + 584);
  v37 = *(v0 + 576);
  v38 = *(v0 + 568);
  v39 = *(v0 + 560);
  static Date.trustedNow.getter(v37);
  Date.addingTimeInterval(_:)();
  (*(v38 + 8))(v37, v39);
LABEL_28:
  v55 = *(v0 + 448);
  v56 = v55[6];
  v57 = v55[7];
  sub_1000035D0(v55 + 3, v56);
  v58 = (*(v57 + 72))(v56, v57);
  if ((v60 & 1) != 0 || !v58)
  {
    v74 = *(v0 + 528);
    v75 = *(*(v0 + 512) + 48);
    (*(*(v0 + 568) + 16))(v74, *(v0 + 584), *(v0 + 560));
    *(v74 + v75) = 7;
    if (p_weak_ivar_lyt[162] != -1)
    {
      swift_once();
    }

    sub_1000076D4(v3, qword_10177A818);
    sub_10001F280(v0 + 160, v0 + 240);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = *(v0 + 504);
      v79 = *(v0 + 480);
      v80 = *(v0 + 488);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v105[0] = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      v84 = *(v0 + 264);
      v83 = *(v0 + 272);
      sub_1000035D0((v0 + 240), v84);
      (*(*(*(v83 + 8) + 8) + 32))(v84);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      (*(v80 + 8))(v78, v79);
      sub_100007BAC((v0 + 240));
      v88 = sub_1000136BC(v85, v87, v105);

      *(v81 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v76, v77, "Fetching shared beacon: %{private,mask.hash}s.", v81, 0x16u);
      sub_100007BAC(v82);
    }

    else
    {

      sub_100007BAC((v0 + 240));
    }

    v89 = *(v0 + 520);
    v90 = *(v0 + 512);
    v91 = *(v0 + 448);
    sub_1000D2A70(*(v0 + 528), v89, &qword_10169C9C8, &qword_101398A58);
    v92 = *(v89 + *(v90 + 48));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    inited = swift_initStackObject();
    *(v0 + 680) = inited;
    *(inited + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, inited + 32);
    v94 = v91[6];
    v95 = v91[7];
    sub_1000035D0(v91 + 3, v94);
    v96 = (*(v95 + 48))(v94, v95);
    v98 = v97;
    v100 = v99;
    *(v0 + 688) = v99;
    v101 = swift_task_alloc();
    *(v0 + 696) = v101;
    *v101 = v0;
    v101[1] = sub_1005D7E8C;
    v102 = *(v0 + 616);
    v103 = *(v0 + 520);

    return sub_1002A0294(v103, v92, inited, v96, v98, v100);
  }

  else
  {
    v61 = *(v0 + 448);
    v62 = v58;
    v63 = v59;
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v64 = swift_initStackObject();
    *(v0 + 648) = v64;
    *(v64 + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, v64 + 32);
    v65 = v61[6];
    v66 = v61[7];
    sub_1000035D0(v61 + 3, v65);
    v67 = (*(v66 + 48))(v65, v66);
    v69 = v68;
    v71 = v70;
    *(v0 + 656) = v70;
    v72 = swift_task_alloc();
    *(v0 + 664) = v72;
    *v72 = v0;
    v72[1] = sub_1005D7BBC;
    v73 = *(v0 + 616);

    return sub_100291924(v62, v63, v64, v67, v69, v71);
  }
}

uint64_t sub_1005DA0E4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MemberSharingCircle();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v3[15] = *(v8 + 64);
  v3[16] = swift_task_alloc();
  v9 = type metadata accessor for LocationFetcher();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v3[19] = *(v10 + 64);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005DA27C, 0, 0);
}

uint64_t sub_1005DA27C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[6];
  sub_10062CD24(v0[8], v1, type metadata accessor for LocationFetcher);
  (*(v7 + 16))(v4, v8, v6);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v0[21] = v11;
  sub_10062CC64(v1, v11 + v9, type metadata accessor for LocationFetcher);
  (*(v7 + 32))(v11 + v10, v4, v6);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v13 = swift_task_alloc();
  v0[22] = v13;
  v14 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v13 = v0;
  v13[1] = sub_1005DA448;

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000011, 0x800000010135B520, sub_10062C8C8, v11, v14);
}

uint64_t sub_1005DA448()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_1005DA560, 0, 0);
}

uint64_t sub_1005DA560()
{
  v37 = v0;
  v1 = *(v0 + 32);
  *(v0 + 184) = v1;
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (!v2)
  {
LABEL_14:
    v10 = *(v0 + 160);
    v11 = *(v0 + 128);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 28) = *(*(v0 + 80) + 80);
  *(v0 + 200) = 0;
  if (!*(v1 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    v9 = *(v0 + 184);
    goto LABEL_14;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v0 + 56);
    sub_10062CD24(v1 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v3, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v4)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v30 = *(*(v0 + 64) + *(*(v0 + 136) + 44));
      v31 = swift_task_alloc();
      *(v0 + 208) = v31;
      *v31 = v0;
      v31[1] = sub_1005DAA40;
      v32 = *(v0 + 96);

      return sub_10107F924(v32);
    }

LABEL_10:
    v7 = *(v0 + 192);
    v8 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v8 == v7)
    {
      goto LABEL_13;
    }

    v3 = *(v0 + 200) + 1;
    *(v0 + 200) = v3;
    v1 = *(v0 + 184);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v6 + *(v5 + 40)) != 4)
  {
    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
    v6 = *(v0 + 96);
  }

  v16 = *(v0 + 88);
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177A560);
  sub_10062CD24(v6, v16, type metadata accessor for MemberSharingCircle);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 104);
    v21 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = *(v22 + 28);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_10062CBB8(v21, type metadata accessor for MemberSharingCircle);
    v29 = sub_1000136BC(v26, v28, &v36);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Cleaning up revoke state for circle %{private,mask.hash}s.", v23, 0x16u);
    sub_100007BAC(v24);
  }

  else
  {
    v33 = *(v0 + 88);

    sub_10062CBB8(v33, type metadata accessor for MemberSharingCircle);
  }

  v34 = swift_task_alloc();
  *(v0 + 224) = v34;
  *v34 = v0;
  v34[1] = sub_1005DB018;
  v35 = *(v0 + 96);

  return sub_10108240C(v35, 1);
}

uint64_t sub_1005DAA40()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_1005DAB3C, 0, 0);
}

uint64_t sub_1005DAB3C()
{
  v38 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200) + 1;
  sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {
LABEL_2:
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);

    v8 = *(v0 + 8);

    return v8();
  }

  while (1)
  {
    v14 = *(v0 + 200) + 1;
    *(v0 + 200) = v14;
    v15 = *(v0 + 184);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v16 = *(v0 + 56);
    sub_10062CD24(v15 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v14, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v16)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v17 = *(*(v0 + 64) + *(*(v0 + 136) + 44));
      v18 = swift_task_alloc();
      *(v0 + 208) = v18;
      *v18 = v0;
      v18[1] = sub_1005DAA40;
      v19 = *(v0 + 96);

      return sub_10107F924(v19);
    }

LABEL_7:
    v12 = *(v0 + 192);
    v13 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v13 == v12)
    {
      goto LABEL_2;
    }
  }

  v10 = *(v0 + 72);
  v11 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v11 + *(v10 + 40)) != 4)
  {
    goto LABEL_7;
  }

  if (qword_101694480 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
  v11 = *(v0 + 96);
LABEL_17:
  v20 = *(v0 + 88);
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177A560);
  sub_10062CD24(v11, v20, type metadata accessor for MemberSharingCircle);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = *(v26 + 28);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_10062CBB8(v25, type metadata accessor for MemberSharingCircle);
    v33 = sub_1000136BC(v30, v32, &v37);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Cleaning up revoke state for circle %{private,mask.hash}s.", v27, 0x16u);
    sub_100007BAC(v28);
  }

  else
  {
    v34 = *(v0 + 88);

    sub_10062CBB8(v34, type metadata accessor for MemberSharingCircle);
  }

  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  *v35 = v0;
  v35[1] = sub_1005DB018;
  v36 = *(v0 + 96);

  return sub_10108240C(v36, 1);
}

uint64_t sub_1005DB018()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_1005DB678;
  }

  else
  {
    v5 = sub_1005DB134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005DB134()
{
  v40 = v0;
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 72) + 24);
  sub_1000035D0((*(v0 + 216) + 32), *(*(v0 + 216) + 56));
  type metadata accessor for BeaconObservationStore();
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200) + 1;
  sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
  if (v4 == v3)
  {
LABEL_2:
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v7 = *(v0 + 128);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);

    v10 = *(v0 + 8);

    return v10();
  }

  while (1)
  {
    v16 = *(v0 + 200) + 1;
    *(v0 + 200) = v16;
    v17 = *(v0 + 184);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v18 = *(v0 + 56);
    sub_10062CD24(v17 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v16, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v18)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v19 = *(*(v0 + 64) + *(*(v0 + 136) + 44));
      v20 = swift_task_alloc();
      *(v0 + 208) = v20;
      *v20 = v0;
      v20[1] = sub_1005DAA40;
      v21 = *(v0 + 96);

      return sub_10107F924(v21);
    }

LABEL_7:
    v14 = *(v0 + 192);
    v15 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v15 == v14)
    {
      goto LABEL_2;
    }
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v13 + *(v12 + 40)) != 4)
  {
    goto LABEL_7;
  }

  if (qword_101694480 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
  v13 = *(v0 + 96);
LABEL_17:
  v22 = *(v0 + 88);
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177A560);
  sub_10062CD24(v13, v22, type metadata accessor for MemberSharingCircle);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 104);
    v27 = *(v0 + 88);
    v28 = *(v0 + 72);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v31 = *(v28 + 28);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_10062CBB8(v27, type metadata accessor for MemberSharingCircle);
    v35 = sub_1000136BC(v32, v34, &v39);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Cleaning up revoke state for circle %{private,mask.hash}s.", v29, 0x16u);
    sub_100007BAC(v30);
  }

  else
  {
    v36 = *(v0 + 88);

    sub_10062CBB8(v36, type metadata accessor for MemberSharingCircle);
  }

  v37 = swift_task_alloc();
  *(v0 + 224) = v37;
  *v37 = v0;
  v37[1] = sub_1005DB018;
  v38 = *(v0 + 96);

  return sub_10108240C(v38, 1);
}

uint64_t sub_1005DB678()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[11];
  sub_10062CBB8(v0[12], type metadata accessor for MemberSharingCircle);

  v4 = v0[1];
  v5 = v0[29];

  return v4();
}

void sub_1005DB724(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v48 = &v39 - v6;
  v7 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v44 = &v39 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v47 = &v39 - v22;
  v45 = *(*a1 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v10, qword_10177AC60);
  v24 = v11[2];
  v24(v19, v23, v10);
  v24(v17, v19, v10);
  v25 = v17;
  v26 = *(v7 + 40);
  v43 = v26;
  v27 = type metadata accessor for DirectorySequence();
  v40 = v19;
  v41 = v27;
  v28 = *(*(v27 - 8) + 56);
  v29 = v7;
  v42 = v7;
  v30 = v44;
  v28(&v44[v26], 1, 1, v27);
  v24(v30, v25, v10);
  v31 = v46;
  *(v30 + *(v29 + 36)) = v45;
  v24(v31, v25, v10);

  v32 = v48;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v33 = v11[1];
  v33(v25, v10);
  v33(v40, v10);
  v28(v32, 0, 1, v41);
  sub_10062BF70(v32, v30 + v43);
  v34 = *(v49 + 56);
  v35 = v47;
  v36 = v42;
  v34(v47, 1, 1, v42);
  sub_10000B3A8(v35, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v30, v35, &qword_1016A5978, &qword_101410D20);
  v37 = (v34)(v35, 0, 1, v36);
  __chkstk_darwin(v37);
  *(&v39 - 2) = v50;
  sub_100E6C1A4(sub_10062CF74, (&v39 - 4));
  *v51 = v38;
}

uint64_t sub_1005DBBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = *(type metadata accessor for LocationFetcher() - 8);
  v4[40] = v5;
  v4[41] = *(v5 + 64);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v8 = *(v7 + 64) + 15;
  v4[45] = swift_task_alloc();
  v9 = type metadata accessor for BeaconIdentifier();
  v4[46] = v9;
  v10 = *(v9 - 8);
  v4[47] = v10;
  v11 = *(v10 + 64) + 15;
  v4[48] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[49] = v13;
  *v13 = v4;
  v13[1] = sub_1005DBD68;

  return daemon.getter();
}

uint64_t sub_1005DBD68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v12 = *v1;
  *(v3 + 400) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 408) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1005DBF44;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005DBF44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v5 = *v2;
  *(*v2 + 416) = a1;

  v6 = *(v3 + 400);
  if (v1)
  {

    v7 = sub_1005DC094;
  }

  else
  {

    v7 = sub_1005DC1DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005DC094()
{
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AFA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "beaconsFromDisk could not get the ObservationStoreService.", v4, 2u);
  }

  v5 = v0[36];
  v6 = v0[37];

  v5(_swiftEmptyDictionarySingleton);
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[42];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DC1DC()
{
  v1 = v0[38];
  v2 = *(v1 + 16);
  v0[53] = v2;
  if (v2)
  {
    v0[54] = 0;
    v0[55] = _swiftEmptyDictionarySingleton;
    sub_10001F280(v1 + 32, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v3 = qword_10177B348;
    v0[56] = qword_10177B348;
    v4 = async function pointer to unsafeBlocking<A>(_:)[1];

    v5 = swift_task_alloc();
    v0[57] = v5;
    *v5 = v0;
    v5[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v3, &type metadata for Configuration);
  }

  else
  {
    v6 = v0[52];
    v8 = v0[36];
    v7 = v0[37];

    v8(v9);
    swift_bridgeObjectRelease_n();
    v10 = v0[48];
    v11 = v0[45];
    v12 = v0[42];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1005DC390()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v4 = *v0;

  return _swift_task_switch(sub_1005DC4A8, 0, 0);
}

uint64_t sub_1005DC4A8()
{
  v1 = v0[32];
  KeyPath = swift_getKeyPath();
  v3 = sub_1010790F4(KeyPath, v1);
  if (v4)
  {
    _StringGuts.grow(_:)(40);
    v0[30] = 0;
    v0[31] = 0xE000000000000000;
    v5._object = 0x800000010134CA80;
    v5._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v5);
    v0[33] = KeyPath;
    sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
    _print_unlocked<A, B>(_:_:)();
    v6 = v0[30];
    v7 = v0[31];
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v9 = v3;
    v10 = v0[52];
    v11 = v0[48];
    v12 = v0[46];

    v0[58] = v9;
    v13 = getuid();
    sub_1000294F0(v13);
    v14 = v0[5];
    v15 = v0[6];
    sub_1000035D0(v0 + 2, v14);
    v16 = v11 + *(v12 + 20);
    (*(*(*(v15 + 8) + 8) + 32))(v14);

    return _swift_task_switch(sub_1005DC670, v10, 0);
  }
}

uint64_t sub_1005DC670()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  sub_1000BC4D4(&qword_1016A5878, &qword_1013B3268);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 560) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 472) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_10062CD24(v2, v6 + v5, type metadata accessor for BeaconIdentifier);
  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = sub_1005DC784;
  v8 = *(v0 + 464);
  v9 = *(v0 + 416);

  return sub_1010D2DD4(v6, v8, 0);
}

uint64_t sub_1005DC784(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 472);
  v8 = (*(v4 + 560) + 32) & ~*(v4 + 560);
  if (v1)
  {
    v9 = *(v4 + 416);
    swift_setDeallocating();
    sub_10062CBB8(v7 + v8, type metadata accessor for BeaconIdentifier);
    swift_deallocClassInstance();
    v10 = sub_1005DCF58;
    v11 = v9;
  }

  else
  {
    sub_10062CBB8(*(v4 + 384), type metadata accessor for BeaconIdentifier);
    swift_setDeallocating();
    sub_10062CBB8(v7 + v8, type metadata accessor for BeaconIdentifier);
    swift_deallocClassInstance();
    v10 = sub_1005DC950;
    v11 = 0;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1005DC950()
{
  v51 = v0;
  v1 = v0 + 16;
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 488);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AFA0);
  sub_10001F280(v0 + 16, v0 + 96);
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 488);
  if (v6)
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v47 = v5;
    v10 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    sub_1000035D0((v0 + 96), v13);
    (*(*(*(v12 + 8) + 8) + 32))(v13);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v8 + 8))(v9, v10);
    sub_100007BAC((v0 + 96));
    v17 = sub_1000136BC(v14, v16, v50);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = *(v7 + 16);

    *(v11 + 24) = v18;

    _os_log_impl(&_mh_execute_header, v4, v47, "Disk fetch for beacon %{private,mask.hash}s found %ld observations.", v11, 0x20u);
    sub_100007BAC(v48);

    v1 = v0 + 16;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 96));
  }

  v20 = *(v0 + 488);
  v19 = *(v0 + 496);
  v21 = *(v0 + 440);
  v22 = swift_task_alloc();
  *(v22 + 16) = v1;
  v23 = sub_1005C7500(sub_100627378, v22, v20);

  sub_10001F280(v1, v0 + 136);
  swift_bridgeObjectRetain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 360);
    v28 = *(v0 + 344);
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50[0] = v49;
    *v29 = 141558531;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    sub_1000035D0((v0 + 136), v31);
    (*(*(*(v30 + 8) + 8) + 32))(v31);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v26 + 8))(v27, v28);
    sub_100007BAC((v0 + 136));
    v35 = sub_1000136BC(v32, v34, v50);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2048;
    v36 = v23[2];

    *(v29 + 24) = v36;

    _os_log_impl(&_mh_execute_header, v24, v25, "Disk fetch for beacon %{private,mask.hash}s found %ld locations.", v29, 0x20u);
    sub_100007BAC(v49);

    v1 = v0 + 16;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 136));
  }

  v38 = *(v0 + 328);
  v37 = *(v0 + 336);
  v39 = *(v0 + 320);
  sub_10062CD24(*(v0 + 312), v37, type metadata accessor for LocationFetcher);
  sub_10001F280(v1, v0 + 176);
  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v41 = (v38 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v0 + 504) = v42;
  sub_10062CC64(v37, v42 + v40, type metadata accessor for LocationFetcher);
  sub_10000A748((v0 + 176), v42 + v41);
  *(v42 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v43 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v44 = swift_task_alloc();
  *(v0 + 512) = v44;
  v45 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v44 = v0;
  v44[1] = sub_1005DD420;

  return unsafeBlocking<A>(context:_:)(v0 + 280, 0xD000000000000011, 0x800000010135B520, sub_100627394, v42, v45);
}

uint64_t sub_1005DCF58()
{
  sub_10062CBB8(*(v0 + 384), type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_1005DCFD4, 0, 0);
}

uint64_t sub_1005DCFD4()
{
  v39 = v0;
  v1 = v0[62];
  v2 = v0[55];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[44];
    v7 = v0[45];
    v8 = v0[43];
    v37 = v2;
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v10 = v0[10];
    v11 = v0[11];
    sub_1000035D0(v0 + 7, v10);
    (*(*(*(v11 + 8) + 8) + 32))(v10);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v7, v8);
    sub_100007BAC(v0 + 7);
    v15 = sub_1000136BC(v12, v14, &v38);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[29];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v38);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not fetch beacon %{private,mask.hash}s, %s.", v9, 0x20u);
    swift_arrayDestroy();

    v2 = v37;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v22 = v0[53];
  v23 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v23 == v22)
  {
    v24 = v0[52];
    v25 = v0[36];
    v26 = v0[37];

    v25(v27);
    swift_bridgeObjectRelease_n();
    v28 = v0[48];
    v29 = v0[45];
    v30 = v0[42];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[54];
    v0[54] = v33 + 1;
    v0[55] = v2;
    sub_10001F280(v0[38] + 40 * v33 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v34 = qword_10177B348;
    v0[56] = qword_10177B348;
    v35 = async function pointer to unsafeBlocking<A>(_:)[1];

    v36 = swift_task_alloc();
    v0[57] = v36;
    *v36 = v0;
    v36[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v34, &type metadata for Configuration);
  }
}

uint64_t sub_1005DD420()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v4 = *v0;

  return _swift_task_switch(sub_1005DD538, 0, 0);
}

uint64_t sub_1005DD538()
{
  v0[65] = v0[35];
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_1005DD5D8;
  v2 = v0[61];
  v3 = v0[52];

  return sub_1010CDD28(v2);
}

uint64_t sub_1005DD5D8()
{
  v2 = *(*v1 + 528);
  v3 = *v1;
  v3[67] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005DDA2C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[68] = v4;
    *v4 = v3;
    v4[1] = sub_1005DD74C;
    v5 = v3[52];
    v6 = v3[61];

    return sub_1010CDED8(v6);
  }
}

uint64_t sub_1005DD74C()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1005DDE80;
  }

  else
  {
    v3 = sub_1005DD860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005DD860()
{
  v1 = v0[61];

  v2 = v0[65];
  v3 = v0[53];
  v4 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v4 == v3)
  {
    v5 = v0[52];
    v7 = v0[36];
    v6 = v0[37];

    v7(v8);
    swift_bridgeObjectRelease_n();
    v9 = v0[48];
    v10 = v0[45];
    v11 = v0[42];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[54];
    v0[54] = v14 + 1;
    v0[55] = v2;
    sub_10001F280(v0[38] + 40 * v14 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v15 = qword_10177B348;
    v0[56] = qword_10177B348;
    v16 = async function pointer to unsafeBlocking<A>(_:)[1];

    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v15, &type metadata for Configuration);
  }
}

uint64_t sub_1005DDA2C()
{
  v40 = v0;
  v1 = v0[61];

  v2 = v0[67];
  v3 = v0[65];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[44];
    v8 = v0[45];
    v9 = v0[43];
    v38 = v3;
    v10 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = v0[10];
    v12 = v0[11];
    sub_1000035D0(v0 + 7, v11);
    (*(*(*(v12 + 8) + 8) + 32))(v11);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v8, v9);
    sub_100007BAC(v0 + 7);
    v16 = sub_1000136BC(v13, v15, &v39);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[29];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v39);

    *(v10 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not fetch beacon %{private,mask.hash}s, %s.", v10, 0x20u);
    swift_arrayDestroy();

    v3 = v38;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v23 = v0[53];
  v24 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v24 == v23)
  {
    v25 = v0[52];
    v26 = v0[36];
    v27 = v0[37];

    v26(v28);
    swift_bridgeObjectRelease_n();
    v29 = v0[48];
    v30 = v0[45];
    v31 = v0[42];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = v0[54];
    v0[54] = v34 + 1;
    v0[55] = v3;
    sub_10001F280(v0[38] + 40 * v34 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v35 = qword_10177B348;
    v0[56] = qword_10177B348;
    v36 = async function pointer to unsafeBlocking<A>(_:)[1];

    v37 = swift_task_alloc();
    v0[57] = v37;
    *v37 = v0;
    v37[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v35, &type metadata for Configuration);
  }
}

uint64_t sub_1005DDE80()
{
  v40 = v0;
  v1 = v0[61];

  v2 = v0[69];
  v3 = v0[65];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[44];
    v8 = v0[45];
    v9 = v0[43];
    v38 = v3;
    v10 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = v0[10];
    v12 = v0[11];
    sub_1000035D0(v0 + 7, v11);
    (*(*(*(v12 + 8) + 8) + 32))(v11);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v8, v9);
    sub_100007BAC(v0 + 7);
    v16 = sub_1000136BC(v13, v15, &v39);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[29];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v39);

    *(v10 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not fetch beacon %{private,mask.hash}s, %s.", v10, 0x20u);
    swift_arrayDestroy();

    v3 = v38;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v23 = v0[53];
  v24 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v24 == v23)
  {
    v25 = v0[52];
    v26 = v0[36];
    v27 = v0[37];

    v26(v28);
    swift_bridgeObjectRelease_n();
    v29 = v0[48];
    v30 = v0[45];
    v31 = v0[42];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = v0[54];
    v0[54] = v34 + 1;
    v0[55] = v3;
    sub_10001F280(v0[38] + 40 * v34 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v35 = qword_10177B348;
    v0[56] = qword_10177B348;
    v36 = async function pointer to unsafeBlocking<A>(_:)[1];

    v37 = swift_task_alloc();
    v0[57] = v37;
    *v37 = v0;
    v37[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v35, &type metadata for Configuration);
  }
}

uint64_t sub_1005DE2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v136 = a2;
  v152 = a1;
  v153 = a3;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v149 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v144 = &v131 - v7;
  v148 = type metadata accessor for Date();
  v147 = *(v148 - 8);
  v8 = *(v147 + 64);
  v9 = __chkstk_darwin(v148);
  v146 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v143 = &v131 - v11;
  v12 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v145 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v140 = &v131 - v17;
  __chkstk_darwin(v16);
  v142 = &v131 - v18;
  v138 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v134 = *(v138 - 8);
  v19 = *(v134 + 64);
  v20 = __chkstk_darwin(v138);
  v131 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v131 - v22;
  v23 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v137 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v131 - v28;
  __chkstk_darwin(v27);
  v31 = &v131 - v30;
  v151 = type metadata accessor for UUID();
  v141 = *(v151 - 8);
  v32 = *(v141 + 64);
  v33 = __chkstk_darwin(v151);
  v139 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v133 = &v131 - v35;
  v36 = type metadata accessor for ObservedAdvertisement(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v135 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v131 - v40;
  v42 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v131 - v44;
  v46 = type metadata accessor for ObservedAdvertisement.Location(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v36;
  v51 = *(v36 + 48);
  v52 = v152;
  v54 = v53;
  sub_1000D2A70(v152 + v51, v45, &qword_1016AA430, &unk_101392650);
  if ((*(v47 + 48))(v45, 1, v54) == 1)
  {
    sub_10000B3A8(v45, &qword_1016AA430, &unk_101392650);
    v55 = type metadata accessor for RawSearchResult();
    v56 = *(*(v55 - 8) + 56);
    v57 = v153;
LABEL_25:
    v93 = 1;
    return v56(v57, v93, 1, v55);
  }

  sub_10062CC64(v45, v50, type metadata accessor for ObservedAdvertisement.Location);
  v58 = v50;
  v59 = v52;
  if (*(v52 + 9) - 1 >= 2)
  {
    v66 = v153;
    if (qword_1016947F8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000076D4(v67, qword_10177AFA0);
    sub_10062CD24(v52, v41, type metadata accessor for ObservedAdvertisement);
    sub_10001F280(v136, &v156);
    v68 = v52;
    v69 = v135;
    sub_10062CD24(v68, v135, type metadata accessor for ObservedAdvertisement);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v152 = v58;
      v72 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *&v154 = v150;
      *v72 = 136446979;
      v73 = 0xE800000000000000;
      v74 = 0x6E776F6E6B6E752ELL;
      v75 = 0xED000072656E6E61;
      v76 = 0x6353686365656C2ELL;
      if (v41[9] != 2)
      {
        v76 = 0x6E7363612ELL;
        v75 = 0xE500000000000000;
      }

      if (v41[9])
      {
        v74 = 0x747365767261682ELL;
        v73 = 0xEA00000000007265;
      }

      if (v41[9] <= 1u)
      {
        v77 = v74;
      }

      else
      {
        v77 = v76;
      }

      if (v41[9] <= 1u)
      {
        v78 = v73;
      }

      else
      {
        v78 = v75;
      }

      sub_10062CBB8(v41, type metadata accessor for ObservedAdvertisement);
      v79 = sub_1000136BC(v77, v78, &v154);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2160;
      *(v72 + 14) = 1752392040;
      *(v72 + 22) = 2081;
      v81 = v157;
      v80 = v158;
      sub_1000035D0(&v156, v157);
      v82 = v133;
      (*(*(*(v80 + 8) + 8) + 32))(v81);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v83 = v151;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*(v141 + 8))(v82, v83);
      sub_100007BAC(&v156);
      v87 = sub_1000136BC(v84, v86, &v154);

      *(v72 + 24) = v87;
      *(v72 + 32) = 2080;
      v89 = sub_100018680(v88);
      v91 = v90;
      sub_10062CBB8(v69, type metadata accessor for ObservedAdvertisement);
      v92 = sub_1000136BC(v89, v91, &v154);

      *(v72 + 34) = v92;
      _os_log_impl(&_mh_execute_header, v70, v71, "Disk fetch for beacon ignoring %{public}s result %{private,mask.hash}s, %s.", v72, 0x2Au);
      swift_arrayDestroy();

      sub_10062CBB8(v152, type metadata accessor for ObservedAdvertisement.Location);
      v66 = v153;
    }

    else
    {

      sub_10062CBB8(v69, type metadata accessor for ObservedAdvertisement);
      sub_10062CBB8(v41, type metadata accessor for ObservedAdvertisement);
      sub_10062CBB8(v58, type metadata accessor for ObservedAdvertisement.Location);
      sub_100007BAC(&v156);
    }

    v55 = type metadata accessor for RawSearchResult();
    v56 = *(*(v55 - 8) + 56);
    v57 = v66;
    goto LABEL_25;
  }

  v60 = (v134 + 48);
  v61 = v151;
  v62 = v59 + *(v150 + 52);
  if ((*(v59 + 31) & 0x20) != 0)
  {
    sub_1000D2A70(v62, v31, &qword_101699DB0, &unk_101393100);
    v63 = *v60;
    v64 = v138;
    if ((*v60)(v31, 1, v138) == 1)
    {
      sub_10000B3A8(v31, &qword_101699DB0, &unk_101393100);
      v159 = 0u;
      v160 = 0u;
      v161 = 0;
    }

    else
    {
      v101 = *&v31[*(v64 + 24)];
      sub_10062CBB8(v31, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(&v160 + 1) = &type metadata for PrimaryIndex;
      v161 = sub_10002A2B8();
      *&v159 = v101;
    }

    v65 = 5;
    goto LABEL_31;
  }

  sub_1000D2A70(v62, v29, &qword_101699DB0, &unk_101393100);
  v63 = *v60;
  v64 = v138;
  if ((*v60)(v29, 1, v138) == 1)
  {
    sub_10000B3A8(v29, &qword_101699DB0, &unk_101393100);
    v159 = 0u;
    v160 = 0u;
    v161 = 0;
    v65 = 6;
LABEL_31:
    LODWORD(v136) = v65;
    v96 = v142;
    v102 = v137;
    goto LABEL_35;
  }

  v94 = v29;
  v95 = v132;
  sub_10062CC64(v94, v132, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v96 = v142;
  if ((*(v95 + *(v64 + 20)) & 1) == 0)
  {

    goto LABEL_33;
  }

  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v97)
  {
LABEL_33:
    v98 = v132;
    v99 = *(v132 + *(v64 + 24));
    *(&v160 + 1) = &type metadata for PrimaryWildIndex;
    LODWORD(v136) = 6;
    v100 = sub_10022A528();
    goto LABEL_34;
  }

  v98 = v132;
  v99 = *(v132 + *(v64 + 24));
  *(&v160 + 1) = &type metadata for SecondaryIndex;
  LODWORD(v136) = 12;
  v100 = sub_10022A4D4();
LABEL_34:
  v161 = v100;
  *&v159 = v99;
  sub_10062CBB8(v98, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v102 = v137;
  v61 = v151;
LABEL_35:
  sub_1000D2A70(&v159, &v154, &qword_10169C988, &unk_1013B3320);
  if (v155)
  {
    sub_10000A748(&v154, &v156);
    sub_1000D2A70(v59 + *(v150 + 52), v102, &qword_101699DB0, &unk_101393100);
    if (v63(v102, 1, v64) != 1)
    {
      v107 = v102;
      v108 = v131;
      sub_10062CC64(v107, v131, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      (*(v141 + 32))(v96, v108, v61);
      v109 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      sub_10000A748(&v156, v96 + *(v109 + 20));
      (*(*(v109 - 8) + 56))(v96, 0, 1, v109);
      goto LABEL_41;
    }

    sub_100007BAC(&v156);
    v103 = &qword_101699DB0;
    v104 = &unk_101393100;
    v105 = v102;
  }

  else
  {
    v103 = &qword_10169C988;
    v104 = &unk_1013B3320;
    v105 = &v154;
  }

  sub_10000B3A8(v105, v103, v104);
  v106 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  (*(*(v106 - 8) + 56))(v96, 1, 1, v106);
LABEL_41:
  LODWORD(v138) = *(v59 + 32);
  v110 = v147;
  v111 = *(v147 + 16);
  v112 = v58 + *(v54 + 28);
  v113 = v143;
  v114 = v148;
  v111(v143, v112, v148);
  v116 = *v58;
  v115 = v58[1];
  v117 = v58[2];
  v118 = v58;
  v119 = v144;
  v111(v144, (v59 + *(v150 + 44)), v114);
  (*(v110 + 56))(v119, 0, 1, v114);
  v120 = v140;
  sub_1000D2A70(v96, v140, &unk_1016C1120, &qword_1013C49D0);
  v111(v146, v113, v114);
  sub_1000D2A70(v119, v149, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v120, v145, &unk_1016C1120, &qword_1013C49D0);
  if ((v136 & 0xE) == 0xC)
  {
    v121 = v139;
    if (qword_101694E00 != -1)
    {
      swift_once();
    }

    v122 = v118;
    v123 = v151;
    v124 = sub_1000076D4(v151, qword_10177BF20);
    v125 = v141;
    (*(v141 + 16))(v121, v124, v123);
  }

  else
  {
    v122 = v118;
    v121 = v139;
    UUID.init()();
    v125 = v141;
    v123 = v151;
  }

  sub_10000B3A8(v120, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v144, &unk_101696900, &unk_10138B1E0);
  v126 = v147;
  v127 = v148;
  (*(v147 + 8))(v143, v148);
  sub_10000B3A8(v142, &unk_1016C1120, &qword_1013C49D0);
  sub_10062CBB8(v122, type metadata accessor for ObservedAdvertisement.Location);
  v128 = v153;
  *v153 = v138;
  v129 = type metadata accessor for RawSearchResult();
  (*(v126 + 32))(&v128[v129[5]], v146, v127);
  *&v128[v129[6]] = v116;
  *&v128[v129[7]] = v115;
  *&v128[v129[8]] = v117;
  v128[v129[9]] = v136;
  sub_1000D2AD8(v149, &v128[v129[10]], &unk_101696900, &unk_10138B1E0);
  sub_1000D2AD8(v145, &v128[v129[11]], &unk_1016C1120, &qword_1013C49D0);
  (*(v125 + 32))(&v128[v129[12]], v121, v123);
  *&v128[v129[13]] = 256;
  sub_10000B3A8(&v159, &qword_10169C988, &unk_1013B3320);
  v56 = *(*(v129 - 1) + 56);
  v57 = v128;
  v93 = 0;
  v55 = v129;
  return v56(v57, v93, 1, v55);
}