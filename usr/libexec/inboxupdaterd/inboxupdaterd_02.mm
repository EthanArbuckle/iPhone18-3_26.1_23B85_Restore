uint64_t sub_10004A0A8(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return sub_10004B8CC(a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10004A148(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((sub_10004A0A8(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (sub_10004BD60(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!sub_10004A148(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = (a3 + 24);
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    return 327682;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v94, 0, sizeof(v94));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v94;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    return 327710;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v15 = a2[13];
  v16 = a2[14];
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v17 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v18 = (a3 + 128);
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_157;
  }

  if (v17 < a1)
  {
    goto LABEL_183;
  }

  v79 = a1 + 16;
  v80 = v10;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *v4;
  if (__CFADD__(*v4, v19))
  {
    goto LABEL_184;
  }

  v21 = &v20[v19];
  if (v20 > v21)
  {
    goto LABEL_183;
  }

  v88 = *v4;
  v89 = v21;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  if (v20 >= v21)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v22 = 0;
  v23 = 0x96463F78648862ALL;
  v83 = 0x2000000000000010;
  v78 = 262146;
  v82 = 262147;
  v81 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v88, v87))
    {
      goto LABEL_184;
    }

    v24 = &v88[v87];
    v86 = 0xAAAAAAAAAAAAAAAALL;
    v85 = 0xAAAAAAAAAAAAAAAALL;
    if (v88 > &v88[v87] || v24 > v89)
    {
      goto LABEL_183;
    }

    v85 = v88;
    v86 = &v88[v87];
    if (!ccder_blob_decode_tl())
    {
      result = v78;
      goto LABEL_179;
    }

    v26 = v85;
    if (__CFADD__(v85, v87))
    {
      goto LABEL_184;
    }

    if (&v85[v87] > v86 || v85 > &v85[v87])
    {
      goto LABEL_183;
    }

    v85 += v87;
    if (v87 != 9)
    {
      goto LABEL_147;
    }

    if ((v86 - v26) < 9)
    {
      goto LABEL_183;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 3)
    {
      if (v22)
      {
        goto LABEL_149;
      }

      v93[0] = 0xAAAAAAAAAAAAAAAALL;
      v37 = ccder_blob_decode_tl();
      result = v82;
      if (v37)
      {
        if (sub_10004BEA0(&v85))
        {
          result = 0;
        }

        else
        {
          result = v81;
        }
      }

      v22 |= 1u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 4)
    {
      if ((v22 & 2) != 0)
      {
        goto LABEL_149;
      }

      v93[0] = 0xAAAAAAAAAAAAAAAALL;
      v40 = ccder_blob_decode_tl();
      result = v82;
      if (v40)
      {
        if (sub_10004BF58(&v85, v38, v39, a3))
        {
          result = 0;
        }

        else
        {
          result = v81;
        }
      }

      v22 |= 2u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 2)
    {
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v92 = 0xAAAAAAAAAAAAAAAALL;
      v41 = ccder_blob_decode_tl();
      result = v82;
      if (v41)
      {
        v42 = v85;
        v43 = v86;
        if (v85 >= v86)
        {
LABEL_110:
          if (v42 == v43)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v77 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v93[0] = 0xAAAAAAAAAAAAAAAALL;
            v93[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v85, v92))
            {
              goto LABEL_184;
            }

            if (v85 > &v85[v92] || &v85[v92] > v86)
            {
              goto LABEL_183;
            }

            v45 = v23;
            v93[0] = v85;
            v93[1] = &v85[v92];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v90 = 0xAAAAAAAAAAAAAAAALL;
            v91 = 0xAAAAAAAAAAAAAAAALL;
            if (v93[1] < v93[0] || v92 > v93[1] - v93[0])
            {
              goto LABEL_183;
            }

            v90 = v93[0];
            v91 = v92;
            if (__CFADD__(v93[0], v92))
            {
              goto LABEL_184;
            }

            if (v93[0] + v92 > v93[1] || v93[0] > v93[0] + v92)
            {
              goto LABEL_183;
            }

            v93[0] += v92;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v46 = v93[0];
            if (__CFADD__(v93[0], v92))
            {
              goto LABEL_184;
            }

            v47 = v93[1];
            v48 = v93[0] + v92;
            if (v93[0] + v92 > v93[1] || v93[0] > v48)
            {
              goto LABEL_183;
            }

            v93[0] += v92;
            if (v48 != v93[1])
            {
              break;
            }

            v49 = find_digest(&v90);
            if (v49)
            {
              v50 = *v49;
              if (*v49 > *(a3 + 104))
              {
                v51 = *(v77 + 8);
                if (!v51 || v50 <= v51)
                {
                  *(a3 + 104) = v50;
                  v52 = v92;
                  if (v92 > v47 - v46)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v46;
                  *(a3 + 120) = v52;
                }
              }
            }

            v42 = v93[0];
            v43 = v86;
            if (v93[0] > v86 || v85 > v93[0])
            {
              goto LABEL_183;
            }

            v85 = v93[0];
            v23 = v45;
            if (v93[0] >= v86)
            {
              a1 = v77;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v23 = v45;
LABEL_132:
          a1 = v77;
        }
      }

      v22 |= 0x10u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 5)
    {
      if ((v22 & 4) != 0)
      {
        goto LABEL_149;
      }

      v93[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = ccder_blob_decode_tl();
      result = v82;
      if (v53)
      {
        if (sub_10004C07C(&v85))
        {
          result = 0;
        }

        else
        {
          result = v81;
        }
      }

      v22 |= 4u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 1)
    {
      if ((v22 & 8) != 0)
      {
        goto LABEL_149;
      }

      v93[0] = 0xAAAAAAAAAAAAAAAALL;
      v56 = ccder_blob_decode_tl();
      result = v82;
      if (v56)
      {
        if (sub_10004C14C(&v85, v54, v55, a3))
        {
          result = 0;
        }

        else
        {
          result = v81;
        }
      }

      v22 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v26 != 0x9010DF78648862ALL || v26[8] != 52)
    {
      v33 = *v26;
      v34 = v26[8];
      if (v33 != 0x9010DF78648862ALL || v34 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v22 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v93[0] = 0xAAAAAAAAAAAAAAAALL;
      v36 = ccder_blob_decode_tl();
      result = v82;
      if (v36)
      {
        if (sub_10004C204(&v85))
        {
          result = 0;
        }

        else
        {
          result = v81;
        }
      }

      v22 |= 0x40u;
      goto LABEL_134;
    }

    if ((v22 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v22 |= 0x20u;
LABEL_135:
    if (v24 > v89 || v88 > v24)
    {
      goto LABEL_183;
    }

    v88 = v24;
  }

  while (v24 < v89);
  if ((~v22 & 3) != 0)
  {
    goto LABEL_145;
  }

  v58 = ccder_sizeof_tag();
  v59 = *(a3 + 48);
  result = ccder_sizeof_len();
  v60 = __CFADD__(v58, result);
  v61 = v58 + result;
  v10 = v80;
  if (v60)
  {
    goto LABEL_185;
  }

  if (v61 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v93, 170, 20);
  if (__CFADD__(v93, v61))
  {
LABEL_184:
    __break(0x5513u);
  }

  v90 = v93;
  v91 = v93 + v61;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v62 = v80[1];
  v60 = __CFADD__(v62, 8);
  v63 = v62 + 8;
  if (v60 || (v64 = v80[2], v60 = __CFADD__(v63, v64), v65 = v63 + v64, v60) || (v60 = __CFADD__(v65, 4), v66 = v65 + 4, v60) || v66 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  __chkstk_darwin();
  v68 = &v76 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v68, 170, ((v69 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  v71 = *(a3 + 40);
  v70 = *(a3 + 48);
  ccdigest_update();
  v13 = (v10[7])(v10, v68, v94);
  v17 = v79;
LABEL_157:
  if (v17 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      return 0;
    case 0x80009:
      v72 = 524297;
LABEL_168:
      *(a3 + 168) = v72;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v72 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v73 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v84[0] = v94;
  v84[1] = v73;
  v74 = *(a3 + 152);
  if (v74 >= v74 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v74, v84, v3, (a3 + 88));
  if (!result || result == 655648 || result == 655632)
  {
    v75 = *(a3 + 168);
    if (!v75 || v75 == 458753 || v75 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v18 == v94)
  {
    *v18 = 0;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_10004B620(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v29 = 0;
  v30[0] = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = &v23 + 8;
  v30[1] = 0;
  memset(__b, 170, sizeof(__b));
  v22[0] = 4;
  v22[1] = __b;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v27 = v19;
  *&v28[0] = 1;
  DWORD2(v21) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v22, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = 131091;
    if (*(v28 + 8) != 0)
    {
      return result;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v28[0] + 1) = a3;
    *&v28[1] = a4;
  }

  v30[0] = a5;
  DWORD2(v21) = 458753;
  result = CMSParseSignerInfos(v22, v30, validateSignerInfoAndChain);
  if (result)
  {
    return result;
  }

  result = DWORD2(v21);
  if (DWORD2(v21))
  {
    return result;
  }

  if (a6 && a7)
  {
    if (*(&v20 + 1) < (*(&v20 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v20 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v18 = *&v28[1];
        if (*&v28[1])
        {
          if (*(&v28[0] + 1))
          {
            *a8 = *(&v28[0] + 1);
            *a9 = v18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return sub_10004B620(a1, a2, a3, a4, a5, &v6, &v7, &v8, &v9);
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return sub_10004B620(a1, a2, 0, 0, a5, &v6, &v7, a3, a4);
}

uint64_t sub_10004B8CC(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t sub_10004BA90(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, sizeof(v31)), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!sub_10004B8CC(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t sub_10004BD60(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_10004B8CC(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = sub_10004BD60(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (sub_10004A148(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10004BEA0(char **a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v3 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (v3 <= v3 - 0x5555555555555556)
      {
        return compare_octet_string_raw(&off_1000A4278, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_10004BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      if (*a1 - 0x5555555555555556 != *(a1 + 8))
      {
        return 0;
      }

      result = a4 + 24;
      if (a4 + 24 <= (a4 + 40))
      {
        result = find_digest(result);
        if (!result)
        {
          return result;
        }

        if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        result = (*(result + 24))();
        if (*result != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8);
        v8 = v7 >= *a1;
        v9 = v7 - *a1;
        if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
        {
          if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
          {
            return 1;
          }

LABEL_14:
          *(a4 + 168) = 458754;
          return 1;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_10004C07C(unint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v3 = v4;
  if (v4 > v5)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v4;
  a1[1] = v5;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    return v3 - 0x5555555555555556 == a1[1];
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10004C14C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v7 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (*(a4 + 104))
      {
        return 1;
      }

      if (v7 <= v7 - 0x5555555555555556)
      {
        *(a4 + 112) = v7;
        *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_10004C204(void *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      return *a1 - 0x5555555555555556 == a1[1];
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(uint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  v3 = *a1;
  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  v4 = *a1;
  ccder_blob_decode_tl();
  return 0;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v10;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        return 1;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    v16 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v11;
      if (v16 < v11)
      {
        goto LABEL_42;
      }

      *a3 = v11;
      a3[1] = 0;
      v8 = 1;
LABEL_15:
      *a2 = v8;
      goto LABEL_16;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 2;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 3;
LABEL_23:
      *a2 = v9;
      goto LABEL_6;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v13 = *a1;
    v18 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 4;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 5;
      goto LABEL_23;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v14 = *a1;
    v19 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v14;
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      *a3 = v14;
      a3[1] = 0;
      v8 = 6;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v15 = *a1;
    v20 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v15;
      if (v20 < v15)
      {
        goto LABEL_42;
      }

      *a3 = v15;
      a3[1] = 0;
      v8 = 7;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = 8;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  memset(v8, 0, sizeof(v8));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v7[0] = a1;
  v7[1] = a1 + a2;
  result = X509CertificateParse(v8, v7);
  if (!result)
  {
    return X509CertificateParseKey(v8, a3, a4);
  }

  return result;
}

uint64_t sub_10004CC50(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  memset(__b, 170, sizeof(__b));
  memset(v36, 170, sizeof(v36));
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v33 = a1;
  v34 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v33, __b, 4, &v36[2], &v35);
  if (CommonName)
  {
    return CommonName;
  }

  v22 = 327690;
  if (v33 != v34)
  {
    return v22;
  }

  if (v35 != 2)
  {
    return 327692;
  }

  X509ChainResetChain(v36, &v36[2]);
  __b[74] = v36[0];
  v23 = v36[0] ? (v36[0] + 296) : &v36[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v36[0] = &__b[38];
  __b[75] = v36;
  __b[36] = 0;
  __b[37] = v36[1];
  *v36[1] = __b;
  v36[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v36, a12, 0);
  if (CommonName)
  {
    return CommonName;
  }

  v24 = **(v36[1] + 8);
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v31 = a3;
  v32 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304)
  {
    goto LABEL_41;
  }

  if (v24 + 16 > v24 + 32)
  {
    goto LABEL_41;
  }

  v26 = (v24 + 56);
  if (v24 + 40 > v24 + 56 || v26 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v31, &ecPublicKey, v25, (v24 + 16), (v24 + 40), v26);
  if (CommonName)
  {
    return CommonName;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      return 590085;
    }
  }

  v28 = v36[0];
  if (v36[0] >= v36[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v29 = X509CertificateParseKey(v36[0], a5, a6);
  if (v29)
  {
    v22 = v29;
  }

  else
  {
    v22 = 327691;
  }

  if (v28 && !v29)
  {
    if (a11)
    {
      *a11 = (*(v28 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      return 0;
    }

    v30[0] = 0;
    v30[1] = 0;
    if (v28 + 104 <= v28 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v28 + 104), v30);
      if (CommonName)
      {
        return CommonName;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = sub_10004DE8C(v30, a7, a8);
        if (CommonName)
        {
          return CommonName;
        }

        return 0;
      }
    }

    goto LABEL_41;
  }

  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_10008B500;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_10008B510;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v7[1] = a3;
    v8 = 0xAAAAAAAAAAAAAA00;
    v7[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, sub_10004D720, v7);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

uint64_t sub_10004D720(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v20 = 0xAAAAAAAA00AAAA01;
  v21 = &null_octet;
  v19 = xmmword_10008B520;
  BYTE1(v20) = a6;
  BYTE2(v20) = a7;
  v22 = &null_octet;
  v23 = &null_octet;
  v24 = &CTOctetServerAuthEKU;
  v17 = 0;
  v18 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v17, &v18, 0, 0, 0, 0, &v19);
  if (!result)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[17] = v13;
    v16[18] = v13;
    v16[15] = v13;
    v16[16] = v13;
    v16[13] = v13;
    v16[14] = v13;
    v16[11] = v13;
    v16[12] = v13;
    v16[9] = v13;
    v16[10] = v13;
    v16[7] = v13;
    v16[8] = v13;
    v16[6] = v13;
    v16[4] = v13;
    v16[5] = v13;
    v16[2] = v13;
    v16[3] = v13;
    v16[0] = v13;
    v16[1] = v13;
    memset(v15, 170, sizeof(v15));
    if (__CFADD__(a1, a2))
    {
      __break(0x5513u);
    }

    else
    {
      v14[0] = a1;
      v14[1] = a1 + a2;
      result = X509ChainParseCertificateSet(v14, v16, 1, &v15[1], v15);
      if (!result)
      {
        result = CTVerifyAppleMarkerExtension(v16, a5);
        if (!result)
        {
          return CTVerifyHostname(v16, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (compare_octet_string(&v4[10] + 8, &SEKTestRootSKID))
  {
    return compare_octet_string(&v4[10] + 8, &SEKProdRootSKID) == 0;
  }

  return 2;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, &xmmword_1000A4428), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &unk_100086B61, 97, 0, 0, &xmmword_1000A4428);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_19:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  v8 = a1;
  v9 = a1 + a2;
  if (X509CertificateParse(v10, &v8))
  {
    return 0;
  }

  v3 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 0;
  }

  for (i = icdpFederationAnchors; ; i += 3)
  {
    v5 = i + 3;
    if (i < icdpFederationAnchors || v5 > @"Progress" || i >= v5)
    {
      goto LABEL_18;
    }

    if (!compare_octet_string(&v10[10] + 8, *i))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return i[2];
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_1000A45A0;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > @"Progress";
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, &xmmword_1000A4460);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_10004DE8C(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!sub_10004E984(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = sub_10004EA9C(&v54);
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = sub_10004EB6C(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = sub_10004EC40(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = sub_10004ED68(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = sub_10004EE2C(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = sub_10004EF3C(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57 == 1)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!sub_10004F010(&v58, v70, v53))
    {
      return v49;
    }

    result = sub_10004F09C(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t sub_10004E984(uint64_t *a1, int a2, _BYTE *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v6 = *a1;
  v7 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_10004EA9C(uint64_t a1)
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    return 0;
  }

  return result;
}

uint64_t sub_10004EB6C(uint64_t *a1, void *a2, _BYTE *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = sub_10004E984(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3 == 1)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10004EC40(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_10004ED68(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t sub_10004EE2C(unint64_t *a1, unint64_t *a2, void *a3)
{
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (v6)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_11;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_11;
    }

    *a2 = v10;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v9 = v8 - 0x5555555555555556;
    if (v8 > v8 - 0x5555555555555556 || v9 > a1[1])
    {
LABEL_11:
      __break(0x5519u);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t sub_10004EF3C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result == 1)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t sub_10004F010(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10004F09C(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return sub_100050D00(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = sub_10004E984(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return sub_100050E3C(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return sub_100050FEC(result);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null();
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return sub_100051420(result, a4, a5);
            }

            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null();
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return sub_1000510D8(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return sub_1000511BC();
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return sub_100051350(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        a5[1] = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return sub_100051574(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v14 = *a1;
  v15 = v6;
  if (!ccder_blob_decode_tl())
  {
    return v10;
  }

  if (!ccder_blob_decode_tl())
  {
    return 655363;
  }

  if (v14 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v14 > v14 - 0x5555555555555556 || v14 - 0x5555555555555556 > v15)
  {
    goto LABEL_30;
  }

  v13 = v14 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    return 655362;
  }

  if (a2)
  {
    if (v13 >= v14)
    {
      *a2 = v14;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v14 - 0x5555555555555556;
  if (v14 > v14 - 0x5555555555555556 || v11 > v13)
  {
    goto LABEL_30;
  }

  if (v11 == v13)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v13 - v11;
  }

  if (v13 > v15 || v14 > v13)
  {
    goto LABEL_30;
  }

  if (!ccder_blob_decode_bitstring())
  {
    return 655364;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13 == v15)
  {
    return 0;
  }

  else
  {
    return 655365;
  }
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  result = 327691;
  if (a1 && *(a1 + 96))
  {
    result = a1 + 88;
    v8 = 0;
    v9 = 0;
    if (a1 + 88 > (a1 + 104))
    {
      __break(0x5519u);
    }

    else
    {
      result = X509CertificateParseSPKI(result, 0, 0, &v8);
      if (!result && a2)
      {
        if (a3)
        {
          v7 = v9;
          *a2 = v8;
          *a3 = v7;
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5)
{
  v20 = 0uLL;
  v19 = 0uLL;
  v17 = 0;
  v18 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v9 = X509CertificateParseSPKI((a2 + 88), &v20, &v19, &v17);
  if (!v9)
  {
    v9 = 655632;
    v11 = compare_octet_string(&v20, &rsaEncryption);
    v12 = validateSignatureRSA;
    if (v11)
    {
      v13 = compare_octet_string(&v20, &ecPublicKey);
      v12 = validateSignatureEC;
      if (v13)
      {
        return 655617;
      }
    }

    if (v14 = v12, v16 = *a5, v15 = *a4, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v18 || !v17) && (a3[1] || !*a3))
      {
        if (v14(v17))
        {
          return 0;
        }

        else
        {
          return 655648;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  return v9;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[2] = v8;
  v12[3] = v8;
  v12[0] = v8;
  v12[1] = v8;
  v11[0] = v12;
  v11[1] = 64;
  v10 = 0uLL;
  result = sub_1000501AC(a3, a4, v11, &v10);
  if (!result)
  {
    return X509CertificateCheckSignatureDigest(a1, a2, v11, &v10, a5);
  }

  return result;
}

uint64_t sub_1000501AC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    v10 = *a1;
    v9 = a1[1];
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[2] = v11;
  v23[3] = v11;
  v23[0] = v11;
  v23[1] = v11;
  v21 = v23;
  v22 = 64;
  v20 = 0uLL;
  v12 = sub_1000501AC(a4, a5, &v21, &v20);
  if (v12)
  {
    return v12;
  }

  v12 = 655617;
  v13 = compare_octet_string(a2, &rsaEncryption);
  v14 = validateSignatureRSA;
  if (v13)
  {
    v15 = compare_octet_string(a2, &ecPublicKey);
    v14 = validateSignatureEC;
    if (v15)
    {
      return v12;
    }
  }

  v18 = *a5;
  v19 = *a6;
  if (a3)
  {
    v16 = *a3;
  }

  result = *a1;
  if ((a1[1] || !result) && (!v21 || v22))
  {
    if (v14(result))
    {
      return 0;
    }

    else
    {
      return 655648;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 224);
  v11 = v5;
  while (1)
  {
    if (v10 >= v11)
    {
      return 0;
    }

    memset(v9, 170, sizeof(v9));
    if ((ccder_blob_decode_GeneralName(&v10, v9, &v9[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v9[0], &v9[1], a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 720912;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v18 = *a1;
  v19 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v20)
      {
        return 720898;
      }

      v2 = v18;
      if (__CFADD__(v18, v20))
      {
        break;
      }

      v7 = v18 + v20;
      if (v18 > v18 + v20 || v7 > v19)
      {
        goto LABEL_60;
      }

      v16 = v18;
      v17 = v18 + v20;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          return 720899;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20 || v16 + v20 > v17)
        {
          goto LABEL_60;
        }

        v15 = v16 + v20;
        if (!ccder_blob_decode_tl())
        {
          return 720900;
        }

        v2 = v16 + v20;
        if (v16 > v15)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20)
        {
          goto LABEL_60;
        }

        v14 = v16 + v20;
        if (v20 == 3 && *v16 == 1109 && *(v16 + 2) == 3)
        {
          v12 = v16 + v20;
          v13 = v16 + v20;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v14 > v15)
            {
              goto LABEL_60;
            }

            v12 = v16 + v20;
            v13 = v16 + v20;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v14 > v15)
              {
                goto LABEL_60;
              }

              v12 = v16 + v20;
              v13 = v16 + v20;
              if (!ccder_blob_decode_tl())
              {
                return v6;
              }
            }
          }

          if (__CFADD__(v12, v20))
          {
            goto LABEL_61;
          }

          v2 = v16 + v20;
          if (v15 != v12 + v20)
          {
            return 720902;
          }

          if (v13 < v12 || v20 > v13 - v12)
          {
            goto LABEL_60;
          }

          *a2 = v12;
          a2[1] = v20;
        }

        v7 = v18 + v20;
        if (v2 > v17 || v16 > v2)
        {
          goto LABEL_60;
        }

        v16 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v19;
      if (v2 > v19 || v18 > v2)
      {
        goto LABEL_60;
      }

      v18 = v2;
      if (v2 >= v19)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  return 720904;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  if (a1 && a2 != -1)
  {
    return !X509CertificateGetNotBefore(a1, &v6) && !X509CertificateGetNotAfter(a1, &v5) && difftime(a2, v6) >= 0.0 && difftime(a2, v5) <= 0.0;
  }

  return result;
}

unint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    return sub_100050B48(v4, a2);
  }

  return result;
}

unint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    return sub_100050B48(v4, a2);
  }

  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result)
{
  v1 = 720906;
  if (!result)
  {
    return v1;
  }

  v2 = *(result + 72);
  v3 = *(result + 80);
  if (!v2 || v3 == 0)
  {
    return v1;
  }

  if (__CFADD__(v2, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v2 + v3;
    if (v2 <= v5)
    {
      v6[0] = *(result + 72);
      v6[1] = v5;
      if (!ccder_blob_decode_Time(v6))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v6))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t sub_100050B48(uint64_t *a1, time_t *a2)
{
  v2 = 720909;
  if (!a1)
  {
    return v2;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    return v2;
  }

  v12.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v13 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12.tm_mon = v6;
  *&v12.tm_isdst = v6;
  *&v12.tm_sec = v6;
  v14 = 0;
  v7 = *a1;
  result = __memcpy_chk();
  if (result > result + v4)
  {
    goto LABEL_24;
  }

  v9 = &v13[v4];
  if (&v13[v4] >= &v15 || &v13[v4] < v13)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v13[v4] = 0;
  if (v4 != 13)
  {
    if (v9 + 1 >= v9 && v9 + 1 <= &v15)
    {
      result = strptime(v13, "%Y%m%d%H%M%SZ", &v12);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v14))
  {
    goto LABEL_24;
  }

  result = strptime(v13, "%y%m%d%H%M%SZ", &v12);
  if (result && v12.tm_year >= 150)
  {
    v12.tm_year -= 100;
  }

LABEL_15:
  v10 = a1[1];
  if (v10 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v13, v10))
  {
    if (result != &v13[v10])
    {
      return 720910;
    }

    v11 = timegm(&v12);
    if (v11 == -1)
    {
      return 720911;
    }

    v2 = 0;
    if (a2)
    {
      *a2 = v11;
    }

    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL sub_100050D00(unint64_t *a1, void *a2, unint64_t *a3)
{
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v12 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v13;
    v7 = v14;
    if (v13 > v14)
    {
      goto LABEL_19;
    }

    *a1 = v13;
    a1[1] = v14;
    v9 = v12;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        return v7 == v10;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v7 == v10;
}

uint64_t sub_100050E3C(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      goto LABEL_12;
    }

    v8 = v7 - 0x5555555555555556;
    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v7 > v8)
      {
        goto LABEL_12;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    if (v7 <= v8)
    {
      *a1 = v8;
      return 1;
    }

LABEL_12:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_100050FEC(unint64_t *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v4 = a1[1];
      if (v4 != v3 - 0x5555555555555556)
      {
        return 0;
      }

      if (v3 <= v4)
      {
        *a1 = v3 - 0x5555555555555556;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1000510D8(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      if (v8 != v7 - 0x5555555555555556)
      {
        return 0;
      }

      if (a3)
      {
        if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_13;
        }

        *a3 = v7;
        a3[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      *a2 |= 0x30000000uLL;
      if (v7 <= v8)
      {
        *a1 = v7 - 0x5555555555555556;
        return 1;
      }
    }

LABEL_13:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_100051350(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null();
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= &_mh_execute_header;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100051420(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_17;
    }

    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_18;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      result = ccder_blob_decode_tl();
      if (result)
      {
        if (a3)
        {
          if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
          {
            goto LABEL_18;
          }

          *a3 = v10;
          a3[1] = 0xAAAAAAAAAAAAAAAALL;
        }

        *a2 |= 0x240000800000uLL;
        v8 = *a1;
        if (*a1 < 0x5555555555555556)
        {
          v9 = v8 - 0x5555555555555556;
          if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
          {
            *a1 = v9;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t *sub_100051574(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = (a4 + 1);
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = (a3 + 1);
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, (v6 + 13));
      if (!result)
      {
        break;
      }

      v10 = (v6 + 21);
      if (!v6[22])
      {
        goto LABEL_13;
      }

      if (v10 > (v6 + 23))
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, (v6 + 21));
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > (v6 + 23))
        {
          goto LABEL_38;
        }

        if (sub_1000519F8((v6 + 21), 1))
        {
          return 0;
        }

        v15 = sub_100051AB4((v6 + 21));
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (v15)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = v11 + 36;
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_1000519F8(uint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100051AB4(uint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          return 327701;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v50 = v6;
  v51 = a4;
  v11 = 0;
  v12 = 0;
  v52 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      return v12 | 0x9000Du;
    }

    if (*(a3 + 16) == 1)
    {
      v22 = sub_1000519F8(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      v22 = sub_100051AB4(v8 + 168);
LABEL_63:
      v15 = v22;
      v52 |= v22 != 0;
      v16 = v22 + 304;
      if (v22)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
      return v12 | 0x9000Du;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        return v12 | v49;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        return v12 | v49;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
      return v12 | v49;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      return v12 | v49;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      return v12 | v49;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        return v12 | 0x9000Au;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      return v12 | 0x90009u;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      return v12 | v49;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, (v8 + 16), v8 + 40, (v8 + 56));
      if (result)
      {
        return result;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v50;
  a4 = v51;
  v23 = v52;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (*a3)
  {
    v24 = v21;
    if ((v23 & 1) == 0 || (v24 = v21 + 1, v21 != -1))
    {
      if (*a3 != v24)
      {
        return (v24 << 8) | 0x90006u;
      }

      goto LABEL_71;
    }

LABEL_134:
    __break(0x5500u);
  }

LABEL_71:
  v25 = *(a3 + 24);
  if (v25 && *(v25 + 8))
  {
    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
    if ((*(a3 + 16) & 1) == 0)
    {
      memset(v54, 170, sizeof(v54));
      v29 = (v27 + 88);
      v30 = v27 >= v28 || v29 > v27 + 104;
      v53[0] = 0xAAAAAAAAAAAAAAAALL;
      v53[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!v30)
      {
        if (X509CertificateParseSPKI(v29, &v54[2], v53, v54))
        {
          goto LABEL_82;
        }

        if (compare_octet_string(&v54[2], *(a3 + 32)) || compare_octet_string(v54, *(a3 + 24)))
        {
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), (v27 + 16), (v27 + 40), (v27 + 56)))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
        {
          compare_octet_string(v53, *(a3 + 40));
        }

        goto LABEL_120;
      }

      goto LABEL_133;
    }
  }

  else
  {
    if (*(a3 + 16) != 1)
    {
      goto LABEL_120;
    }

    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
  }

  if (v27 > v28)
  {
    goto LABEL_133;
  }

  v32 = 200;
  v33 = 184;
  if (v23)
  {
    v32 = 184;
    v33 = 168;
  }

  v34 = v27 + v33;
  v35 = v27 + v33 + 16;
  if (v35 > v27 + v32 || v34 > v35)
  {
    goto LABEL_133;
  }

  v37 = sub_1000519F8(v34, *(a3 + 17));
  if (!v37)
  {
    return v26 | 0x9000Bu;
  }

  v38 = v37;
  v39 = v37 + 304;
  if ((v23 & 1) == 0)
  {
    v40 = v27 + 88 > v27 + 104 || v37 >= v39;
    v41 = v37 + 88;
    if (v40 || v41 > v37 + 104)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v27 + 88, v41))
    {
      goto LABEL_120;
    }
  }

  v43 = (v27 + 16);
  v44 = v38 > v39 || v43 > v27 + 32;
  v45 = v27 + 40;
  v46 = (v27 + 56);
  if (v44 || v45 > v46 || v46 > v27 + 72)
  {
LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  if (X509CertificateCheckSignature(29, v38, v43, v45, v46))
  {
    v31 = 589836;
    return v26 | v31;
  }

LABEL_120:
  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

void sub_10005217C(uint64_t a1, void *a2, const __CFArray *a3)
{
  v5 = a2;
  v6 = 138543618;
  v7 = a1;
  v8 = 2048;
  Count = CFArrayGetCount(a3);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to read temp key: %{public}@; %lu matching sensors", &v6, 0x16u);
}

id sub_100052230(uint64_t a1, void **a2, void **a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098DB0);
  }

  v6 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_10000210C(&_mh_execute_header, v7, v8, "Failed to read temp key: %{public}@; failed to copy event", v9, v10, v11, v12, v15, v16, 2u);
  }

  *a2 = 0;
  sub_10000212C(v6, v7, v8, @"Failed to read temp key: %@; failed to copy event", v9, v10, v11, v12, a1);
  v13 = *a2;
  *a3 = *a2;

  return v13;
}

void sub_100052358(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read temp key: %{public}@; no matching sensors", &v2, 0xCu);
}

id sub_1000523D0(uint64_t a1, void **a2, void **a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098D50);
  }

  v6 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_10000210C(&_mh_execute_header, v7, v8, "Failed to read temp key: %{public}@; failed to create HID event system", v9, v10, v11, v12, v15, v16, 2u);
  }

  *a2 = 0;
  sub_10000212C(v6, v7, v8, @"Failed to read temp key: %@; failed to create HID event system", v9, v10, v11, v12, a1);
  v13 = *a2;
  *a3 = *a2;

  return v13;
}

void sub_100052520(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098DF0);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    [a1 sessionState];
    sub_1000058E4();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HCE Session state: %ld, session already ended", v6, 0xCu);
  }

  *a2 = 0;
}

BOOL sub_100052610(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098E10);
  }

  v2 = qword_1000B84A0;
  *a1 = qword_1000B84A0;
  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_100052678(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098E30);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HCE Session already listening", v3, 2u);
  }

  *a1 = 0;
}

void sub_10005283C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100098FB8);
  }

  v0 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Device does not support NearField", v1, 2u);
  }
}

id sub_1000529B8(uint64_t a1, id *a2, void *a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099058);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v15 = *(*(*a1 + 8) + 40);
    *v16 = 138543362;
    *&v16[4] = v15;
    sub_1000058CC(&_mh_execute_header, v6, v7, "Cannot start card emulation; error: %{public}@", v16);
  }

  v12 = *(*a1 + 8);
  v13 = *(v12 + 40);
  *a2 = v13;
  sub_100016130(a2, 83886082, v13, @"Cannot start emulation", v8, v9, v10, v11, *v16);
  result = *a2;
  *a3 = *(v12 + 40);
  *(v12 + 40) = result;
  return result;
}

void sub_100052BE0(uint64_t a1, uint64_t a2)
{
  sub_1000058F0(a1, a2);
  *v2 = 138543362;
  *v3 = v4;
  sub_1000058CC(&_mh_execute_header, v6, v3, "Failed to read packet with error: %{public}@", v5);
}

void sub_100052C70(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138543362;
  *a2 = 0;
  sub_1000058CC(&_mh_execute_header, a3, a3, "Fatal error: response data is %{public}@; returning 0x6A88", a1);
}

void sub_100052D00(uint64_t a1, uint64_t a2)
{
  sub_1000058F0(a1, a2);
  *v2 = 138412290;
  *v3 = v4;
  sub_1000058CC(&_mh_execute_header, v6, v3, "Failed to send APDU response: %@", v5);
}

void sub_100052DE0(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v3;
  sub_1000058CC(&_mh_execute_header, a2, a3, "HCE listening thread failed to stop card emulation; error: %{public}@", &v4);
}

void sub_100052E6C(void *a1, void *a2)
{
  v3 = a1;
  [a2 code];
  sub_1000058E4();
  sub_1000058CC(&_mh_execute_header, v3, v4, "Failed to serialize response data to command %ld", v5);
}

void sub_100052F10(void *a1, void *a2)
{
  v3 = a1;
  [a2 code];
  sub_1000058E4();
  sub_1000058CC(&_mh_execute_header, v3, v4, "APDU command %ld rejected", v5);
}

void sub_1000531EC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_1000995A8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "An error happened while downloading update asset", v2, v3, v4, v5, 0);
  }
}

void sub_10005326C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_1000995C8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "An error happened while extracting update asset", v2, v3, v4, v5, 0);
  }
}

void sub_1000532EC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_1000995E8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "An error happened while setting up asset file", v2, v3, v4, v5, 0);
  }
}

void sub_10005336C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099608);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "An error happened while spinning loopback server", v2, v3, v4, v5, 0);
  }
}

void sub_1000534DC()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000535D8()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053738()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000537D0()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000539B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 stringByDeletingLastPathComponent];
  sub_10000C4C8();
  sub_10000C4B8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100053B54()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053BEC()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053C84()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053CF4(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099A58);
  }

  if (sub_10000C5AC())
  {
    sub_10000C4B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = 0;
  *a1 = 0;
}

void sub_100053D94(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099A38);
  }

  if (sub_10000C5AC())
  {
    sub_10000C4B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = 0;
  *a1 = 0;
}

void sub_100053EC4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099B78);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no RQ payload", v2, v3, v4, v5, 0);
  }
}

void sub_100053F44()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099B58);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no RQ extended parameters", v2, v3, v4, v5, 0);
  }
}

void sub_100053FC4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099B38);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no RQ basic parameters", v2, v3, v4, v5, 0);
  }
}

void sub_100054044()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099B18);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no service name", v2, v3, v4, v5, 0);
  }
}

void sub_1000540C4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099AF8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no interface name", v2, v3, v4, v5, 0);
  }
}

void sub_100054144()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099AD8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no group port", v2, v3, v4, v5, 0);
  }
}

void sub_1000541C4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099AB8);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no group address", v2, v3, v4, v5, 0);
  }
}

void sub_100054244()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099A98);
  }

  if (sub_10000C538())
  {
    sub_10000C48C(&_mh_execute_header, v0, v1, "Failed to start multicast download, no host port", v2, v3, v4, v5, 0);
  }
}

void sub_1000542C4(void *a1, _BYTE *a2)
{
  v4 = [a1 error];

  if (!v4)
  {
    v10 = sub_1000162A8(0x1000000, 0, @"Failed to receive OS update assets.", v5, v6, v7, v8, v9, v11);
    [a1 setError:v10];
  }

  *a2 = 0;
}

void sub_100054348()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099BD8);
  }

  if (sub_10000C5AC())
  {
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }
}

