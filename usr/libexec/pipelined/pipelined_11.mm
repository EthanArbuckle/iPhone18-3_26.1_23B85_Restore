uint64_t sub_10009EDC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v6 = *(this + 1);
            if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              *(this + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(this + 8) = TagFallback;
              *(this + 1) = v6 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v8 = TagFallback >> 3;
            v9 = TagFallback & 7;
            if (TagFallback >> 3 > 3)
            {
              break;
            }

            if (v8 == 1)
            {
              if (v9 != 2)
              {
                goto LABEL_42;
              }

              *(a1 + 72) |= 1u;
              if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              if (v15 < *(this + 2) && *v15 == 18)
              {
                *(this + 1) = v15 + 1;
                goto LABEL_45;
              }
            }

            else
            {
              if (v8 != 2)
              {
                if (v8 != 3 || (TagFallback & 7) != 0)
                {
                  goto LABEL_42;
                }

                v12 = *(this + 1);
                v11 = *(this + 2);
                v31 = 0;
                if (v12 >= v11)
                {
                  goto LABEL_54;
                }

                goto LABEL_51;
              }

              if (v9 != 2)
              {
                goto LABEL_42;
              }

LABEL_45:
              *(a1 + 72) |= 2u;
              if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v16 = *(this + 2);
              if (v17 < v16 && *v17 == 24)
              {
                v12 = v17 + 1;
                *(this + 1) = v12;
                v31 = 0;
                if (v12 >= v16)
                {
                  goto LABEL_54;
                }

LABEL_51:
                v18 = *v12;
                if ((v18 & 0x80000000) == 0)
                {
                  *(this + 1) = v12 + 1;
                  if ((v18 - 1) <= 0xB)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_56;
                }

LABEL_54:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
                if (!result)
                {
                  return result;
                }

                v18 = v31;
                if (v31 - 1 <= 0xB)
                {
LABEL_53:
                  *(a1 + 72) |= 4u;
                  *(a1 + 64) = v18;
                  goto LABEL_57;
                }

LABEL_56:
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v18);
LABEL_57:
                v19 = *(this + 1);
                if (v19 < *(this + 2) && *v19 == 34)
                {
                  *(this + 1) = v19 + 1;
                  *(a1 + 72) |= 8u;
                  if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_60:
                    operator new();
                  }

                  goto LABEL_35;
                }
              }
            }
          }

          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (v8 == 6)
          {
            if (v9 == 2)
            {
              *(a1 + 72) |= 0x20u;
              if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                goto LABEL_68;
              }

              goto LABEL_39;
            }
          }

          else if (v8 == 7 && v9 == 2)
          {
            *(a1 + 72) |= 0x40u;
            v13 = *(a1 + 56);
            if (!v13)
            {
              goto LABEL_72;
            }

            goto LABEL_24;
          }

LABEL_42:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_42;
        }

        *(a1 + 72) |= 8u;
        if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          goto LABEL_60;
        }

LABEL_35:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 42)
        {
          *(this + 1) = v20 + 1;
          *(a1 + 72) |= 0x10u;
          if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
LABEL_64:
            operator new();
          }

          goto LABEL_12;
        }
      }

      if (v8 != 5 || v9 != 2)
      {
        goto LABEL_42;
      }

      *(a1 + 72) |= 0x10u;
      if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        goto LABEL_64;
      }

LABEL_12:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 50)
      {
        *(this + 1) = v21 + 1;
        *(a1 + 72) |= 0x20u;
        if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
LABEL_68:
          operator new();
        }

LABEL_39:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 58)
        {
          break;
        }
      }
    }

    *(this + 1) = v22 + 1;
    *(a1 + 72) |= 0x40u;
    v13 = *(a1 + 56);
    if (!v13)
    {
LABEL_72:
      operator new();
    }

LABEL_24:
    v32 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v14;
      *(this + 1) = v14 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
    if (!sub_100091E00(v13, this, v26, v27) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v28 = *(this + 14);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      *(this + 14) = v30;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10009F384(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    v10 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = *(v5 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = *(v5 + 48);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 72) & 0x40) == 0)
  {
LABEL_8:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_16:
  v15 = *(v5 + 56);
  if (v15)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v15, a2, a4);
    v16 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DCF8 + 56), a2, a4);
    v17 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v17;
    if (!v17)
    {
      return result;
    }
  }

