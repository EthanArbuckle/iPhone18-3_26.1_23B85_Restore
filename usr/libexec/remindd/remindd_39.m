uint64_t sub_1003ADD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1003B0928(v14, v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        sub_1003B0928(v15, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        v17 = sub_1002844C4(v11, v7);
        sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        sub_1003B0990(v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1003ADEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = 0;
    v13 = a1 + 32;
    v14 = a2 + 32;
    v64 = v13;
    v63 = a2 + 32;
    while (v12 != v11)
    {
      v15 = (v13 + 24 * v12);
      v17 = v15[1];
      v16 = v15[2];
      v18 = (v14 + 24 * v12);
      v19 = v18[1];
      v20 = v18[2];
      if (v17)
      {
        if (!v19)
        {
          return;
        }

        if (*v15 != *v18 || v17 != v19)
        {
          v22 = v15[1];
          v23 = v18[1];
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v19)
      {
        return;
      }

      v24 = *(v16 + 16);
      if (v24 != *(v20 + 16))
      {
        return;
      }

      if (v24 && v16 != v20)
      {
        v67 = *(v16 + 16);
        v65 = v19;

        if (*(v16 + 16))
        {
          v25 = 0;
          v26 = v16 + 32;
          v73 = v20 + 32;
          v27 = 1;
          v61 = v12;
          v66 = v16 + 32;
          v71 = v16;
          v75 = v17;
          v76 = v20;
          v62 = v11;
          do
          {
            v28 = v27;
            v29 = (v26 + (v25 << 6));
            v30 = v29[3];
            v32 = *v29;
            v31 = v29[1];
            *v80 = v29[2];
            *&v80[16] = v30;
            *v79 = v32;
            *&v79[16] = v31;
            if (v25 >= *(v20 + 16))
            {
              goto LABEL_85;
            }

            v33 = (v73 + (v25 << 6));
            v34 = v33[3];
            v36 = *v33;
            v35 = v33[1];
            *v82 = v33[2];
            *&v82[16] = v34;
            *v81 = v36;
            *&v81[16] = v35;
            if (v79[0] == 2)
            {
              if (v36 != 2)
              {
                goto LABEL_77;
              }
            }

            else if (v36 == 2 || ((v36 ^ v79[0]) & 1) != 0)
            {
              goto LABEL_77;
            }

            if (v79[1] == 2)
            {
              if (v81[1] != 2)
              {
                goto LABEL_77;
              }
            }

            else if (v81[1] == 2 || ((v81[1] ^ v79[1]) & 1) != 0)
            {
              goto LABEL_77;
            }

            if (*&v79[16])
            {
              if (!*&v81[16] || *&v79[8] != *&v81[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (*&v81[16])
            {
              goto LABEL_77;
            }

            v37 = *&v79[24];
            v38 = *&v81[24];
            v74 = v28;
            if (*&v79[24])
            {
              if (!*&v81[24])
              {
                goto LABEL_75;
              }

              v72 = *&v81[24];
              v70 = *v80;
              v69 = *v82;
              if (*v80 == *v82 && (*&v80[8] == *&v82[8] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
                v39 = *(v37 + 16);
                if (v39)
                {
                  v40 = 0;
                  v41 = *(v72 + 16);
                  while (v40 != v41)
                  {
                    if (v40 >= v41)
                    {
                      goto LABEL_86;
                    }

                    v43 = v40;
                    v44 = 0;
                    v45 = *(v37 + 32 + 8 * v40++);
                    v46 = *(v72 + 32 + 8 * v43);
                    v47 = *(v45 + 16);
                    v48 = v45 + 32;
                    while (v47 != v44)
                    {
                      v49 = *(v46 + 16);
                      if (v44 == v49)
                      {
                        break;
                      }

                      if (v44 >= v49)
                      {
                        goto LABEL_83;
                      }

                      v50 = vabdd_f64(*(v48 + 8 * v44), *(v46 + 32 + 8 * v44));
                      ++v44;
                      if (v50 >= 2.22044605e-16)
                      {
                        goto LABEL_54;
                      }
                    }

                    v42 = 1;
                    if (v40 == v39)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                v42 = 1;
              }

              else
              {
LABEL_54:
                v42 = 0;
              }

LABEL_55:
              v68 = v42;
              sub_1002865B0(v79, v78);
              sub_1002865B0(v81, v78);
              sub_10028D090(v72);
              sub_10028D090(v37);

              sub_100286618(v37);
              if ((v68 & 1) == 0)
              {
LABEL_76:
                sub_1002865E8(v81);
                sub_1002865E8(v79);
LABEL_77:

LABEL_78:

                return;
              }
            }

            else
            {
              if (*&v81[24])
              {
LABEL_75:
                sub_10028D090(*&v81[24]);
                sub_10028D090(v37);
                sub_100286618(v37);
                sub_100286618(v38);
                goto LABEL_77;
              }

              sub_1002865B0(v79, v78);
              sub_1002865B0(v81, v78);
            }

            v51 = *&v80[24];
            v52 = *&v82[24];
            v53 = *(*&v80[24] + 16);
            if (v53 != *(*&v82[24] + 16))
            {
              goto LABEL_76;
            }

            if (v53 && *&v80[24] != *&v82[24])
            {
              v54 = 0;
              v55 = (*(v77 + 80) + 32) & ~*(v77 + 80);
              v56 = *&v80[24] + v55;
              v57 = *&v82[24] + v55;
              while (v54 < *(v51 + 16))
              {
                v58 = *(v77 + 72) * v54;
                sub_1003B0928(v56 + v58, v10, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                if (v54 >= *(v52 + 16))
                {
                  goto LABEL_82;
                }

                sub_1003B0928(v57 + v58, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                v59 = sub_100286D98(v10, v7);
                sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                sub_1003B0990(v10, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                if ((v59 & 1) == 0)
                {
                  sub_1002865E8(v81);
                  sub_1002865E8(v79);

                  goto LABEL_78;
                }

                if (v53 == ++v54)
                {
                  goto LABEL_64;
                }
              }

              goto LABEL_81;
            }

LABEL_64:
            sub_1002865E8(v81);
            sub_1002865E8(v79);
            if (v74 == v67)
            {

              v11 = v62;
              v12 = v61;
              v13 = v64;
              v14 = v63;
              goto LABEL_69;
            }

            v27 = v74 + 1;
            v25 = v74;
            v20 = v76;
            v26 = v66;
          }

          while (v74 < *(v71 + 16));
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        break;
      }

LABEL_69:
      ++v12;

      if (v12 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }
}

uint64_t sub_1003AE66C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AE6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[7];
        v16[6] = v3[6];
        v16[7] = v5;
        v16[8] = v3[8];
        v6 = v3[3];
        v16[2] = v3[2];
        v16[3] = v6;
        v7 = v3[5];
        v16[4] = v3[4];
        v16[5] = v7;
        v8 = v3[1];
        v16[0] = *v3;
        v16[1] = v8;
        v9 = v4[7];
        v17[6] = v4[6];
        v17[7] = v9;
        v17[8] = v4[8];
        v10 = v4[3];
        v17[2] = v4[2];
        v17[3] = v10;
        v11 = v4[5];
        v17[4] = v4[4];
        v17[5] = v11;
        v12 = v4[1];
        v17[0] = *v4;
        v17[1] = v12;
        sub_1000FE280(v16, v15);
        sub_1000FE280(v17, v15);
        v13 = sub_100151354(v16, v17);
        sub_1000FE2DC(v17);
        sub_1000FE2DC(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 9;
        v4 += 9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1003AE7E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AE884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_1003B09F0(v32, v33);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AEA7C(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for RDSavedURLAttachment();
  v4 = *(*(v57 - 8) + 64);
  v5 = __chkstk_darwin(v57);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v51 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v55 = 0;
    v56 = v15;
    while (1)
    {
      sub_1003B0928(v13, v10, type metadata accessor for RDSavedURLAttachment);
      sub_1003B0928(v14, v7, type metadata accessor for RDSavedURLAttachment);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
LABEL_73:
        sub_1003B0990(v7, type metadata accessor for RDSavedURLAttachment);
        sub_1003B0990(v10, type metadata accessor for RDSavedURLAttachment);
        return 0;
      }

      v18 = *(v57 + 20);
      v19 = *&v10[v18];
      v20 = *&v10[v18 + 8];
      v21 = &v7[v18];
      v22 = *v21;
      v23 = v21[1];
      if (v20 >> 60 == 15)
      {
        break;
      }

      if (v23 >> 60 == 15)
      {
LABEL_70:
        sub_1001CB4B8(v19, v20);
        sub_1001CB4B8(v22, v23);
        sub_100031A14(v19, v20);
        v49 = v22;
        v50 = v23;
LABEL_72:
        sub_100031A14(v49, v50);
        goto LABEL_73;
      }

      v24 = v20 >> 62;
      v25 = v23 >> 62;
      if (v20 >> 62 != 3)
      {
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v36 = *(v19 + 16);
            v35 = *(v19 + 24);
            v33 = __OFSUB__(v35, v36);
            v27 = v35 - v36;
            if (v33)
            {
              goto LABEL_77;
            }

LABEL_35:
            if (v25 <= 1)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v27 = 0;
            if (v25 <= 1)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          if (!v24)
          {
            v27 = BYTE6(v20);
            if (v25 > 1)
            {
              goto LABEL_29;
            }

LABEL_36:
            if (v25)
            {
              LODWORD(v34) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
              }

              v34 = v34;
            }

            else
            {
              v34 = BYTE6(v23);
            }

LABEL_42:
            if (v27 != v34)
            {
LABEL_71:
              sub_1001CB4B8(v19, v20);
              sub_1001CB4B8(v22, v23);
              sub_100031A14(v22, v23);
              v49 = v19;
              v50 = v20;
              goto LABEL_72;
            }

            if (v27 >= 1)
            {
              if (v24 > 1)
              {
                if (v24 != 2)
                {
                  memset(v59, 0, 14);
                  sub_1001CB4B8(v19, v20);
                  sub_1001CB4B8(v22, v23);
                  sub_1001CB4B8(v22, v23);
                  goto LABEL_6;
                }

                v37 = *(v19 + 16);
                v52 = *(v19 + 24);
                v53 = v37;
                sub_1001CB4B8(v19, v20);
                sub_1001CB4B8(v22, v23);
                v54 = v22;
                sub_1001CB4B8(v22, v23);
                v38 = __DataStorage._bytes.getter();
                if (v38)
                {
                  v39 = v38;
                  v40 = __DataStorage._offset.getter();
                  v41 = v53;
                  if (__OFSUB__(v53, v40))
                  {
                    goto LABEL_81;
                  }

                  v51 = v53 - v40 + v39;
                }

                else
                {
                  v51 = 0;
                  v41 = v53;
                }

                if (__OFSUB__(v52, v41))
                {
                  goto LABEL_80;
                }

                __DataStorage._length.getter();
                v45 = v51;
              }

              else
              {
                if (!v24)
                {
                  v59[0] = v19;
                  LOWORD(v59[1]) = v20;
                  BYTE2(v59[1]) = BYTE2(v20);
                  BYTE3(v59[1]) = BYTE3(v20);
                  BYTE4(v59[1]) = BYTE4(v20);
                  BYTE5(v59[1]) = BYTE5(v20);
                  sub_1001CB4B8(v19, v20);
                  sub_1001CB4B8(v22, v23);
                  sub_1001CB4B8(v22, v23);
LABEL_6:
                  v16 = v55;
                  sub_1001CA174(v59, v22, v23, &v58);
                  v55 = v16;
                  sub_100031A14(v22, v23);
                  sub_100031A14(v22, v23);
                  v17 = v58;
LABEL_7:
                  sub_100031A14(v19, v20);
                  sub_1003B0990(v7, type metadata accessor for RDSavedURLAttachment);
                  sub_1003B0990(v10, type metadata accessor for RDSavedURLAttachment);
                  if ((v17 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_8;
                }

                v53 = (v19 >> 32) - v19;
                if (v19 >> 32 < v19)
                {
                  goto LABEL_79;
                }

                sub_1001CB4B8(v19, v20);
                sub_1001CB4B8(v22, v23);
                v54 = v22;
                sub_1001CB4B8(v22, v23);
                v42 = __DataStorage._bytes.getter();
                if (v42)
                {
                  v52 = v42;
                  v43 = __DataStorage._offset.getter();
                  if (__OFSUB__(v19, v43))
                  {
                    goto LABEL_82;
                  }

                  v44 = v19 - v43 + v52;
                }

                else
                {
                  v44 = 0;
                }

                __DataStorage._length.getter();
                v45 = v44;
              }

              v46 = v54;
              v47 = v55;
              sub_1001CA174(v45, v54, v23, v59);
              v55 = v47;
              sub_100031A14(v46, v23);
              sub_100031A14(v46, v23);
              v17 = v59[0];
              goto LABEL_7;
            }

            goto LABEL_47;
          }

          LODWORD(v27) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_78;
          }

          v27 = v27;
          if (v25 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_29:
        if (v25 == 2)
        {
          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          v33 = __OFSUB__(v31, v32);
          v34 = v31 - v32;
          if (v33)
          {
            goto LABEL_76;
          }

          goto LABEL_42;
        }

        if (v27)
        {
          goto LABEL_71;
        }

LABEL_47:
        sub_1001CB4B8(v19, v20);
        sub_1001CB4B8(v22, v23);
        sub_100031A14(v22, v23);
LABEL_48:
        v29 = v19;
        v30 = v20;
        goto LABEL_49;
      }

      if (v19)
      {
        v26 = 0;
      }

      else
      {
        v26 = v20 == 0xC000000000000000;
      }

      v27 = 0;
      v28 = v26 && v23 >> 62 == 3;
      if (!v28 || v22 || v23 != 0xC000000000000000)
      {
        goto LABEL_35;
      }

      sub_1001CB4B8(0, 0xC000000000000000);
      sub_1001CB4B8(0, 0xC000000000000000);
      sub_100031A14(0, 0xC000000000000000);
      v29 = 0;
      v30 = 0xC000000000000000;
LABEL_49:
      sub_100031A14(v29, v30);
      sub_1003B0990(v7, type metadata accessor for RDSavedURLAttachment);
      sub_1003B0990(v10, type metadata accessor for RDSavedURLAttachment);
LABEL_8:
      v14 += v56;
      v13 += v56;
      if (!--v11)
      {
        return 1;
      }
    }

    if (v23 >> 60 != 15)
    {
      goto LABEL_70;
    }

    sub_1001CB4B8(v19, v20);
    sub_1001CB4B8(v22, v23);
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_1003AF178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003AF258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 48);
        v11[2] = *(v3 + 32);
        v11[3] = v5;
        v11[4] = *(v3 + 64);
        v12 = *(v3 + 80);
        v6 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v6;
        v7 = *(v4 + 48);
        v13[2] = *(v4 + 32);
        v13[3] = v7;
        v13[4] = *(v4 + 64);
        v14 = *(v4 + 80);
        v8 = *(v4 + 16);
        v13[0] = *v4;
        v13[1] = v8;
        v9 = sub_1004AF488(v11, v13);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 88;
        v4 += 88;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1003AF32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 40);
      v8 = *(a2 + v5 + 32);
      v9 = *(a2 + v5 + 40);
      v10 = *(a2 + v5 + 48);
      v11 = *(a1 + v5 + 32);
      v12 = v8;
      if ((static NSObject.== infix(_:_:)() & 1) == 0 || v7 != v9)
      {
        break;
      }

      result = v6 == v10;
      if (v6 == v10)
      {
        v5 += 24;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t sub_1003AF444(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1003AF694()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009445A0);
  v1 = sub_100006654(v0, qword_1009445A0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AF75C()
{
  type metadata accessor for RDSynchronizedKeyValueStore();
  v0 = swift_allocObject();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v1 = qword_100974CC8;
  v0[5] = qword_100974CC8;
  v2 = REMUniversalAppBundleIdentifier;
  v3 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v4 = v1;
  v0[2] = [v3 initWithStoreIdentifier:v2 type:2];
  type metadata accessor for RDNotifydEventStream();
  swift_allocObject();
  v5 = sub_10028F604(v4, 1);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = sub_1003AF8C8;
  *(v5 + 24) = 0;
  result = sub_1000FDA80(v6, v7);
  v0[3] = v5;
  v0[4] = &off_1008EC760;
  static RDSynchronizedKeyValueStore.default = v0;
  return result;
}

uint64_t static RDSynchronizedKeyValueStore.default.getter()
{
  if (qword_100935F68 != -1)
  {
    swift_once();
  }
}

void sub_1003AF8C8()
{
  if (qword_100935F60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009445A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "RDSynchronizedKeyValueStore.ubkvsEventStream: received .ubiquitousKeyValueStoreDidChangeNotification", v2, 2u);
  }
}

uint64_t RDSynchronizedKeyValueStore.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RDSynchronizedKeyValueStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int RDSynchronizedKeyValueStore.ChangeEvent.Reason.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1003AFB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1003AD2E8(*a1, *a2) & (v2 == v3);
}

uint64_t RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = sub_1000F5104(&qword_1009445B8, &qword_1007A5120);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v27);
  v8 = &v25 - v7;
  v28 = sub_1000F5104(&qword_1009445C0, &qword_1007A5128);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v25 - v11;
  v13 = type metadata accessor for NSNotificationCenter.Publisher();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultCenter];
  v19 = *(v3 + 16);
  NSNotificationCenter.publisher(for:object:)();

  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = a2;
  sub_1003B09F0(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);

  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  sub_10000CB48(&qword_1009445C8, &qword_1009445B8, &qword_1007A5120);
  v21 = v27;
  Publisher.compactMap<A>(_:)();
  (*(v5 + 8))(v8, v21);
  sub_10000CB48(&qword_1009445D0, &qword_1009445C0, &qword_1007A5128);
  v22 = v28;
  v23 = Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v12, v22);
  (*(v14 + 8))(v17, v13);
  return v23;
}

void sub_1003AFF10()
{
  sub_1003B05E8();
  v1 = 0x80000001007F6520;
  if (v0 == 2)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (v0 != 2)
  {
    v1 = 0x80000001007F64F0;
  }

  v3 = 0xD000000000000025;
  v4 = 0x80000001007F6580;
  if (v0)
  {
    v3 = 0xD00000000000002ALL;
    v4 = 0x80000001007F6550;
  }

  if (v0 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v0 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v1;
  }

  if (qword_100935F60 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_1009445A0);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v9 = 136446466;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v10 = Optional.descriptionOrNil.getter();
    v12 = sub_10000668C(v10, v11, v15);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = sub_10000668C(v5, v6, v15);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v8, "RDSynchronizedKeyValueStore.storeDidChangeExternally[%{public}s]: Received notification {reason: %{public}s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1003B01DC(uint64_t a1@<X8>)
{
  sub_1003B05E8();
  v3 = v2;
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  *&v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v16 + 1) = v6;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v7 = sub_10001B0D8(v15), (v8 & 1) == 0))
  {

    sub_10001B2CC(v15);
LABEL_9:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_10;
  }

  sub_100005EF0(*(v5 + 56) + 32 * v7, &v16);
  sub_10001B2CC(v15);

  if (!*(&v17 + 1))
  {
LABEL_10:
    sub_1000050A4(&v16, &qword_100939ED0, &qword_100791B10);
    v9 = 0;
    goto LABEL_11;
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if (swift_dynamicCast())
  {
    v9 = v15[0];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  if (v3 >= 2u)
  {
    if (v3 == 2)
    {
      if (qword_100935F60 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_1009445A0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "RDSynchronizedKeyValueStore.storeDidChangeExternally: Received NSUbiquitousKeyValueStoreQuotaViolationChange but remindd doesn't currently handle it", v13, 2u);
      }
    }

    v14 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v14 = v9;
    }
  }

  else
  {
    *&v16 = v9;
    sub_1000F5104(&qword_1009446A8, &qword_1007A5228);
    Optional.tryUnwrap(_:file:line:)();

    v14 = v15[0];
  }

  *a1 = v14;
  *(a1 + 8) = v3;
}

unint64_t _s7remindd27RDSynchronizedKeyValueStoreC11ChangeEventV6ReasonO05ubkvsfhC0AGSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1003B05E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1003AFF10();
}

void sub_1003B05E8()
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  *&v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v17 + 1) = v3;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v4 = sub_10001B0D8(v16), (v5 & 1) == 0))
  {

    sub_10001B2CC(v16);
LABEL_9:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_10;
  }

  sub_100005EF0(*(v2 + 56) + 32 * v4, &v17);
  sub_10001B2CC(v16);

  if (!*(&v18 + 1))
  {
LABEL_10:
    sub_1000050A4(&v17, &qword_100939ED0, &qword_100791B10);
    v6 = 0;
    goto LABEL_11;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v6 = v16[0];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v16[0] = v6;
  sub_1000F5104(&qword_100944698, &qword_1007A5218);
  Optional.tryUnwrap(_:file:line:)();

  if (!v0)
  {
    v7 = v19;
    v8 = [v19 integerValue];
    v9 = 4;
    if (v8 < 4)
    {
      v9 = v8;
    }

    LOBYTE(v19) = v9;
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v10._countAndFlagsBits = 0xD00000000000003DLL;
    v10._object = 0x80000001007F6460;
    String.append(_:)(v10);
    v11 = [v7 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    sub_1000F5104(&qword_1009446A0, &qword_1007A5220);
    Optional.tryUnwrap(_:file:line:)();
  }
}

unint64_t sub_1003B0890()
{
  result = qword_1009445D8;
  if (!qword_1009445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009445D8);
  }

  return result;
}

uint64_t sub_1003B0928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B0990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003B09F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B0A3C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009446B0);
  v1 = sub_100006654(v0, qword_1009446B0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B0B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001DLL;
  v4 = 0x80000001007E9100;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001007E9100;
  }

  else
  {
    v3 = 0x6574616C706D6574;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x617461646174656DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD00000000000001DLL;
  if (*a2 != 1)
  {
    v8 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x617461646174656DLL;
  }

  if (*a2)
  {
    v10 = v4;
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

Swift::Int sub_1003B0C08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B0CB0()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003B0D44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003B0DE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B346C(*a1);
  *a2 = result;
  return result;
}

void sub_1003B0E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007E9100;
  v5 = 0xD00000000000001DLL;
  if (v2 != 1)
  {
    v5 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x617461646174656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDSavedReminder.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDSavedReminder();
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

id static REMCDSavedReminder.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      if (qword_100935F70 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_1009446B0);
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

Swift::String __swiftcall REMCDSavedReminder.recordType()()
{
  v0 = 0x6D65526465766153;
  v1 = 0xED00007265646E69;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDSavedReminder.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for REMCDSavedReminder();
  objc_msgSendSuper2(&v10, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v2 ckIdentifierFromRecordName:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v7];

  [v2 mergeDataRevertedLocallyMarkedForDeletion];
  [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v8 = v2;
  v9 = from.super.isa;
  sub_1004E6754(v9, v8, v8, v9);
}

void sub_1003B15B4(_BYTE *a1, void *a2, void *a3)
{
  v75 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v72 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v72 - v21;
  v23 = type metadata accessor for RDSavedReminder();
  v24 = *(*(v23 - 8) + 64);
  *&v27 = __chkstk_darwin(v23).n128_u64[0];
  if (!*a1)
  {
    v73 = v18;
    v74 = v25;
    v29 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = [a3 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    v31 = v77;
    if (v77 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v35 = v76;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v35, v31);
    }

    v36 = v75;
    [v75 setMetadata:isa];

    v37 = [v36 metadata];
    if (v37)
    {
      v38 = v37;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = type metadata accessor for JSONDecoder();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1003B37A8(&qword_100940528, type metadata accessor for RDSavedReminder);
      v75 = v41;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v72 = v39;

      sub_10012F78C(v29, v22);
      v48 = v14;
      if ((*(v15 + 48))(v22, 1, v14) == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = Date._bridgeToObjectiveC()().super.isa;
        (*(v15 + 8))(v22, v14);
      }

      v51 = v73;
      [v36 setCreationDate:v49];

      v52 = v74;
      v53 = &v29[v74[14]];
      v54 = *v53;
      v55 = *(v53 + 1);
      v56 = String._bridgeToObjectiveC()();
      [v36 setTitle:v56];

      if (*&v29[v52[11]] >= 0x7FFFuLL)
      {
        v57 = 0x7FFFLL;
      }

      else
      {
        v57 = *&v29[v52[11]];
      }

      v58 = [objc_allocWithZone(NSNumber) initWithShort:v57];
      [v36 setPriority:v58];

      v59 = sub_1001C7758();
      if (v59)
      {
        v60 = v59;
        v61 = [v59 date];

        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v62.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v15 + 8))(v51, v48);
      }

      else
      {
        v62.super.isa = 0;
      }

      v63 = v72;
      [v36 setDisplayDateDate:v62.super.isa];

      v64 = sub_1001C7758();
      if (v64)
      {
        v65 = v64;
        v66 = [v64 isAllDay];
      }

      else
      {
        v66 = 0;
      }

      v67 = v75;
      [v36 setDisplayDateIsAllDay:v66];
      v68 = *&v29[v74[9]];
      if (v68)
      {
        v69 = *(v68 + 16) != 0;
      }

      else
      {
        v69 = 0;
      }

      [v36 setHasHashtags:v69];
      v70 = &v29[v74[5]];
      if (*v70)
      {
        if (*(*(v70 + 1) + 16))
        {
          v71 = 1;
        }

        else
        {
          v71 = *(*(v70 + 3) + 16) != 0;
        }
      }

      else
      {
        v71 = 0;
      }

      [v36 setHasLocationTriggersOrVehicleEventTriggers:v71];
      sub_10001BBA0(v63, v67);
      sub_1001CB574(v29);
    }

    else
    {
      [v36 setCreationDate:0];
      [v36 setTitle:0];
      [v36 setPriority:0];
      [v36 setDisplayDateDate:0];
      [v36 setDisplayDateIsAllDay:0];
      [v36 setHasHashtags:0];
      [v36 setHasLocationTriggersOrVehicleEventTriggers:0];
    }

    return;
  }

  if (*a1 != 1)
  {
    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      v34 = v75;
      if (!v33)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v33 = 0;
      v34 = v75;
    }

    v45 = sub_1001287F0(v33);

    if (v45)
    {
      type metadata accessor for REMCDTemplate();
      v46 = swift_dynamicCastClass();
      if (v46)
      {
LABEL_22:
        v75 = v46;
        [v34 setTemplate:?];
        v47 = v75;

        return;
      }
    }

    v46 = 0;
    goto LABEL_22;
  }

  v28 = CKRecord.subscript.getter();
  if (!v28)
  {
    goto LABEL_7;
  }

  v78 = v28;
  sub_1000F5104(&qword_100938860, &unk_1007A4830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  UUID.init(uuidString:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001A4F9C(v8);
LABEL_7:
    [v75 setParentSavedReminderIdentifier:0];
    return;
  }

  (*(v10 + 32))(v13, v8, v9);
  v50 = UUID._bridgeToObjectiveC()().super.isa;
  [v75 setParentSavedReminderIdentifier:v50];

  (*(v10 + 8))(v13, v9);
}

CKRecord_optional __swiftcall REMCDSavedReminder.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v78 - v13;
  if ([v1 isOwnedByCurrentUser])
  {
    v15 = type metadata accessor for REMCDSavedReminder();
    v94.receiver = v1;
    v94.super_class = v15;
    v16 = objc_msgSendSuper2(&v94, "newlyCreatedRecord");
    v19 = v16;
    if (v16)
    {
      v20 = 0;
      v89 = (v3 + 56);
      v90 = "alueStoreServerChange";
      v88 = (v3 + 48);
      v84 = (v3 + 8);
      v85 = (v3 + 16);
      *&v18 = 136446210;
      v82 = v18;
      v83 = v10;
      v86 = v14;
      v87 = v16;
      v81 = v1;
      do
      {
        if (*(&off_1008E2E98 + v20 + 32))
        {
          if (*(&off_1008E2E98 + v20 + 32) == 1)
          {
            v24 = [v1 parentSavedReminderIdentifier];
            if (v24)
            {
              v25 = v24;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v26 = 0;
            }

            else
            {
              v26 = 1;
            }

            (*v89)(v10, v26, 1, v2);
            sub_100100FB4(v10, v14);
            if ((*v88)(v14, 1, v2))
            {
              sub_1001A4F9C(v14);
              v91 = 0u;
              v92 = 0u;
              v93 = 0;
            }

            else
            {
              (*v85)(v6, v14, v2);
              sub_1001A4F9C(v14);
              v21 = UUID.uuidString.getter();
              v23 = v22;
              (*v84)(v6, v2);
              *(&v92 + 1) = &type metadata for String;
              v93 = &protocol witness table for String;
              *&v91 = v21;
              *(&v91 + 1) = v23;
            }

            sub_10018E134();
            CKRecordKeyValueSetting.subscript.setter();
          }

          else if ([v1 markedForDeletion])
          {
            if (qword_100935F70 != -1)
            {
              swift_once();
            }

            v33 = type metadata accessor for Logger();
            sub_100006654(v33, qword_1009446B0);
            v34 = v1;
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              *&v91 = v38;
              *v37 = v82;
              v39 = [v34 remObjectID];
              if (v39)
              {
                v40 = v39;
                v41 = v6;
                v42 = v2;
                v43 = [v39 description];

                v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v46 = v45;

                v2 = v42;
                v6 = v41;
                v1 = v81;
              }

              else
              {
                v46 = 0xE300000000000000;
                v44 = 7104878;
              }

              v62 = sub_10000668C(v44, v46, &v91);

              *(v37 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v35, v36, "REMCDSavedReminder+CloudKit: newlyCreatedRecord() (key=.template) unsetting template CK reference as the saved reminder is markedForDeletion {savedReminder: %{public}s}", v37, 0xCu);
              sub_10000607C(v38);

              v10 = v83;
              v19 = v87;
            }

            else
            {
            }

            CKRecord.subscript.setter();
            v14 = v86;
          }

          else
          {
            v47 = [v1 template];
            if (v47)
            {
              v48 = v47;
              v49 = [v47 recordID];
              v50 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v49];

              CKRecord.subscript.setter();
            }

            else
            {
              if (qword_100935F70 != -1)
              {
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              sub_100006654(v51, qword_1009446B0);
              v52 = v1;
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v53, v54))
              {
                v80 = v54;
                v55 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                *&v91 = v79;
                *v55 = v82;
                v56 = [v52 remObjectID];
                if (v56)
                {
                  v57 = v56;
                  v58 = [v56 description];

                  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v61 = v60;

                  v14 = v86;
                }

                else
                {
                  v61 = 0xE300000000000000;
                  v59 = 7104878;
                }

                v63 = sub_10000668C(v59, v61, &v91);

                *(v55 + 4) = v63;
                _os_log_impl(&_mh_execute_header, v53, v80, "REMCDSavedReminder+CloudKit: Unexpectedly got cdSavedReminder.template == nil in newlyCreatedRecord() (key=.template) {savedReminder: %{public}s}", v55, 0xCu);
                sub_10000607C(v79);

                v10 = v83;
                v19 = v87;
              }

              else
              {
              }
            }
          }
        }

        else
        {
          v27 = [v19 encryptedValues];
          v28 = [v1 metadata];
          if (v28)
          {
            v29 = v28;
            v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            *(&v92 + 1) = &type metadata for Data;
            v93 = &protocol witness table for Data;
            *&v91 = v30;
            *(&v91 + 1) = v32;
            v19 = v87;
          }

          else
          {
            v93 = 0;
            v91 = 0u;
            v92 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        ++v20;
      }

      while (v20 != 3);
    }
  }

  else
  {
    if (qword_100935F70 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009446B0);
    v65 = v1;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v91 = v69;
      *v68 = 136446210;
      v70 = [v65 remObjectID];
      if (v70)
      {
        v71 = v70;
        v72 = [v70 description];

        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;
      }

      else
      {
        v73 = 7104878;
        v75 = 0xE300000000000000;
      }

      v76 = sub_10000668C(v73, v75, &v91);

      *(v68 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v66, v67, "REMCDSavedReminder will not be used to represent a reminder in a public template, which is fetched from a template's public link, and is not expected to be shared. It shouldn't be uploaded for non-owner (savedReminderID: %{public}s)", v68, 0xCu);
      sub_10000607C(v69);
    }

    v19 = 0;
  }

  v77 = v19;
  result.value.super.isa = v77;
  result.is_nil = v17;
  return result;
}

Swift::Void __swiftcall REMCDSavedReminder.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_1009446B0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 template];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for saved reminder {savedReminderID: %{public}s, templateID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 template];
  if (!v24)
  {
    return;
  }

  v46 = v24;
  if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v25 = v4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {
LABEL_28:

      [v25 markForDeletion];
      goto LABEL_29;
    }

    v28 = 7104878;
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v29 = 136446466;
    v30 = [v25 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v28 = 7104878;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_10000668C(v33, v35, &v47);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    v37 = [v25 template];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 remObjectID];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 description];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