void sub_100054424()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099BF8);
  }

  if (sub_10000C57C())
  {
    sub_10000C4FC(&_mh_execute_header, v0, v1, "Downloaded asset file does not exist at path: %{public}@", v2, v3, v4, v5, 2u);
  }
}

void sub_1000544E0()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099C78);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C57C())
  {
    v1 = v0;
    archive_error_string();
    sub_1000058E4();
    sub_10000C4FC(&_mh_execute_header, v2, v3, "Failed to set read format with error: %s", v4, v5, v6, v7, v8);
  }
}

void sub_1000545AC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099C98);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C57C())
  {
    v1 = v0;
    archive_error_string();
    sub_1000058E4();
    sub_10000C4FC(&_mh_execute_header, v2, v3, "Failed to set read format with error: %s", v4, v5, v6, v7, v8);
  }
}

void sub_100054678()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099CB8);
  }

  if (sub_10000C57C())
  {
    sub_10000C4FC(&_mh_execute_header, v0, v1, "Failed to open %s", v2, v3, v4, v5, 2u);
  }
}

void sub_10005475C(uint64_t a1, void *a2)
{
  sub_10000C51C(a1, a2);
  v3 = sub_10000C594();
  sub_10000C550(v3, 4.8149e-34);
  sub_10000C4DC(&_mh_execute_header, v4, v5, "Extraction failed with error: %s");
}