LABEL_20:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009F4D4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 18);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_16:
    v15 = *(this + 3);
    *result = 18;
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = *(v15 + 8);
      if (v16 <= 0x7F)
      {
        goto LABEL_18;
      }
    }

    else if (v16 <= 0x7F)
    {
LABEL_18:
      *(result + 1) = v16;
      v17 = result + 2;
LABEL_21:
      v18 = *(v15 + 23);
      if (v18 >= 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v15;
      }

      if (v18 >= 0)
      {
        v20 = *(v15 + 23);
      }

      else
      {
        v20 = *(v15 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
      v5 = *(this + 18);
      goto LABEL_28;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, result + 1, a3);
    goto LABEL_21;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v7 + 8);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v10 <= 0x7F)
  {
LABEL_6:
    *(a2 + 1) = v10;
    v11 = a2 + 2;
    goto LABEL_9;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
LABEL_9:
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  v5 = *(this + 18);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  if ((v5 & 4) != 0)
  {
    v25 = *(this + 16);
    *result = 24;
    v26 = result + 1;
    if ((v25 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v25, v26, a3);
      v21 = *(this + 18);
      if ((v21 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else if (v25 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v26, a3);
      v21 = *(this + 18);
      if ((v21 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *(result + 1) = v25;
      result = (result + 2);
      v21 = *(this + 18);
      if ((v21 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_30:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  v21 = *(this + 18);
  if ((v21 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_42:
  v27 = *(this + 4);
  *result = 34;
  v28 = *(v27 + 23);
  if ((v28 & 0x8000000000000000) != 0)
  {
    v28 = *(v27 + 8);
    if (v28 <= 0x7F)
    {
      goto LABEL_44;
    }
  }

  else if (v28 <= 0x7F)
  {
LABEL_44:
    *(result + 1) = v28;
    v29 = result + 2;
    goto LABEL_47;
  }

  v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, result + 1, a3);
LABEL_47:
  v30 = *(v27 + 23);
  if (v30 >= 0)
  {
    v31 = v27;
  }

  else
  {
    v31 = *v27;
  }

  if (v30 >= 0)
  {
    v32 = *(v27 + 23);
  }

  else
  {
    v32 = *(v27 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v31, v32, v29, a4);
  v21 = *(this + 18);
  if ((v21 & 0x10) == 0)
  {
LABEL_31:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_54:
  v33 = *(this + 5);
  *result = 42;
  v34 = *(v33 + 23);
  if ((v34 & 0x8000000000000000) != 0)
  {
    v34 = *(v33 + 8);
    if (v34 <= 0x7F)
    {
      goto LABEL_56;
    }
  }

  else if (v34 <= 0x7F)
  {
LABEL_56:
    *(result + 1) = v34;
    v35 = result + 2;
    goto LABEL_59;
  }

  v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, result + 1, a3);
LABEL_59:
  v36 = *(v33 + 23);
  if (v36 >= 0)
  {
    v37 = v33;
  }

  else
  {
    v37 = *v33;
  }

  if (v36 >= 0)
  {
    v38 = *(v33 + 23);
  }

  else
  {
    v38 = *(v33 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v37, v38, v35, a4);
  v21 = *(this + 18);
  if ((v21 & 0x20) == 0)
  {
LABEL_32:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_66:
  v39 = *(this + 6);
  *result = 50;
  v40 = *(v39 + 23);
  if ((v40 & 0x8000000000000000) != 0)
  {
    v40 = *(v39 + 8);
    if (v40 <= 0x7F)
    {
      goto LABEL_68;
    }
  }

  else if (v40 <= 0x7F)
  {
LABEL_68:
    *(result + 1) = v40;
    v41 = result + 2;
    goto LABEL_71;
  }

  v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, result + 1, a3);
LABEL_71:
  v42 = *(v39 + 23);
  if (v42 >= 0)
  {
    v43 = v39;
  }

  else
  {
    v43 = *v39;
  }

  if (v42 >= 0)
  {
    v44 = *(v39 + 23);
  }

  else
  {
    v44 = *(v39 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v43, v44, v41, a4);
  if ((*(this + 18) & 0x40) == 0)
  {
LABEL_33:
    v24 = *(this + 1);
    v23 = (this + 8);
    v22 = v24;
    if (!v24)
    {
      return result;
    }

    goto LABEL_84;
  }

LABEL_78:
  v45 = *(this + 7);
  if (v45)
  {
    *result = 58;
    v46 = result + 1;
    v47 = *(v45 + 64);
    if (v47 <= 0x7F)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v45 = *(qword_10045DCF8 + 56);
    *result = 58;
    v46 = result + 1;
    v47 = *(v45 + 64);
    if (v47 <= 0x7F)
    {
LABEL_80:
      *(result + 1) = v47;
      result = sub_10009210C(v45, (result + 2), a3, a4);
      v48 = *(this + 1);
      v23 = (this + 8);
      v22 = v48;
      if (!v48)
      {
        return result;
      }

      goto LABEL_84;
    }
  }

  v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v46, a3);
  result = sub_10009210C(v45, v49, v50, v51);
  v52 = *(this + 1);
  v23 = (this + 8);
  v22 = v52;
  if (!v52)
  {
    return result;
  }

LABEL_84:
  if (*v22 != v22[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, result, a3);
  }

  return result;
}

uint64_t sub_10009F840(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = *(a1 + 16);
  v8 = *(v7 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = *(v7 + 23);
  }

  else
  {
    v9 = *(v7 + 8);
  }

  if (v9 < 0x80)
  {
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v4 = (v8 + 2);
    if ((v3 & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_18:
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(a1 + 72);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
    goto LABEL_27;
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
  v11 = *(v7 + 23);
  v3 = *(a1 + 72);
  if (*(v7 + 23) < 0)
  {
    v11 = *(v7 + 8);
  }

  v4 = (v10 + 1 + v11);
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  if ((v3 & 4) != 0)
  {
    v19 = *(a1 + 64);
    if ((v19 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      if ((v3 & 8) != 0)
      {
        goto LABEL_41;
      }
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      v3 = *(a1 + 72);
      v4 = (v20 + 1 + v4);
      if ((v3 & 8) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 8) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_29:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_41:
  v21 = *(a1 + 32);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v3 = *(a1 + 72);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v4 = (v4 + v26 + v22 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_30:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_50:
  v27 = *(a1 + 40);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(a1 + 72);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_31:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_32;
    }

LABEL_68:
    v39 = *(a1 + 56);
    if (v39)
    {
      v40 = sub_100092298(v39, a2);
      if (v40 < 0x80)
      {
LABEL_70:
        v41 = 1;
        goto LABEL_73;
      }
    }

    else
    {
      v40 = sub_100092298(*(qword_10045DCF8 + 56), a2);
      if (v40 < 0x80)
      {
        goto LABEL_70;
      }
    }

    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
LABEL_73:
    v4 = (v4 + v40 + v41 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_59:
  v33 = *(a1 + 48);
  v34 = *(v33 + 23);
  v35 = v34;
  v36 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v37 = *(v33 + 23);
  }

  else
  {
    v37 = v36;
  }

  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
    v34 = *(v33 + 23);
    v36 = *(v33 + 8);
    v3 = *(a1 + 72);
    v35 = *(v33 + 23);
  }

  else
  {
    v38 = 1;
  }

  if (v35 < 0)
  {
    v34 = v36;
  }

  v4 = (v4 + v38 + v34 + 1);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_68;
  }

LABEL_32:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_33:
    *(a1 + 68) = v4;
    return v4;
  }

LABEL_74:
  if (*v6 == v6[1])
  {
    goto LABEL_33;
  }

  v42 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 68) = v42;
  return v42;
}

uint64_t sub_10009FB4C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10009E4B4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009FC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009FC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FC54(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10009FCE8()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB98;
}

void sub_10009FD78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FD8C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    v11 = *(a1 + 40);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    if ((*(a2 + 60) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 60) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 60) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009FF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009FF2C(void *a1)
{
  *a1 = off_100437800;
  v2 = a1[5];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009FFC4(void *a1)
{
  *a1 = off_100437800;
  v2 = a1[5];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A0110(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(a1 + 40);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A0170(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_33;
          }

          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_40;
        }

        if (v9 != 1)
        {
          goto LABEL_33;
        }

        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v16;
        *(a1 + 60) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

LABEL_40:
          *(a1 + 24) = v16;
          *(a1 + 60) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 25)
          {
            *(this + 1) = v13 + 1;
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            *(a1 + 32) = v16;
            v14 = *(a1 + 60) | 4;
            *(a1 + 60) = v14;
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 34)
            {
              *(this + 1) = v15 + 1;
              *(a1 + 60) = v14 | 8;
              if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
LABEL_23:
                operator new();
              }

              goto LABEL_24;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 1)
        {
          goto LABEL_33;
        }

        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v8 == 4)
      {
        break;
      }

      if (v8 == 5 && v9 == 1)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        goto LABEL_28;
      }

LABEL_33:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_33;
    }

    *(a1 + 60) |= 8u;
    if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
    if (!result)
    {
      return result;
    }

    v11 = *(this + 1);
    if (v11 < *(this + 2) && *v11 == 41)
    {
      *(this + 1) = v11 + 1;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 48));
      if (!result)
      {
        return result;
      }

LABEL_28:
      *(a1 + 60) |= 0x10u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1000A04A0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 60) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(5, *(v5 + 48), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_13:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1000A0590(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 60);
  if (v4)
  {
    v8 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v4 = *(a1 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v9;
  a2 += 9;
  v4 = *(a1 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v10;
  a2 += 9;
  v4 = *(a1 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_11:
  v11 = *(a1 + 40);
  *a2 = 34;
  v12 = *(v11 + 23);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(v11 + 8);
    v13 = a1;
    if (v12 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = a1;
    if (v12 <= 0x7F)
    {
LABEL_13:
      *(a2 + 1) = v12;
      v14 = a2 + 2;
      goto LABEL_16;
    }
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
LABEL_16:
  v15 = *(v11 + 23);
  if (v15 >= 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *v11;
  }

  if (v15 >= 0)
  {
    v17 = *(v11 + 23);
  }

  else
  {
    v17 = *(v11 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
  a1 = v13;
  if ((*(v13 + 60) & 0x10) == 0)
  {
LABEL_6:
    v7 = *(a1 + 8);
    v5 = (a1 + 8);
    v6 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v18;
  a2 += 9;
  v19 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v19;
  if (!v19)
  {
    return a2;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
}

uint64_t sub_1000A07CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      LODWORD(v5) = v4 + 9;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 23);
      v8 = v7;
      v9 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v3 = *(a1 + 60);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 1;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      LODWORD(v5) = v5 + v11 + v7 + 1;
    }

    if ((v3 & 0x10) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    v12 = (a1 + 8);
    v13 = *(a1 + 8);
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    v12 = (a1 + 8);
    v13 = *(a1 + 8);
    if (!v13)
    {
LABEL_14:
      *(a1 + 56) = v5;
      return v5;
    }
  }

  if (*v13 == v13[1])
  {
    goto LABEL_14;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v5;
  *(a1 + 56) = v15;
  return v15;
}

uint64_t sub_1000A08D4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10009FD8C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A09B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A09C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A09DC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A0A70()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CBB0;
}

void sub_1000A0B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0B14(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v7 + 1);
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_10009FD8C(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000A0CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A0CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A0CFC(uint64_t a1)
{
  *a1 = off_1004378B0;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A0DC8(uint64_t a1)
{
  *a1 = off_1004378B0;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000A0F48(uint64_t this)
{
  v1 = this;
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 4) = 0;
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_1000A0FE4(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback == 10)
      {
        while (1)
        {
LABEL_11:
          v8 = a1[7];
          v9 = a1[6];
          if (v9 >= v8)
          {
            if (v8 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
              v8 = a1[7];
            }

            a1[7] = v8 + 1;
            operator new();
          }

          v10 = *(a1 + 2);
          a1[6] = v9 + 1;
          v11 = *(v10 + 8 * v9);
          v24 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(this + 1) = v12 + 1;
          }

          v13 = *(this + 14);
          v14 = *(this + 15);
          *(this + 14) = v13 + 1;
          if (v13 >= v14)
          {
            return 0;
          }

          v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
          if (!sub_1000A0170(v11, this, v16, v17) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
          v18 = *(this + 14);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 == v19)
          {
            *(this + 14) = v20;
          }

          v21 = *(this + 1);
          v22 = *(this + 2);
          if (v21 >= v22 || *v21 != 10)
          {
            if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(this + 1) = v21 + 1;
        }
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000A126C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A1308(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) < 1)
  {
    result = a2;
  }

  else
  {
    v5 = 0;
    result = a2;
    do
    {
      v8 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v9 = *(v8 + 56);
      if (v9 > 0x7F)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v8 + 56), result + 1, a3);
      }

      else
      {
        *(result + 1) = v9;
        v7 = result + 2;
      }

      result = sub_1000A0590(v8, v7, a3, a4);
      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  v12 = *(a1 + 8);
  v11 = (a1 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, result, a3);
  }

  return result;
}

uint64_t sub_1000A13D8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v6 = sub_1000A07CC(*(*(a1 + 16) + 8 * v4), a2);
      v7 = v6;
      if (v6 < 0x80)
      {
        v5 = 1;
      }

      else
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      v3 = (v7 + v3 + v5);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_1000A147C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000A0B14(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A1570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1584(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A1618()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CBC0;
}

void sub_1000A16A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A16BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
    v4 = *(a2 + 116);
    if (!v4)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v4 = *(a2 + 116);
    if (!v4)
    {
      goto LABEL_42;
    }
  }

  if (v4)
  {
    *(a1 + 116) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD10 + 16);
    }

    sub_10009E4B4(v5, v6);
    v4 = *(a2 + 116);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 116) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 116);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 116) |= 4u;
    v8 = *(a1 + 32);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      v9 = *(qword_10045DD10 + 32);
    }

    sub_100093D88(v8, v9);
    v4 = *(a2 + 116);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 116) |= 8u;
    v10 = *(a1 + 40);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 40);
    if (!v11)
    {
      v11 = *(qword_10045DD10 + 40);
    }

    sub_100093D88(v10, v11);
    v4 = *(a2 + 116);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 116) |= 0x10u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 48);
    if (!v13)
    {
      v13 = *(qword_10045DD10 + 48);
    }

    sub_100093D88(v12, v13);
    v4 = *(a2 + 116);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 116) |= 0x20u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 56);
    if (!v15)
    {
      v15 = *(qword_10045DD10 + 56);
    }

    sub_100093D88(v14, v15);
    v4 = *(a2 + 116);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 116) |= 0x40u;
    v16 = *(a1 + 64);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 64);
    if (!v17)
    {
      v17 = *(qword_10045DD10 + 64);
    }

    sub_100093D88(v16, v17);
    v4 = *(a2 + 116);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 116) |= 0x80u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 72);
    if (!v19)
    {
      v19 = *(qword_10045DD10 + 72);
    }

    sub_10009B248(v18, v19);
    v4 = *(a2 + 116);
  }

LABEL_42:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 116) |= 0x100u;
      v20 = *(a1 + 80);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 80);
      if (!v21)
      {
        v21 = *(qword_10045DD10 + 80);
      }

      sub_10009B248(v20, v21);
      v4 = *(a2 + 116);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 116) |= 0x200u;
      v22 = *(a1 + 88);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 88);
      if (!v23)
      {
        v23 = *(qword_10045DD10 + 88);
      }

      sub_10009B248(v22, v23);
      v4 = *(a2 + 116);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 116) |= 0x400u;
      v24 = *(a1 + 96);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 96);
      if (!v25)
      {
        v25 = *(qword_10045DD10 + 96);
      }

      sub_10009C58C(v24, v25);
      v4 = *(a2 + 116);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 116) |= 0x800u;
      v26 = *(a1 + 104);
      if (!v26)
      {
        operator new();
      }

      v27 = *(a2 + 104);
      if (!v27)
      {
        v27 = *(qword_10045DD10 + 104);
      }

      sub_1000A0B14(v26, v27);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A1E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A1E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000A1E80(void *result)
{
  if (qword_10045DD10 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[10];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[11];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[12];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v1[13];
    if (result)
    {
      v12 = *(*result + 8);

      return v12();
    }
  }

  return result;
}