LABEL_27:
        v44 = sub_10000668C(v28, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v26, v27, "Template is marked for deletion but saved reminder is not {savedReminderID: %{public}s, templateID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v43 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v46 forcePushToCloud];
}

Swift::Void __swiftcall REMCDSavedReminder.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
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
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
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

void *REMCDSavedReminder.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 attachments];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for REMCDSavedAttachment();
    sub_1003B37A8(&unk_10093F780, type metadata accessor for REMCDSavedAttachment);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100278AE4(v3);

    v5 = sub_100271294(v4);

    sub_100271468(v5);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1003B346C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E2DA8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd18REMCDSavedReminderC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
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
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd18REMCDSavedReminderC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
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
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1003B37A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003B3800(uint64_t a1)
{
  result = sub_1003B3828();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B3828()
{
  result = qword_1009446D0;
  if (!qword_1009446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446D0);
  }

  return result;
}

unint64_t sub_1003B387C(uint64_t a1)
{
  result = sub_1003B38A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B38A4()
{
  result = qword_1009446D8;
  if (!qword_1009446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446D8);
  }

  return result;
}

unint64_t sub_1003B38FC()
{
  result = qword_1009446E0;
  if (!qword_1009446E0)
  {
    sub_1000F514C(&qword_1009446E8, &qword_1007A5278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446E0);
  }

  return result;
}