void sub_10005484C(uint64_t a1, void *a2)
{
  sub_10000C51C(a1, a2);
  v3 = sub_10000C594();
  sub_10000C550(v3, 4.8149e-34);
  sub_10000C4DC(&_mh_execute_header, v4, v5, "Data copy failed with error: %s");
}

void sub_1000548EC(uint64_t a1, void *a2)
{
  sub_10000C51C(a1, a2);
  v3 = sub_10000C594();
  sub_10000C550(v3, 4.8149e-34);
  sub_10000C4DC(&_mh_execute_header, v4, v5, "Write header failed with error: %s, retrying");
}

void sub_100054964(uint64_t a1, void *a2)
{
  sub_10000C51C(a1, a2);
  v3 = sub_10000C594();
  sub_10000C550(v3, 4.8149e-34);
  sub_10000C4DC(&_mh_execute_header, v4, v5, "Archive write failed with error: %s");
}

void sub_1000549DC(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_100099C58);
  }

  if (sub_10000C5AC())
  {
    LOWORD(v9) = 0;
    sub_10000C4B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  [a1 setError:{a2, v9}];
}

void sub_100054AD4(void *a1)
{
  v2 = a1;
  v8 = [sub_10000EE7C() localizedDescription];
  sub_10000EE6C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100054BAC(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = @"/var/mobile/Library/Logs/com.apple.inboxupdaterd";
  sub_1000058CC(&_mh_execute_header, a1, a3, "DataCollector: container at %@ already exist but is not a directory.", &v3);
}

void sub_100054C8C(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 138412290;
  v5 = v3;
  sub_1000058CC(&_mh_execute_header, a2, a3, "DataCollector: failed to remove container at %@.", &v4);
}

void sub_100054DA8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000058CC(&_mh_execute_header, a3, a3, "DataCollector: data of class %@ ignored because it is not serializable into json", a2);
}