void sub_1000A20AC(void *a1)
{
  *a1 = off_100437960;
  v2 = (a1 + 1);
  sub_1000A1E80(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A210C(void *a1)
{
  *a1 = off_100437960;
  v2 = (a1 + 1);
  sub_1000A1E80(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A2220(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 29);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009EB4C(this);
        v2 = *(v1 + 29);
      }
    }

    *(v1 + 3) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        v3 = *(this + 32);
        if (v3)
        {
          *(this + 6) = 0;
          if ((v3 & 2) != 0)
          {
            v4 = *(this + 2);
            if (v4)
            {
              v6 = *(v4 + 8);
              v5 = (v4 + 8);
              *(v5 + 4) = 0;
              *(v5 + 10) = 0;
              *(v5 + 16) = 0;
              *(v5 + 22) = 0;
              *(v5 + 26) = 0;
              if (v6)
              {
                v7 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
                this = v7;
              }
            }
          }
        }

        v8 = *(this + 1);
        this = (this + 8);
        *(this + 6) = 0;
        if (v8)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 116) & 8) != 0)
    {
      this = *(v1 + 5);
      if (this)
      {
        v9 = *(this + 32);
        if (v9)
        {
          *(this + 6) = 0;
          if ((v9 & 2) != 0)
          {
            v10 = *(this + 2);
            if (v10)
            {
              v12 = *(v10 + 8);
              v11 = (v10 + 8);
              *(v11 + 4) = 0;
              *(v11 + 10) = 0;
              *(v11 + 16) = 0;
              *(v11 + 22) = 0;
              *(v11 + 26) = 0;
              if (v12)
              {
                v13 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
                this = v13;
              }
            }
          }
        }

        v14 = *(this + 1);
        this = (this + 8);
        *(this + 6) = 0;
        if (v14)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 116) & 0x10) != 0)
    {
      this = *(v1 + 6);
      if (this)
      {
        v15 = *(this + 32);
        if (v15)
        {
          *(this + 6) = 0;
          if ((v15 & 2) != 0)
          {
            v16 = *(this + 2);
            if (v16)
            {
              v18 = *(v16 + 8);
              v17 = (v16 + 8);
              *(v17 + 4) = 0;
              *(v17 + 10) = 0;
              *(v17 + 16) = 0;
              *(v17 + 22) = 0;
              *(v17 + 26) = 0;
              if (v18)
              {
                v19 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v17);
                this = v19;
              }
            }
          }
        }

        v20 = *(this + 1);
        this = (this + 8);
        *(this + 6) = 0;
        if (v20)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 116) & 0x20) != 0)
    {
      this = *(v1 + 7);
      if (this)
      {
        v21 = *(this + 32);
        if (v21)
        {
          *(this + 6) = 0;
          if ((v21 & 2) != 0)
          {
            v22 = *(this + 2);
            if (v22)
            {
              v24 = *(v22 + 8);
              v23 = (v22 + 8);
              *(v23 + 4) = 0;
              *(v23 + 10) = 0;
              *(v23 + 16) = 0;
              *(v23 + 22) = 0;
              *(v23 + 26) = 0;
              if (v24)
              {
                v25 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v23);
                this = v25;
              }
            }
          }
        }

        v26 = *(this + 1);
        this = (this + 8);
        *(this + 6) = 0;
        if (v26)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 116) & 0x40) != 0)
    {
      this = *(v1 + 8);
      if (this)
      {
        v27 = *(this + 32);
        if (v27)
        {
          *(this + 6) = 0;
          if ((v27 & 2) != 0)
          {
            v28 = *(this + 2);
            if (v28)
            {
              v30 = *(v28 + 8);
              v29 = (v28 + 8);
              *(v29 + 4) = 0;
              *(v29 + 10) = 0;
              *(v29 + 16) = 0;
              *(v29 + 22) = 0;
              *(v29 + 26) = 0;
              if (v30)
              {
                v31 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v29);
                this = v31;
              }
            }
          }
        }

        v32 = *(this + 1);
        this = (this + 8);
        *(this + 6) = 0;
        if (v32)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v2 = *(v1 + 29);
    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 9);
      if (this)
      {
        this = sub_10009B75C(this);
        v2 = *(v1 + 29);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 10);
      if (this)
      {
        this = sub_10009B75C(this);
        v2 = *(v1 + 29);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 11);
      if (this)
      {
        this = sub_10009B75C(this);
        v2 = *(v1 + 29);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 12);
      if (this)
      {
        if (*(this + 6) >= 1)
        {
          v33 = 0;
          do
          {
            while (1)
            {
              v34 = *(*(this + 2) + 8 * v33);
              if (*(v34 + 23) < 0)
              {
                break;
              }

              *v34 = 0;
              *(v34 + 23) = 0;
              if (++v33 >= *(this + 6))
              {
                goto LABEL_67;
              }
            }

            **v34 = 0;
            *(v34 + 8) = 0;
            ++v33;
          }

          while (v33 < *(this + 6));
        }

LABEL_67:
        v35 = *(this + 1);
        this = (this + 8);
        *(this + 4) = 0;
        *(this + 10) = 0;
        *(this + 16) = 0;
        *(this + 22) = 0;
        *(this + 28) = 0;
        *(this + 34) = 0;
        *(this + 40) = 0;
        *(this + 44) = 0;
        if (v35)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 117) & 8) != 0)
    {
      v36 = *(v1 + 13);
      if (v36)
      {
        if (*(v36 + 24) >= 1)
        {
          v37 = 0;
          do
          {
            v38 = *(*(v36 + 16) + 8 * v37);
            this = (*(*v38 + 32))(v38);
            ++v37;
          }

          while (v37 < *(v36 + 24));
        }

        v40 = *(v36 + 8);
        v39 = (v36 + 8);
        *(v39 + 4) = 0;
        *(v39 + 9) = 0;
        if (v40)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v39);
        }
      }
    }
  }

  v42 = *(v1 + 1);
  v41 = (v1 + 8);
  *(v41 + 27) = 0;
  if (v42)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v41);
  }

  return this;
}

uint64_t sub_1000A25D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v6 = *(this + 1);
            if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              *(this + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(this + 8) = TagFallback;
              *(this + 1) = v6 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v8 = TagFallback >> 3;
            v9 = TagFallback & 7;
            if (TagFallback >> 3 > 6)
            {
              break;
            }

            if (TagFallback >> 3 > 3)
            {
              if (v8 == 4)
              {
                if (v9 != 2)
                {
                  goto LABEL_66;
                }

                *(a1 + 116) |= 8u;
                v21 = *(a1 + 40);
                if (!v21)
                {
                  goto LABEL_94;
                }

LABEL_48:
                v123 = 0;
                v22 = *(this + 1);
                if (v22 >= *(this + 2) || *v22 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
                  {
                    return 0;
                  }
                }

                else
                {
                  v123 = *v22;
                  *(this + 1) = v22 + 1;
                }

                v50 = *(this + 14);
                v51 = *(this + 15);
                *(this + 14) = v50 + 1;
                if (v50 >= v51)
                {
                  return 0;
                }

                v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
                if (!sub_100094170(v21, this, v53, v54) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v52);
                v55 = *(this + 14);
                v36 = __OFSUB__(v55, 1);
                v56 = v55 - 1;
                if (v56 < 0 == v36)
                {
                  *(this + 14) = v56;
                }

                v57 = *(this + 1);
                if (v57 < *(this + 2) && *v57 == 42)
                {
                  *(this + 1) = v57 + 1;
                  *(a1 + 116) |= 0x10u;
                  v28 = *(a1 + 48);
                  if (!v28)
                  {
LABEL_106:
                    operator new();
                  }

                  goto LABEL_63;
                }
              }

              else if (v8 == 5)
              {
                if (v9 != 2)
                {
                  goto LABEL_66;
                }

                *(a1 + 116) |= 0x10u;
                v28 = *(a1 + 48);
                if (!v28)
                {
                  goto LABEL_106;
                }

LABEL_63:
                v123 = 0;
                v29 = *(this + 1);
                if (v29 >= *(this + 2) || *v29 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
                  {
                    return 0;
                  }
                }

                else
                {
                  v123 = *v29;
                  *(this + 1) = v29 + 1;
                }

                v58 = *(this + 14);
                v59 = *(this + 15);
                *(this + 14) = v58 + 1;
                if (v58 >= v59)
                {
                  return 0;
                }

                v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
                if (!sub_100094170(v28, this, v61, v62) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v60);
                v63 = *(this + 14);
                v36 = __OFSUB__(v63, 1);
                v64 = v63 - 1;
                if (v64 < 0 == v36)
                {
                  *(this + 14) = v64;
                }

                v65 = *(this + 1);
                if (v65 < *(this + 2) && *v65 == 50)
                {
                  *(this + 1) = v65 + 1;
                  *(a1 + 116) |= 0x20u;
                  v13 = *(a1 + 56);
                  if (!v13)
                  {
LABEL_118:
                    operator new();
                  }

                  goto LABEL_27;
                }
              }

              else
              {
                if (v8 != 6 || v9 != 2)
                {
                  goto LABEL_66;
                }

                *(a1 + 116) |= 0x20u;
                v13 = *(a1 + 56);
                if (!v13)
                {
                  goto LABEL_118;
                }

LABEL_27:
                v123 = 0;
                v14 = *(this + 1);
                if (v14 >= *(this + 2) || *v14 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
                  {
                    return 0;
                  }
                }

                else
                {
                  v123 = *v14;
                  *(this + 1) = v14 + 1;
                }

                v66 = *(this + 14);
                v67 = *(this + 15);
                *(this + 14) = v66 + 1;
                if (v66 >= v67)
                {
                  return 0;
                }

                v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
                if (!sub_100094170(v13, this, v69, v70) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v68);
                v71 = *(this + 14);
                v36 = __OFSUB__(v71, 1);
                v72 = v71 - 1;
                if (v72 < 0 == v36)
                {
                  *(this + 14) = v72;
                }

                v73 = *(this + 1);
                if (v73 < *(this + 2) && *v73 == 58)
                {
                  *(this + 1) = v73 + 1;
                  *(a1 + 116) |= 0x80u;
                  v19 = *(a1 + 72);
                  if (!v19)
                  {
LABEL_130:
                    operator new();
                  }

                  goto LABEL_44;
                }
              }
            }

            else if (v8 == 1)
            {
              if (v9 != 2)
              {
                goto LABEL_66;
              }

              *(a1 + 116) |= 1u;
              v17 = *(a1 + 16);
              if (!v17)
              {
                operator new();
              }

              v123 = 0;
              v18 = *(this + 1);
              if (v18 >= *(this + 2) || *v18 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
                {
                  return 0;
                }
              }

              else
              {
                v123 = *v18;
                *(this + 1) = v18 + 1;
              }

              v30 = *(this + 14);
              v31 = *(this + 15);
              *(this + 14) = v30 + 1;
              if (v30 >= v31)
              {
                return 0;
              }

              v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
              if (!sub_10009EDC4(v17, this, v33, v34) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
              v35 = *(this + 14);
              v36 = __OFSUB__(v35, 1);
              v37 = v35 - 1;
              if (v37 < 0 == v36)
              {
                *(this + 14) = v37;
              }

              v38 = *(this + 1);
              if (v38 < *(this + 2) && *v38 == 17)
              {
                *(this + 1) = v38 + 1;
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                goto LABEL_78;
              }
            }

            else if (v8 == 2)
            {
              if (v9 != 1)
              {
                goto LABEL_66;
              }

              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

LABEL_78:
              v39 = *(a1 + 116) | 2;
              *(a1 + 116) = v39;
              v40 = *(this + 1);
              if (v40 < *(this + 2) && *v40 == 26)
              {
                *(this + 1) = v40 + 1;
                *(a1 + 116) = v39 | 4;
                v10 = *(a1 + 32);
                if (!v10)
                {
LABEL_81:
                  operator new();
                }

                goto LABEL_82;
              }
            }

            else
            {
              if (v8 != 3 || v9 != 2)
              {
                goto LABEL_66;
              }

              *(a1 + 116) |= 4u;
              v10 = *(a1 + 32);
              if (!v10)
              {
                goto LABEL_81;
              }

LABEL_82:
              v123 = 0;
              v41 = *(this + 1);
              if (v41 >= *(this + 2) || *v41 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
                {
                  return 0;
                }
              }

              else
              {
                v123 = *v41;
                *(this + 1) = v41 + 1;
              }

              v42 = *(this + 14);
              v43 = *(this + 15);
              *(this + 14) = v42 + 1;
              if (v42 >= v43)
              {
                return 0;
              }

              v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
              if (!sub_100094170(v10, this, v45, v46) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
              v47 = *(this + 14);
              v36 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v36)
              {
                *(this + 14) = v48;
              }

              v49 = *(this + 1);
              if (v49 < *(this + 2) && *v49 == 34)
              {
                *(this + 1) = v49 + 1;
                *(a1 + 116) |= 8u;
                v21 = *(a1 + 40);
                if (!v21)
                {
LABEL_94:
                  operator new();
                }

                goto LABEL_48;
              }
            }
          }

          if (TagFallback >> 3 > 9)
          {
            break;
          }

          if (v8 == 7)
          {
            if (v9 != 2)
            {
              goto LABEL_66;
            }

            *(a1 + 116) |= 0x80u;
            v19 = *(a1 + 72);
            if (!v19)
            {
              goto LABEL_130;
            }

LABEL_44:
            v123 = 0;
            v20 = *(this + 1);
            if (v20 >= *(this + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
              {
                return 0;
              }
            }

            else
            {
              v123 = *v20;
              *(this + 1) = v20 + 1;
            }

            v74 = *(this + 14);
            v75 = *(this + 15);
            *(this + 14) = v74 + 1;
            if (v74 >= v75)
            {
              return 0;
            }

            v76 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
            if (!sub_10009B868(v19, this, v77, v78) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v76);
            v79 = *(this + 14);
            v36 = __OFSUB__(v79, 1);
            v80 = v79 - 1;
            if (v80 < 0 == v36)
            {
              *(this + 14) = v80;
            }

            v81 = *(this + 1);
            if (v81 < *(this + 2) && *v81 == 66)
            {
              *(this + 1) = v81 + 1;
              *(a1 + 116) |= 0x100u;
              v26 = *(a1 + 80);
              if (!v26)
              {
LABEL_142:
                operator new();
              }

              goto LABEL_59;
            }
          }

          else if (v8 == 8)
          {
            if (v9 != 2)
            {
              goto LABEL_66;
            }

            *(a1 + 116) |= 0x100u;
            v26 = *(a1 + 80);
            if (!v26)
            {
              goto LABEL_142;
            }

LABEL_59:
            v123 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
              {
                return 0;
              }
            }

            else
            {
              v123 = *v27;
              *(this + 1) = v27 + 1;
            }

            v82 = *(this + 14);
            v83 = *(this + 15);
            *(this + 14) = v82 + 1;
            if (v82 >= v83)
            {
              return 0;
            }

            v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
            if (!sub_10009B868(v26, this, v85, v86) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
            v87 = *(this + 14);
            v36 = __OFSUB__(v87, 1);
            v88 = v87 - 1;
            if (v88 < 0 == v36)
            {
              *(this + 14) = v88;
            }

            v89 = *(this + 1);
            if (v89 < *(this + 2) && *v89 == 74)
            {
              *(this + 1) = v89 + 1;
              *(a1 + 116) |= 0x200u;
              v11 = *(a1 + 88);
              if (!v11)
              {
LABEL_154:
                operator new();
              }

              goto LABEL_20;
            }
          }

          else
          {
            if (v8 != 9 || v9 != 2)
            {
              goto LABEL_66;
            }

            *(a1 + 116) |= 0x200u;
            v11 = *(a1 + 88);
            if (!v11)
            {
              goto LABEL_154;
            }

LABEL_20:
            v123 = 0;
            v12 = *(this + 1);
            if (v12 >= *(this + 2) || *v12 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
              {
                return 0;
              }
            }

            else
            {
              v123 = *v12;
              *(this + 1) = v12 + 1;
            }

            v90 = *(this + 14);
            v91 = *(this + 15);
            *(this + 14) = v90 + 1;
            if (v90 >= v91)
            {
              return 0;
            }

            v92 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
            if (!sub_10009B868(v11, this, v93, v94) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v92);
            v95 = *(this + 14);
            v36 = __OFSUB__(v95, 1);
            v96 = v95 - 1;
            if (v96 < 0 == v36)
            {
              *(this + 14) = v96;
            }

            v97 = *(this + 1);
            if (v97 < *(this + 2) && *v97 == 82)
            {
              *(this + 1) = v97 + 1;
              *(a1 + 116) |= 0x400u;
              v23 = *(a1 + 96);
              if (!v23)
              {
LABEL_166:
                operator new();
              }

              goto LABEL_52;
            }
          }
        }

        if (v8 != 10)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_66;
        }

        *(a1 + 116) |= 0x400u;
        v23 = *(a1 + 96);
        if (!v23)
        {
          goto LABEL_166;
        }