unint64_t sub_1003B3964()
{
  result = qword_1009446F0;
  if (!qword_1009446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446F0);
  }

  return result;
}

uint64_t sub_1003B39D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
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

uint64_t sub_1003B3A64(uint64_t a1)
{
  v2 = sub_1003B4058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003B3AA0(uint64_t a1)
{
  v2 = sub_1003B4058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003B3ADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100944708, &qword_1007A5430);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003B4058();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1003B3C58(void *a1)
{
  v3 = sub_1000F5104(&qword_100944718, &qword_1007A5438);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003B4058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_1003B3D94()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1003B3E04()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1003B3E7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1003B3EE8(void *a1, void *a2)
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

uint64_t getEnumTagSinglePayload for RDSavedTemplateSection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RDSavedTemplateSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1003B4004()
{
  result = qword_100944700;
  if (!qword_100944700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944700);
  }

  return result;
}

unint64_t sub_1003B4058()
{
  result = qword_100944710;
  if (!qword_100944710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944710);
  }

  return result;
}

unint64_t sub_1003B40C0()
{
  result = qword_100944720;
  if (!qword_100944720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944720);
  }

  return result;
}

unint64_t sub_1003B4118()
{
  result = qword_100944728;
  if (!qword_100944728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944728);
  }

  return result;
}

unint64_t sub_1003B4170()
{
  result = qword_100944730;
  if (!qword_100944730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944730);
  }

  return result;
}

uint64_t sub_1003B41C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944738);
  v1 = sub_100006654(v0, qword_100944738);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B428C(id a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v125 = a2;
  v126 = a3;
  v6 = *v3;
  v7 = type metadata accessor for RDPublicTemplate();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = type metadata accessor for UUID();
  v123 = *(v124 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v124);
  v131 = (&v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v134 = *(v13 - 8);
  v14 = v134[8];
  __chkstk_darwin(v13);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v115 - v18;
  __chkstk_darwin(v19);
  v132 = &v115 - v20;
  __chkstk_darwin(v21);
  v135 = &v115 - v22;
  __chkstk_darwin(v23);
  v133 = &v115 - v24;
  if (qword_100935F78 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100006654(v25, qword_100944738);
  swift_retain_n();
  v122 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v119 = v10;
  v127 = v6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v118 = a1;
    v33 = v32;
    v136 = v32;
    v137 = v6;
    *v30 = 136446978;
    swift_getMetatypeMetadata();
    v34 = String.init<A>(describing:)();
    v35 = v16;
    v37 = v13;
    v38 = v4;
    v39 = sub_10000668C(v34, v36, &v136);

    *(v30 + 4) = v39;
    v4 = v38;
    v13 = v37;
    *(v30 + 12) = 2114;
    v40 = v4[2];
    v41 = v4[3];
    *(v30 + 14) = v40;
    *(v30 + 22) = 2114;
    *(v30 + 24) = v41;
    *v31 = v40;
    v31[1] = v41;
    *(v30 + 32) = 2048;
    v42 = v40;
    v43 = v41;
    v16 = v35;

    *(v30 + 34) = 1000;

    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: Start execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld}", v30, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v33);
    a1 = v118;
  }

  else
  {
  }

  v44 = v133;
  Date.init()();
  v45 = v4[2];
  v130 = v4[3];
  v46 = v132;
  static Date.now.getter();
  v47 = v4[5];
  Date.addingTimeInterval(_:)();
  v48 = v46;
  v49 = v45;
  v128 = v134[1];
  v129 = v134 + 1;
  v128(v48, v13);
  v50 = [v45 uuid];
  v51 = v131;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = sub_10041621C(v51, a1);
  v121 = v4;
  v116 = v52;
  v53 = objc_autoreleasePoolPush();
  v54 = sub_10034B568();
  v115 = v49;
  v55 = sub_10034AE0C(v49, a1, v54, 0);
  v118 = a1;
  v120 = v16;

  v56 = v119;
  v57 = v131;
  sub_100531140(v131, v135, v130, 1000, v119);

  objc_autoreleasePoolPop(v53);
  v82 = v116;
  sub_1006E8AFC(v56);
  v83 = sub_1006E8E28();
  if (v83)
  {
    v84 = v83;
    v137 = 0;
    v85 = [v118 save:&v137];
    v86 = v137;
    v87 = v120;
    if (v85)
    {
      v88 = v117;
      (v134[2])(v117, v44, v13);
      v89 = v86;
      v90 = v84;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v120 = v94;
        v134 = swift_slowAlloc();
        v137 = v134;
        *v93 = 136446722;
        v95 = sub_1001424F8();
        LODWORD(v122) = v92;
        v97 = v13;
        v98 = v4;
        v99 = sub_10000668C(v95, v96, &v137);

        *(v93 + 4) = v99;
        v4 = v98;
        v13 = v97;
        v44 = v133;
        *(v93 + 12) = 2114;
        *(v93 + 14) = v90;
        *v94 = v84;
        *(v93 + 22) = 2048;
        v100 = v90;
        v101 = v132;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v103 = v102;
        v104 = v84;
        v105 = v128;
        v128(v101, v13);
        v105(v88, v13);
        v84 = v104;
        *(v93 + 24) = v103;
        _os_log_impl(&_mh_execute_header, v91, v122, "%{public}s: Saved preview in cache {previewObjectID: %{public}@, elapsedSeconds: %f}", v93, 0x20u);
        sub_100039860(v120);

        sub_10000607C(v134);

        v57 = v131;
      }

      else
      {

        v128(v88, v13);
      }

      v112 = v127;
      v113 = v115;
      v114 = v90;
      sub_1003B4EFC(v84, 0, v113, v130, v4, v44, v125, v126, v112);

      sub_1003B52F4(v119);
      (*(v123 + 8))(v57, v124);
      v80 = v128;
      v128(v135, v13);
      return v80(v44, v13);
    }

    v111 = v137;
    v110 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1003B52F4(v119);
  }

  else
  {
    v106 = v82;
    type metadata accessor for REMCDPublicTemplate();
    v107 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v109 = String._bridgeToObjectiveC()();
    v110 = [v107 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v109];

    swift_willThrow();
    sub_1003B52F4(v119);
    v87 = v120;
  }

  v58 = v115;
  (*(v123 + 8))(v57, v124);
  (v134[2])(v87, v44, v13);
  v59 = v58;
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v120 = v87;
    v63 = v62;
    v64 = swift_slowAlloc();
    v131 = v64;
    v65 = swift_slowAlloc();
    v134 = v65;
    *v63 = 136446978;
    v66 = v127;
    v136 = v65;
    v137 = v127;
    swift_getMetatypeMetadata();
    v67 = String.init<A>(describing:)();
    v69 = sub_10000668C(v67, v68, &v136);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2114;
    *(v63 + 14) = v59;
    *v64 = v59;
    *(v63 + 22) = 2082;
    swift_getErrorValue();
    v70 = v13;
    v71 = v59;
    v72 = Error.rem_errorDescription.getter();
    v74 = sub_10000668C(v72, v73, &v136);

    *(v63 + 24) = v74;
    v13 = v70;
    *(v63 + 32) = 2048;
    v75 = v132;
    Date.init()();
    v76 = v120;
    Date.timeIntervalSince(_:)();
    v78 = v77;
    v79 = v75;
    v80 = v128;
    v128(v79, v70);
    v80(v76, v70);
    *(v63 + 34) = v78;
    _os_log_impl(&_mh_execute_header, v60, v61, "%{public}s: Failed to create preview of template's public content. {templateObjectID: %{public}@, privacy: .public), error: %{public}s, elapsedSeconds: %f}", v63, 0x2Au);
    sub_100039860(v131);

    swift_arrayDestroy();
  }

  else
  {

    v80 = v128;
    v128(v87, v13);
    v66 = v127;
  }

  swift_errorRetain();
  v44 = v133;
  sub_1003B4EFC(v110, 1, v59, v130, v121, v133, v125, v126, v66);

  v80(v135, v13);
  return v80(v44, v13);
}

uint64_t sub_1003B4EFC(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void), uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v45 = a7;
  v42 = a2;
  v43 = a1;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v41 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  if (qword_100935F78 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100944738);
  (*(v13 + 16))(v18, a6, v12);
  swift_retain_n();
  v20 = a3;
  v21 = a4;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v39 = v23;
    v24 = swift_slowAlloc();
    v38 = v22;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    v46[1] = a9;
    *v25 = 136447234;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v29 = sub_10000668C(v27, v28, v46);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2114;
    *(v25 + 14) = v20;
    *(v25 + 22) = 2114;
    *(v25 + 24) = v21;
    *v26 = v20;
    v26[1] = v21;
    *(v25 + 32) = 2048;
    v30 = v20;
    v31 = v21;

    *(v25 + 34) = 1000;

    *(v25 + 42) = 2048;
    v32 = v41;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v35 = *(v13 + 8);
    v35(v32, v12);
    v35(v18, v12);
    *(v25 + 44) = v34;
    v36 = v38;
    _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Finished execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld, elapsedSeconds: %f}", v25, 0x34u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v40);
  }

  else
  {

    (*(v13 + 8))(v18, v12);
  }

  return v45(v43, v42 & 1);
}