void sub_100054E34(void *a1)
{
  v2 = a1;
  v3 = [sub_10000EE7C() localizedDescription];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100054F54(void *a1)
{
  v2 = a1;
  sub_10000EE7C();
  v3 = [objc_opt_class() description];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100055018(void *a1)
{
  v2 = a1;
  v3 = [sub_10000EE7C() localizedDescription];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000550D8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000058CC(&_mh_execute_header, a3, a3, "DataCollector: failed to save stats: %@", a2);
}

void sub_100055150(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000058CC(&_mh_execute_header, a3, a3, "DataCollector: failed to serialize stats: %@", a2);
}

void sub_1000551C8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000EE7C() localizedDescription];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000552C4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000EE7C() localizedDescription];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100055384(void *a1)
{
  v2 = a1;
  v3 = [sub_10000EE7C() localizedDescription];
  sub_1000058E4();
  sub_10000EE6C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10005548C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  [*(a1 + 32) _stopSessionRestartTimer];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009A600);
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to start session with error: %{public}@", buf, 0xCu);
    }
  }

  else if (([*(a1 + 32) _isHeartbeatMode] & 1) == 0)
  {
    v5 = [*(a1 + 32) session];
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    [v5 startListening:&obj];
    objc_storeStrong((v6 + 40), obj);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100055618()
{
  sub_100014100();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005568C(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A1F0);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [a1 code];
    sub_10000C4FC(&_mh_execute_header, v4, v5, "Unrecognized cmd: %ld, rejecting...", v6, v7, v8, v9, 0);
  }
}