LABEL_52:
        v123 = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
          {
            return 0;
          }
        }

        else
        {
          v123 = *v24;
          *(this + 1) = v24 + 1;
        }

        v98 = *(this + 14);
        v99 = *(this + 15);
        *(this + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
        if (!sub_10009CD70(v23, this, v101, v102) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v100);
        v103 = *(this + 14);
        v36 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v36)
        {
          *(this + 14) = v104;
        }

        v105 = *(this + 1);
        if (v105 < *(this + 2) && *v105 == 98)
        {
          *(this + 1) = v105 + 1;
          goto LABEL_178;
        }
      }

      if (v8 != 12)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_66;
      }

LABEL_178:
      *(a1 + 116) |= 0x800u;
      v106 = *(a1 + 104);
      if (!v106)
      {
        operator new();
      }

      v123 = 0;
      v107 = *(this + 1);
      if (v107 >= *(this + 2) || *v107 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
        {
          return 0;
        }
      }

      else
      {
        v123 = *v107;
        *(this + 1) = v107 + 1;
      }

      v108 = *(this + 14);
      v109 = *(this + 15);
      *(this + 14) = v108 + 1;
      if (v108 >= v109)
      {
        return 0;
      }

      v110 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
      if (!sub_1000A0FE4(v106, this, v111, v112) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v110);
      v113 = *(this + 14);
      v36 = __OFSUB__(v113, 1);
      v114 = v113 - 1;
      if (v114 < 0 == v36)
      {
        *(this + 14) = v114;
      }

      v115 = *(this + 1);
      if (v115 < *(this + 2) && *v115 == 106)
      {
        *(this + 1) = v115 + 1;
        *(a1 + 116) |= 0x40u;
        v15 = *(a1 + 64);
        if (!v15)
        {
LABEL_192:
          operator new();
        }

LABEL_34:
        v123 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v123))
          {
            return 0;
          }
        }

        else
        {
          v123 = *v16;
          *(this + 1) = v16 + 1;
        }

        v116 = *(this + 14);
        v117 = *(this + 15);
        *(this + 14) = v116 + 1;
        if (v116 >= v117)
        {
          return 0;
        }

        v118 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v123);
        if (!sub_100094170(v15, this, v119, v120) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v118);
        v121 = *(this + 14);
        v36 = __OFSUB__(v121, 1);
        v122 = v121 - 1;
        if (v122 < 0 == v36)
        {
          *(this + 14) = v122;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 13 && v9 == 2)
    {
      *(a1 + 116) |= 0x40u;
      v15 = *(a1 + 64);
      if (!v15)
      {
        goto LABEL_192;
      }

      goto LABEL_34;
    }

LABEL_66:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000A35B0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 116);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD10 + 16), a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v11 = *(v5 + 32);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DD10 + 32), a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v13 = *(v5 + 48);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v13, a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DD10 + 48), a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    v15 = *(v5 + 72);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v15, a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DD10 + 72), a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_44:
    v17 = *(v5 + 88);
    if (v17)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v17, a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(qword_10045DD10 + 88), a2, a4);
      v6 = *(v5 + 116);
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

LABEL_52:
    v19 = *(v5 + 104);
    if (v19)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, v19, a2, a4);
      if ((*(v5 + 116) & 0x40) != 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, *(qword_10045DD10 + 104), a2, a4);
      if ((*(v5 + 116) & 0x40) != 0)
      {
        goto LABEL_56;
      }
    }

LABEL_13:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_60;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_24:
  v12 = *(v5 + 40);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v12, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DD10 + 40), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_32:
  v14 = *(v5 + 56);
  if (v14)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v14, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DD10 + 56), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_8:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_9;
  }

LABEL_40:
  v16 = *(v5 + 80);
  if (v16)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v16, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045DD10 + 80), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_10:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_11;
  }

LABEL_48:
  v18 = *(v5 + 96);
  if (v18)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v18, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(qword_10045DD10 + 96), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_12:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_56:
  v20 = *(v5 + 64);
  if (v20)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, v20, a2, a4);
    v21 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v21;
    if (!v21)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, *(qword_10045DD10 + 64), a2, a4);
    v22 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v22;
    if (!v22)
    {
      return result;
    }
  }

LABEL_60:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A391C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 29);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = *(this + 3);
    *result = 17;
    *(result + 1) = v14;
    result = (result + 9);
    v5 = *(this + 29);
    goto LABEL_11;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = v7[17];
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_10009F4D4(v7, v11, v12, v13);
    v5 = *(this + 29);
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DD10 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = v7[17];
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_10009F4D4(v7, (v8 + 2), a3, a4);
  v5 = *(this + 29);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v5 & 4) != 0)
  {
    v15 = *(this + 4);
    if (v15)
    {
      *result = 26;
      v16 = result + 1;
      v17 = v15[7];
      if (v17 <= 0x7F)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(qword_10045DD10 + 32);
      *result = 26;
      v16 = result + 1;
      v17 = v15[7];
      if (v17 <= 0x7F)
      {
LABEL_23:
        *(result + 1) = v17;
        result = sub_100094500(v15, (result + 2), a3);
        v5 = *(this + 29);
        if ((v5 & 8) != 0)
        {
          goto LABEL_27;
        }

LABEL_13:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_14;
        }

LABEL_33:
        v25 = *(this + 6);
        if (v25)
        {
          *result = 42;
          v26 = result + 1;
          v27 = v25[7];
          if (v27 <= 0x7F)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v25 = *(qword_10045DD10 + 48);
          *result = 42;
          v26 = result + 1;
          v27 = v25[7];
          if (v27 <= 0x7F)
          {
LABEL_35:
            *(result + 1) = v27;
            result = sub_100094500(v25, (result + 2), a3);
            v5 = *(this + 29);
            if ((v5 & 0x20) != 0)
            {
              goto LABEL_39;
            }

LABEL_15:
            if ((v5 & 0x80) == 0)
            {
              goto LABEL_16;
            }

LABEL_45:
            v35 = *(this + 9);
            if (v35)
            {
              *result = 58;
              v36 = result + 1;
              v37 = v35[15];
              if (v37 <= 0x7F)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v35 = *(qword_10045DD10 + 72);
              *result = 58;
              v36 = result + 1;
              v37 = v35[15];
              if (v37 <= 0x7F)
              {
LABEL_47:
                *(result + 1) = v37;
                result = sub_10009BEF4(v35, (result + 2), a3, a4);
                v5 = *(this + 29);
                if ((v5 & 0x100) != 0)
                {
                  goto LABEL_51;
                }

LABEL_17:
                if ((v5 & 0x200) == 0)
                {
                  goto LABEL_18;
                }

LABEL_57:
                v47 = *(this + 11);
                if (v47)
                {
                  *result = 74;
                  v48 = result + 1;
                  v49 = v47[15];
                  if (v49 <= 0x7F)
                  {
                    goto LABEL_59;
                  }
                }

                else
                {
                  v47 = *(qword_10045DD10 + 88);
                  *result = 74;
                  v48 = result + 1;
                  v49 = v47[15];
                  if (v49 <= 0x7F)
                  {
LABEL_59:
                    *(result + 1) = v49;
                    result = sub_10009BEF4(v47, (result + 2), a3, a4);
                    v5 = *(this + 29);
                    if ((v5 & 0x400) != 0)
                    {
                      goto LABEL_63;
                    }

LABEL_19:
                    if ((v5 & 0x800) == 0)
                    {
                      goto LABEL_83;
                    }

                    goto LABEL_69;
                  }
                }

                v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v49, v48, a3);
                result = sub_10009BEF4(v47, v50, v51, v52);
                v5 = *(this + 29);
                if ((v5 & 0x400) != 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_19;
              }
            }

            v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v36, a3);
            result = sub_10009BEF4(v35, v38, v39, v40);
            v5 = *(this + 29);
            if ((v5 & 0x100) != 0)
            {
              goto LABEL_51;
            }

            goto LABEL_17;
          }
        }

        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
        result = sub_100094500(v25, v28, v29);
        v5 = *(this + 29);
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_39;
        }

        goto LABEL_15;
      }
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    result = sub_100094500(v15, v18, v19);
    v5 = *(this + 29);
    if ((v5 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if ((v5 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  v20 = *(this + 5);
  if (v20)
  {
    *result = 34;
    v21 = result + 1;
    v22 = v20[7];
    if (v22 <= 0x7F)
    {
      goto LABEL_29;
    }

LABEL_32:
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    result = sub_100094500(v20, v23, v24);
    v5 = *(this + 29);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  v20 = *(qword_10045DD10 + 40);
  *result = 34;
  v21 = result + 1;
  v22 = v20[7];
  if (v22 > 0x7F)
  {
    goto LABEL_32;
  }

LABEL_29:
  *(result + 1) = v22;
  result = sub_100094500(v20, (result + 2), a3);
  v5 = *(this + 29);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_39:
  v30 = *(this + 7);
  if (v30)
  {
    *result = 50;
    v31 = result + 1;
    v32 = v30[7];
    if (v32 <= 0x7F)
    {
      goto LABEL_41;
    }

LABEL_44:
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v31, a3);
    result = sub_100094500(v30, v33, v34);
    v5 = *(this + 29);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  v30 = *(qword_10045DD10 + 56);
  *result = 50;
  v31 = result + 1;
  v32 = v30[7];
  if (v32 > 0x7F)
  {
    goto LABEL_44;
  }

LABEL_41:
  *(result + 1) = v32;
  result = sub_100094500(v30, (result + 2), a3);
  v5 = *(this + 29);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_17;
  }

LABEL_51:
  v41 = *(this + 10);
  if (v41)
  {
    *result = 66;
    v42 = result + 1;
    v43 = v41[15];
    if (v43 <= 0x7F)
    {
      goto LABEL_53;
    }

LABEL_56:
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v43, v42, a3);
    result = sub_10009BEF4(v41, v44, v45, v46);
    v5 = *(this + 29);
    if ((v5 & 0x200) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_18;
  }

  v41 = *(qword_10045DD10 + 80);
  *result = 66;
  v42 = result + 1;
  v43 = v41[15];
  if (v43 > 0x7F)
  {
    goto LABEL_56;
  }

LABEL_53:
  *(result + 1) = v43;
  result = sub_10009BEF4(v41, (result + 2), a3, a4);
  v5 = *(this + 29);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_18:
  if ((v5 & 0x400) == 0)
  {
    goto LABEL_19;
  }

LABEL_63:
  v53 = *(this + 12);
  if (v53)
  {
    *result = 82;
    v54 = result + 1;
    v55 = *(v53 + 180);
    if (v55 <= 0x7F)
    {
      goto LABEL_65;
    }

LABEL_68:
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v55, v54, a3);
    result = sub_10009DC18(v53, v56, v57, v58);
    if ((*(this + 29) & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_69;
  }

  v53 = *(qword_10045DD10 + 96);
  *result = 82;
  v54 = result + 1;
  v55 = *(v53 + 180);
  if (v55 > 0x7F)
  {
    goto LABEL_68;
  }

LABEL_65:
  *(result + 1) = v55;
  result = sub_10009DC18(v53, (result + 2), a3, a4);
  if ((*(this + 29) & 0x800) == 0)
  {
    goto LABEL_83;
  }

LABEL_69:
  v59 = *(this + 13);
  if (v59)
  {
    *result = 98;
    v60 = result + 1;
    v61 = *(v59 + 40);
    if (v61 <= 0x7F)
    {
      goto LABEL_71;
    }

LABEL_74:
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v61, v60, a3);
    if (*(v59 + 24) < 1)
    {
      goto LABEL_80;
    }

    goto LABEL_75;
  }

  v59 = *(qword_10045DD10 + 104);
  *result = 98;
  v60 = result + 1;
  v61 = *(v59 + 40);
  if (v61 > 0x7F)
  {
    goto LABEL_74;
  }

LABEL_71:
  *(result + 1) = v61;
  result = (result + 2);
  if (*(v59 + 24) < 1)
  {
    goto LABEL_80;
  }

LABEL_75:
  v62 = 0;
  do
  {
    v64 = *(*(v59 + 16) + 8 * v62);
    *result = 10;
    v65 = *(v64 + 56);
    if (v65 <= 0x7F)
    {
      *(result + 1) = v65;
      v63 = result + 2;
    }

    else
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v64 + 56), result + 1, a3);
    }

    result = sub_1000A0590(v64, v63, a3, a4);
    ++v62;
  }

  while (v62 < *(v59 + 24));
LABEL_80:
  v68 = *(v59 + 8);
  v67 = (v59 + 8);
  v66 = v68;
  if (v68 && *v66 != v66[1])
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v67, result, a3);
  }