uint64_t sub_1003B5290()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003B52F4(uint64_t a1)
{
  v2 = type metadata accessor for RDPublicTemplate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1003B5350(void *a1)
{
  v4 = *v1;
  v50 = 0;
  v5 = [a1 remObjectIDWithError:&v50];
  if (v5)
  {
    v6 = v5;
    v7 = v50;
    v8 = [a1 account];
    if (v8 && (v9 = v8, v10 = [v8 remObjectID], v9, v10))
    {
      v11 = [a1 displayName];
      if (v11)
      {
        v4 = v11;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = sub_1003B67D4(a1, v6, v10, v12);
        if (v2)
        {
        }

        else
        {
          v41 = v13;

          v42 = [a1 canonicalName];
          [v41 setCanonicalName:v42];

          v4 = v41;
          [v4 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          [v4 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
          [v4 setResolutionTokenMap:0];
          v43 = [a1 resolutionTokenMapData];
          if (v43)
          {
            v44 = v43;
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v45, v47);
          }

          else
          {
            v48.super.isa = 0;
          }

          [v4 setResolutionTokenMapData:v48.super.isa];
        }
      }

      else
      {
        if (qword_100935F88 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100006654(v29, qword_100944820);
        v30 = v6;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v4;
          v51 = v49;
          *v33 = 136315394;
          swift_getMetatypeMetadata();
          v35 = String.init<A>(describing:)();
          v37 = sub_10000668C(v35, v36, &v51);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2112;
          *(v33 + 14) = v30;
          *v34 = v6;
          v38 = v30;
          _os_log_impl(&_mh_execute_header, v31, v32, "%s: cdListSection.displayName is nil {cdListSection.remObjectID: %@}", v33, 0x16u);
          sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

          sub_10000607C(v49);
        }

        v39 = objc_opt_self();
        type metadata accessor for REMCDListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v39 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935F88 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100944820);
      v15 = v6;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v50 = v4;
        v51 = v20;
        *v18 = 136315394;
        swift_getMetatypeMetadata();
        v21 = String.init<A>(describing:)();
        v23 = sub_10000668C(v21, v22, &v51);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v19 = v6;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s: cdListSection.account is nil {cdListSection.remObjectID: %@}", v18, 0x16u);
        sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

        sub_10000607C(v20);
      }

      v25 = objc_opt_self();
      type metadata accessor for REMCDListSection();
      v26 = swift_getObjCClassFromMetadata();
      v4 = String._bridgeToObjectiveC()();
      [v25 unexpectedNilPropertyWithClass:v26 property:v4];

      swift_willThrow();
    }
  }

  else
  {
    v27 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

Swift::Int sub_1003B5A48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B5B4C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003B5C3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003B5D3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B6C54(*a1);
  *a2 = result;
  return result;
}

void sub_1003B5D6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xEC00000065746144;
  v6 = 0x6E6F697461657263;
  v7 = 0xEB00000000656D61;
  v8 = 0x4E79616C70736964;
  if (v2 != 3)
  {
    v8 = 0x6163696E6F6E6163;
    v7 = 0xED0000656D614E6CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x80000001007E8C60;
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

unint64_t sub_1003B5E3C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B6C54(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003B5E64()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6E6F697461657263;
  v4 = 0x4E79616C70736964;
  if (v1 != 3)
  {
    v4 = 0x6163696E6F6E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
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

uint64_t sub_1003B5F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4449746E65726170;
  }

  else
  {
    v4 = 0x49746E756F636361;
  }

  if (v3)
  {
    v5 = 0xE900000000000044;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x4449746E65726170;
  }

  else
  {
    v6 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000044;
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

Swift::Int sub_1003B5FCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B6054()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003B60C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B614C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1A38, *a1);

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

void sub_1003B61AC(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x4449746E65726170;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003B6200@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1A38, v3);

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

uint64_t sub_1003B6264()
{
  if (*v0)
  {
    result = 0x4449746E65726170;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

unint64_t sub_1003B62A4()
{
  result = sub_1003B62C4();
  qword_100974D70 = result;
  return result;
}

unint64_t sub_1003B62C4()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x6163696E6F6E6163;
  v4 = &off_1008E2258;
  do
  {
    while (1)
    {
      v7 = &off_1008E2258 + v1++;
      v8 = v7[32];
      v9 = 0x4E79616C70736964;
      if (v8 != 3)
      {
        v9 = 0x6163696E6F6E6163;
      }

      v10 = 0xEB00000000656D61;
      if (v8 != 3)
      {
        v10 = 0xED0000656D614E6CLL;
      }

      if (v8 == 2)
      {
        v9 = 0x6E6F697461657263;
        v10 = 0xEC00000065746144;
      }

      v11 = 0x44497463656A626FLL;
      if (v8)
      {
        v11 = 0xD000000000000017;
      }

      v12 = 0xE800000000000000;
      if (v8)
      {
        v12 = 0x80000001007E8C60;
      }

      if (v8 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v8 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(v13, v14);
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v0 = v17;
      if (_swiftEmptyDictionarySingleton[3] >= v21)
      {
        break;
      }

      sub_10036A8F0(v21, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v13, v14);
      if ((v0 & 1) != (v22 & 1))
      {
        goto LABEL_45;
      }

LABEL_24:
      if ((v0 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_2:
      v0 = result;

      v5 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
      v6 = v5[1];
      *v5 = v13;
      v5[1] = v14;

      if (v1 == 5)
      {
        goto LABEL_30;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if (v0)
    {
      goto LABEL_2;
    }

LABEL_25:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v23 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v23 = v13;
    v23[1] = v14;
    v24 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
    *v24 = v13;
    v24[1] = v14;
    v25 = _swiftEmptyDictionarySingleton[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_38;
    }

    _swiftEmptyDictionarySingleton[2] = v26;
  }

  while (v1 != 5);
LABEL_30:
  v14 = 0xE900000000000044;
  v13 = 0x49746E756F636361;
  v4 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
  v0 = 0xE900000000000044;
  v1 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  v28 = _swiftEmptyDictionarySingleton[2];
  v29 = (v27 & 1) == 0;
  v20 = __OFADD__(v28, v29);
  v30 = v28 + v29;
  if (v20)
  {
    goto LABEL_49;
  }

  v2 = v27;
  if (_swiftEmptyDictionarySingleton[3] >= v30)
  {
    if (v1)
    {
LABEL_35:
      if (v2)
      {
LABEL_36:
        v32 = result;

        v33 = (_swiftEmptyDictionarySingleton[7] + 16 * v32);
        v34 = v33[1];
        *v33 = v3;
        v33[1] = v4;

        goto LABEL_42;
      }

LABEL_40:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v36 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v36 = isUniquelyReferenced_nonNull_native;
      v36[1] = v0;
      v37 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v37 = v3;
      v37[1] = v4;
      v38 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v20)
      {
        goto LABEL_54;
      }

      _swiftEmptyDictionarySingleton[2] = v39;
LABEL_42:
      v2 = 0xE400000000000000;
      v14 = 0xE800000000000000;
      v13 = 0x4449746E65726170;
      v1 = 1953720684;
      LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v41 = _swiftEmptyDictionarySingleton[2];
      v42 = (v40 & 1) == 0;
      v20 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (!v20)
      {
        LOBYTE(v0) = v40;
        if (_swiftEmptyDictionarySingleton[3] >= v43)
        {
          goto LABEL_46;
        }

        sub_10036A8F0(v43, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v44 & 1))
        {
          goto LABEL_45;
        }

LABEL_47:
        if ((v0 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_39:
    v35 = result;
    sub_100373664();
    result = v35;
    if (v2)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  sub_10036A8F0(v30, v1);
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  if ((v2 & 1) == (v31 & 1))
  {
    goto LABEL_35;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_46:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_47;
  }

LABEL_50:
  v48 = result;
  sub_100373664();
  result = v48;
  if (v0)
  {
LABEL_48:
    v45 = result;

    v46 = (_swiftEmptyDictionarySingleton[7] + 16 * v45);
    v47 = v46[1];
    *v46 = v1;
    v46[1] = v2;

    return _swiftEmptyDictionarySingleton;
  }

LABEL_51:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v49 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v49 = v13;
  v49[1] = v14;
  v50 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v50 = v1;
  v50[1] = v2;
  v51 = _swiftEmptyDictionarySingleton[2];
  v20 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (!v20)
  {
    _swiftEmptyDictionarySingleton[2] = v52;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_54:
  __break(1u);
  return result;
}

void *sub_1003B67D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v41 = *v7;
  v42 = a4;
  v11 = type metadata accessor for Date();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 list];
  if (v15 && (v16 = v15, v6 = [v15 remObjectID], v16, v6))
  {
    v41 = v5;
    v17 = a3;
    v18 = objc_allocWithZone(REMListSectionStorage);
    v19 = v6;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 initWithObjectID:a2 accountID:v17 parentID:v19 displayName:v20];

    v6 = v21;
    v22 = [a1 creationDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v14, v11);
    }

    else
    {
      v24.super.isa = 0;
    }

    [v6 setCreationDate:{v24.super.isa, v40}];

    v38 = [a1 canonicalName];
    [v6 setCanonicalName:v38];
  }

  else
  {
    if (qword_100935F88 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100944820);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136315394;
      v43[2] = v41;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_10000668C(v31, v32, v43);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v6 = v26;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: cdListSection.list is nil {cdListSection.remObjectID: %@}", v29, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    v35 = objc_opt_self();
    type metadata accessor for REMCDListSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = String._bridgeToObjectiveC()();
    [v35 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v37];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1003B6C54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0FF8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void *sub_1003B6CA0(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 parentID];
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

void sub_1003B6DCC(void *a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v77 = type metadata accessor for Date();
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v77);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v12 = *(v78 - 1);
  v13 = *(v12 + 64);
  *&v14 = __chkstk_darwin(v78).n128_u64[0];
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = [a2 createResolutionTokenMapIfNecessary];
  v17 = [a1 resolutionTokenMap];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100695D94(v17, a3);
    v20 = a3;
    v21 = *(a3 + 16);
    if (!v21)
    {

      goto LABEL_54;
    }

    v73 = v18;
    v74 = v4;
    v22 = (v20 + 32);
    v75 = (v9 + 8);
    v23 = (v12 + 8);
    while (1)
    {
      v28 = *v22++;
      v27 = v28;
      if (v28 <= 1)
      {
        if (v27)
        {
          sub_100693EE4(1u);
          v31 = String._bridgeToObjectiveC()();

          v32 = [v79 mergeWithMap:v19 forKey:v31];

          if (v32)
          {
            [a2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          }

          goto LABEL_6;
        }

        v24 = [a1 objectID];
        v25 = [v24 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v26.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v23)(v16, v78);
        [a2 setIdentifier:{v26.super.isa, v73}];
      }

      else if (v27 == 2)
      {
        sub_100693EE4(2u);
        v33 = String._bridgeToObjectiveC()();

        v34 = [v79 mergeWithMap:v19 forKey:v33];

        if (!v34)
        {
          goto LABEL_6;
        }

        v35 = [a1 creationDate];
        if (v35)
        {
          v36 = v76;
          v37 = v35;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v75)(v36, v77);
        }

        else
        {
          v26.super.isa = 0;
        }

        [a2 setCreationDate:{v26.super.isa, v73}];
      }

      else if (v27 == 3)
      {
        sub_100693EE4(3u);
        v29 = String._bridgeToObjectiveC()();

        v30 = [v79 mergeWithMap:v19 forKey:v29];

        if (!v30)
        {
          goto LABEL_6;
        }

        v26.super.isa = [a1 displayName];
        if (!v26.super.isa)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26.super.isa = String._bridgeToObjectiveC()();
        }

        [a2 setDisplayName:{v26.super.isa, v73}];
      }

      else
      {
        sub_100693EE4(4u);
        v38 = String._bridgeToObjectiveC()();

        v39 = [v79 mergeWithMap:v19 forKey:v38];

        if (!v39)
        {
          goto LABEL_6;
        }

        v26.super.isa = [a1 canonicalName];
        [a2 setCanonicalName:{v26.super.isa, v73}];
      }

LABEL_6:
      if (!--v21)
      {

        goto LABEL_54;
      }
    }
  }

  if (qword_100935F80 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_100944808);
  v41 = a1;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v80 = v46;
    *v44 = 136315650;
    v81 = v8;
    swift_getMetatypeMetadata();
    v47 = String.init<A>(describing:)();
    v49 = sub_10000668C(v47, v48, &v80);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2114;
    v50 = [v41 objectID];
    *(v44 + 14) = v50;
    v78 = v45;
    *v45 = v50;
    *(v44 + 22) = 2082;
    v51 = *(a3 + 16);
    if (v51)
    {
      v74 = v46;
      LODWORD(v75) = v43;
      v76 = v44;
      v77 = v42;
      v81 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v51, 0);
      v52 = v81;
      v53 = (a3 + 32);
      do
      {
        v55 = *v53++;
        v54 = v55;
        v56 = v55 == 3;
        if (v55 == 3)
        {
          v57 = 0x4E79616C70736964;
        }

        else
        {
          v57 = 0x6163696E6F6E6163;
        }

        if (v56)
        {
          v58 = 0xEB00000000656D61;
        }

        else
        {
          v58 = 0xED0000656D614E6CLL;
        }

        if (v54 == 2)
        {
          v57 = 0x6E6F697461657263;
          v58 = 0xEC00000065746144;
        }

        v59 = 0xD000000000000017;
        if (v54)
        {
          v60 = 0x80000001007E8C60;
        }

        else
        {
          v59 = 0x44497463656A626FLL;
          v60 = 0xE800000000000000;
        }

        if (v54 <= 1)
        {
          v61 = v59;
        }

        else
        {
          v61 = v57;
        }

        if (v54 <= 1)
        {
          v62 = v60;
        }

        else
        {
          v62 = v58;
        }

        v81 = v52;
        v64 = v52[2];
        v63 = v52[3];
        if (v64 >= v63 >> 1)
        {
          sub_100026EF4((v63 > 1), v64 + 1, 1);
          v52 = v81;
        }

        v52[2] = v64 + 1;
        v65 = &v52[2 * v64];
        v65[4] = v61;
        v65[5] = v62;
        --v51;
      }

      while (v51);
      v44 = v76;
      v42 = v77;
      LOBYTE(v43) = v75;
    }

    v66 = Array.description.getter();
    v68 = v67;

    v69 = sub_10000668C(v66, v68, &v80);

    *(v44 + 24) = v69;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s: merge(storage:into cdSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v44, 0x20u);
    sub_1000050A4(v78, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v70 = objc_opt_self();
  sub_1003B7F3C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = String._bridgeToObjectiveC()();
  [v70 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v72];

  swift_willThrow();
LABEL_54:
}

void sub_1003B769C(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_100688B58(0, v11, a4);
    if (!v5)
    {
      v22 = qword_100935F80;
      v23 = v21;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100944808);
      v25 = v23;
      v26 = a2;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = [v26 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v69 = v28;
        v31 = Optional.descriptionOrNil.getter();
        v72 = v26;
        v33 = v32;

        v34 = sub_10000668C(v31, v33, &v75);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        v74 = [v25 remObjectID];
        v35 = Optional.descriptionOrNil.getter();
        v37 = v36;

        v26 = v72;
        v38 = sub_10000668C(v35, v37, &v75);

        *(v29 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v27, v69, "Updating cdListSection.account {cdListSection: %{public}s, account: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v26 setAccount:v25];
      return;
    }

LABEL_18:

    return;
  }

  v10 = *v6;
  v11 = [a2 createResolutionTokenMapIfNecessary];
  v12 = [a1 resolutionTokenMap];
  if (!v12)
  {
    if (qword_100935F80 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100944808);
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v43 = 136315650;
      v75 = v10;
      swift_getMetatypeMetadata();
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, &v74);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2114;
      v48 = [v40 objectID];
      *(v43 + 14) = v48;
      *v44 = v48;
      *(v43 + 22) = 2082;
      *(v43 + 24) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v74);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: establishRelationship(onStorage:into cdListSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v43, 0x20u);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v49 = objc_opt_self();
    sub_1003B7F3C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    [v49 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v51];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_1009434A8, &qword_1007A3E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_100695FBC(v13, inited);
  swift_setDeallocating();
  v16 = [a1 listID];
  sub_10069429C(1);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v11 mergeWithMap:v15 forKey:v17];

  if (v18)
  {
    if (v16)
    {
      v19 = v16;
      sub_100688B88(1, v19, a4);
      if (v5)
      {

        return;
      }

      v52 = v20;
    }

    else
    {
      v52 = 0;
    }

    if (qword_100935F80 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100944808);
    v73 = v52;
    v54 = v52;
    v55 = a2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v67 = v57;
      log = v56;
      v71 = v54;
      v58 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v58 = 136446466;
      v70 = v55;
      v74 = [v55 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v59 = Optional.descriptionOrNil.getter();
      v61 = v60;

      v62 = sub_10000668C(v59, v61, &v75);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2082;
      if (v73)
      {
        v74 = [v54 remObjectID];
        v63 = Optional.descriptionOrNil.getter();
        v65 = v64;
      }

      else
      {
        v65 = 0xE90000000000003ELL;
        v63 = 0x7473696C206F6E3CLL;
      }

      v66 = sub_10000668C(v63, v65, &v75);

      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, log, v67, "Updating cdListSection.list {cdListSection: %{public}s, list: %{public}s}", v58, 0x16u);
      swift_arrayDestroy();

      v55 = v70;
      v54 = v71;
    }

    else
    {
    }

    [v55 setList:v54];
  }
}

unint64_t sub_1003B7F3C()
{
  result = qword_100939BD0;
  if (!qword_100939BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939BD0);
  }

  return result;
}

unint64_t sub_1003B7FDC()
{
  result = qword_1009449E8;
  if (!qword_1009449E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009449E8);
  }

  return result;
}

unint64_t sub_1003B8064()
{
  result = qword_100944A00;
  if (!qword_100944A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944A00);
  }

  return result;
}

uint64_t sub_1003B80B8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for RDXPCEventStream.Alarm(0);
  v4 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v40);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2[2];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    if (qword_100935F98 == -1)
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
  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100944A08);
  v20 = v7;
  v21 = v10;
  v38 = *(v7 + 16);
  v39 = a1;
  v22 = v40;
  v38(v10, a1, v40);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = v21;
    v27 = swift_slowAlloc();
    v42 = v27;
    *v25 = 136446210;
    v36 = Date.description.getter();
    v37 = v2;
    v29 = v28;
    (*(v20 + 8))(v26, v22);
    v30 = sub_10000668C(v36, v29, &v42);
    v2 = v37;

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Adding XPC time event {date: %{public}s}", v25, 0xCu);
    sub_10000607C(v27);
  }

  else
  {

    (*(v20 + 8))(v10, v22);
  }

  v31 = v2[3];
  v32 = v2[4];
  v38(&v6[*(v41 + 24)], v39, v22);
  *v6 = v31;
  *(v6 + 1) = v32;
  v6[16] = 1;
  v33 = v2[5];

  sub_10025E654(v6);
  return sub_1003B98CC(v6, type metadata accessor for RDXPCEventStream.Alarm);
}

uint64_t sub_1003B848C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = (v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler);
  v10 = *(v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler);
  v11 = *(v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler + 8);
  *v9 = a1;
  v9[1] = a2;
  sub_10014D92C(a1);
  sub_1000FDA80(v10, v11);
  sub_1003B87C0();
  v12 = *v9;
  if (*v9)
  {
    v13 = v9[1];

    sub_1003B8BFC(v12, v13, v8);
    sub_1000FDA80(a1, a2);
    sub_1000FDA80(v12, v13);
    v14 = type metadata accessor for RDXPCEventStream.Token(0);
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    v15 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
    swift_beginAccess();
    sub_1003B912C(v8, v2 + v15);
    return swift_endAccess();
  }

  else
  {

    return sub_1000FDA80(a1, a2);
  }
}

uint64_t sub_1003B862C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944A08);
  v1 = sub_100006654(v0, qword_100944A08);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B86F4(void *a1, void *a2)
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

Swift::Int sub_1003B8724()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003B8770()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_1003B8778()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003B87C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RDXPCEventStream.Token(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v20 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  swift_beginAccess();
  sub_1003B96A0(v0 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1003B9710(v12);
  }

  sub_1003B9778(v12, v19);
  v22 = *(v0 + 40);
  v23 = *(v0 + 16);
  sub_1003B97DC(v19, v16);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = swift_allocObject();
  sub_1003B9778(v16, v25 + v24);
  *(v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1003B9840;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EF7A0;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v27 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v30 + 8))(v4, v27);
  (*(v28 + 8))(v8, v29);
  sub_1003B98CC(v19, type metadata accessor for RDXPCEventStream.Token);
}

uint64_t sub_1003B8BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[2];
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v16)
  {
    if (qword_100935F98 == -1)
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
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100944A08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Registering Time Event Handler", v20, 2u);
  }

  v21 = v4[3];
  v24 = v4 + 4;
  v23 = v4[4];
  v22 = v24[1];
  v25 = swift_allocObject();
  v25[2] = v15;
  v25[3] = a1;
  v25[4] = a2;
  v26 = v15;

  sub_10025E178(v21, v23, sub_1003B93F8, v25, a3);
}