id sub_10005578C(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A250);
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AID %@ not supported", &v7, 0xCu);
  }

  return [a3 setRejected:1];
}

void sub_100055A38(void **a1, void *a2, void **a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A2D0);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v15) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch device boardID", &v15, 2u);
  }

  *a1 = 0;
  sub_1000140E4(a1, v7, v8, @"Failed to fetch device boardID", v9, v10, v11, v12, v15);
  v13 = *a1;
  *a3 = *a1;
  v14 = v13;
}

id sub_100055B08(void **a1, void **a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A2B0);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to fetch device ecid", &v13, 2u);
  }

  *a1 = 0;
  sub_1000140E4(a1, v5, v6, @"Failed to fetch device ecid", v7, v8, v9, v10, v13);
  v11 = *a1;
  *a2 = *a1;

  return v11;
}

void sub_100055D84(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A4B0);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v8 = HIDWORD(*a1);
    sub_10000C4FC(&_mh_execute_header, v2, v3, "Failed initial termination of HCE session on Heartbeat; error: %{public}@", v4, v5, v6, v7, 2u);
  }
}

void sub_100055F14()
{
  sub_100014100();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056014(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ already terminated, not starting session restart timer", a2, 0xCu);
}

void sub_100056888(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 absoluteString];
  v7 = [v6 stringByRemovingPercentEncoding];
  v8 = 138543618;
  v9 = v7;
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot read data from %{public}@ - %{public}@.", &v8, 0x16u);
}