LABEL_83:
  if ((*(this + 116) & 0x40) != 0)
  {
    v69 = *(this + 8);
    if (v69)
    {
      *result = 106;
      v70 = result + 1;
      v71 = v69[7];
      if (v71 <= 0x7F)
      {
LABEL_86:
        *(result + 1) = v71;
        v72 = (result + 2);
LABEL_89:
        result = sub_100094500(v69, v72, a3);
        goto LABEL_90;
      }
    }

    else
    {
      v69 = *(qword_10045DD10 + 64);
      *result = 106;
      v70 = result + 1;
      v71 = v69[7];
      if (v71 <= 0x7F)
      {
        goto LABEL_86;
      }
    }

    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v71, v70, a3);
    goto LABEL_89;
  }

LABEL_90:
  v75 = *(this + 1);
  v74 = (this + 8);
  v73 = v75;
  if (v75 && *v73 != v73[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v74, result, a3);
  }

  return result;
}

uint64_t sub_1000A3FC4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 116);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = 9;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_19:
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = sub_100094648(v8, a2);
      if (v9 < 0x80)
      {
LABEL_21:
        v10 = 1;
LABEL_24:
        v4 = (v4 + v9 + v10 + 1);
        v3 = *(a1 + 116);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = sub_100094648(*(qword_10045DD10 + 32), a2);
      if (v9 < 0x80)
      {
        goto LABEL_21;
      }
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    goto LABEL_24;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_10009F840(v5, a2);
    if (v6 < 0x80)
    {
LABEL_12:
      v7 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = sub_10009F840(*(qword_10045DD10 + 16), a2);
    if (v6 < 0x80)
    {
      goto LABEL_12;
    }
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
LABEL_15:
  v3 = *(a1 + 116);
  if ((v3 & 2) != 0)
  {
    v4 = (v6 + v7 + 10);
  }

  else
  {
    v4 = (v6 + v7 + 1);
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  if ((v3 & 8) != 0)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = sub_100094648(v11, a2);
      if (v12 < 0x80)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = sub_100094648(*(qword_10045DD10 + 40), a2);
      if (v12 < 0x80)
      {
LABEL_34:
        v4 = (v4 + v12 + 2);
        v3 = *(a1 + 116);
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_38;
        }

LABEL_27:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_28;
        }

LABEL_44:
        v15 = *(a1 + 56);
        if (v15)
        {
          v16 = sub_100094648(v15, a2);
          if (v16 < 0x80)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v16 = sub_100094648(*(qword_10045DD10 + 56), a2);
          if (v16 < 0x80)
          {
LABEL_46:
            v4 = (v4 + v16 + 2);
            v3 = *(a1 + 116);
            if ((v3 & 0x40) != 0)
            {
              goto LABEL_50;
            }

LABEL_29:
            if ((v3 & 0x80) == 0)
            {
              goto LABEL_30;
            }

LABEL_56:
            v19 = *(a1 + 72);
            if (v19)
            {
              v20 = sub_10009C160(v19, a2);
              if (v20 < 0x80)
              {
LABEL_58:
                v21 = 1;
                goto LABEL_61;
              }
            }

            else
            {
              v20 = sub_10009C160(*(qword_10045DD10 + 72), a2);
              if (v20 < 0x80)
              {
                goto LABEL_58;
              }
            }

            v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
LABEL_61:
            v4 = (v4 + v20 + v21 + 1);
            v3 = *(a1 + 116);
            if ((v3 & 0xFF00) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_62;
          }
        }

        v4 = v4 + v16 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
        v3 = *(a1 + 116);
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_29;
      }
    }

    v4 = v4 + v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 116);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_38:
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = sub_100094648(v13, a2);
    if (v14 < 0x80)
    {
      goto LABEL_40;
    }

LABEL_43:
    v4 = v4 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 116);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  v14 = sub_100094648(*(qword_10045DD10 + 48), a2);
  if (v14 >= 0x80)
  {
    goto LABEL_43;
  }

LABEL_40:
  v4 = (v4 + v14 + 2);
  v3 = *(a1 + 116);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_28:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_50:
  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = sub_100094648(v17, a2);
    if (v18 < 0x80)
    {
      goto LABEL_52;
    }

LABEL_55:
    v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 116);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_30;
  }

  v18 = sub_100094648(*(qword_10045DD10 + 64), a2);
  if (v18 >= 0x80)
  {
    goto LABEL_55;
  }

LABEL_52:
  v4 = (v4 + v18 + 2);
  v3 = *(a1 + 116);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  if ((v3 & 0xFF00) == 0)
  {
LABEL_66:
    v22 = (a1 + 8);
    v23 = *(a1 + 8);
    if (!v23)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

LABEL_62:
  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_64;
    }

LABEL_74:
    v26 = *(a1 + 88);
    if (v26)
    {
      v27 = sub_10009C160(v26, a2);
      if (v27 < 0x80)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v27 = sub_10009C160(*(qword_10045DD10 + 88), a2);
      if (v27 < 0x80)
      {
LABEL_76:
        v4 = (v4 + v27 + 2);
        v3 = *(a1 + 116);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_80;
        }

LABEL_65:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_86;
      }
    }

    v4 = v4 + v27 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
    v3 = *(a1 + 116);
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_65;
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    v25 = sub_10009C160(v24, a2);
    if (v25 < 0x80)
    {
      goto LABEL_70;
    }

LABEL_73:
    v4 = v4 + v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 116);
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_64;
  }

  v25 = sub_10009C160(*(qword_10045DD10 + 80), a2);
  if (v25 >= 0x80)
  {
    goto LABEL_73;
  }

LABEL_70:
  v4 = (v4 + v25 + 2);
  v3 = *(a1 + 116);
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_74;
  }

LABEL_64:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_65;
  }

LABEL_80:
  v28 = *(a1 + 96);
  if (v28)
  {
    v29 = sub_10009DFDC(v28, a2);
    if (v29 < 0x80)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v29 = sub_10009DFDC(*(qword_10045DD10 + 96), a2);
    if (v29 < 0x80)
    {
LABEL_82:
      v4 = (v4 + v29 + 2);
      if ((*(a1 + 116) & 0x800) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_86;
    }
  }

  v4 = v4 + v29 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
  if ((*(a1 + 116) & 0x800) == 0)
  {
    goto LABEL_66;
  }

LABEL_86:
  v30 = *(a1 + 104);
  if (!v30)
  {
    v30 = *(qword_10045DD10 + 104);
  }

  v31 = *(v30 + 24);
  if (v31 >= 1)
  {
    v32 = 0;
    do
    {
      v34 = sub_1000A07CC(*(*(v30 + 16) + 8 * v32), a2);
      v35 = v34;
      if (v34 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
      }

      else
      {
        v33 = 1;
      }

      v31 = (v35 + v31 + v33);
      ++v32;
    }

    while (v32 < *(v30 + 24));
  }

  v36 = *(v30 + 8);
  if (v36 && *v36 != v36[1])
  {
    v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v30 + 8), a2) + v31;
  }

  *(v30 + 40) = v31;
  if (v31 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
  }

  else
  {
    v37 = 1;
  }

  v4 = (v4 + v31 + v37 + 1);
  v22 = (a1 + 8);
  v23 = *(a1 + 8);
  if (v23)
  {
LABEL_101:
    if (*v23 != v23[1])
    {
      v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v22, a2) + v4;
    }
  }

LABEL_103:
  *(a1 + 112) = v4;
  return v4;
}