uint64_t sub_1003B8E40()
{
  sub_1003B87C0();

  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_1003B9710(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken);
  sub_1000FDA80(*(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler), *(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDXPCActivityTimeEventStream()
{
  result = qword_100944A50;
  if (!qword_100944A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B8F28()
{
  sub_1003B8FE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003B8FE8()
{
  if (!qword_100944A60)
  {
    type metadata accessor for RDXPCEventStream.Token(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100944A60);
    }
  }
}

uint64_t getEnumTagSinglePayload for RDXPCActivityTimeEventStream.Name(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RDXPCActivityTimeEventStream.Name(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B90D8()
{
  result = qword_100944B00;
  if (!qword_100944B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B00);
  }

  return result;
}

uint64_t sub_1003B912C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B919C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a4;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v14 = a4;
  LOBYTE(a4) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (a4)
  {
    xpc_copy_description(a3);
    if (qword_100935F98 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100944A08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = String.init(cString:)();
    v22 = sub_10000668C(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "XPCActivityTimeEventStream received event {xpc_event: %s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  return a5(v23);
}

uint64_t sub_1003B9404(uint64_t a1)
{
  v2 = type metadata accessor for RDXPCEventStream.Token(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935F98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100944A08);
  sub_1003B97DC(a1, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v18 = 0;
    v19 = 0xE000000000000000;
    v20 = v10;
    _StringGuts.grow(_:)(26);

    v18 = 0xD000000000000017;
    v19 = 0x80000001007F28E0;
    type metadata accessor for UUID();
    sub_100054694(&qword_10093F2A0, &type metadata accessor for UUID);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 62;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v18;
    v14 = v19;
    sub_1003B98CC(v5, type metadata accessor for RDXPCEventStream.Token);
    v15 = sub_10000668C(v13, v14, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unregistering xpcEventStreamToken {xpcEventStreamToken: %s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  else
  {

    sub_1003B98CC(v5, type metadata accessor for RDXPCEventStream.Token);
  }

  return sub_10025E480(a1);
}

uint64_t sub_1003B96A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9710(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B9778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B97DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9840()
{
  v1 = *(type metadata accessor for RDXPCEventStream.Token(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003B9404(v0 + v2);
}

uint64_t sub_1003B98CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003B992C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944B10);
  v1 = sub_100006654(v0, qword_100944B10);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B99F4(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v192 = a1;
  v195 = *v1;
  v186 = type metadata accessor for RDPublicTemplate();
  v5 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v189 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v191 = *(v7 - 8);
  v8 = *(v191 + 64);
  __chkstk_darwin(v7);
  v190 = (&v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Date();
  v194 = *(v10 - 8);
  v11 = v194[8];
  __chkstk_darwin(v10);
  v13 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v183 = &v173 - v15;
  __chkstk_darwin(v16);
  v18 = &v173 - v17;
  __chkstk_darwin(v19);
  v185 = &v173 - v20;
  __chkstk_darwin(v21);
  v187 = (&v173 - v22);
  __chkstk_darwin(v23);
  v196 = (&v173 - v24);
  if (qword_100935FA0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100006654(v25, qword_100944B10);
  swift_retain_n();
  v188 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v193 = v10;
  v184 = v13;
  v182 = v18;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v198 = v181;
    *v30 = 136446978;
    v199[0] = v195;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = sub_10000668C(v32, v33, &v198);
    v3 = v2;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2114;
    v35 = v4[3];
    v36 = v4[4];
    *(v30 + 14) = v35;
    *(v30 + 22) = 2114;
    *(v30 + 24) = v36;
    *v31 = v35;
    v31[1] = v36;
    *(v30 + 32) = 2048;
    v37 = v35;
    v38 = v36;

    *(v30 + 34) = 50;

    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: Start execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld}", v30, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v181);
  }

  else
  {
  }

  v39 = v196;
  Date.init()();
  v40 = objc_autoreleasePoolPush();
  v41 = v4[3];
  v42 = sub_100415C08();
  v43 = [v41 uuid];
  v44 = v190;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v44;
  v46 = sub_100415DE4(v44, v192, v42);
  if (v3)
  {

    (*(v191 + 8))(v44, v7);
    v47 = v194;
    v50 = v193;
    objc_autoreleasePoolPop(v40);

    return (v47[1])(v39, v50);
  }

  v48 = v46;
  v179 = v41;

  (*(v191 + 8))(v45, v7);
  v181 = [v48 objectID];
  v49 = v189;
  sub_1006E8FC0(v189);
  v191 = 0;

  v52 = &v49[*(v186 + 40)];
  v53 = *(v52 + 1);
  v200[0] = *v52;
  v200[1] = v53;
  v54 = *(v52 + 3);
  v201 = *(v52 + 2);
  v202 = v54;
  sub_10013FD6C(v200, v199);
  sub_1003BD550(v49, type metadata accessor for RDPublicTemplate);
  objc_autoreleasePoolPop(v40);
  v55 = v194;
  v56 = v194[2];
  v57 = v187;
  v58 = v193;
  v178 = v194 + 2;
  v177 = v56;
  v56(v187, v39, v193);
  sub_10013FD6C(v200, v199);

  sub_10013FD6C(v200, v199);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v198 = v190;
    *v61 = 136446978;
    v199[0] = v195;
    swift_getMetatypeMetadata();
    v63 = String.init<A>(describing:)();
    v65 = v4;
    v66 = sub_10000668C(v63, v64, &v198);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2114;
    v67 = v179;
    *(v61 + 14) = v179;
    *v62 = v67;
    *(v61 + 22) = 2048;
    v68 = *(*&v200[0] + 16);
    v69 = v67;
    sub_10013FE1C(v200);
    *(v61 + 24) = v68;
    v4 = v65;
    sub_10013FE1C(v200);
    *(v61 + 32) = 2048;
    v70 = v185;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v72 = v71;
    v73 = v194[1];
    v74 = v70;
    v58 = v193;
    v73(v74, v193);
    v186 = v73;
    v73(v57, v58);
    *(v61 + 34) = v72;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s: Fetched saved reminders in public template {templateObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v61, 0x2Au);
    sub_1000050A4(v62, &unk_100938E70, &unk_100797230);
    v39 = v196;

    sub_10000607C(v190);
  }

  else
  {
    sub_10013FE1C(v200);
    sub_10013FE1C(v200);

    v186 = v55[1];
    (v186)(v57, v58);
  }

  v76 = v4[4];
  v75 = v4[5];
  v199[0] = 0;
  v77 = [v75 fetchListWithObjectID:v76 error:v199];
  v78 = v199[0];
  if (!v77)
  {
    v89 = v199[0];
    sub_10013FE1C(v200);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v186)(v39, v58);
  }

  v175 = v76;
  v79 = v77;
  v80 = objc_allocWithZone(REMSaveRequest);
  v81 = v78;
  v82 = [v80 initWithStore:v75];
  v83 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v199[0] = v83;
  v190 = v79;
  v176 = [v82 updateList:v79];
  v84 = [v176 sectionsContextChangeItem];
  v180 = v4;
  if (v84)
  {
    v85 = v201;
    v203 = v201;
    if (v201 && (v86 = *(&v201 + 1), (v204 = *(&v201 + 1)) != 0))
    {
      v87 = v84;
      sub_100010364(&v203, &v198, &qword_100944BE8, &qword_1007A5960);
      sub_100010364(&v204, &v198, &qword_100944BF0, &qword_1007A5968);
      v88 = sub_1003BC55C(v85, v86, v82, v87);

      sub_1000050A4(&v203, &qword_100944BE8, &qword_1007A5960);
      sub_1000050A4(&v204, &qword_100944BF0, &qword_1007A5968);

      v199[0] = v88;
      v83 = v88;
    }

    else
    {
    }
  }

  v90 = v83[2];
  if (v90 && !*(*&v200[0] + 16))
  {
    v198 = 0;
    v129 = [v82 saveSynchronouslyWithError:&v198];
    v130 = v198;
    if (!v129)
    {
      v152 = v198;
      sub_10013FE1C(v200);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (v186)(v39, v193);
    }

    v189 = v82;
    v131 = v182;
    v132 = v39;
    v133 = v193;
    v177(v182, v132, v193);
    swift_retain_n();
    v134 = v130;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v137 = 134349826;
      *(v137 + 4) = v90;
      *(v137 + 12) = 2114;
      v139 = v179;
      *(v137 + 14) = v179;
      *(v137 + 22) = 2114;
      v187 = v135;
      v140 = v175;
      *(v137 + 24) = v175;
      *v138 = v139;
      v138[1] = v140;
      *(v137 + 32) = 2048;
      v141 = v139;
      v142 = v140;
      v143 = v185;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v145 = v144;
      v146 = v143;
      v147 = v186;
      (v186)(v146, v133);
      v147(v131, v133);
      *(v137 + 34) = v145;
      v148 = v136;
      v149 = v187;
      _os_log_impl(&_mh_execute_header, v187, v148, "RDTemplateOperationCopyRemindersFromPublicTemplateToREMList: Copied %{public}ld sections to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v137, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      (v186)(v131, v133);
    }

    LODWORD(v187) = 0;
  }

  else
  {
    v189 = v82;
    LODWORD(v187) = 1;
  }

  v182 = v83;
  v198 = *&v200[0];
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_1003BC4F8();
  v91 = BidirectionalCollection<>.slices(by:)();
  v92 = v91;
  v198 = 0;
  v93 = *(v91 + 16);
  if (v93)
  {
    v94 = 0;
    v95 = (v91 + 56);
    while (1)
    {
      if (v94 >= *(v92 + 16))
      {
        __break(1u);
      }

      v97 = *(v95 - 1);
      v96 = *v95;
      v98 = *(v95 - 3);
      v99 = *(v95 - 2);
      swift_unknownObjectRetain();
      v100 = objc_autoreleasePoolPush();
      v101 = v191;
      sub_1003BB00C(v187, v94, v189, v180, v190, v98, v99, v97, v96, v200, &v198, v199, v196, v195, &v197);
      v191 = v101;
      if (v101)
      {
        break;
      }

      ++v94;
      objc_autoreleasePoolPop(v100);
      swift_unknownObjectRelease();
      v95 += 4;
      if (v93 == v94)
      {
        goto LABEL_26;
      }
    }

    sub_10013FE1C(v200);
    objc_autoreleasePoolPop(v100);

    swift_unknownObjectRelease();
    v127 = v196;
    v128 = v193;
    goto LABEL_38;
  }

LABEL_26:
  sub_10013FE1C(v200);

  v102 = v193;
  v103 = v196;
  if (v181)
  {
    v197 = 0;
    v104 = v181;
    v105 = v192;
    v106 = [v192 existingObjectWithID:v104 error:&v197];
    if (v106)
    {
      v107 = v106;
      v108 = v197;
      [v105 deleteObject:v107];
      v197 = 0;
      if ([v105 save:&v197])
      {
        v109 = v197;
        [v105 reset];
        v110 = v183;
        v177(v183, v103, v102);

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          LODWORD(v187) = v112;
          v114 = v113;
          v115 = swift_slowAlloc();
          v174 = v115;
          v192 = swift_slowAlloc();
          v197 = v192;
          *v114 = 136446722;
          v116 = sub_1001424F8();
          v118 = sub_10000668C(v116, v117, &v197);

          *(v114 + 4) = v118;
          *(v114 + 12) = 2114;
          v119 = v179;
          *(v114 + 14) = v179;
          *v115 = v119;
          *(v114 + 22) = 2048;
          v120 = v119;
          v121 = v110;
          v122 = v185;
          Date.init()();
          Date.timeIntervalSince(_:)();
          v124 = v123;
          v125 = v122;
          v126 = v186;
          (v186)(v125, v102);
          v126(v121, v102);
          *(v114 + 24) = v124;
          _os_log_impl(&_mh_execute_header, v111, v187, "%{public}s: Deleted REMCDPublicTemplate in Core Data store {templateObjectID: %{public}@, elapsedSeconds: %f}", v114, 0x20u);
          sub_1000050A4(v174, &unk_100938E70, &unk_100797230);
          v103 = v196;

          sub_10000607C(v192);
        }

        else
        {

          (v186)(v110, v102);
        }

        goto LABEL_41;
      }

      v151 = v197;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    else
    {
      v150 = v197;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    v127 = v103;
    v128 = v102;
LABEL_38:
    (v186)(v127, v128);
  }

LABEL_41:
  v153 = v184;
  v177(v184, v103, v102);
  swift_retain_n();
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v197 = v158;
    *v156 = 136447234;
    v159 = sub_1001424F8();
    v161 = sub_10000668C(v159, v160, &v197);

    *(v156 + 4) = v161;
    *(v156 + 12) = 2114;
    v162 = v179;
    *(v156 + 14) = v179;
    *(v156 + 22) = 2114;
    v163 = v175;
    *(v156 + 24) = v175;
    *v157 = v162;
    v157[1] = v163;
    *(v156 + 32) = 2048;
    v164 = v162;
    v165 = v163;

    *(v156 + 34) = 50;

    *(v156 + 42) = 2048;
    v166 = v185;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v168 = v167;
    v169 = v166;
    v170 = v193;
    v171 = v186;
    (v186)(v169, v193);
    v171(v153, v170);
    *(v156 + 44) = v168;
    _os_log_impl(&_mh_execute_header, v154, v155, "%{public}s: Finished execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v156, 0x34u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v158);

    v171(v196, v170);
  }

  else
  {

    v172 = v186;
    (v186)(v153, v102);
    v172(v103, v102);
  }
}

void sub_1003BB00C(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, void *a11, uint64_t *a12, SEL *a13, void *a14, void *a15)
{
  v16 = v15;
  v195 = a7;
  v175 = a11;
  v189 = a10;
  v162 = type metadata accessor for URL();
  v198 = *(v162 - 8);
  v23 = *(v198 + 64);
  __chkstk_darwin(v162);
  v161 = v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RDSavedURLAttachment();
  v160 = *(v25 - 8);
  v26 = *(v160 + 64);
  __chkstk_darwin(v25 - 8);
  v159 = v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for RDSavedReminder();
  v174 = *(v184 - 8);
  v28 = *(v174 + 64);
  __chkstk_darwin(v184);
  v170 = v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v181 = v152 - v31;
  __chkstk_darwin(v32);
  v173 = v152 - v33;
  __chkstk_darwin(v34);
  v186 = v152 - v35;
  v178 = type metadata accessor for UUID();
  v196 = *(v178 - 8);
  v36 = *(v196 + 64);
  __chkstk_darwin(v178);
  v176 = v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v172 = v152 - v39;
  __chkstk_darwin(v40);
  v42 = v152 - v41;
  v165 = type metadata accessor for Date();
  v167 = *(v165 - 8);
  v43 = *(v167 + 64);
  __chkstk_darwin(v165);
  v158 = v152 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v164 = v152 - v46;
  v163 = a4;
  if ((a1 & 1) == 0 || a2)
  {
    v47 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(a4 + 40)];
  }

  else
  {
    v47 = a3;
  }

  v188 = v47;
  v48 = [v47 updateList:a5];
  v169 = [(SEL *)v48 sectionsContextChangeItem];
  v49 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v50 = a9 >> 1;
  v51 = v178;
  v168 = v48;
  if (a9 >> 1 != a8)
  {
    v56 = v189[2];
    swift_beginAccess();
    v199 = (v196 + 16);
    v57 = (v196 + 8);
    v171 = a9 >> 1;
    v177 = v42;
    v182 = (v196 + 8);
    v200 = v56;
    v156 = (v198 + 16);
    v155 = (v198 + 8);
    while (a8 < v50)
    {
      v58 = *(v196 + 72);
      v197 = *(v196 + 16);
      v198 = v58;
      v197(v42, v195 + v58 * a8, v51);
      if (*(v56 + 16) && (v59 = sub_100363F20(v42), v56 = v200, (v60 & 1) != 0))
      {
        v61 = v49;
        v62 = *(v200 + 56);
        v180 = *(v174 + 72);
        v63 = v173;
        sub_10013FED4(v62 + v180 * v59, v173, type metadata accessor for RDSavedReminder);
        v64 = v186;
        sub_10013FE70(v63, v186);
        v179 = objc_opt_self();
        v65 = [v179 newObjectID];
        v66 = &v64[*(v184 + 56)];
        v67 = *v66;
        v68 = *(v66 + 1);
        v69 = String._bridgeToObjectiveC()();
        v70 = [v188 addReminderWithTitle:v69 toListChangeItem:v48 reminderObjectID:v65];

        sub_10052EA40(v64, v70);
        if (v16)
        {

          (*v182)(v177, v51);
          sub_1003BD550(v186, type metadata accessor for RDSavedReminder);

          goto LABEL_59;
        }

        v71 = v189[3];
        v72 = v61;
        v187 = v71;
        if (v71)
        {
          v73 = v70;
          v57 = v182;
          if (*(v71 + 16))
          {
            v74 = v48;
            v75 = sub_100363F20(v177);
            if (v76)
            {
              v77 = *(*(v71 + 56) + 8 * v75);

              sub_1003BCB08(v78, v73);
              v185 = 0;
            }

            else
            {
              v185 = 0;
            }
          }

          else
          {
            v185 = 0;
            v74 = v48;
          }
        }

        else
        {
          v185 = 0;
          v73 = v70;
          v74 = v48;
          v57 = v182;
        }

        v79 = v73;
        v80 = [v73 objectID];
        v81 = [v80 uuid];

        v82 = v172;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v202 = v72;
        v42 = v177;
        sub_1002C81B4(v82, v177, isUniquelyReferenced_nonNull_native);
        v49 = v202;
        v48 = v74;
        [(SEL *)v74 insertReminderChangeItem:v79 afterReminderChangeItem:0];
        v84 = v189[1];
        if (*(v84 + 16) && (v85 = sub_100363F20(v42), (v86 & 1) != 0))
        {
          v166 = v49;
          v87 = *(*(v84 + 56) + 8 * v85);

          v88 = [v79 subtaskContext];
          v50 = v171;
          v183 = v88;
          if (v88)
          {
            v157 = v79;
            v56 = v200;
            v89 = v87;
            v192 = *(v87 + 16);
            if (v192)
            {
              v42 = 0;
              v190 = v87 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
              v90 = v176;
              v48 = &selRef_isEmpty;
              v16 = v185;
              v191 = v89;
              while (1)
              {
                if (v42 >= *(v89 + 16))
                {
                  goto LABEL_66;
                }

                v197(v90, v190 + v42 * v198, v51);
                if (*(v56 + 16) && (v91 = sub_100363F20(v90), v56 = v200, (v92 & 1) != 0))
                {
                  v93 = v170;
                  sub_10013FED4(*(v200 + 56) + v91 * v180, v170, type metadata accessor for RDSavedReminder);
                  v94 = v181;
                  sub_10013FE70(v93, v181);
                  v95 = [v179 newObjectID];
                  v96 = &v94[*(v184 + 56)];
                  v97 = *v96;
                  v98 = *(v96 + 1);
                  v99 = String._bridgeToObjectiveC()();
                  v100 = [v188 v48[265]];

                  sub_10052EA40(v94, v100);
                  if (v16)
                  {

                    v146 = *v182;
                    v147 = v178;
                    (*v182)(v176, v178);
                    v146(v177, v147);
LABEL_63:
                    sub_1003BD550(v181, type metadata accessor for RDSavedReminder);
                    sub_1003BD550(v186, type metadata accessor for RDSavedReminder);

                    goto LABEL_59;
                  }

                  v51 = v178;
                  v57 = v182;
                  if (v187)
                  {
                    if (*(v187 + 16))
                    {
                      v101 = sub_100363F20(v176);
                      if (v102)
                      {
                        v185 = 0;
                        v103 = *(*(v187 + 56) + 8 * v101);

                        v104 = [v100 attachmentContext];
                        if (!v104)
                        {

                          v148 = objc_opt_self();
                          sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
                          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                          v150 = String._bridgeToObjectiveC()();
                          v16 = [v148 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v150];

                          swift_willThrow();
                          v151 = *v57;
                          (*v57)(v176, v51);
                          v151(v177, v51);
                          goto LABEL_63;
                        }

                        v105 = *(v103 + 16);
                        if (v105)
                        {
                          v153 = v100;
                          v154 = a8;
                          v106 = (*(v160 + 80) + 32) & ~*(v160 + 80);
                          v152[1] = v103;
                          v107 = v103 + v106;
                          v193 = *(v160 + 72);
                          v108 = v162;
                          v109 = v161;
                          v110 = v159;
                          v111 = v156;
                          v112 = v155;
                          v194 = v104;
                          do
                          {
                            sub_10013FED4(v107, v110, type metadata accessor for RDSavedURLAttachment);
                            (*v111)(v109, v110, v108);
                            sub_1003BD550(v110, type metadata accessor for RDSavedURLAttachment);
                            URL._bridgeToObjectiveC()(v113);
                            v115 = v114;
                            (*v112)(v109, v108);

                            v107 += v193;
                            --v105;
                          }

                          while (v105);

                          v16 = v185;
                          v51 = v178;
                          a8 = v154;
                          v57 = v182;
                          v50 = v171;
                          v48 = &selRef_isEmpty;
                          v100 = v153;
                        }

                        else
                        {

                          v16 = v185;
                          v51 = v178;
                        }
                      }
                    }
                  }

                  [v183 insertReminderChangeItem:v100 afterReminderChangeItem:0];

                  v90 = v176;
                  (*v57)(v176, v51);
                  sub_1003BD550(v181, type metadata accessor for RDSavedReminder);
                  v56 = v200;
                }

                else
                {
                  (*v57)(v90, v51);
                }

                ++v42;
                v89 = v191;
                if (v42 == v192)
                {

                  v48 = v168;
                  v49 = v166;
                  v42 = v177;
                  goto LABEL_52;
                }
              }
            }

            v16 = v185;
            v49 = v166;
LABEL_52:

            (*v57)(v42, v51);
          }

          else
          {
            (*v57)(v42, v51);

            v56 = v200;
            v16 = v185;
            v49 = v166;
          }
        }

        else
        {
          (*v57)(v42, v51);

          v50 = v171;
          v56 = v200;
          v16 = v185;
        }

        sub_1003BD550(v186, type metadata accessor for RDSavedReminder);
        if (__OFADD__(*v175, 1))
        {
          goto LABEL_67;
        }

        ++*v175;
      }

      else
      {
        (*v57)(v42, v51);
      }

      if (++a8 == v50)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
LABEL_56:
    v118 = type metadata accessor for Logger();
    sub_100006654(v118, qword_100944B10);
    v119 = v164;
    v120 = v165;
    (*(a8 + 16))(v164, v48, v165);
    v121 = v189;
    sub_10013FD6C(v189, &v202);
    sub_10013FD6C(v121, &v202);
    v122 = v163;

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();

    LODWORD(v200) = v124;
    if (os_log_type_enabled(v123, v124))
    {
      v199 = v123;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v201 = v127;
      v202 = a14;
      *v125 = 136447490;
      swift_getMetatypeMetadata();
      v128 = String.init<A>(describing:)();
      v130 = sub_10000668C(v128, v129, &v201);

      *(v125 + 4) = v130;
      *(v125 + 12) = 2048;
      v131 = v175;
      swift_beginAccess();
      *(v125 + 14) = *v131;
      *(v125 + 22) = 2048;
      v132 = *(*v121 + 16);
      sub_10013FE1C(v121);
      *(v125 + 24) = v132;
      sub_10013FE1C(v121);
      *(v125 + 32) = 2114;
      v133 = *(v122 + 24);
      v134 = *(v122 + 32);
      *(v125 + 34) = v133;
      *(v125 + 42) = 2114;
      *(v125 + 44) = v134;
      *v126 = v133;
      v126[1] = v134;
      *(v125 + 52) = 2048;
      v135 = v133;
      v136 = v134;
      v137 = v158;
      Date.init()();
      v138 = v164;
      Date.timeIntervalSince(_:)();
      v140 = v139;
      v141 = *(a8 + 8);
      v142 = v137;
      v143 = v165;
      v141(v142, v165);
      v141(v138, v143);
      *(v125 + 54) = v140;
      v144 = v199;
      _os_log_impl(&_mh_execute_header, v199, v200, "%{public}s: Copied %ld out of %ld top-level reminders to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v125, 0x3Eu);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v127);
    }

    else
    {
      sub_10013FE1C(v121);

      sub_10013FE1C(v121);
      (*(a8 + 8))(v119, v120);
    }

    return;
  }

LABEL_6:
  v52 = v189[6];
  if (v52)
  {
    v53 = *a12;
    a8 = v167;
    v54 = v188;
    v42 = v169;
    if (*(*a12 + 16) && v49[2])
    {
      v55 = *a12;

      sub_1003BCDD0(v52, v53, v49, v42);
    }
  }

  else
  {

    a8 = v167;
    v54 = v188;
    v42 = v169;
  }

  v202 = 0;
  if ([v54 saveSynchronouslyWithError:&v202])
  {
    v48 = a13;
    v116 = qword_100935FA0;
    v117 = v202;
    if (v116 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_68;
  }

  v145 = v202;
  v16 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_59:
  *a15 = v16;
}

uint64_t sub_1003BC468()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1003BC4F8()
{
  result = qword_10093D010;
  if (!qword_10093D010)
  {
    sub_1000F514C(&qword_10093D008, qword_10079AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D010);
  }

  return result;
}

unint64_t sub_1003BC55C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v67 = a4;
  v65 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v59 - v12;
  __chkstk_darwin(v13);
  v74 = &v59 - v14;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v76 = _swiftEmptyArrayStorage;
  v18 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v19 = *(a1 + 16);
  if (!v19)
  {

    return sub_10038EEC4(_swiftEmptyArrayStorage);
  }

  v63 = v10;
  v22 = *(v7 + 16);
  v20 = v7 + 16;
  v21 = v22;
  v23 = (a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
  v69 = (v20 + 16);
  v24 = (v20 - 8);
  v59 = (v20 + 24);
  v66 = _swiftEmptyArrayStorage;
  v25 = *(v20 + 56);
  v60 = a2;
  v61 = (v20 - 8);
  v62 = v17;
  v68 = v22;
  v73 = v25;
  v22(v17, v23, v6);
  while (1)
  {
    if (!*(a2 + 16) || (v26 = sub_100363F20(v17), (v27 & 1) == 0))
    {
      (*v24)(v17, v6);
      goto LABEL_4;
    }

    v72 = v18;
    v28 = (*(a2 + 56) + 16 * v26);
    if (v28[1])
    {
      v29 = *v28;
    }

    v30 = String._bridgeToObjectiveC()();

    v31 = [v65 addListSectionWithDisplayName:v30 toListSectionContextChangeItem:v67];

    v71 = v31;
    v32 = [v31 objectID];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = v32;
      v56 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = v55;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v66 = v76;
    v33 = v74;
    v34 = v20;
    v21(v74, v17, v6);
    v70 = v32;
    v35 = [v32 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *v69;
    v37 = v63;
    (*v69)();
    v38 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v38;
    v41 = sub_100363F20(v33);
    v42 = v38[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      break;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003744A0();
      }
    }

    else
    {
      sub_10036C648(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_100363F20(v74);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_29;
      }

      v41 = v46;
    }

    v20 = v34;
    v18 = v75;
    if (v45)
    {
      (*v59)(v75[7] + v41 * v73, v37, v6);

      v24 = v61;
      v48 = *v61;
      (*v61)(v74, v6);
      v17 = v62;
      v48(v62, v6);
    }

    else
    {
      v75[(v41 >> 6) + 8] |= 1 << v41;
      v49 = v74;
      v50 = v41 * v73;
      v68(v18[6] + v50, v74, v6);
      (v36)(v18[7] + v50, v37, v6);

      v24 = v61;
      v51 = *v61;
      (*v61)(v49, v6);
      v17 = v62;
      v51(v62, v6);
      v52 = v18[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_28;
      }

      v18[2] = v54;
    }

    a2 = v60;
    v21 = v68;
    v25 = v73;
LABEL_4:
    v23 += v25;
    if (!--v19)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v67 setUnsavedSectionIDsOrdering:isa];

      return v18;
    }

    v21(v17, v23, v6);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003BCB08(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RDSavedURLAttachment();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 attachmentContext];
  if (v16)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v28[1] = v2;
      v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v29 = *(v11 + 72);
      v19 = (v6 + 16);
      v20 = (v6 + 8);
      v21 = v16;
      do
      {
        sub_10013FED4(v18, v15, type metadata accessor for RDSavedURLAttachment);
        (*v19)(v9, v15, v5);
        sub_1003BD550(v15, type metadata accessor for RDSavedURLAttachment);
        URL._bridgeToObjectiveC()(v22);
        v24 = v23;
        (*v20)(v9, v5);

        v18 += v29;
        --v17;
      }

      while (v17);
    }

    else
    {
    }
  }

  else
  {
    v25 = objc_opt_self();
    sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = String._bridgeToObjectiveC()();
    [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

    swift_willThrow();
  }
}

void sub_1003BCDD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v84 = a4;
  v97 = a3;
  v89 = a2;
  v81 = type metadata accessor for Date();
  v5 = *(v81 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v81);
  v83 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v80 = &v73 - v10;
  v98 = type metadata accessor for UUID();
  v11 = *(v98 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v98);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v73 - v15;
  __chkstk_darwin(v16);
  v87 = &v73 - v17;
  __chkstk_darwin(v18);
  v90 = &v73 - v19;
  v20 = &qword_100944C00;
  v93 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
  v21 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v23 = &v73 - v22;
  v25 = a1 + 64;
  v24 = *(a1 + 64);
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  v85 = _swiftEmptyArrayStorage;
  v99 = _swiftEmptyArrayStorage;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v96 = v11 + 16;
  v88 = (v11 + 32);
  v78 = (v11 + 56);
  v77 = (v11 + 48);
  v94 = v11;
  v86 = (v11 + 8);
  v76 = (v5 + 8);
  v95 = a1;

  v30 = 0;
  v91 = a1 + 64;
  v92 = v29;
  while (v28)
  {
    v31 = v20;
LABEL_12:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v95;
    v35 = *(v94 + 72);
    v36 = v35 * (v33 | (v30 << 6));
    v37 = *(v94 + 16);
    v38 = v23;
    v39 = v23;
    v40 = v98;
    v37(v38, *(v95 + 48) + v36, v98);
    v41 = *(v34 + 56);
    v42 = *(v93 + 48);
    v43 = v40;
    v23 = v39;
    v37((v39 + v42), v41 + v36, v43);
    v20 = v31;
    v29 = v92;
    if (*(v97 + 16) && (v44 = sub_100363F20(v39), (v45 & 1) != 0))
    {
      v46 = v87;
      v47 = v98;
      v37(v87, *(v97 + 56) + v44 * v35, v98);
      v48 = *v88;
      (*v88)(v90, v46, v47);
      if (!*(v89 + 16) || (v49 = sub_100363F20(v39 + v42), v47 = v98, (v50 & 1) == 0))
      {
        (*v86)(v90, v47);
        v20 = &qword_100944C00;
        v23 = v39;
        goto LABEL_5;
      }

      v51 = *(v89 + 56) + v49 * v35;
      v52 = v79;
      v37(v79, v51, v98);
      v53 = v82;
      v48(v82, v52, v47);
      v54 = v80;
      v37(v80, v53, v47);
      (*v78)(v54, 0, 1, v47);
      static Date.now.getter();
      v55.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v56 = v98;
      isa = v55.super.isa;
      if ((*v77)(v54, 1, v98) == 1)
      {
        v74 = 0;
        v20 = &qword_100944C00;
        v23 = v39;
        v57 = v86;
      }

      else
      {
        v74 = UUID._bridgeToObjectiveC()().super.isa;
        v57 = v86;
        (*v86)(v54, v56);
        v20 = &qword_100944C00;
        v23 = v39;
      }

      v58 = objc_allocWithZone(REMMembership);
      v59 = v83;
      v60 = Date._bridgeToObjectiveC()().super.isa;
      v61 = v58;
      v62 = isa;
      v63 = v74;
      v73 = [v61 initWithMemberIdentifier:isa groupIdentifier:v74 isObsolete:0 modifiedOn:v60];

      (*v76)(v59, v81);
      v64 = *v57;
      v65 = v98;
      (*v57)(v82, v98);
      v66 = v73;
      v64(v90, v65);
      sub_1000050A4(v23, &qword_100944C00, &qword_1007AD440);
      v25 = v91;
      if (v66)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v85 = v99;
      }
    }

    else
    {
LABEL_5:
      sub_1000050A4(v23, v20, &qword_1007AD440);
      v25 = v91;
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v30;
    if (v28)
    {
      v31 = v20;
      v30 = v32;
      goto LABEL_12;
    }
  }

  if (!(v85 >> 62))
  {
    v68 = v84;
    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_28:
  v72 = _CocoaArrayWrapper.endIndex.getter();
  v68 = v84;
  if (!v72)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (v68)
  {
    v69 = objc_allocWithZone(REMMemberships);
    sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    v71 = [v69 initWithMemberships:v70];

    [v68 setUnsavedMembershipsOfRemindersInSections:v71];
    return;
  }

LABEL_29:
}

uint64_t sub_1003BD550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003BD5B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944C08);
  v1 = sub_100006654(v0, qword_100944C08);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003BD678(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x44497463656A626FLL;
    v5 = 0x636E657571657266;
    v6 = 0x6C61767265746E69;
    if (a1 != 3)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x6E65727275636572;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54664F736B656577;
    v2 = 0x664F7368746E6F6DLL;
    if (a1 != 9)
    {
      v2 = 0x7469736F50746573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 <= 7u)
    {
      return 0x6854664F73796164;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1003BD82C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1003BD678(*a1);
  v5 = v4;
  if (v3 == sub_1003BD678(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003BD8B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003BD678(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003BD918()
{
  sub_1003BD678(*v0);
  String.hash(into:)();
}

Swift::Int sub_1003BD96C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003BD678(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003BD9CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003BF13C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003BD9FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BD678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003BDA38@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003BF13C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003BDA68@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1698, *a1);

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

uint64_t sub_1003BDAD8@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1698, v3);

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

uint64_t sub_1003BDB3C(void *a1)
{
  v3 = sub_1000F5104(&qword_100944E80, &qword_1007A5C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003C00A4();
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

uint64_t sub_1003BDCC4()
{
  if (*v0)
  {
    result = 0x626D754E6B656577;
  }

  else
  {
    result = 0x656854664F796164;
  }

  *v0;
  return result;
}

uint64_t sub_1003BDD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656854664F796164 && a2 == 0xEC0000006B656557;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626D754E6B656577 && a2 == 0xEA00000000007265)
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

uint64_t sub_1003BDDF4(uint64_t a1)
{
  v2 = sub_1003C00A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003BDE30(uint64_t a1)
{
  v2 = sub_1003C00A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003BDE6C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1003BDB3C(a1);
}

uint64_t sub_1003BDE88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003C00F8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1003BDEF0(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    v5 = type metadata accessor for JSONDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_100029344(a1, a2);
    JSONDecoder.init()();
    sub_1000F5104(&qword_100944E20, &qword_1007A59C8);
    sub_1003BFE98(&qword_100944E40, sub_1003BFF10);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v8 = *(v13 + 16);
    if (v8)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v9 = objc_opt_self();
      v10 = (v13 + 40);
      do
      {
        v11 = [v9 dayOfWeek:*(v10 - 1) weekNumber:*v10];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 += 2;
        --v8;
      }

      while (v8);

      sub_100031A14(a1, a2);

      return _swiftEmptyArrayStorage;
    }

    else
    {

      sub_100031A14(a1, a2);

      return 0;
    }
  }

  return result;
}

char *sub_1003BE0EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  __chkstk_darwin(v4);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v132 = 0;
  v9 = [a1 remObjectIDWithError:&v132];
  if (!v9)
  {
    v23 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v8;
  }

  v10 = v9;
  v127 = v5;
  v128 = v4;
  v11 = v132;
  v12 = [a1 account];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 remObjectID];

    v126 = v14;
    if (v14)
    {
      v15 = [a1 reminder];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 remObjectID];

        if (v17)
        {
          v119 = v17;
          v124 = [a1 frequency];
          v123 = [a1 interval];
          v122 = [a1 firstDayOfTheWeek];
          v18 = [a1 daysOfTheWeek];
          if (v18)
          {
            v19 = v18;
            v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;
          }

          else
          {
            v20 = 0;
            v22 = 0xF000000000000000;
          }

          v121 = sub_1003BDEF0(v20, v22);
          sub_100031A14(v20, v22);
          v43 = [a1 daysOfTheMonth];
          if (v43)
          {
            v44 = v43;
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = objc_opt_self();
            sub_100029344(v45, v47);
            isa = Data._bridgeToObjectiveC()().super.isa;
            *&v130 = 0;
            v50 = [v48 JSONObjectWithData:isa options:0 error:&v130];

            v51 = v130;
            if (v50)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v45, v47);
              swift_unknownObjectRelease();
            }

            else
            {
              v52 = v51;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v45, v47);

              v2 = 0;
              v132 = 0u;
              v133 = 0u;
            }

            v130 = v132;
            v131 = v133;
            if (*(&v133 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v120 = v129;
                sub_10001BBA0(v45, v47);
                goto LABEL_35;
              }
            }

            else
            {
              sub_1000050A4(&v130, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v45, v47);
          }

          v120 = 0;
LABEL_35:
          v53 = [a1 monthsOfTheYear];
          if (v53)
          {
            v54 = v53;
            v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            v58 = objc_opt_self();
            sub_100029344(v55, v57);
            v59 = Data._bridgeToObjectiveC()().super.isa;
            *&v130 = 0;
            v60 = [v58 JSONObjectWithData:v59 options:0 error:&v130];

            v61 = v130;
            if (v60)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v55, v57);
              swift_unknownObjectRelease();
            }

            else
            {
              v62 = v61;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v55, v57);

              v2 = 0;
              v132 = 0u;
              v133 = 0u;
            }

            v130 = v132;
            v131 = v133;
            if (*(&v133 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v118 = v129;
                sub_10001BBA0(v55, v57);
                goto LABEL_45;
              }
            }

            else
            {
              sub_1000050A4(&v130, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v55, v57);
          }

          v118 = 0;
LABEL_45:
          v63 = [a1 weeksOfTheYear];
          if (v63)
          {
            v64 = v63;
            v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v68 = objc_opt_self();
            sub_100029344(v65, v67);
            v69 = Data._bridgeToObjectiveC()().super.isa;
            *&v130 = 0;
            v70 = [v68 JSONObjectWithData:v69 options:0 error:&v130];

            v71 = v130;
            if (v70)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v65, v67);
              swift_unknownObjectRelease();
            }

            else
            {
              v72 = v71;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v65, v67);

              v2 = 0;
              v132 = 0u;
              v133 = 0u;
            }

            v130 = v132;
            v131 = v133;
            if (*(&v133 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v117 = v129;
                sub_10001BBA0(v65, v67);
                goto LABEL_55;
              }
            }

            else
            {
              sub_1000050A4(&v130, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v65, v67);
          }

          v117 = 0;
LABEL_55:
          v73 = [a1 daysOfTheYear];
          if (!v73)
          {
            v82 = 0;
            goto LABEL_65;
          }

          v74 = v73;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78 = objc_opt_self();
          sub_100029344(v75, v77);
          v79 = Data._bridgeToObjectiveC()().super.isa;
          *&v130 = 0;
          v80 = [v78 JSONObjectWithData:v79 options:0 error:&v130];

          v81 = v130;
          if (v80)
          {
            _bridgeAnyObjectToAny(_:)();
            sub_10001BBA0(v75, v77);
            swift_unknownObjectRelease();
          }

          else
          {
            v83 = v81;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10001BBA0(v75, v77);

            v2 = 0;
            v132 = 0u;
            v133 = 0u;
          }

          v130 = v132;
          v131 = v133;
          if (*(&v133 + 1))
          {
            sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
            if (swift_dynamicCast())
            {
              v84 = v77;
              v82 = v129;
              sub_10001BBA0(v75, v84);
              goto LABEL_65;
            }
          }

          else
          {
            sub_1000050A4(&v130, &qword_100939ED0, &qword_100791B10);
          }

          sub_10001BBA0(v75, v77);
          v82 = 0;
LABEL_65:
          v85 = [a1 setPositions];
          if (v85)
          {
            v116 = v82;
            v86 = v85;
            v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = v88;

            v90 = objc_opt_self();
            sub_100029344(v87, v89);
            v91 = Data._bridgeToObjectiveC()().super.isa;
            *&v130 = 0;
            v92 = [v90 JSONObjectWithData:v91 options:0 error:&v130];

            v93 = v130;
            if (v92)
            {
              _bridgeAnyObjectToAny(_:)();
              sub_10001BBA0(v87, v89);
              swift_unknownObjectRelease();
            }

            else
            {
              v94 = v93;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_10001BBA0(v87, v89);

              v2 = 0;
              v132 = 0u;
              v133 = 0u;
            }

            v130 = v132;
            v131 = v133;
            v82 = v116;
            if (*(&v133 + 1))
            {
              sub_1000F5104(&qword_100944E38, &qword_1007A59D0);
              if (swift_dynamicCast())
              {
                v125 = v129;
                sub_10001BBA0(v87, v89);
                goto LABEL_75;
              }
            }

            else
            {
              sub_1000050A4(&v130, &qword_100939ED0, &qword_100791B10);
            }

            sub_10001BBA0(v87, v89);
          }

          v125 = 0;
LABEL_75:
          v95 = [a1 endDate];
          if (v95)
          {
            v96 = v95;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v97 = Date._bridgeToObjectiveC()().super.isa;
            v98 = [objc_opt_self() recurrenceEndWithEndDate:v97];

            (*(v127 + 1))(v8, v128);
          }

          else if ([a1 occurrenceCount] < 1)
          {
            v98 = 0;
          }

          else
          {
            v99 = [a1 occurrenceCount];
            if ((v99 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            v98 = [objc_opt_self() recurrenceEndWithOccurrenceCount:v99];
          }

          if (v121)
          {
            sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
            v128 = Array._bridgeToObjectiveC()().super.isa;

            if (v120)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v128 = 0;
            if (v120)
            {
LABEL_83:
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              v127 = Array._bridgeToObjectiveC()().super.isa;

              if (v118)
              {
LABEL_84:
                sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                v100.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_88:
                if (v117)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v121 = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v121 = 0;
                }

                v101 = v124;
                v102 = v123;
                v123 = v122;
                v124 = v102;
                if (v82)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v103.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v103.super.isa = 0;
                }

                v104 = v119;
                v116 = v2;
                v105 = v10;
                if (v125)
                {
                  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
                  v106.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v106.super.isa = 0;
                }

                v107 = objc_allocWithZone(REMRecurrenceRule);
                v115 = v98;
                v113 = v98;
                v108 = v121;
                v112 = v100.super.isa;
                v125 = v100.super.isa;
                v109 = v127;
                v110 = v128;
                v111 = v126;
                v8 = [v107 initRecurrenceRuleWithObjectID:v105 accountID:v126 reminderID:v104 frequency:v101 interval:v124 firstDayOfTheWeek:v123 daysOfTheWeek:v128 daysOfTheMonth:v127 monthsOfTheYear:v112 weeksOfTheYear:v121 daysOfTheYear:v103.super.isa setPositions:v106.super.isa end:v113];

                return v8;
              }

LABEL_87:
              v100.super.isa = 0;
              goto LABEL_88;
            }
          }

          v127 = 0;
          if (v118)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        }
      }
    }
  }

  v24 = [a1 account];
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    if (qword_100935FA8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100944C08);
    v27 = v10;
    v25 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v10;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v25, v28, "REMRecurrenceRuleCDIngestor: cdRecurrenceRule.account is nil {cdRecurrenceRule.remObjectID: %@}", v29, 0xCu);
      sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
    }
  }

  v32 = [a1 reminder];
  if (v32)
  {
    v33 = v32;
  }

  else
  {

    if (qword_100935FA8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100944C08);
    v35 = v10;
    v33 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v10;
      v39 = v35;
      _os_log_impl(&_mh_execute_header, v33, v36, "REMRecurrenceRuleCDIngestor: cdRecurrenceRule.reminder is nil {cdRecurrenceRule.remObjectID: %@}", v37, 0xCu);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);
    }
  }

  v8 = objc_opt_self();
  sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = String._bridgeToObjectiveC()();

  [v8 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v41];

  swift_willThrow();
  return v8;
}