void sub_100056958(void *a1, void *a2, void *a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A8B8);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [a1 absoluteString];
    v9 = [v8 stringByRemovingPercentEncoding];
    v10 = 138543362;
    v11 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot read file %{public}@", &v10, 0xCu);
  }

  *a3 = 0;
  *a2 = 0;
}

void sub_100056B8C(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 1024;
  v5 = 0;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ SMC Key is not supported: %{BOOL}d", &v2, 0x12u);
}

void sub_100056C60(uint64_t a1, int a2, void *a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A9F8);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v13 = a1;
    v14 = 1024;
    v15 = a2;
    v16 = 1024;
    v17 = 120;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Key %{public}@ has size %d which exceeds maximum expected size of %d", buf, 0x18u);
  }

  sub_100016100(a3, 2u, v7, @"Key %@ has size %d which exceeds maximum expected size of %d", v8, v9, v10, v11, a1);
}

void sub_100056DA4(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009A9B8);
  }

  if (sub_10000C5AC())
  {
    sub_1000160D4();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  sub_100016100(a2, 3u, v4, @"Failed to read SMC key: %@; no open SMC connection", v5, v6, v7, v8, a1);
}

void sub_100056EDC(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AA58);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v13 = a1;
    v14 = 2114;
    v15 = a2;
    v16 = 1024;
    v17 = 32;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to write key: %{public}@; data %{public}@ exceeds maximum allowed length: %d", buf, 0x1Cu);
  }

  sub_100016100(a3, 4u, v7, @"Failed to write key: %@; data %@ exceeds maximum allowed length: %d", v8, v9, v10, v11, a1);
}

void sub_100056FFC()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AAF8);
  }

  v1 = sub_10000C5AC();
  if (v1)
  {
    sub_100016124();
    sub_1000160D4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 8u);
  }

  sub_1000160E4(v1, v2, v3, @"Failed to send user client open command to SMC; ret: %d", v4, v5, v6, v7, v0);
}

void sub_1000570D4()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AAD8);
  }

  v1 = sub_10000C5AC();
  if (v1)
  {
    sub_100016124();
    sub_1000160D4();
    _os_log_error_impl(v8, v9, v10, v11, v12, 8u);
  }

  sub_1000160E4(v1, v2, v3, @"Failed to open service port to SMC; ret: %d", v4, v5, v6, v7, v0);
}

void sub_1000571AC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AAB8);
  }

  v0 = qword_1000B84A0;
  v1 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v1)
  {
    *buf = 136315138;
    v9 = "AppleSMC";
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to find matching io service to %s", buf, 0xCu);
  }

  sub_1000160E4(v1, v2, v3, @"Failed to find matching io service to %s", v4, v5, v6, v7, "AppleSMC");
}

void sub_1000572A0()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AB18);
  }

  if (sub_10000C5AC())
  {
    sub_100016124();
    sub_1000160D4();
    _os_log_error_impl(v7, v8, v9, v10, v11, 8u);
  }

  sub_100016100(v0, 5u, v2, @"Failed to send user client close command to SMC; ret: %d", v3, v4, v5, v6, v1);
}

void sub_100057380()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AB38);
  }

  if (sub_10000C5AC())
  {
    sub_100016124();
    sub_1000160D4();
    _os_log_error_impl(v7, v8, v9, v10, v11, 8u);
  }

  sub_100016100(v0, 5u, v2, @"Failed to close service port to SMC; ret: %d", v3, v4, v5, v6, v1);
}

void sub_10005749C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown op code %lu", &v2, 0xCu);
}

uint64_t sub_100057514(id a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100017760();
  if (!v7)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AC98);
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100017784();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Verifying tag: %c%c%c%c of type: 0x%x...", buf, 0x20u);
  }

  if (!a4)
  {
    return 22;
  }

  if (a1 == 1162037572 && !a3)
  {
    MGCopyAnswer();
    sub_1000177B4();
    PropertyInteger64 = Img4DecodeGetPropertyInteger64();
    if (!PropertyInteger64)
    {
      v10 = sub_100017864();
      v11 = *a4 & 0xFFFFFFFE;
      if (a1 == v10)
      {
        ++v11;
      }

      *a4 = v11;
      if (a1 == v10)
      {
        goto LABEL_40;
      }

      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009ACD8);
      }

      v12 = qword_1000B84A0;
      if (!sub_10000C57C())
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009ACB8);
    }

    if (!sub_10000C57C())
    {
      goto LABEL_40;
    }

    *buf = 0;
    goto LABEL_117;
  }

  if (a1 == 1128810832 && !a3)
  {
    MGCopyAnswer();
    sub_1000177B4();
    PropertyInteger64 = Img4DecodeGetPropertyInteger64();
    if (!PropertyInteger64)
    {
      v13 = sub_100017864();
      *a4 = *a4 & 0xFFFFFFFD | (2 * (a1 == v13));
      if (a1 == v13)
      {
        goto LABEL_40;
      }

      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009AD18);
      }

      v12 = qword_1000B84A0;
      if (!sub_10000C57C())
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009ACF8);
    }

    if (!sub_10000C57C())
    {
      goto LABEL_40;
    }

    *buf = 0;
LABEL_117:
    sub_100017738();
    v40 = 2;
    goto LABEL_83;
  }

  if (a1 == 1112494660 && !a3)
  {
    MGCopyAnswer();
    sub_1000177B4();
    PropertyInteger64 = Img4DecodeGetPropertyInteger64();
    if (PropertyInteger64)
    {
      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009AD38);
      }

      if (!sub_10000C57C())
      {
        goto LABEL_40;
      }

      *buf = 0;
      goto LABEL_117;
    }

    v14 = sub_100017864();
    *a4 = *a4 & 0xFFFFFFFB | (4 * (a1 == v14));
    if (a1 == v14)
    {
      goto LABEL_40;
    }

    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009AD58);
    }

    v12 = qword_1000B84A0;
    if (!sub_10000C57C())
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a1 == 1396985677 && !a3)
  {
    MGCopyAnswer();
    sub_1000177B4();
    PropertyInteger64 = Img4DecodeGetPropertyInteger64();
    if (PropertyInteger64)
    {
      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009AD78);
      }

      if (!sub_10000C57C())
      {
        goto LABEL_40;
      }

      *buf = 0;
      goto LABEL_117;
    }

    v15 = sub_100017864();
    *a4 = *a4 & 0xFFFFFFF7 | (8 * (a1 == v15));
    if (a1 == v15)
    {
      goto LABEL_40;
    }

    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009AD98);
    }

    v12 = qword_1000B84A0;
    if (!sub_10000C57C())
    {
      goto LABEL_40;
    }

LABEL_39:
    v16 = v12;
    sub_10001784C();
    sub_100017748();
    sub_100017738();
    _os_log_error_impl(v17, v18, v19, v20, v21, 0x16u);

