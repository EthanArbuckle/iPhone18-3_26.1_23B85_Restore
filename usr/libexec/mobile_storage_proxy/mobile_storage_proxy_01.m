uint64_t sub_100010FDC(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011028(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011074(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000110C0(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001110C(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011158(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000111A4(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000111F0(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001123C(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011288(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000112D4(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !sub_1000114BC(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = &_mh_execute_header;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = sub_100010C44(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            LODWORD(v17) = v17 + 1;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_1000114BC(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = sub_100011BB0(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100011724(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_1000114BC(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = sub_100010C44(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t sub_10001189C(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000118E8(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011950(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000119E8(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100011AD4(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t sub_100011BB0(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

void sub_100011DF8(uint64_t a1)
{
  v1 = *(*a1 + 24);
  v2[0] = 67109120;
  v2[1] = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to checkin with lockdown: 0x%08x", v2, 8u);
}

void sub_100011E80(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(*(*a1 + 8) + 24);
  v4 = *a2;
  v5[0] = 67109632;
  v5[1] = a3;
  v6 = 2048;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received bytes: %d %% (%ld/%ld).", v5, 0x1Cu);
}

void sub_100011F24()
{
  v0[0] = 67109120;
  v0[1] = 20;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Resetting remote services timed out after %d seconds.", v0, 8u);
}

void sub_100011FF0()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = *__error();
    v1 = __error();
    v2 = strerror(*v1);
    *buf = 67109378;
    v10 = v0;
    v11 = 2080;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to set temporary directory subpath: %d (%s)", buf, 0x12u);
  }

  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100008A30("main", 28, -2, 0, @"Failed to set temporary directory subpath: %d (%s)", v5, v6, v7, v3);
  v8 = [objc_claimAutoreleasedReturnValue() description];
  [v8 UTF8String];
  _os_crash();

  __break(1u);
}

void sub_1000120D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100008A30("main", 41, -2, a1, @"Failed to create %@.", a6, a7, a8, a2);

  v10 = [v9 description];
  [v10 UTF8String];
  _os_crash();

  __break(1u);
}

void sub_100012174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100008A30("main", 36, -2, 0, @"Failed to query working directory.", a6, a7, a8, v9);
  v8 = [objc_claimAutoreleasedReturnValue() description];
  [v8 UTF8String];
  _os_crash();

  __break(1u);
}

void sub_1000121C8(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Skipping %@, as we didn't mount it.", buf, 0xCu);
}

void sub_100012214(uint64_t a1, uint64_t a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to load version dictionary at %@ (image version: %@).", &v2, 0x16u);
}

void sub_1000122A0(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "The attached media %@ is not removable, ignoring.", buf, 0xCu);
}

void sub_1000122EC(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "The attached media %@ is not a leaf, ignoring.", buf, 0xCu);
}

void sub_100012338(uint8_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  *a2 = 0;
  sub_10000CE78(&_mh_execute_header, &_os_log_default, a3, "Ignoring Apple_partition_map partition.", a1);
}

void sub_100012374(uint8_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  *a2 = 0;
  sub_10000CE78(&_mh_execute_header, &_os_log_default, a3, "Ignoring EFI partition.", a1);
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_10000E658();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (sub_10000E66C(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          sub_10000E66C();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E658();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          sub_10000E66C();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000E658();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      return;
    }

    v10 = sub_10000F8F4();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v11, v10))
    {
      a3 = **(a4 + 32);
      v6 = v11;
      v7 = a2;
      goto LABEL_15;
    }
  }
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        return 7;
      }

      else if (*(a1 + 1) == 1)
      {
        sub_10000F998(a1, (a1 + 328));
        return 0;
      }

      else
      {
        v6 = sub_10000F8F4();
        v10 = v9(v8, *(v7 + 32), v12, a3, v6);
        v4 = v10;
        if (!v10)
        {
          sub_10000F998(v10, v12);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  sub_10000F978(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v6);
      if (!result)
      {
        *v1 = v7 != 0;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  sub_10000F978(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v7);
      if (!result)
      {
        if (v8)
        {
          result = 0;
          v6 = v9;
          *v1 = v8;
          v1[1] = v6;
          return result;
        }

        return 6;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      return 7;
    }

    else if (a4 && *a4)
    {
      v7 = sub_10000F8F4();
      result = v9(*v8, v8[1], v10, a3, v7);
      if (!result)
      {
        sub_10000F998(result, v10);
        return 0;
      }
    }
  }

  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
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

void Img4DecodeGetPayloadPropertiesBoolean()
{
  sub_10000F8F4();
  sub_10000F9B0(v0, v1, 1uLL, &v5, 0);
  if (!v2)
  {
    v3 = sub_10000F94C();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  sub_10000F8F4();
  sub_10000F958(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = sub_10000F94C();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  sub_10000F8F4();
  sub_10000F958(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = sub_10000F94C();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_10000F8F4();
  sub_10000F9B0(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  sub_10000F8F4();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = sub_10000F94C();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000F904(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = sub_10000F93C(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000F904(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = sub_10000F93C(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = sub_10000F93C(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v16, 0x100uLL);
        v10[0] = Img4DecodeDigestInit;
        v10[1] = Img4DecodeDigestUpdate;
        v10[2] = Img4DecodeDigestReturnHash;
        *&v13 = &unk_100017AD8;
        *(&v13 + 1) = 156;
        v14 = a3;
        v15 = v10;
        sub_10000FAFC(a1, &v13);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v11[0] = &v13;
              v11[1] = a2;
              v11[2] = a1;
              v12 = &v17;
              if (!(*v15)(*(v14 + 32), &v12) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, sub_10000F7E4, v11))
              {
                v9 = (v15[2])(*(v14 + 32), &v12, 48, v16);
                if (!v9)
                {
                  sub_10000F998(v9, v16);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  bzero(v19, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (sub_10000F5E8(a3, a4, 1, v19, 1229796419) || (*a9)(v20, v21, v24, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v22, v23, v24, **(a9 + 32), a9, a10))
    {
      return 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v20, v21, a7, a8, a5, a6))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v12 = *v11;
                    if (a2 != 2592 || v12 != a6)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    if (!&_ccmldsa87)
                    {
                      return 4;
                    }

                    ccmldsa87();
                    bzero(&v14, 0xA28uLL);
                    if (!&_ccmldsa_import_pubkey)
                    {
                      return 4;
                    }

                    result = ccmldsa_import_pubkey();
                    if (result)
                    {
                      return result;
                    }

                    if (!&_ccmldsa_verify)
                    {
                      return 4;
                    }

                    return ccmldsa_verify();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      sub_100011D04();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        sub_100011D04();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  sub_100011D04();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}