unint64_t sub_1003BF13C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0C40, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1003BF188(void *a1, void *a2, uint64_t a3)
{
  v117 = type metadata accessor for Date();
  v6 = *(v117 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v117);
  v116 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  *&v13 = __chkstk_darwin(v9).n128_u64[0];
  v14 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(a3 + 16);
  if (v123)
  {
    v15 = a3 + 32;
    v16 = 0;
    v114 = a2;
    v115 = (v6 + 8);
    v119 = v9;
    v120 = (v11 + 8);
    v118 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v123;
    v124 = v15;
    v113 = a1;
    do
    {
      v19 = *(v15 + v16);
      if (v19 <= 4)
      {
        if (*(v15 + v16) <= 1u)
        {
          if (!*(v15 + v16))
          {
            v42 = v16;
            v43 = [a1 objectID];
            v44 = [v43 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v120)(v14, v9);
            [a2 setIdentifier:isa];

LABEL_66:
            v16 = v42;
            goto LABEL_6;
          }

          v72 = [a1 recurrenceEnd];
          if (v72)
          {
            v73 = v72;
            v42 = v16;
            v74 = [v72 endDate];
            if (v74)
            {
              v75 = v116;
              v76 = v74;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v77.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*v115)(v75, v117);
            }

            else
            {
              v77.super.isa = 0;
            }

            [a2 setEndDate:v77.super.isa];

            v99 = [v73 occurrenceCount];
            if ((v99 & 0x8000000000000000) != 0)
            {
              goto LABEL_89;
            }

            [a2 setOccurrenceCount:v99];

            v17 = v123;
            goto LABEL_66;
          }

          v17 = v123;
        }

        else if (v19 == 2)
        {
          v46 = [a1 frequency];
          if (v46 < -32768)
          {
            goto LABEL_84;
          }

          if (v46 >= 0x8000)
          {
            goto LABEL_86;
          }

          [a2 setFrequency:v46];
        }

        else if (v19 == 3)
        {
          v31 = [a1 interval];
          if (v31 < -32768)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          if (v31 >= 0x8000)
          {
            goto LABEL_88;
          }

          [a2 setInterval:v31];
        }

        else
        {
          v71 = [a1 firstDayOfTheWeek];
          if (v71 < -32768)
          {
            goto LABEL_85;
          }

          if (v71 >= 0x8000)
          {
            goto LABEL_87;
          }

          [a2 setFirstDayOfTheWeek:v71];
        }
      }

      else
      {
        if (*(v15 + v16) > 7u)
        {
          v20 = v16;
          if (v19 == 8)
          {
            v61 = [a1 weeksOfTheYear];
            if (v61)
            {
              v62 = v61;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v63 = objc_opt_self();
              v64 = Array._bridgeToObjectiveC()().super.isa;
              v126 = 0;
              v65 = [v63 dataWithJSONObject:v64 options:0 error:&v126];

              v66 = v126;
              if (v65)
              {
                v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v69 = v68;

                v18 = Data._bridgeToObjectiveC()().super.isa;
                v70 = v69;
                v17 = v123;
                sub_10001BBA0(v67, v70);
              }

              else
              {
                v98 = v66;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v18 = 0;
                v122 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setWeeksOfTheYear:v18];
          }

          else if (v19 == 9)
          {
            v32 = [a1 monthsOfTheYear];
            if (v32)
            {
              v33 = v32;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v34 = objc_opt_self();
              v35 = Array._bridgeToObjectiveC()().super.isa;
              v126 = 0;
              v36 = [v34 dataWithJSONObject:v35 options:0 error:&v126];

              v37 = v126;
              if (v36)
              {
                v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v40 = v39;

                v18 = Data._bridgeToObjectiveC()().super.isa;
                v41 = v40;
                v17 = v123;
                sub_10001BBA0(v38, v41);
              }

              else
              {
                v101 = v37;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v18 = 0;
                v122 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setMonthsOfTheYear:v18];
          }

          else
          {
            v88 = [a1 setPositions];
            if (v88)
            {
              v89 = v88;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v90 = objc_opt_self();
              v91 = Array._bridgeToObjectiveC()().super.isa;
              v126 = 0;
              v92 = [v90 dataWithJSONObject:v91 options:0 error:&v126];

              v93 = v126;
              if (v92)
              {
                v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v96 = v95;

                v18 = Data._bridgeToObjectiveC()().super.isa;
                v97 = v96;
                v17 = v123;
                sub_10001BBA0(v94, v97);
              }

              else
              {
                v103 = v93;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v18 = 0;
                v122 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setSetPositions:v18];
          }
        }

        else
        {
          if (v19 == 5)
          {
            v121 = v16;
            v47 = [a1 daysOfTheWeek];
            if (v47)
            {
              sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
              v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = v48;
              if (v48 >> 62)
              {
                v50 = _CocoaArrayWrapper.endIndex.getter();
                if (!v50)
                {
                  goto LABEL_76;
                }

LABEL_33:
                v126 = _swiftEmptyArrayStorage;
                sub_100253B44(0, v50 & ~(v50 >> 63), 0);
                if (v50 < 0)
                {
                  goto LABEL_90;
                }

                v51 = 0;
                v52 = v126;
                v53 = v49;
                v125 = v49 & 0xC000000000000001;
                do
                {
                  if (v125)
                  {
                    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v54 = *(v53 + 8 * v51 + 32);
                  }

                  v55 = v54;
                  v56 = [v54 dayOfTheWeek];
                  v57 = [v55 weekNumber];

                  v126 = v52;
                  v59 = v52[2];
                  v58 = v52[3];
                  if (v59 >= v58 >> 1)
                  {
                    sub_100253B44((v58 > 1), v59 + 1, 1);
                    v52 = v126;
                  }

                  ++v51;
                  v52[2] = v59 + 1;
                  v60 = &v52[2 * v59];
                  v60[4] = v56;
                  v60[5] = v57;
                  v53 = v49;
                }

                while (v50 != v51);
                a1 = v113;
                a2 = v114;
                v17 = v123;
                v15 = v124;
              }

              else
              {
                v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v50)
                {
                  goto LABEL_33;
                }

LABEL_76:
                v52 = _swiftEmptyArrayStorage;
              }

              v104 = type metadata accessor for JSONEncoder();
              v105 = *(v104 + 48);
              v106 = *(v104 + 52);
              swift_allocObject();
              JSONEncoder.init()();
              v126 = v52;
              sub_1000F5104(&qword_100944E20, &qword_1007A59C8);
              sub_1003BFE98(&qword_100944E28, sub_1003BFE44);
              v107 = v122;
              v108 = dispatch thunk of JSONEncoder.encode<A>(_:)();
              if (v107)
              {

                v47 = 0;
                v122 = 0;
              }

              else
              {
                v122 = 0;
                v110 = v108;
                v111 = v109;

                v47 = Data._bridgeToObjectiveC()().super.isa;
                sub_10001BBA0(v110, v111);
              }

              v14 = v118;
              v9 = v119;
            }

            [a2 setDaysOfTheWeek:v47];

            v16 = v121;
            goto LABEL_6;
          }

          v20 = v16;
          if (v19 == 6)
          {
            v21 = [a1 daysOfTheMonth];
            if (v21)
            {
              v22 = v21;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v23 = objc_opt_self();
              v24 = Array._bridgeToObjectiveC()().super.isa;
              v126 = 0;
              v25 = [v23 dataWithJSONObject:v24 options:0 error:&v126];

              v26 = v126;
              if (v25)
              {
                v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v29 = v28;

                v18 = Data._bridgeToObjectiveC()().super.isa;
                v30 = v29;
                v17 = v123;
                sub_10001BBA0(v27, v30);
              }

              else
              {
                v100 = v26;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v18 = 0;
                v122 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setDaysOfTheMonth:v18];
          }

          else
          {
            v78 = [a1 daysOfTheYear];
            if (v78)
            {
              v79 = v78;
              sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v80 = objc_opt_self();
              v81 = Array._bridgeToObjectiveC()().super.isa;
              v126 = 0;
              v82 = [v80 dataWithJSONObject:v81 options:0 error:&v126];

              v83 = v126;
              if (v82)
              {
                v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                v18 = Data._bridgeToObjectiveC()().super.isa;
                v87 = v86;
                v17 = v123;
                sub_10001BBA0(v84, v87);
              }

              else
              {
                v102 = v83;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v18 = 0;
                v122 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            [a2 setDaysOfTheYear:v18];
          }
        }

        v16 = v20;
        v15 = v124;
      }

LABEL_6:
      ++v16;
    }

    while (v16 != v17);
  }
}

unint64_t sub_1003BFE44()
{
  result = qword_100944E30;
  if (!qword_100944E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E30);
  }

  return result;
}

uint64_t sub_1003BFE98(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100944E20, &qword_1007A59C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003BFF10()
{
  result = qword_100944E48;
  if (!qword_100944E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E48);
  }

  return result;
}

unint64_t sub_1003BFFC8()
{
  result = qword_100944E60;
  if (!qword_100944E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E60);
  }

  return result;
}

unint64_t sub_1003C0050()
{
  result = qword_100944E78;
  if (!qword_100944E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E78);
  }

  return result;
}

unint64_t sub_1003C00A4()
{
  result = qword_100944E88;
  if (!qword_100944E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E88);
  }

  return result;
}