LABEL_40:
    return PropertyInteger64;
  }

  if (a1 != 1129337423 || a3)
  {
    if (a1 == 1129530691 && !a3)
    {
      v24 = MGGetBoolAnswer();
      PropertyInteger64 = Img4DecodeGetPropertyBoolean();
      if (!PropertyInteger64)
      {
        *a4 = *a4 & 0xFFFFFFDF | (32 * (v24 == 0));
        if (v24)
        {
          sub_100017760();
          if (!v7)
          {
            dispatch_once(qword_1000B84A8, &stru_10009AE18);
          }

          if (sub_10000C57C())
          {
            goto LABEL_57;
          }
        }

        return PropertyInteger64;
      }

      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009ADF8);
      }

      if (!sub_10000C57C())
      {
        return PropertyInteger64;
      }

      *buf = 0;
LABEL_126:
      sub_100017738();
      v30 = 2;
      goto LABEL_58;
    }

    if (a1 != 1112425288 || a3)
    {
      if (a1 != 1936617326 || a3)
      {
        if (a1 == 1701405301 && !a3)
        {
          sub_10001776C();
          PropertyInteger64 = Img4DecodeGetPropertyData();
          if (PropertyInteger64)
          {
            sub_100017760();
            if (!v7)
            {
              dispatch_once(qword_1000B84A8, &stru_10009AEF8);
            }

            if (sub_10000C57C())
            {
              *buf = 0;
              sub_100017738();
              _os_log_error_impl(v56, v57, v58, v59, v60, 2u);
            }

            v41 = 0;
            a3 = 0;
          }

          else
          {
            a3 = [NSData dataWithBytes:v62 length:v61];
            v41 = [[NSString alloc] initWithData:a3 encoding:4];
            v42 = [v41 isEqualToString:@"1"];
            if (v42)
            {
              v43 = 256;
            }

            else
            {
              v43 = 0;
            }

            *a4 = *a4 & 0xFFFFFEFF | v43;
            if ((v42 & 1) == 0)
            {
              sub_100017760();
              if (!v7)
              {
                dispatch_once(qword_1000B84A8, &stru_10009AF18);
              }

              if (sub_10000C57C())
              {
                *buf = 138543362;
                v64 = v41;
                sub_100017738();
                _os_log_error_impl(v45, v46, v47, v48, v49, 0xCu);
              }
            }
          }

          goto LABEL_40;
        }

        sub_100017760();
        if (!v7)
        {
          dispatch_once(qword_1000B84A8, &stru_10009AF38);
        }

        v44 = qword_1000B84A0;
        PropertyInteger64 = 0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100017784();
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Ignoring tag: %c%c%c%c of type: 0x%x...", buf, 0x20u);
          return 0;
        }

        return PropertyInteger64;
      }

      sub_10001776C();
      PropertyInteger64 = Img4DecodeGetPropertyData();
      if (!PropertyInteger64)
      {
        if (v61 == 20)
        {
          a3 = [NSData dataWithBytes:v62 length:20];
          v33 = [a3 isEqualToData:qword_1000B83B8];
          if (v33)
          {
            v34 = 128;
          }

          else
          {
            v34 = 0;
          }

          *a4 = *a4 & 0xFFFFFF7F | v34;
          if (v33)
          {
            goto LABEL_40;
          }

          sub_100017760();
          if (!v7)
          {
            dispatch_once(qword_1000B84A8, &stru_10009AED8);
          }

          if (!sub_10000C57C())
          {
            goto LABEL_40;
          }

LABEL_82:
          sub_100017818();
          sub_100017738();
          v40 = 22;
LABEL_83:
          _os_log_error_impl(v35, v36, v37, v38, v39, v40);
          goto LABEL_40;
        }

        sub_100017760();
        if (!v7)
        {
          dispatch_once(qword_1000B84A8, &stru_10009AEB8);
        }

        if (sub_10000C57C())
        {
          goto LABEL_143;
        }

        goto LABEL_145;
      }

      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009AE98);
      }

      if (!sub_10000C57C())
      {
        goto LABEL_145;
      }

      *buf = 0;
    }

    else
    {
      sub_10001776C();
      PropertyInteger64 = Img4DecodeGetPropertyData();
      if (!PropertyInteger64)
      {
        if (v61 == 32)
        {
          a3 = [NSData dataWithBytes:v62 length:32];
          v31 = [a3 isEqualToData:qword_1000B83B0];
          if (v31)
          {
            v32 = 64;
          }

          else
          {
            v32 = 0;
          }

          *a4 = *a4 & 0xFFFFFFBF | v32;
          if (v31)
          {
            goto LABEL_40;
          }

          sub_100017760();
          if (!v7)
          {
            dispatch_once(qword_1000B84A8, &stru_10009AE78);
          }

          if (!sub_10000C57C())
          {
            goto LABEL_40;
          }

          goto LABEL_82;
        }

        sub_100017760();
        if (!v7)
        {
          dispatch_once(qword_1000B84A8, &stru_10009AE58);
        }

        if (sub_10000C57C())
        {
LABEL_143:
          sub_1000177E4();
          sub_100017738();
          v55 = 14;
          goto LABEL_144;
        }

LABEL_145:
        a3 = 0;
        goto LABEL_40;
      }

      sub_100017760();
      if (!v7)
      {
        dispatch_once(qword_1000B84A8, &stru_10009AE38);
      }

      if (!sub_10000C57C())
      {
        goto LABEL_145;
      }

      *buf = 0;
    }

    sub_100017738();
    v55 = 2;
LABEL_144:
    _os_log_error_impl(v50, v51, v52, v53, v54, v55);
    goto LABEL_145;
  }

  v23 = MGGetBoolAnswer();
  PropertyInteger64 = Img4DecodeGetPropertyBoolean();
  if (PropertyInteger64)
  {
    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009ADB8);
    }

    if (!sub_10000C57C())
    {
      return PropertyInteger64;
    }

    *buf = 0;
    goto LABEL_126;
  }

  *a4 = *a4 & 0xFFFFFFEF | (16 * (v23 == 0));
  if (v23)
  {
    sub_100017760();
    if (!v7)
    {
      dispatch_once(qword_1000B84A8, &stru_10009ADD8);
    }

    if (sub_10000C57C())
    {
LABEL_57:
      sub_100017800();
      sub_100017738();
      v30 = 14;
LABEL_58:
      _os_log_error_impl(v25, v26, v27, v28, v29, v30);
    }
  }

  return PropertyInteger64;
}

void sub_100058190(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AC18);
  }

  v2 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    v9[0] = 67109120;
    v9[1] = a1;
    sub_100017830(&_mh_execute_header, v3, v4, "Failed to parse tatsu ticket as Img4 manifest; status: %d", v9);
  }

  sub_1000177C4(v2, v3, v4, @"Failed to parse tatsu ticket as Img4 manifest; status: %d", v5, v6, v7, v8, a1);
}

void sub_100058274(int a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AC38);
  }

  v2 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = a1;
    sub_100017830(&_mh_execute_header, v3, v4, "Failed to verify tatsu ticket; status: %d", &v9);
  }

  sub_1000177C4(v2, v3, v4, @"Failed to verify tatsu ticket", v5, v6, v7, v8, v9);
}

void sub_100058354(unsigned int *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AC58);
  }

  v2 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    v9 = *a1;
    v10[0] = 67109120;
    v10[1] = v9;
    sub_100017830(&_mh_execute_header, v3, v4, "Tatsu ticket failed verification, verify flags are 0x%x", v10);
  }

  sub_1000177C4(v2, v3, v4, @"Tatsu ticket failed verification, verify flags are 0x%x", v5, v6, v7, v8, *a1);
}

void sub_10005847C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009AFE0);
  }

  v0 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to connect to wifi", v1, 2u);
  }
}

void sub_100058664(void *a1)
{
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to synchronize with CFPreferences.", &v3, 0xCu);
}

id sub_1000587C0()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B260);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v2 = v0;
    sub_10001CB38();
    sub_1000058E4();
    sub_10000C4B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  return sub_10001CB50();
}

id sub_100058898()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B280);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v2 = v0;
    sub_10001CB38();
    sub_1000058E4();
    sub_10000C4B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  return sub_10001CB50();
}

id sub_100058970()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B2A0);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v2 = v0;
    sub_10001CB38();
    sub_1000058E4();
    sub_10000C4B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  return sub_10001CB50();
}

id sub_100058A48()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B240);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v2 = v0;
    sub_10001CB38();
    sub_1000058E4();
    sub_10000C4B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  return sub_10001CB50();
}

void sub_100058DAC(void **a1, void *a2, void **a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B3C0);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v15) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch device boardID", &v15, 2u);
  }

  *a1 = 0;
  sub_1000140E4(a1, v7, v8, @"Failed to fetch device boardID", v9, v10, v11, v12, v15);
  v13 = *a1;
  *a3 = *a1;
  v14 = v13;
}