uint64_t sub_1000A4548(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000A16BC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A4628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4650(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A46E4()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CBD0;
}

void sub_1000A4774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4788(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 32);
    *(a1 + 56) |= 1u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 56) |= 2u;
  v9 = *(a1 + 16);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v14 = *(a2 + 36);
    *(a1 + 56) |= 0x10u;
    *(a1 + 36) = v14;
    if ((*(a2 + 56) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_19:
  v12 = *(a2 + 40);
  *(a1 + 56) |= 8u;
  v13 = *(a1 + 40);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 48);
    *(a1 + 56) |= 0x20u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A497C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A4990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000A49A4(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[3];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[5];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  return result;
}

void sub_1000A4AA4(void *a1)
{
  *a1 = off_100437A10;
  v2 = (a1 + 1);
  sub_1000A49A4(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A4B04(void *a1)
{
  *a1 = off_100437A10;
  v2 = (a1 + 1);
  sub_1000A49A4(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A4C24(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    goto LABEL_19;
  }

  *(a1 + 32) = 1;
  if ((v1 & 2) == 0 || (v2 = *(a1 + 16), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    if ((*(a1 + 56) & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((*(a1 + 56) & 4) != 0)
  {
LABEL_7:
    v3 = *(a1 + 24);
    if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }
  }

LABEL_13:
  if ((*(a1 + 56) & 8) != 0)
  {
    v4 = *(a1 + 40);
    if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }
  }

  *(a1 + 36) = 0;
  *(a1 + 48) = 0;
LABEL_19:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A4CF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v6 = *(this + 1);
              if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
              {
                TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
                *(this + 8) = TagFallback;
                if (!TagFallback)
                {
                  return 1;
                }
              }

              else
              {
                *(this + 8) = TagFallback;
                *(this + 1) = v6 + 1;
                if (!TagFallback)
                {
                  return 1;
                }
              }

              v8 = TagFallback >> 3;
              v9 = TagFallback & 7;
              if (TagFallback >> 3 > 3)
              {
                break;
              }

              if (v8 == 1)
              {
                if ((TagFallback & 7) != 0)
                {
                  goto LABEL_46;
                }

                v26 = 0;
                v13 = *(this + 1);
                if (v13 >= *(this + 2) || (v14 = *v13, v14 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
                  if (!result)
                  {
                    return result;
                  }

                  v14 = v26;
                  if (v26 - 1 <= 1)
                  {
LABEL_24:
                    *(a1 + 56) |= 1u;
                    *(a1 + 32) = v14;
                    goto LABEL_68;
                  }
                }

                else
                {
                  *(this + 1) = v13 + 1;
                  if ((v14 - 1) <= 1)
                  {
                    goto LABEL_24;
                  }
                }

                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v14);
LABEL_68:
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 18)
                {
                  *(this + 1) = v25 + 1;
                  *(a1 + 56) |= 2u;
                  if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_31:
                    operator new();
                  }

                  goto LABEL_32;
                }
              }

              else if (v8 == 2)
              {
                if (v9 != 2)
                {
                  goto LABEL_46;
                }

                *(a1 + 56) |= 2u;
                if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  goto LABEL_31;
                }

LABEL_32:
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v15 = *(this + 1);
                if (v15 < *(this + 2) && *v15 == 26)
                {
                  *(this + 1) = v15 + 1;
                  *(a1 + 56) |= 4u;
                  if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_36:
                    operator new();
                  }

                  goto LABEL_12;
                }
              }

              else
              {
                if (v8 != 3 || v9 != 2)
                {
                  goto LABEL_46;
                }

                *(a1 + 56) |= 4u;
                if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  goto LABEL_36;
                }

LABEL_12:
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v16 = *(this + 1);
                if (v16 < *(this + 2) && *v16 == 34)
                {
                  *(this + 1) = v16 + 1;
                  *(a1 + 56) |= 8u;
                  if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_40:
                    operator new();
                  }

                  goto LABEL_27;
                }
              }
            }

            if (v8 != 4)
            {
              break;
            }

            if (v9 != 2)
            {
              goto LABEL_46;
            }

            *(a1 + 56) |= 8u;
            if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              goto LABEL_40;
            }

LABEL_27:
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
            if (v17 < v11 && *v17 == 40)
            {
              v18 = v17 + 1;
              *(this + 1) = v18;
              if (v18 >= v11)
              {
                goto LABEL_53;
              }

LABEL_50:
              v19 = *v18;
              if (v19 < 0)
              {
                goto LABEL_53;
              }

              *(a1 + 36) = v19;
              v20 = v18 + 1;
              *(this + 1) = v20;
              *(a1 + 56) |= 0x10u;
              if (v20 < v11)
              {
LABEL_55:
                if (*v20 == 48)
                {
                  v12 = v20 + 1;
                  *(this + 1) = v12;
                  if (v12 >= v11)
                  {
                    goto LABEL_60;
                  }

LABEL_57:
                  v21 = *v12;
                  if (v21 < 0)
                  {
                    goto LABEL_60;
                  }

                  *(a1 + 48) = v21;
                  v22 = v12 + 1;
                  *(this + 1) = v22;
                  *(a1 + 56) |= 0x20u;
                  if (v22 == v11)
                  {
                    goto LABEL_62;
                  }
                }
              }
            }
          }

          if (v8 != 5)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_46;
          }

          v18 = *(this + 1);
          v11 = *(this + 2);
          if (v18 < v11)
          {
            goto LABEL_50;
          }

LABEL_53:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v11 = *(this + 2);
          *(a1 + 56) |= 0x10u;
          if (v20 < v11)
          {
            goto LABEL_55;
          }
        }

        if (v8 == 6 && (TagFallback & 7) == 0)
        {
          break;
        }

LABEL_46:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
      if (v12 < v11)
      {
        goto LABEL_57;
      }

LABEL_60:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
      if (!result)
      {
        return result;
      }

      v24 = *(this + 1);
      v23 = *(this + 2);
      *(a1 + 56) |= 0x20u;
    }

    while (v24 != v23);
LABEL_62:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1000A5160(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 32), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v12 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  if ((*(v5 + 56) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
  v13 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v13;
  if (!v13)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A526C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 56))
  {
    v11 = *(this + 8);
    *a2 = 8;
    v12 = a2 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
      v6 = *(this + 14);
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else if (v11 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
      v6 = *(this + 14);
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(v4 + 1) = v11;
      v4 = (v4 + 2);
      v6 = *(this + 14);
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v6 = *(this + 14);
  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  v13 = *(this + 2);
  *v4 = 18;
  v14 = *(v13 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(v13 + 8);
    if (v14 <= 0x7F)
    {
      goto LABEL_21;
    }
  }

  else if (v14 <= 0x7F)
  {
LABEL_21:
    *(v4 + 1) = v14;
    v15 = v4 + 2;
    goto LABEL_24;
  }

  v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
LABEL_24:
  v16 = *(v13 + 23);
  if (v16 >= 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = *v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v13 + 23);
  }

  else
  {
    v18 = *(v13 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
  v6 = *(this + 14);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_31:
  v19 = *(this + 3);
  *v4 = 26;
  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = *(v19 + 8);
    if (v20 <= 0x7F)
    {
      goto LABEL_33;
    }
  }

  else if (v20 <= 0x7F)
  {
LABEL_33:
    *(v4 + 1) = v20;
    v21 = v4 + 2;
    goto LABEL_36;
  }

  v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v4 + 1, a3);
LABEL_36:
  v22 = *(v19 + 23);
  if (v22 >= 0)
  {
    v23 = v19;
  }

  else
  {
    v23 = *v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v19 + 23);
  }

  else
  {
    v24 = *(v19 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, a4);
  v6 = *(this + 14);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_43:
  v25 = *(this + 5);
  *v4 = 34;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) != 0)
  {
    v26 = *(v25 + 8);
    if (v26 <= 0x7F)
    {
      goto LABEL_45;
    }
  }

  else if (v26 <= 0x7F)
  {
LABEL_45:
    *(v4 + 1) = v26;
    v27 = v4 + 2;
    goto LABEL_48;
  }

  v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