uint64_t sub_1003C00F8(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_100944E90, &qword_1007A5C18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003C00A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v8;
}

unint64_t sub_1003C02B4()
{
  result = qword_100944E98;
  if (!qword_100944E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E98);
  }

  return result;
}

unint64_t sub_1003C030C()
{
  result = qword_100944EA0;
  if (!qword_100944EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944EA0);
  }

  return result;
}

unint64_t sub_1003C0364()
{
  result = qword_100944EA8;
  if (!qword_100944EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944EA8);
  }

  return result;
}

uint64_t sub_1003C03B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944EB0);
  v1 = sub_100006654(v0, qword_100944EB0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAttachment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t static REMCDAttachment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1000060C8(0, &unk_100939E30, off_1008D4160);
  v8 = CKRecord.subscript.getter();
  if (v8)
  {
    v43 = v8;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;

      v11 = _findStringSwitchCase(cases:string:)(&off_1008E2F38, v42);

      switch(v11)
      {
        case 0:

          v12 = &qword_100939DF0;
          v13 = off_1008D4188;
          goto LABEL_9;
        case 2:

          v12 = &unk_100944EC8;
          v13 = off_1008D41F0;
          goto LABEL_9;
        case 1:

          v12 = &unk_100944ED0;
          v13 = off_1008D41A0;
LABEL_9:
          sub_1000060C8(0, v12, v13);
          goto LABEL_10;
      }

      if (qword_100935FB0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_100944EB0);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        log = v35;
        v42._countAndFlagsBits = swift_slowAlloc();
        v38 = v42._countAndFlagsBits;
        *v37 = 136315138;
        v39 = sub_10000668C(countAndFlagsBits, object, &v42._countAndFlagsBits);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, log, v36, "newCloudObject: Unknown attachment type {type: %s}", v37, 0xCu);
        sub_10000607C(v38);
      }

      else
      {
      }
    }
  }

