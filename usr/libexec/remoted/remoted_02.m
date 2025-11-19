uint64_t sub_1000366BC(unint64_t *a1, unint64_t *a2, void *a3)
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

uint64_t sub_100036780(unint64_t *a1, unint64_t *a2, void *a3)
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

uint64_t sub_100036890(unint64_t *a1, unint64_t *a2, void *a3)
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

uint64_t sub_100036964(uint64_t result, uint64_t a2, unsigned int a3)
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

uint64_t sub_1000369F0(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
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

        return sub_100037590(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = sub_1000362D8(result, 0, &v57);
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

        return sub_1000376CC(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return sub_10003787C(result);
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

              return sub_100037CB0(result, a4, a5);
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

            return sub_100037968(result, a4, a5);
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

            return sub_100037A4C();
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

    return sub_100037BE0(result, a2, a3, a4, a5);
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

  return sub_100037E04(result, a4, a5);
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

BOOL sub_100037590(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t sub_1000376CC(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t sub_10003787C(unint64_t *a1)
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

uint64_t sub_100037968(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t sub_100037BE0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
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

uint64_t sub_100037CB0(unint64_t *a1, void *a2, unint64_t *a3)
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

unint64_t *sub_100037E04(unint64_t *result, void *a2, unint64_t *a3)
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

void sub_100037E64(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100037EFC(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100037F94(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "rsd_events publisher received error %d\n", v2, 8u);
}

void sub_10003800C(os_log_t log)
{
  v1 = 138543362;
  v2 = @"com.apple.pcc.research.disableAppleInfrastructureEnforcement";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SecureConfig parameter '%{public}@' has unexpected type", &v1, 0xCu);
}

void sub_100038090(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load SecureConfig parameters: %{public}@", &v2, 0xCu);
}

void sub_100038244(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000382F0(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "inet_pton: %{darwin.errno}d", v3, 8u);
}

void sub_1000383A0(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100038500()
{
  sub_100006610();
  v3 = 2082;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "nw_interface created with %{public}s, but we expect to use %{public}s", v2, 0x16u);
}

void sub_1000388D0(uint64_t a1, NSObject *a2)
{
  [*(a1 + 40) device_name];
  sub_100006610();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "listener ready with no port for device: %{public}s", v3, 0xCu);
}

void sub_10003895C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 2114;
  *(&v4 + 2) = a1;
  sub_100006638(&_mh_execute_header, a2, a3, "nw_listener state %d received error: %{public}@", v3, v4, WORD4(v4));
}

void sub_100038A3C()
{
  sub_100006610();
  sub_10000FBB4();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100038ABC(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100038B50(void *a1)
{
  v2 = a1;
  [sub_10000FC7C() name];
  sub_100006610();
  sub_10000FBE0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100038BDC(void *a1, void *a2)
{
  v3 = a1;
  [a2 name];
  v4 = sub_10000FC7C();
  xpc_type_get_name(v4);
  sub_10000FB1C();
  sub_10000FB78(&_mh_execute_header, v5, v6, "RemoteService definition '%s' has unsupported expose policy type '%s'", v7, v8, v9, v10, v11);
}

void sub_100038C78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 name];
  v4 = sub_10000FC7C();
  type = xpc_get_type(v4);
  xpc_type_get_name(type);
  sub_10000FB1C();
  sub_10000FB78(&_mh_execute_header, v6, v7, "RemoteService definition '%s' has \t\t\t\t\t\t\tunsupported expose policy item type '%s'", v8, v9, v10, v11, v12);
}

void sub_100038D18(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100038D84(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100038DF0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  v2 = __error();
  strerror(*v2);
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100038E78()
{
  sub_100006610();
  sub_10000FBB4();
  sub_10000FBC0(&_mh_execute_header, v0, v1, "%{public}@> Properties: %s");
}

void sub_100038EE8()
{
  sub_100006610();
  sub_10000FBB4();
  sub_10000FBC0(&_mh_execute_header, v0, v1, "%{public}@> Public Properties: %s");
}

void sub_100038F58(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100038FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_10000FC7C() state];
  sub_10000FBE0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100039198(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100039220(uint64_t *a1, _OWORD *a2, id *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  [*a3 state];
  sub_10000FBF0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000392E0(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Got an unexpected message after handshake.", v3, v4, v5, v6, v7);
}

void sub_100039348(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a goodbye request expecting no reply", v3, v4, v5, v6, v7);
}

void sub_1000393B0(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a timesync request expecting no reply", v3, v4, v5, v6, v7);
}

void sub_100039418(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> create_sntp_response_payload failed", v3, v4, v5, v6, v7);
}

void sub_100039480(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a timesync request without payload", v3, v4, v5, v6, v7);
}

void sub_1000394E8(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a heartbeat request expecting no reply", v3, v4, v5, v6, v7);
}

void sub_100039550(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a message with no type", v3, v4, v5, v6, v7);
}

void sub_1000395B8(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Got an unexpected message after handshake from a version 0 peer", v3, v4, v5, v6, v7);
}

void sub_100039620(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Got an unexpected message during TLS negotiation.", v3, v4, v5, v6, v7);
}

void sub_100039688(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> Received a handshake message with a wrong or missing type", v3, v4, v5, v6, v7);
}

void sub_1000396F0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003972C(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000FBB4();
  sub_10000FBC0(&_mh_execute_header, v1, v2, "%{public}@> Properties: %s");
}

void sub_10003979C(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000FBB4();
  sub_10000FBC0(&_mh_execute_header, v1, v2, "%{public}@> Public Properties: %s");
}

void sub_10003980C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v2, v3, "%{public}@> Unexpected type for service in handshake message.", v4, v5, v6, v7, v8);
}

void sub_100039878(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000FC10(&_mh_execute_header, v1, v2, "%{public}@> Skipping remote service %{public}s because backend rejected it");
}

void sub_1000398EC(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000FC10(&_mh_execute_header, v1, v2, "%{public}@> Skipping remote service %{public}s with invalid description");
}

void sub_100039960()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000399E0(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  v2 = *(v1 + 48);
  sub_10000FB60();
  sub_10000FC10(&_mh_execute_header, v3, v4, "%{public}@> Heartbeat %llu failed - error on connection");
}

void sub_100039B90(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> time sync failed: invalid sntp response payload", v3, v4, v5, v6, v7);
}

void sub_100039BF8(uint64_t *a1)
{
  sub_10000FB6C(a1, __stack_chk_guard);
  sub_10000FB60();
  sub_10000661C(&_mh_execute_header, v1, v2, "%{public}@> time sync request failed: error on connection", v3, v4, v5, v6, v7);
}

void sub_100039E00(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  v2 = *__error();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100039E84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 name];
  sub_10000FB1C();
  sub_10000FB78(&_mh_execute_header, v5, v6, "%{public}@> Unable to listen for %s", v7, v8, v9, v10, v11);
}

void sub_100039F18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 name];
  sub_10000FB1C();
  sub_10000FB78(&_mh_execute_header, v5, v6, "%{public}@> Unable to create listener for %s", v7, v8, v9, v10, v11);
}

void sub_100039FAC(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_10000FC30();
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003A154(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  sub_10000FBF0();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void sub_10003A294()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A2D0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A374(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003A3E0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003A44C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003A4B8(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003A524(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003A590(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  CFGetTypeID(a3);
  sub_10000FB78(&_mh_execute_header, v5, v6, "Cannot convert key %s, unsupported type: %lu", v7, v8, v9, v10, 2u);
}

void sub_10003A634(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = sub_10000FC7C();
  type = xpc_get_type(v5);
  xpc_type_get_name(type);
  sub_10000FBB4();
  sub_10000FBE0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10003A6DC(int *a1)
{
  v6 = *a1;
  sub_10000FB54();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10003A754()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A790()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003A7CC(void *a1)
{
  if (a1)
  {
    v1 = [a1 description];
    [v1 UTF8String];
  }

  sub_100006610();
  sub_10000FBE0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  if (a1)
  {
  }
}

void sub_10003BC34(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003BCCC(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003BD80(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003BF80(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "clock_settime: %{errno}d", v3, 8u);
}

void sub_10003C010(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C0A0(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C130(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C1C0(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C250(_BYTE *a1, _BYTE *a2)
{
  sub_10001286C(a1, a2);
  sub_1000128B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10003C284(_BYTE *a1, _BYTE *a2)
{
  sub_10001286C(a1, a2);
  sub_1000128B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10003C2B8(_BYTE *a1, _BYTE *a2)
{
  sub_10001286C(a1, a2);
  sub_1000128B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10003C324(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C3CC(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C4A0(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C534(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@> Connection timeout, retrying", &v3, 0xCu);
}

void sub_10003C5B0(void *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003C624(void *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003C6DC(void *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003C7D4(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_1000128B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10003C85C(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003C8F0(void *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003C964()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C9B4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C9F0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CA2C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CA68()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CAA4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CAE0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CB1C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CB58(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003CBC4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003CC30(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003CC9C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IOServiceAddMatchingNotification returned 0x%08x", v2, 8u);
}

void sub_10003CD14(uint64_t a1, NSObject *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "calling apply_io_iterator iterator: %d", v3, 8u);
}

void sub_10003CD94(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003CF2C(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003CFB8(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D044(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D0D0(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D15C(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D204(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D290(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D30C(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D388(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_1000153F4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003D40C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_1000153F4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003D568(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10003D614()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D684()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D6F4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003D760(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003D7CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_100006610();
  sub_100017B98(&_mh_execute_header, v5, v6, "failed to create RSDNetworkInterface: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003D860()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D8D0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003D9B0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003DA1C()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DA8C(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  sub_100017B68();
  sub_100017B40();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void sub_10003DB3C(int *a1)
{
  v6 = *a1;
  sub_10000FB54();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10003DBB4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003DC20()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003DC90(uint64_t *a1)
{
  v1 = *a1;
  sub_100017B28();
  sub_100006638(&_mh_execute_header, v2, v3, "%{public}@> can't create bonjour parameters: %{darwin.errno}d");
}

void sub_10003DCFC(uint64_t *a1)
{
  v1 = *a1;
  sub_100017B28();
  sub_100006638(&_mh_execute_header, v2, v3, "%{public}@> network_connect_in6: %{errno}d");
}

void sub_10003DD68(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100017B28();
  sub_100006638(&_mh_execute_header, v2, v3, "%{public}@> ncm failed to connect with %{errno}d");
}

void sub_10003DE48(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003DF3C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003DFA8(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003E030(char a1, NSObject *a2)
{
  v2 = "failed";
  if (a1)
  {
    v2 = "succeeded";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "heartbeat %s", &v3, 0xCu);
}

void sub_10003E1A8()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E28C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003E370(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003E4C0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003E52C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "failed to create RSDNetworkInterface: %{public}@", &v5, 0xCu);
}

void sub_10003E730(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to create controller device", buf, 2u);
}

void sub_10003E770(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003E988()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003E9F8()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003EA68()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EAA4()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003EB14(uint64_t *a1)
{
  v6 = *a1;
  sub_10000FB54();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003EB8C()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003EBFC()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EC38()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EC74()
{
  sub_100023508();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003ECE4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003ED20(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_100006638(&_mh_execute_header, a2, a3, "%{public}@> network_connect_in6: %{errno}d", *v3, *&v3[8], *&v3[16]);
}

void sub_10003ED98(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_100006638(&_mh_execute_header, a2, a3, "%{public}@> ncm failed to connect with %{errno}d", *v3, *&v3[8], *&v3[16]);
}

void sub_10003EE14()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003EE50()
{
  sub_100023508();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003EEC0()
{
  sub_100023508();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003EF30(void *a1, _OWORD *a2)
{
  sub_100023514(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10003F02C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F068(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003F114(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003F180()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F1BC()
{
  sub_100023508();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10003F22C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F268()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F2A4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003F2E0(void *a1, _OWORD *a2)
{
  sub_100023514(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10003F37C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to create server device", buf, 2u);
}

void sub_10003F478(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003F4E4(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "connect(fd: %d, ...) failed with %{darwin.errno}d\n", v4, 0xEu);
}

float sub_10003F584(int *a1, NSObject *a2)
{
  v2 = *a1;
  v4[0] = 67109888;
  v4[1] = 30;
  v5 = 1024;
  v6 = 1;
  v7 = 1024;
  v8 = 0;
  v9 = 1024;
  v10 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "socket(domain: %d, type: %d, protocol: %d) ret: %d", v4, 0x1Au);
  return result;
}

void sub_10003F8F8(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "getifaddrs(2): %{errno}d", v3, 8u);
}

void sub_10003FAA4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003FED0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003FF78(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10003FFE4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100040050()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004008C(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100040118()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040154(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100040248(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004031C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040358()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040394()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000403D0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004040C(char a1, uint64_t a2, os_log_t log)
{
  v3 = "with";
  if ((a1 & 1) == 0)
  {
    v3 = "without";
  }

  v4 = 136446466;
  v5 = v3;
  v6 = 2082;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Sending device note %{public}s sensitive properties (client=%{public}s)", &v4, 0x16u);
}

void sub_100040514()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040550()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004058C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000405F8()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040634(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000406A0(uint64_t a1, void *a2)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 device];
  v6 = [*v3 name];
  v7 = 138543618;
  v8 = v5;
  v9 = 2080;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@> Connect failed for %s", &v7, 0x16u);
}

void sub_1000407E4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040820()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004085C(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000408E8()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100040924(void *a1, void *a2)
{
  v3 = a1;
  [a2 type];
  remote_device_type_get_description();
  sub_100006610();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "device type %{public}s cannot be disconnected manually", v4, 0xCu);
}

void sub_1000409C4()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040A34()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040AA4()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040B14(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100040B80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100029EB8(a1, a2, a3, 5.8382e-34);
  sub_100029EE8(&_mh_execute_header, "Get device query: %{public}@ (client=%{public}s)", v4, v5);
}

void sub_100040BCC(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100040D08()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040D78()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040DE8()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040E58()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040F50(void *a1, _OWORD *a2)
{
  sub_100023514(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100041018(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10000FB98();
  sub_1000035CC();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100041094(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10000FB98();
  sub_1000035CC();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100041110(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10000FB98();
  sub_1000035CC();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100041274(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004135C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041440(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000414CC(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041558(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000415E4(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041670(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000416FC(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041788(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041830(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_1000418BC(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041938(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@> Unable to start remoted listener: %{errno}d", &v3, 0x12u);
}

void sub_100041A04(uint64_t *a1, _OWORD *a2)
{
  sub_1000128A0(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041A80(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041B0C(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041B98(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041C24(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041CB0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "NCM device is display", buf, 2u);
}

void sub_100041CF0(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041DA0(uint64_t *a1, _OWORD *a2)
{
  sub_1000153D8(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041E2C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100041FA4(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "failed to listen on %{public}s in publisher", &v2, 0xCu);
}

void sub_10004201C(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "failed to start browsing on %{public}s in publisher: %{darwin.errno}d", &v3, 0x12u);
}

void sub_100042158(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "unexpected return value %d for inet_pton", v2, 8u);
}

void sub_100042214(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042280(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000422EC(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042358(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000423C4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042464(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000424D0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042550()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004258C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000425F8()
{
  sub_100006610();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}@> network_copy_interface_address_in6: %{darwin.errno}d", v2, 0x12u);
}

void sub_100042784(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000427F0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004285C()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000428CC()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042908(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042974()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000429E4()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042A20()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042A5C(void *a1, _OWORD *a2)
{
  sub_100023514(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10001287C();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100042AE4(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042B50(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042BBC()
{
  sub_1000192DC();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042C3C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042CA8()
{
  sub_1000192DC();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042D1C()
{
  sub_1000192DC();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042D9C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042E08(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042E74(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100042EE0()
{
  sub_100004568();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042F1C()
{
  sub_100004568();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042F58()
{
  sub_100004568();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042F94()
{
  sub_100004568();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042FD0()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004300C()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100043048()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100043084()
{
  sub_100004568();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000430C0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004312C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043198(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043204(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000432A4()
{
  sub_100004568();
  sub_100031968();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000432E0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004334C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000433B8(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000434B0()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100043520(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004358C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = 138543618;
  v5 = a1;
  v6 = 2080;
  description = nw_endpoint_get_description();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@> search endpoint: %s", &v4, 0x16u);
}

void sub_10004362C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "skip browsed loopback peer", buf, 2u);
}

void sub_100043688(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000436F4()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100043764()
{
  sub_100006610();
  sub_10000FB54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100043850(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_10004398C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "IOServiceAddInterestNotification on ncm interface: 0x%x", v2, 8u);
}

void sub_100043A04(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IOServiceAddInterestNotification match: type = 0x%08x", v2, 8u);
}

void sub_100043B58(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043C2C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043CD0(uint64_t a1, void *a2, _OWORD *a3)
{
  *a2 = 0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  sub_10000FC30();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043D60(uint64_t a1, void *a2, _OWORD *a3)
{
  *a2 = 0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  sub_10000FC30();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043DF0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043ED0(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043F3C(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100043FA8(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100044014(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100044080(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> getsockname(2): %{errno}d", v5, v6, v7, v8, v9);
}

void sub_10004410C(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> listen(2): %{errno}d", v5, v6, v7, v8, v9);
}

void sub_100044198(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> bind(2): %{errno}d", v5, v6, v7, v8, v9);
}

void sub_100044224(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> socket(2): %{errno}d", v5, v6, v7, v8, v9);
}

void sub_1000442B0(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> connectx(2): %{errno}d", v5, v6, v7, v8, v9);
}

void sub_10004433C(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = qword_100064688;
  v4 = 2082;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@> invalid port %{public}s", &v2, 0x16u);
}

void sub_1000443C8(void *a1)
{
  v1 = a1;
  v2 = *__error();
  sub_100034508();
  sub_100034520(&_mh_execute_header, v3, v4, "%{public}@> fcntl(2): Failed to set O_NONBLOCK: %{errno}d", v5, v6, v7, v8, v9);
}

void sub_100044454(os_log_t log)
{
  v1 = 138543362;
  v2 = qword_100064688;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@> loopback is suspended, faking a failed connect", &v1, 0xCu);
}

void sub_1000444D8(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_100044544(void *a1, _OWORD *a2)
{
  sub_10000FB34(a1, a2);
  sub_10000FC30();
  sub_10000FB98();
  sub_1000035CC();
  sub_10000FC48();
  __break(1u);
}

void sub_1000445B0(os_log_t log)
{
  v1 = 138543362;
  v2 = qword_100064688;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@> Received a message with no type", &v1, 0xCu);
}

void sub_100044634(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> getsockname(2): %{errno}d", v6, v7, v8, v9, v10);
}

void sub_1000446BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> listen(2): %{errno}d", v6, v7, v8, v9, v10);
}

void sub_100044744(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> bind(2): %{errno}d", v6, v7, v8, v9, v10);
}

void sub_1000447CC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> socket(2): %{errno}d", v6, v7, v8, v9, v10);
}

void sub_100044854(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> connect() failed: %{errno}d", v6, v7, v8, v9, v10);
}

void sub_1000448DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> fcntl() failed: %{errno}d", v6, v7, v8, v9, v10);
}

void sub_100044964(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *__error();
  sub_1000349A0();
  sub_1000349B8(&_mh_execute_header, v4, v5, "%{public}@> socket() failed: %{errno}d", v6, v7, v8, v9, v10);
}

void sub_1000449EC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@> connectVsock failed", &v2, 0xCu);
}

void sub_100044A64(uint64_t a1, int a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@> failed to connect with %{errno}d", &v4, 0x12u);
}

void sub_100044AF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2082;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@> invalid port %{public}s", &v3, 0x16u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}