LABEL_48:
  v28 = *(v25 + 23);
  if (v28 >= 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = *v25;
  }

  if (v28 >= 0)
  {
    v30 = *(v25 + 23);
  }

  else
  {
    v30 = *(v25 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v29, v30, v27, a4);
  if ((*(this + 14) & 0x10) == 0)
  {
LABEL_6:
    if ((*(this + 56) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_59:
    v32 = *(this + 12);
    *v4 = 48;
    if (v32 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v4 + 1, a3);
      v34 = *(this + 1);
      v8 = (this + 8);
      v7 = v34;
      if (!v34)
      {
        return v4;
      }
    }

    else
    {
      *(v4 + 1) = v32;
      v4 = (v4 + 2);
      v33 = *(this + 1);
      v8 = (this + 8);
      v7 = v33;
      if (!v33)
      {
        return v4;
      }
    }

    goto LABEL_8;
  }

LABEL_55:
  v31 = *(this + 9);
  *v4 = 40;
  if (v31 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *(v4 + 1) = v31;
    v4 = (v4 + 2);
    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_7:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9)
  {
    return v4;
  }

LABEL_8:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1000A5500(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 56);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

  if (*(a1 + 56))
  {
    v7 = *(a1 + 32);
    if ((v7 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 56);
      if ((v3 & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 56) & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v3 = *(a1 + 56);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v4 = (v4 + v13 + v9 + 1);
LABEL_23:
  if ((v3 & 4) != 0)
  {
    v15 = *(a1 + 24);
    v16 = *(v15 + 23);
    v17 = v16;
    v18 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = v18;
    }

    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      v16 = *(v15 + 23);
      v18 = *(v15 + 8);
      v3 = *(a1 + 56);
      v17 = *(v15 + 23);
    }

    else
    {
      v20 = 1;
    }

    if (v17 < 0)
    {
      v16 = v18;
    }

    v4 = (v4 + v20 + v16 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_25:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_25;
  }

  v21 = *(a1 + 40);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v3 = *(a1 + 56);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v4 = (v4 + v26 + v22 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_26:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_51:
    v28 = *(a1 + 48);
    if (v28 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_55;
  }

LABEL_47:
  v27 = *(a1 + 36);
  if (v27 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1 + v4;
    if ((*(a1 + 56) & 0x20) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_27:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_28:
    *(a1 + 52) = v4;
    return v4;
  }

LABEL_55:
  if (*v6 == v6[1])
  {
    goto LABEL_28;
  }

  v29 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 52) = v29;
  return v29;
}

uint64_t sub_1000A574C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000A4788(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A582C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A5840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5854(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A58E8()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CBE0;
}

void sub_1000A5978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A598C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    v8 = *(a1 + 16);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 56) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 28);
  *(a1 + 56) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v13 = *(a2 + 40);
    *(a1 + 56) |= 0x10u;
    *(a1 + 40) = v13;
    if ((*(a2 + 56) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_17:
  v11 = *(a2 + 32);
  *(a1 + 56) |= 8u;
  v12 = *(a1 + 32);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 48);
    *(a1 + 56) |= 0x20u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A5B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A5B6C(void *a1)
{
  *a1 = off_100437AC0;
  v2 = a1[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v4 = a1[4];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A5C40(void *a1)
{
  sub_1000A5B6C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A5D1C(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    goto LABEL_14;
  }

  if ((*(a1 + 56) & 1) == 0 || (v1 = *(a1 + 16), v1 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    *(a1 + 24) = 0;
    if ((*(a1 + 56) & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    *v1 = 0;
    *(v1 + 23) = 0;
    goto LABEL_6;
  }

  **v1 = 0;
  *(v1 + 8) = 0;
  *(a1 + 24) = 0;
  if ((*(a1 + 56) & 8) != 0)
  {
LABEL_7:
    v2 = *(a1 + 32);
    if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }
    }
  }

LABEL_13:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
LABEL_14:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A5DBC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v6 = *(this + 1);
            if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              *(this + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(this + 8) = TagFallback;
              *(this + 1) = v6 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v8 = TagFallback >> 3;
            v9 = TagFallback & 7;
            if (TagFallback >> 3 > 3)
            {
              break;
            }

            if (v8 == 1)
            {
              if (v9 != 2)
              {
                goto LABEL_40;
              }

              *(a1 + 56) |= 1u;
              if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v10 = *(this + 2);
              if (v15 < v10 && *v15 == 16)
              {
                v16 = v15 + 1;
                *(this + 1) = v16;
LABEL_35:
                if (v16 >= v10 || (v19 = *v16, v19 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                  if (!result)
                  {
                    return result;
                  }

                  v20 = *(this + 1);
                  v10 = *(this + 2);
                  *(a1 + 56) |= 2u;
                  if (v20 < v10)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  *(a1 + 24) = v19;
                  v20 = v16 + 1;
                  *(this + 1) = v20;
                  *(a1 + 56) |= 2u;
                  if (v20 < v10)
                  {
LABEL_62:
                    if (*v20 == 24)
                    {
                      v11 = v20 + 1;
                      *(this + 1) = v11;
                      if (v11 < v10)
                      {
                        goto LABEL_64;
                      }

LABEL_67:
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                      if (!result)
                      {
                        return result;
                      }

                      v26 = *(this + 1);
                      v28 = *(this + 2);
                      v27 = *(a1 + 56) | 4;
                      *(a1 + 56) = v27;
                      if (v26 < v28)
                      {
                        goto LABEL_69;
                      }
                    }
                  }
                }
              }
            }

            else
            {
              if (v8 == 2)
              {
                if ((TagFallback & 7) != 0)
                {
                  goto LABEL_40;
                }

                v16 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_35;
              }

              if (v8 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              if (v11 >= v10)
              {
                goto LABEL_67;
              }

LABEL_64:
              v25 = *v11;
              if (v25 < 0)
              {
                goto LABEL_67;
              }

              *(a1 + 28) = v25;
              v26 = v11 + 1;
              *(this + 1) = v26;
              v27 = *(a1 + 56) | 4;
              *(a1 + 56) = v27;
              if (v26 < v10)
              {
LABEL_69:
                if (*v26 == 34)
                {
                  *(this + 1) = v26 + 1;
                  *(a1 + 56) = v27 | 8;
                  if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_28:
                    operator new();
                  }

                  goto LABEL_29;
                }
              }
            }
          }

          if (v8 != 4)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_40;
          }

          *(a1 + 56) |= 8u;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            goto LABEL_28;
          }

LABEL_29:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v12 = *(this + 2);
          if (v17 < v12 && *v17 == 40)
          {
            v18 = v17 + 1;
            *(this + 1) = v18;
            goto LABEL_44;
          }
        }

        if (v8 != 5)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
LABEL_44:
        if (v18 >= v12 || (v21 = *v18, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v12 = *(this + 2);
          *(a1 + 56) |= 0x10u;
          if (v22 < v12)
          {
            goto LABEL_50;
          }
        }

        else
        {
          *(a1 + 40) = v21;
          v22 = v18 + 1;
          *(this + 1) = v22;
          *(a1 + 56) |= 0x10u;
          if (v22 < v12)
          {
LABEL_50:
            if (*v22 == 48)
            {
              v13 = v22 + 1;
              *(this + 1) = v13;
              v29 = 0;
              if (v13 >= v12)
              {
                goto LABEL_54;
              }

              goto LABEL_52;
            }
          }
        }
      }

      if (v8 == 6 && (TagFallback & 7) == 0)
      {
        break;
      }

LABEL_40:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    v13 = *(this + 1);
    v12 = *(this + 2);
    v29 = 0;
    if (v13 >= v12)
    {
      goto LABEL_54;
    }

LABEL_52:
    v23 = *v13;
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v13 + 1;
      *(this + 1) = v24;
      goto LABEL_56;
    }

LABEL_54:
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
    if (!result)
    {
      return result;
    }

    v23 = v29;
    v24 = *(this + 1);
    v12 = *(this + 2);
LABEL_56:
    *(a1 + 48) = v23 != 0;
    *(a1 + 56) |= 0x20u;
  }

  while (v24 != v12 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1000A61E4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    v10 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = *(v5 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  if ((*(v5 + 56) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 48), a2, a4);
  v12 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A62F0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 14);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v11 = *(this + 2);
  *a2 = 10;
  v12 = a2 + 1;
  v13 = *(v11 + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v11 + 8);
    if (v13 <= 0x7F)
    {
      goto LABEL_11;
    }
  }

  else if (v13 <= 0x7F)
  {
LABEL_11:
    *(v4 + 1) = v13;
    v14 = v4 + 2;
    goto LABEL_14;
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
LABEL_14:
  v15 = *(v11 + 23);
  if (v15 >= 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *v11;
  }

  if (v15 >= 0)
  {
    v17 = *(v11 + 23);
  }

  else
  {
    v17 = *(v11 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
  if ((*(this + 14) & 2) == 0)
  {
LABEL_3:
    if ((*(this + 56) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v19 = *(this + 7);
    *v4 = 24;
    if (v19 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
      v7 = *(this + 14);
      if ((v7 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(v4 + 1) = v19;
      v4 = (v4 + 2);
      v7 = *(this + 14);
      if ((v7 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_21:
  v18 = *(this + 6);
  *v4 = 16;
  if (v18 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(v4 + 1) = v18;
    v4 = (v4 + 2);
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  v7 = *(this + 14);
  if ((v7 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_29:
  v20 = *(this + 4);
  *v4 = 34;
  v21 = *(v20 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(v20 + 8);
    if (v21 <= 0x7F)
    {
      goto LABEL_31;
    }
  }

  else if (v21 <= 0x7F)
  {
LABEL_31:
    *(v4 + 1) = v21;
    v22 = v4 + 2;
    goto LABEL_34;
  }

  v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
LABEL_34:
  v23 = *(v20 + 23);
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = *v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  v7 = *(this + 14);
  if ((v7 & 0x10) == 0)
  {
LABEL_6:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v26 = *(this + 5);
  *v4 = 40;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v26, v4 + 1, a3);
  if ((*(this + 14) & 0x20) == 0)
  {
LABEL_7:
    v10 = *(this + 1);
    v9 = (this + 8);
    v8 = v10;
    if (!v10)
    {
      return v4;
    }

    goto LABEL_43;
  }

LABEL_42:
  v27 = *(this + 48);
  *v4 = 48;
  *(v4 + 1) = v27;
  v4 = (v4 + 2);
  v28 = *(this + 1);
  v9 = (this + 8);
  v8 = v28;
  if (!v28)
  {
    return v4;
  }

LABEL_43:
  if (*v8 == v8[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, v4, a3);
}

uint64_t sub_1000A6504(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (v7)
    {
      goto LABEL_27;
    }

LABEL_6:
    *(a1 + 52) = v5;
    return v5;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v9 = *(a1 + 16);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = *(v9 + 23);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  if (v11 < 0x80)
  {
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v9 + 8);
    }

    v4 = v10 + 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = *(a1 + 24);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
    goto LABEL_22;
  }

  v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  v13 = *(v9 + 23);
  v3 = *(a1 + 56);
  if (*(v9 + 23) < 0)
  {
    v13 = *(v9 + 8);
  }

  v4 = v12 + 1 + v13;
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v17 = *(a1 + 28);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      v3 = *(a1 + 56);
      v4 += v18 + 1;
      if ((v3 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_24:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v19 = *(a1 + 32);
  v20 = *(v19 + 23);
  v21 = v20;
  v22 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v23 = *(v19 + 23);
  }

  else
  {
    v23 = v22;
  }

  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
    v20 = *(v19 + 23);
    v22 = *(v19 + 8);
    v3 = *(a1 + 56);
    v21 = *(v19 + 23);
  }

  else
  {
    v24 = 1;
  }

  if (v21 < 0)
  {
    v20 = v22;
  }

  v4 += v24 + v20 + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_25:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    v3 = *(a1 + 56);
  }

LABEL_26:
  v5 = ((v3 >> 4) & 2) + v4;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_27:
  if (*v7 == v7[1])
  {
    goto LABEL_6;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 52) = v16;
  return v16;
}

uint64_t sub_1000A66DC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000A598C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A67E4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A687C()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CBF8;
}

void sub_1000A690C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6920(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), *(a2 + 40) + *(a1 + 40));
  if (*(a2 + 40) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 32) + 8 * v4);
      v7 = *(a1 + 44);
      v8 = *(a1 + 40);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v7 + 1);
          v7 = *(a1 + 44);
        }

        *(a1 + 44) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 32);
      *(a1 + 40) = v8 + 1;
      sub_1000A598C(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 40));
  }

  LOBYTE(v9) = *(a2 + 64);
  if (!v9)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    *(a1 + 64) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 16);
    if (!v11)
    {
      v11 = *(qword_10045DD28 + 16);
    }

    sub_1000525C8(v10, v11);
    v9 = *(a2 + 64);
  }

  if ((v9 & 2) == 0)
  {
    if ((v9 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    v15 = *(a2 + 28);
    *(a1 + 64) |= 4u;
    *(a1 + 28) = v15;
    if ((*(a2 + 64) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_19;
  }

  v14 = *(a2 + 24);
  *(a1 + 64) |= 2u;
  *(a1 + 24) = v14;
  v9 = *(a2 + 64);
  if ((v9 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v9 & 8) != 0)
  {
LABEL_19:
    v12 = *(a2 + 56);
    *(a1 + 64) |= 8u;
    *(a1 + 56) = v12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A6BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A6BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A6BF4(uint64_t a1)
{
  *a1 = off_100437B70;
  if (qword_10045DD28 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 44);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 32) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 44);
      }
    }
  }

  if (*(a1 + 32))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A6D00(uint64_t a1)
{
  sub_1000A6BF4(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A6DD8(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 64))
  {
    if (*(this + 64))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10005283C(this);
      }
    }

    *(v1 + 3) = 0;
    *(v1 + 14) = 0;
  }

  if (*(v1 + 10) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 4) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 10));
  }

  v5 = *(v1 + 1);
  v4 = (v1 + 8);
  *(v4 + 8) = 0;
  *(v4 + 14) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_1000A6E94(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_25;
            }

            *(a1 + 64) |= 1u;
            v18 = *(a1 + 16);
            if (!v18)
            {
              operator new();
            }

            v46 = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v19;
              *(this + 1) = v19 + 1;
            }

            v20 = *(this + 14);
            v21 = *(this + 15);
            *(this + 14) = v20 + 1;
            if (v20 >= v21)
            {
              return 0;
            }

            v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v46);
            if (!sub_10005285C(v18, this, v23, v24) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
            v25 = *(this + 14);
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v27 < 0 == v26)
            {
              *(this + 14) = v27;
            }

            v28 = *(this + 1);
            v14 = *(this + 2);
            if (v28 < v14 && *v28 == 16)
            {
              v15 = v28 + 1;
              *(this + 1) = v15;
              if (v15 < v14)
              {
                goto LABEL_42;
              }

LABEL_45:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v30 = *(this + 1);
              v14 = *(this + 2);
              *(a1 + 64) |= 2u;
              if (v30 < v14)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v15 = *(this + 1);
            v14 = *(this + 2);
            if (v15 >= v14)
            {
              goto LABEL_45;
            }

LABEL_42:
            v29 = *v15;
            if (v29 < 0)
            {
              goto LABEL_45;
            }

            *(a1 + 24) = v29;
            v30 = v15 + 1;
            *(this + 1) = v30;
            *(a1 + 64) |= 2u;
            if (v30 < v14)
            {
LABEL_47:
              if (*v30 == 24)
              {
                v16 = v30 + 1;
                *(this + 1) = v16;
                if (v16 < v14)
                {
                  goto LABEL_49;
                }

LABEL_52:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                if (!result)
                {
                  return result;
                }

                v33 = *(this + 1);
                v14 = *(this + 2);
                *(a1 + 64) |= 4u;
                if (v33 < v14)
                {
                  goto LABEL_54;
                }
              }
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v16 = *(this + 1);
        v14 = *(this + 2);
        if (v16 >= v14)
        {
          goto LABEL_52;
        }

LABEL_49:
        v32 = *v16;
        if (v32 < 0)
        {
          goto LABEL_52;
        }

        *(a1 + 28) = v32;
        v33 = v16 + 1;
        *(this + 1) = v33;
        *(a1 + 64) |= 4u;
        if (v33 < v14)
        {
LABEL_54:
          if (*v33 == 32)
          {
            v17 = v33 + 1;
            *(this + 1) = v17;
            if (v17 < v14)
            {
              goto LABEL_56;
            }

LABEL_59:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
            if (!result)
            {
              return result;
            }

            v35 = *(this + 1);
            v36 = *(this + 2);
            *(a1 + 64) |= 8u;
            if (v35 < v36)
            {
              goto LABEL_61;
            }
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_25;
      }

      v17 = *(this + 1);
      v14 = *(this + 2);
      if (v17 >= v14)
      {
        goto LABEL_59;
      }

LABEL_56:
      v34 = *v17;
      if (v34 < 0)
      {
        goto LABEL_59;
      }

      *(a1 + 56) = v34;
      v35 = v17 + 1;
      *(this + 1) = v35;
      *(a1 + 64) |= 8u;
      if (v35 < v14)
      {
LABEL_61:
        if (*v35 == 42)
        {
          do
          {
            *(this + 1) = v35 + 1;
            v10 = *(a1 + 44);
            v11 = *(a1 + 40);
            if (v11 >= v10)
            {
              goto LABEL_63;
            }

LABEL_12:
            v12 = *(a1 + 32);
            *(a1 + 40) = v11 + 1;
            v13 = *(v12 + 8 * v11);
            v47 = 0;
            v37 = *(this + 1);
            if (v37 >= *(this + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v37;
              *(this + 1) = v37 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
            if (!sub_1000A5DBC(v13, this, v41, v42) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
            v43 = *(this + 14);
            v26 = __OFSUB__(v43, 1);
            v44 = v43 - 1;
            if (v44 < 0 == v26)
            {
              *(this + 14) = v44;
            }

            v35 = *(this + 1);
            v45 = *(this + 2);
          }

          while (v35 < v45 && *v35 == 42);
          if (v35 == v45 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 5 && v9 == 2)
    {
      v10 = *(a1 + 44);
      v11 = *(a1 + 40);
      if (v11 < v10)
      {
        goto LABEL_12;
      }

LABEL_63:
      if (v10 == *(a1 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v10 + 1);
        v10 = *(a1 + 44);
      }

      *(a1 + 44) = v10 + 1;
      operator new();
    }

LABEL_25:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000A73D4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    v7 = *(result + 16);
    if (v7)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD28 + 16), a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 56), a2, a4);
    if (*(v5 + 40) < 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (*(v5 + 40) < 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v8 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 32) + 8 * v8++), a2, a4);
  }

  while (v8 < *(v5 + 40));
LABEL_16:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A7514(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 16);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = v7[8];
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_100052ACC(v7, v11, v12);
    if ((*(this + 16) & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DD28 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = v7[8];
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_100052ACC(v7, (v8 + 2), a3);
  if ((*(this + 16) & 2) == 0)
  {
LABEL_12:
    if ((*(this + 64) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_10:
  v13 = result;
  v14 = *(this + 6);
  v15 = v13;
  *v13 = 16;
  v16 = v13 + 1;
  if (v14 <= 0x7F)
  {
    *(v15 + 1) = v14;
    result = (v15 + 2);
    goto LABEL_12;
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v16, a3);
  if ((*(this + 64) & 4) == 0)
  {
LABEL_13:
    if ((*(this + 64) & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v25 = result;
    v26 = *(this + 14);
    v27 = v25;
    *v25 = 32;
    v28 = v25 + 1;
    if (v26 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v28, a3);
      if (*(this + 10) < 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(v27 + 1) = v26;
      result = (v27 + 2);
      if (*(this + 10) < 1)
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    v17 = 0;
    do
    {
      v19 = *(*(this + 4) + 8 * v17);
      *result = 42;
      v20 = *(v19 + 13);
      if (v20 <= 0x7F)
      {
        *(result + 1) = v20;
        v18 = (result + 2);
      }

      else
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v19 + 13), result + 1, a3);
      }

      result = sub_1000A62F0(v19, v18, a3, a4);
      ++v17;
    }

    while (v17 < *(this + 10));
    goto LABEL_29;
  }

LABEL_21:
  v21 = result;
  v22 = *(this + 7);
  v23 = v21;
  *v21 = 24;
  v24 = v21 + 1;
  if (v22 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v24, a3);
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(v23 + 1) = v22;
    result = (v23 + 2);
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_14:
  if (*(this + 10) >= 1)
  {
    goto LABEL_15;
  }

LABEL_29:
  v31 = *(this + 1);
  v30 = (this + 8);
  v29 = v31;
  if (v31 && *v29 != v29[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, result, a3);
  }

  return result;
}

uint64_t sub_1000A7728(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v5 = *(a1 + 40);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_100052B7C(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = sub_100052B7C(*(qword_10045DD28 + 16), a2);
    if (v8 < 0x80)
    {
LABEL_9:
      v4 = v8 + 2;
      v3 = *(a1 + 64);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
  v3 = *(a1 + 64);
  if ((v3 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = *(a1 + 24);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 28);
    if (v12 >= 0x80)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      if ((*(a1 + 64) & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_19:
    v11 = *(a1 + 40);
    v6 = (v11 + v4);
    if (v11 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v13 = *(a1 + 56);
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v16 = *(a1 + 40);
    v6 = (v16 + v15 + 1 + v4);
    if (v16 < 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = *(a1 + 40);
    v6 = (v14 + v4 + 2);
    if (v14 < 1)
    {
      goto LABEL_34;
    }
  }

LABEL_29:
  v17 = 0;
  do
  {
    v19 = sub_1000A6504(*(*(a1 + 32) + 8 * v17), a2);
    v20 = v19;
    if (v19 < 0x80)
    {
      v18 = 1;
    }

    else
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    v6 = (v20 + v6 + v18);
    ++v17;
  }

  while (v17 < *(a1 + 40));
LABEL_34:
  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 60) = v6;
  return v6;
}

uint64_t sub_1000A7908(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000A6920(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A79E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A79FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7A10(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000A7A9C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      result = (*(*v2 + 40))(v2);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = (*(**(qword_10045DD28 + 16) + 40))(*(qword_10045DD28 + 16));
      if (!result)
      {
        return result;
      }
    }
  }

  if (*(a1 + 40) < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = *(*(a1 + 32) + 8 * v4);
    result = (*(*v5 + 40))(v5);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(a1 + 40));
  return result;
}

uint64_t sub_1000A7B8C()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC08;
}

void sub_1000A7C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000A7CAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000A7EBC(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 17;
  strcpy(__p, "CLPLogEntry.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  qword_10045CC30 = *(FileByName + 80);
  operator new();
}

void sub_1000A7E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A7E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A7EBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CC20 & 1) == 0)
  {
    byte_10045CC20 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPLogEntry.pb.cc", a4);
    sub_100053EFC(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x11CLPLogEntry.proto\x12\x12proto.CLP.LogEntry\x1A\x1BCLPPrivateDataCapture.proto\xB2\x02\n\bLogEntry\x12A\n\x11event_record_time\x18\x01 \x01(\v2&.proto.CLP.LogEntry.LogEntry.TimeStamp\x12P\n\x14private_data_capture\x18\x04 \x01(\v22.proto.CLP.LogEntry.PrivateData.PrivateDataCapture\x1A\x8A\x01\n\tTimeStamp\x12\x1A\n\x12cf_absolute_time_s\x18\x01 \x01(\x01\x12\x1C\n\x14mach_absolute_time_s\x18\x02 \x01(\x01\x12\x1E\n\x16mach_continuous_time_s\x18\x03 \x01(\x01\x12#\n\x1Bpipelined_monotonic_time_ns\x18\x04 \x01(\x03*\x04\b\x02\x10\x03", 0x179, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000A807C()
{
  if (qword_10045DD30)
  {
    (*(*qword_10045DD30 + 8))(qword_10045DD30);
  }

  if (qword_10045CC38)
  {
    (*(*qword_10045CC38 + 8))(qword_10045CC38);
  }

  if (qword_10045DD38)
  {
    (*(*qword_10045DD38 + 8))(qword_10045DD38);
  }

  result = qword_10045CC48;
  if (qword_10045CC48)
  {
    v1 = *(*qword_10045CC48 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000A8164()
{
  v0 = qword_10045CC50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[1] = sub_1000A7CAC;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_10045DD30)
  {
    (sub_1000A7EBC)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD38)
  {
    sub_1000A7EBC(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000A8248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A825C(void *a1)
{
  *a1 = off_100437E38;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 1));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 4));
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_1000A82C0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A82F0(uint64_t a1)
{
  *a1 = off_100437D88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000A8354(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 52))
  {
    v7 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v9;
      if ((*(a2 + 52) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8484(uint64_t a1, uint64_t a2)
{
  *a1 = off_100437D88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_1000A8354(a1, a2);
  return a1;
}

void sub_1000A84F4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1000A8524(uint64_t a1)
{
  *a1 = off_100437D88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A8578(uint64_t a1)
{
  *a1 = off_100437D88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A8678(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A869C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v20;
          *(a1 + 52) |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 17)
          {
            *(this + 1) = v12 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_22:
          *(a1 + 24) = v20;
          *(a1 + 52) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 25)
          {
            *(this + 1) = v13 + 1;
LABEL_29:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v20;
            *(a1 + 52) |= 4u;
            v14 = *(this + 1);
            v10 = *(this + 2);
            if (v14 < v10 && *v14 == 32)
            {
              v11 = v14 + 1;
              *(this + 1) = v11;
              v20 = 0;
              if (v11 < v10)
              {
                goto LABEL_33;
              }

LABEL_36:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v20);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              v18 = *(this + 2);
              *(a1 + 40) = v20;
              *(a1 + 52) |= 8u;
              if (v19 == v18)
              {
                goto LABEL_38;
              }
            }
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 != 4 || (TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_36;
      }

LABEL_33:
      v15 = *v11;
      if (v15 < 0)
      {
        goto LABEL_36;
      }

      v16 = v11 + 1;
      *(this + 1) = v16;
      *(a1 + 40) = v15;
      *(a1 + 52) |= 8u;
      if (v16 == v10)
      {
LABEL_38:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_29;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000A8928(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  if ((*(v5 + 52) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 40), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1000A89FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  v3 = *(a1 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 52) & 8) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = *(a1 + 40);
  *a2 = 32;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
    return a2;
  }

LABEL_11:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}