LABEL_10:
  v14 = [a1 recordID];
  v15 = [v14 recordName];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  v16 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v15 context:a3 account:a2];

  if (v16)
  {
    v17 = [a2 ckIdentifier];
    if (v17)
    {
      v18 = v17;
      [v16 mergeDataFromRecord:a1 accountID:v17];

      v19 = v16;
      [v19 setCkServerRecord:a1];
      [v19 setInCloud:1];

      [v19 updateParentReferenceIfNecessary];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_100935FB0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_100944EB0);
      v22 = a2;
      v19 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v19, v23))
      {
        v24 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v24 = 136446466;
        v42._countAndFlagsBits = v4;
        swift_getMetatypeMetadata();
        v25 = String.init<A>(describing:)();
        v27 = sub_10000668C(v25, v26, &v43);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = [v22 remObjectID];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 description];

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          v33 = 0xE300000000000000;
          v31 = 7104878;
        }

        v40 = sub_10000668C(v31, v33, &v43);

        *(v24 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v19, v23, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v24, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  return 0;
}

Swift::String __swiftcall REMCDAttachment.recordType()()
{
  v0 = 0x656D686361747441;
  v1 = 0xEA0000000000746ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1003C0C58(uint64_t *a1)
{
  v3 = type metadata accessor for URL();
  isa = v3[-1].isa;
  v222 = v3;
  v4 = *(isa + 8);
  __chkstk_darwin(v3);
  v223 = (&v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for UUID();
  v225 = *(v6 - 8);
  v7 = v225[8].isa;
  __chkstk_darwin(v6);
  v220 = (&v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v212 - v10;
  __chkstk_darwin(v12);
  v14 = &v212 - v13;
  __chkstk_darwin(v15);
  v17 = &v212 - v16;
  __chkstk_darwin(v18);
  v219 = (&v212 - v19);
  __chkstk_darwin(v20);
  v22 = &v212 - v21;
  __chkstk_darwin(v23);
  v25 = &v212 - v24;
  __chkstk_darwin(v26);
  v28 = &v212 - v27;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_100944EB0);
    v66 = v1;
    v225 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v225, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v226 = v69;
      *v68 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v70 = String.init<A>(describing:)();
      v72 = sub_10000668C(v70, v71, &v226);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v225, v67, "Not a file attachment {Type: %s}", v68, 0xCu);
      sub_10000607C(v69);
    }

    else
    {
      v84 = v225;
    }

    return;
  }

  v30 = v29;
  v217 = v6;
  v218 = v28;
  v31 = v1;
  v224 = a1;
  v32 = [a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  swift_unknownObjectRelease();
  if (!v227)
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100006654(v73, qword_100944EB0);
    v74 = v31;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      ObjectType = v78;
      *v77 = 136315138;
      v79 = [v30 fileName];
      if (v79)
      {
        v80 = v79;
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;
      }

      else
      {
        v81 = 0;
        v83 = 0;
      }

      v226 = v81;
      v227 = v83;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v121 = String.init<A>(describing:)();
      v123 = sub_10000668C(v121, v122, &ObjectType);

      *(v77 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v75, v76, "Filename is not a string {value: %s}", v77, 0xCu);
      sub_10000607C(v78);
    }

    else
    {
    }

    return;
  }

  v33 = v226;
  v34 = String._bridgeToObjectiveC()();
  [v30 setFileName:v34];

  v216 = [v31 remObjectID];
  if (!v216)
  {

    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100006654(v95, qword_100944EB0);
    v96 = v224;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      *(v99 + 4) = v96;
      *v100 = v96;
      v101 = v96;
      _os_log_impl(&_mh_execute_header, v97, v98, "File attachment has no remObjectID {record: %@}", v99, 0xCu);
      sub_1000050A4(v100, &unk_100938E70, &unk_100797230);
    }

    return;
  }

  v215 = v31;
  v35 = [v31 account];
  if (!v35 || (v36 = v35, v37 = [v35 remObjectID], v36, !v37))
  {

    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100006654(v85, qword_100944EB0);
    v86 = v216;
    v87 = v216;
    v88 = v224;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138543618;
      *(v91 + 4) = v87;
      *(v91 + 12) = 2112;
      *(v91 + 14) = v88;
      *v92 = v86;
      v92[1] = v88;
      v93 = v87;
      v94 = v88;
      _os_log_impl(&_mh_execute_header, v89, v90, "File attachment has no account {remObjectID: %{public}@, record: %@}", v91, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v38 = [v37 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (v225[4].isa)(v218, v25, v217);
  v39 = v215;
  v40 = [v215 storeControllerManagedObjectContext];
  if (!v40 || (v41 = v40, v42 = [v40 storeController], v41, !v42))
  {

    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100006654(v102, qword_100944EB0);
    v103 = v225;
    v105 = v217;
    v104 = v218;
    (v225[2].isa)(v11, v218, v217);
    v106 = v216;
    v107 = v216;
    v108 = v224;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v226 = v223;
      *v111 = 138543874;
      *(v111 + 4) = v107;
      *v112 = v106;
      *(v111 + 12) = 2082;
      sub_1001B397C();
      v113 = v103;
      v224 = v107;
      v222 = v109;
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v117 = v113[1].isa;
      v117(v11, v105);
      v118 = sub_10000668C(v114, v116, &v226);

      *(v111 + 14) = v118;
      *(v111 + 22) = 2112;
      *(v111 + 24) = v108;
      v112[1] = v108;
      v119 = v108;
      v120 = v222;
      _os_log_impl(&_mh_execute_header, v222, v110, "No store controller for updating file attachment {remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v111, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v223);

      v117(v218, v105);
    }

    else
    {

      v124 = v103[1].isa;
      v124(v11, v105);
      v124(v104, v105);
    }

    return;
  }

  v214 = v42;
  v43 = v224;
  v44 = CKRecord.subscript.getter();
  if (!v44)
  {

    v47 = v225;
LABEL_46:
    v125 = v217;
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_100006654(v126, qword_100944EB0);
    (v47[2].isa)(v14, v218, v125);
    v127 = v216;
    v128 = v216;
    v129 = v43;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = v47;
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v223 = v130;
      v135 = v125;
      v136 = v134;
      v224 = swift_slowAlloc();
      v226 = v224;
      *v133 = 138543874;
      *(v133 + 4) = v128;
      *v136 = v127;
      *(v133 + 12) = 2082;
      sub_1001B397C();
      v137 = v132;
      v225 = v128;
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v139;
      v141 = v137[1].isa;
      v141(v14, v135);
      v142 = sub_10000668C(v138, v140, &v226);

      *(v133 + 14) = v142;
      *(v133 + 22) = 2112;
      *(v133 + 24) = v129;
      v136[1] = v129;
      v143 = v129;
      v144 = v223;
      _os_log_impl(&_mh_execute_header, v223, v131, "File asset missing for file attachment {remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v133, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v224);

      v141(v218, v135);
      return;
    }

    v145 = v47[1].isa;
    v145(v14, v125);
    v146 = v218;
    v147 = v125;
    goto LABEL_51;
  }

  v45 = v44;
  v213 = v33;
  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  v47 = v225;
  if (!v46)
  {

    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v48 = [v46 fileURL];
  if (v48)
  {
    v49 = v223;
    v50 = v48;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static REMFileDigester.sha512Sum(url:)();
    if (v51)
    {
      v212 = v45;
      v52 = String._bridgeToObjectiveC()();
      [v30 setSha512Sum:v52];

      v53 = [v216 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = UUID._bridgeToObjectiveC()().super.isa;
      v55 = v47 + 1;
      v219 = v47[1].isa;
      v219(v22, v217);
      v56 = v218;
      v57 = UUID._bridgeToObjectiveC()().super.isa;
      v58 = String._bridgeToObjectiveC()();

      v59 = String._bridgeToObjectiveC()();

      URL._bridgeToObjectiveC()(v60);
      v62 = v61;
      v226 = 0;
      v63 = v214;
      LODWORD(v53) = [v214 updateAttachmentFile:v54 accountID:v57 fileName:v58 sha512Sum:v59 fileURL:v61 keepSource:0 error:&v226];

      if (v53)
      {
        v64 = v226;

        swift_unknownObjectRelease();
        (*(isa + 1))(v223, v222);
        v219(v56, v217);
      }

      else
      {
        v213 = v55;
        v185 = v226;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100935FB0 != -1)
        {
          swift_once();
        }

        v186 = type metadata accessor for Logger();
        sub_100006654(v186, qword_100944EB0);
        v187 = v220;
        v188 = v217;
        v189 = v218;
        (v225[2].isa)(v220, v218, v217);
        v190 = v216;
        v191 = v216;
        v192 = v224;
        swift_errorRetain();
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v226 = v225;
          *v195 = 136315906;
          swift_getErrorValue();
          LODWORD(v224) = v194;
          v197 = Error.rem_errorDescription.getter();
          v199 = sub_10000668C(v197, v198, &v226);

          *(v195 + 4) = v199;
          *(v195 + 12) = 2114;
          *(v195 + 14) = v191;
          *v196 = v190;
          *(v195 + 22) = 2082;
          sub_1001B397C();
          v200 = v191;
          v201 = v220;
          v202 = dispatch thunk of CustomStringConvertible.description.getter();
          v204 = v203;
          v205 = v188;
          v206 = v219;
          v219(v201, v205);
          v207 = sub_10000668C(v202, v204, &v226);

          *(v195 + 24) = v207;
          *(v195 + 32) = 2112;
          *(v195 + 34) = v192;
          v196[1] = v192;
          v208 = v192;
          _os_log_impl(&_mh_execute_header, v193, v224, "Failed to update attachment file {error: %s, remObjectID: %{public}@, accountUUID: (%{public}s, record: %@}", v195, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          swift_unknownObjectRelease();

          (*(isa + 1))(v223, v222);
          v206(v218, v217);
        }

        else
        {

          swift_unknownObjectRelease();

          v211 = v219;
          v219(v187, v188);
          (*(isa + 1))(v223, v222);
          v211(v189, v188);
        }
      }

      return;
    }

    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    sub_100006654(v166, qword_100944EB0);
    v167 = v219;
    (v47[2].isa)(v219, v218, v217);
    v168 = v216;
    v169 = v216;
    v170 = v43;
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v213 = v171;
      v174 = v167;
      v175 = v173;
      v176 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v226 = v220;
      *v175 = 138543874;
      *(v175 + 4) = v169;
      *v176 = v168;
      *(v175 + 12) = 2082;
      sub_1001B397C();
      v212 = v45;
      v224 = v169;
      v177 = v217;
      v178 = dispatch thunk of CustomStringConvertible.description.getter();
      v180 = v179;
      v181 = v47[1].isa;
      v181(v174, v177);
      v182 = sub_10000668C(v178, v180, &v226);

      *(v175 + 14) = v182;
      *(v175 + 22) = 2112;
      *(v175 + 24) = v170;
      v176[1] = v170;
      v183 = v170;
      v184 = v213;
      _os_log_impl(&_mh_execute_header, v213, v172, "Could not generate sha512Sum from file asset {remObjectID: %{public}@, accountUUID: %{public}s, record: %@}", v175, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v220);

      swift_unknownObjectRelease();
      (*(isa + 1))(v223, v222);
      v181(v218, v177);
      return;
    }

    swift_unknownObjectRelease();
    v145 = v47[1].isa;
    v210 = v217;
    v145(v167, v217);
    (*(isa + 1))(v49, v222);
    v146 = v218;
    v147 = v210;
LABEL_51:
    v145(v146, v147);
    return;
  }

  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v148 = type metadata accessor for Logger();
  sub_100006654(v148, qword_100944EB0);
  v149 = v217;
  (v47[2].isa)(v17, v218, v217);
  v150 = v47;
  v151 = v216;
  v152 = v216;
  v153 = v43;
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v226 = v223;
    *v156 = 138543874;
    *(v156 + 4) = v152;
    *v157 = v151;
    *(v156 + 12) = 2082;
    sub_1001B397C();
    v212 = v45;
    v224 = v152;
    v222 = v154;
    v158 = v217;
    v159 = dispatch thunk of CustomStringConvertible.description.getter();
    v161 = v160;
    v162 = v150[1].isa;
    v162(v17, v158);
    v163 = sub_10000668C(v159, v161, &v226);

    *(v156 + 14) = v163;
    *(v156 + 22) = 2112;
    *(v156 + 24) = v153;
    v157[1] = v153;
    v164 = v153;
    v165 = v222;
    _os_log_impl(&_mh_execute_header, v222, v155, "File asset missing fileURL for file attachment {remObjectID: %{public}@, accountUUID: %{public}s, record: %@}", v156, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v223);

    swift_unknownObjectRelease();
    v162(v218, v217);
  }

  else
  {

    swift_unknownObjectRelease();
    v209 = v150[1].isa;
    v209(v17, v149);
    v209(v218, v149);
  }
}

void sub_1003C25F8(uint64_t *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    sub_1003C0C58(a1);
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (v17)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16;
    }

    [v4 setFileSize:v14];
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100944EB0);
    v7 = v1;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000668C(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Record.type is file but this is not a file attachment object {type: %s}", v9, 0xCu);
      sub_10000607C(v10);
    }

    else
    {
    }
  }
}

void sub_1003C28E0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v15))
    {
      v12 = 0;
    }

    else
    {
      v12 = v15;
    }

    [v2 setHeight:v12];
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v15))
    {
      v13 = 0;
    }

    else
    {
      v13 = v15;
    }

    [v2 setWidth:v13];
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100944EB0);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000668C(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Record.type is image but this is not an image attachment {type: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }
}

void sub_1003C2C54(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v59 - v9;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = (v59 - v16);
  __chkstk_darwin(v17);
  v19 = v59 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v64 = v10;
    v65 = v14;
    v69 = (v4 + 56);
    v70 = (v4 + 48);
    v63 = (v4 + 32);
    v66 = (v4 + 8);
    v67 = v19;
    v60 = v4 + 16;
    v61 = v7;
    v62 = v1;
    v22 = 0;
    v23 = 0;
    *(&v24 + 1) = 0xF000000000000000;
    v68 = xmmword_1007A5D40;
    *&v24 = 136446722;
    v59[2] = v24;
    while (1)
    {
      if (*(&off_1008E3050 + v22 + 32))
      {
        if (*(&off_1008E3050 + v22 + 32) != 1)
        {
          v25 = [a1 encryptedValues];
          v26 = String._bridgeToObjectiveC()();
          v27 = [v25 objectForKeyedSubscript:v26];
          swift_unknownObjectRelease();

          if (v27 && (ObjectType = v27, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
          {
            v28 = v67;
            URL.init(string:)();

            if ((*v70)(v28, 1, v3) == 1)
            {
              v30 = 0;
            }

            else
            {
              URL._bridgeToObjectiveC()(v29);
              v30 = v44;
              (*v66)(v28, v3);
            }

            [v21 setUrl:v30];
          }

          else
          {
            [v21 setUrl:0];
          }
        }

        goto LABEL_4;
      }

      v31 = v23;
      v32 = [a1 encryptedValues];
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 objectForKeyedSubscript:v33];
      swift_unknownObjectRelease();

      ObjectType = v34;
      sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
      if (swift_dynamicCast())
      {
        v35 = *(&v72 + 1);
        if (*(&v72 + 1) >> 60 != 15)
        {
          v43 = v72;
LABEL_19:
          v23 = v31;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v43, v35);
          goto LABEL_27;
        }
      }

      else
      {
        v72 = v68;
        sub_100031A14(0, 0xF000000000000000);
        v37 = CKRecord.subscript.getter();
        v38 = v71;
        if (!v37)
        {
          goto LABEL_23;
        }

        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (!v39)
        {
          swift_unknownObjectRelease();
LABEL_23:
          (*v69)(v38, 1, 1, v3);
LABEL_26:
          sub_1000050A4(v38, &unk_1009441F0, &qword_100795760);
          isa = 0;
          goto LABEL_27;
        }

        v40 = [v39 fileURL];
        swift_unknownObjectRelease();
        if (v40)
        {
          v41 = v65;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = 0;
        }

        else
        {
          v42 = 1;
          v41 = v65;
        }

        (*v69)(v41, v42, 1, v3);
        v38 = v71;
        sub_10003E8F8(v41, v71);
        if ((*v70)(v38, 1, v3) == 1)
        {
          goto LABEL_26;
        }

        v45 = v64;
        (*v63)(v64, v38, v3);
        v46 = [objc_opt_self() defaultManager];
        URL.path.getter();
        v47 = String._bridgeToObjectiveC()();

        v48 = [v46 fileExistsAtPath:v47];

        if (v48)
        {
          v43 = Data.init(contentsOf:options:)();
          v35 = v49;
          (*v66)(v45, v3);
          goto LABEL_19;
        }

        (*v66)(v45, v3);
      }

      isa = 0;
      v23 = v31;
LABEL_27:
      [v21 setMetadata:isa];

LABEL_4:
      if (++v22 == 3)
      {

        return;
      }
    }
  }

  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100006654(v50, qword_100944EB0);
  v51 = v1;
  v71 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v72 = v54;
    *v53 = 136315138;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v55 = String.init<A>(describing:)();
    v57 = sub_10000668C(v55, v56, &v72);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v71, v52, "Record.type is url but this is not a URL attachment {type: %s}", v53, 0xCu);
    sub_10000607C(v54);
  }

  else
  {
    v58 = v71;
  }
}