id sub_100058E7C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B3A0);
  }

  if (sub_10000C5AC())
  {
    LOWORD(v15) = 0;
    sub_10000C4B8();
    _os_log_error_impl(v10, v11, v12, v13, v14, 2u);
  }

  *v1 = 0;
  sub_1000140E4(v1, v2, v3, @"Failed to fetch device ecid", v4, v5, v6, v7, v15);
  v8 = *v1;
  *v0 = *v1;

  return v8;
}

void sub_100058FDC(void **a1, void *a2, void **a3)
{
  *a1 = 0;
  v5 = [a2 delegate];
  v6 = [v5 deviceStatus];
  v7 = [v6 state];
  sub_100016130(a1, 2147483651, 0, @"Device is not ready for SS update in state %ld", v8, v9, v10, v11, v7);
  v12 = *a1;
  *a3 = *a1;
  v13 = v12;
}

void sub_1000596E8(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B6E8);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10001E210(&_mh_execute_header, v4, v5, "Certificate file %{public}@ does not exist", v6, v7, v8, v9, v10, v11, 2u);
  }

  sub_100016130(a2, 50331649, 0, @"%@ does not exist", v6, v7, v8, v9, a1);
}

void sub_1000597D8(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B708);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10001E210(&_mh_execute_header, v4, v5, "Failed to load %{public}@", v6, v7, v8, v9, v10, v11, 2u);
  }

  sub_100016130(a2, 50331648, 0, @"Failed to load %@", v6, v7, v8, v9, a1);
}

void sub_100059AF0(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B908);
  }

  v4 = qword_1000B84A0;
  v5 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    v12 = v4;
    v13 = objc_opt_class();
    sub_1000160D4();
    _os_log_error_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  *a2 = 0;
  sub_10001F598(v5, v6, v7, @"Entitlement %@ invalid", v8, v9, v10, v11, a1);
}

void sub_100059C10(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B928);
  }

  v4 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    sub_1000160D4();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0xCu);
  }

  *a2 = 0;
  sub_10001F598(v4, v5, v6, @"Entitlement %@ is FALSE", v7, v8, v9, v10, a1);
}

void sub_100059CFC(uint64_t a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B8E8);
  }

  v4 = os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    sub_1000160D4();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0xCu);
  }

  *a2 = 0;
  sub_10001F598(v4, v5, v6, @"Entitlement %@ not found", v7, v8, v9, v10, a1);
}

void sub_100059DE8(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B8C8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v7) = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to get XPC connection for entitlement check", &v7, 2u);
  }

  *a1 = 0;
  sub_100016130(a1, 2415919104, 0, @"Failed to get XPC connection", v3, v4, v5, v6, v7);
}

void sub_10005AFF4(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009BCA8);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to connect to wifi", v5, 2u);
  }

  [a1 _softwareUpdateCompleteWithError:a2];
}

void sub_10005B0D4(id *a1, int a2, id *location)
{
  objc_storeStrong(location, *a1);
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009BCC8);
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Software Update cancelled, not starting SU download", v4, 2u);
  }
}

void sub_10005B188()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B220()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B330()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B3DC()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B474()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B818(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cmd: %@ is not allowed at state: %lu, rejecting...", buf, 0x16u);
}

void sub_10005B8E8(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unexpectedly received didStopHeartbeat delegate in state :%ld", buf, 0xCu);
}

void sub_10005BA20(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009C3B8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [a1 state];
    sub_1000274E8();
    sub_100027500(&_mh_execute_header, v4, v5, "Not allowed to transition from state %lu to state %lu", v6, v7, v8, v9, v10);
  }
}

void sub_10005BB00(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009C398);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [a1 state];
    sub_1000274E8();
    sub_100027500(&_mh_execute_header, v4, v5, "Unrecognized device state %lu; cannot transition to %lu", v6, v7, v8, v9, v10);
  }
}

void sub_10005BC1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 state];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unrecognized state: %lu; fatal error", &v4, 0xCu);
}

id sub_10005BD6C(char a1, int a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(qword_1000B84A8, &stru_10009C4F8);
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to acquire power assertion with status: 0x%x", v7, 8u);
  }

  return [a3 setPowerAssertionID:0];
}

void sub_10005BE80(int a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009C558);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to release power assertion with status: 0x%x", v3, 8u);
  }
}

void sub_10005C098(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138543362;
  v4 = a1;
  sub_1000058CC(&_mh_execute_header, a2, a3, "Failed to activate bluetooth advertiser; error: %{public}@", &v3);
}

void sub_10005C270(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138543362;
  v4 = a1;
  sub_1000058CC(&_mh_execute_header, a2, a3, "Failed to activate bluetooth server with error: %{public}@", &v3);
}

void sub_10005C344(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 600;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Read request timed out after %ds", buf, 8u);
}

void sub_10005C3B8(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v4 = *(*a2 + 40);
  *a1 = 138543362;
  *a3 = v4;
  sub_1000058CC(&_mh_execute_header, a4, a3, "Failed to read from BT connection: %{public}@", a1);
}

void sub_10005C4CC(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 120;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Write request timed out after %ds", buf, 8u);
}

void sub_10005C540(void *a1, id *a2)
{
  v3 = a1;
  WeakRetained = objc_loadWeakRetained(a2);
  v5 = [WeakRetained error];
  v7 = 138543362;
  v8 = v5;
  sub_1000058CC(&_mh_execute_header, v3, v6, "Failed to send data over bluetooth; error: %{public}@", &v7);
}

void sub_10005C630(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "+[MIBUDefaultPreferences setObject:forKey:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Failed to set value %{public}@ for key %{public}@", &v3, 0x20u);
}

void sub_10005D1D8()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005D35C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CD98);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10002FDE4();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_10005D3EC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CD78);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10002FDE4();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_10005D47C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CD58);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FDE4();
    _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
  }
}

void sub_10005D524()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CDD8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_10005D5E8()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CDF8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_10005D6C0()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CE38);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_10005D834()
{
  sub_10002FDA4();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CED8);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD48();
    sub_10002FD74(&_mh_execute_header, v0, v1, "Failed notify_register_check for %s; status=0x%X", v2, v3, v4, v5, v6);
  }

  sub_10002FD94();
}

void sub_10005D8FC()
{
  sub_10002FDA4();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CEF8);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD48();
    sub_10002FD74(&_mh_execute_header, v0, v1, "Failed notify_get_state for %s; status=x%X", v2, v3, v4, v5, v6);
  }

  sub_10002FD94();
}

void sub_10005D9C4()
{
  sub_10002FDA4();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CF18);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD48();
    sub_10002FD74(&_mh_execute_header, v0, v1, "Failed notify_cancel for %s; status =0x%X", v2, v3, v4, v5, v6);
  }

  sub_10002FD94();
}

void sub_10005DADC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CF78);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_10005DBA0()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CF58);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_10005DCDC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set LPM mode reason: %@", buf, 0xCu);
}

void sub_10005DD34()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009CFD8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_10005DE48()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DEE0()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DFA0(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D1F8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10005E030()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D218);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FDE4();
    _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
  }
}

void sub_10005E224()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005E2A8()
{
  sub_1000058E4();
  sub_10000C4AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005E528(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Command %@ is not allowed at state %ld, rejecting...", buf, 0x16u);
}

void sub_10005E580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D498);
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = a1;
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: Received command %ld, got error when handling it: %@", &v7, 0x20u);
  }
}

void sub_10005E6A4(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D4D8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [a1 state];
    sub_1000274E8();
    sub_100027500(&_mh_execute_header, v4, v5, "Not allowed to transition from state %lu to state %lu", v6, v7, v8, v9, v10);
  }
}

void sub_10005E784(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D4B8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [a1 state];
    sub_1000274E8();
    sub_100027500(&_mh_execute_header, v4, v5, "Unrecognized device state %lu; cannot transition to %lu", v6, v7, v8, v9, v10);
  }
}

id sub_10005EA2C(char a1, int a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D698);
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to acquire power assertion with status: 0x%x", v7, 8u);
  }

  return [a3 setPowerAssertionID:0];
}

void sub_10005EB40(int a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D6F8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to release power assertion with status: 0x%x", v3, 8u);
  }
}

BOOL sub_10005EC60(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D778);
  }

  v2 = qword_1000B84A0;
  *a1 = qword_1000B84A0;
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_10005ECC8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ is currently monitoring network connection", a2, 0xCu);
}

void sub_10005EDAC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D888);
  }

  v0 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "WiFi Retry operation already in progress", v1, 2u);
  }
}