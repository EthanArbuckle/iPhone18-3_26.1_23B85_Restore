uint64_t sub_10043D928(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t sub_10043D9B4(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

double sub_10043D9EC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10043D5A4(a1, lpsrc);
}

void sub_10043DA8C(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = a2[20];
  if (v4)
  {
    if (a2[20])
    {
      v6 = a2[8];
      *(a1 + 20) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 5);
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

    else if ((a2[20] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 20) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 5);
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
    v8 = a2[10];
    *(a1 + 20) |= 4u;
    *(a1 + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = a2[11];
    *(a1 + 20) |= 8u;
    *(a1 + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = a2[12];
    *(a1 + 20) |= 0x10u;
    *(a1 + 12) = v10;
    v4 = *(a2 + 5);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = a2[13];
    *(a1 + 20) |= 0x20u;
    *(a1 + 13) = v11;
    v4 = *(a2 + 5);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = a2[14];
    *(a1 + 20) |= 0x40u;
    *(a1 + 14) = v12;
    if ((*(a2 + 5) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = a2[15];
    *(a1 + 20) |= 0x80u;
    *(a1 + 15) = v5;
  }
}

void sub_10043DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043DC38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024536E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043DCD8(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10043DCEC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_67;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v34 = 0;
      v13 = *(this + 1);
      v8 = *(this + 2);
      if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
        if (!result)
        {
          return result;
        }

        v14 = v34;
        v15 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v15 = v13 + 1;
        *(this + 1) = v15;
      }

      *(a1 + 8) = v14 != 0;
      *(a1 + 20) |= 1u;
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(this + 1) = v9;
LABEL_43:
        v34 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
          if (!result)
          {
            return result;
          }

          v19 = v34;
          v20 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 9) = v19 != 0;
        *(a1 + 20) |= 2u;
        if (v20 < v8 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(this + 1) = v17;
LABEL_51:
          v34 = 0;
          if (v17 >= v8 || (v21 = *v17, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
            if (!result)
            {
              return result;
            }

            v21 = v34;
            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v22 = v17 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 10) = v21 != 0;
          *(a1 + 20) |= 4u;
          if (v22 < v8 && *v22 == 32)
          {
            v11 = v22 + 1;
            *(this + 1) = v11;
LABEL_59:
            v34 = 0;
            if (v11 >= v8 || (v23 = *v11, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
              if (!result)
              {
                return result;
              }

              v23 = v34;
              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v24 = v11 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 11) = v23 != 0;
            *(a1 + 20) |= 8u;
            if (v24 < v8 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(this + 1) = v16;
LABEL_67:
              v34 = 0;
              if (v16 >= v8 || (v25 = *v16, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                if (!result)
                {
                  return result;
                }

                v25 = v34;
                v26 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v26 = v16 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 12) = v25 != 0;
              *(a1 + 20) |= 0x10u;
              if (v26 < v8 && *v26 == 48)
              {
                v10 = v26 + 1;
                *(this + 1) = v10;
LABEL_75:
                v34 = 0;
                if (v10 >= v8 || (v27 = *v10, (v27 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                  if (!result)
                  {
                    return result;
                  }

                  v27 = v34;
                  v28 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  v28 = v10 + 1;
                  *(this + 1) = v28;
                }

                *(a1 + 13) = v27 != 0;
                *(a1 + 20) |= 0x20u;
                if (v28 < v8 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(this + 1) = v18;
LABEL_83:
                  v34 = 0;
                  if (v18 >= v8 || (v29 = *v18, (v29 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                    if (!result)
                    {
                      return result;
                    }

                    v29 = v34;
                    v30 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    v30 = v18 + 1;
                    *(this + 1) = v30;
                  }

                  *(a1 + 14) = v29 != 0;
                  *(a1 + 20) |= 0x40u;
                  if (v30 < v8 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(this + 1) = v12;
LABEL_91:
                    v34 = 0;
                    if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                      if (!result)
                      {
                        return result;
                      }

                      v31 = v34;
                      v32 = *(this + 1);
                      v8 = *(this + 2);
                    }

                    else
                    {
                      v32 = v12 + 1;
                      *(this + 1) = v32;
                    }

                    *(a1 + 15) = v31 != 0;
                    *(a1 + 20) |= 0x80u;
                    if (v32 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
                    {
                      *(this + 8) = 0;
                      result = 1;
                      *(this + 36) = 1;
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_43;
    }

LABEL_34:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10043E1A8(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
    if ((*(v5 + 20) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 15);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

uint64_t sub_10043E2C0(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v1 = *(a1 + 20);
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_101C655A0), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 16) = v3;
  return v3;
}

void sub_10043E328(uint64_t a1, _BYTE *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10043DA8C(a1, lpsrc);
}

void sub_10043E3C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  v4 = *(a2 + 148);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(a1 + 148) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636DB8 + 8);
    }

    sub_10041ED1C(v6, v7);
    v4 = *(a2 + 148);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 148) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636DB8 + 16);
  }

  sub_10041ED1C(v8, v9);
  v4 = *(a2 + 148);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_33:
  *(a1 + 148) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_102636DB8 + 24);
  }

  sub_10041ED1C(v10, v11);
  v4 = *(a2 + 148);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a2 + 40);
  *(a1 + 148) |= 8u;
  *(a1 + 40) = v12;
  v4 = *(a2 + 148);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    v14 = *(a2 + 48);
    *(a1 + 148) |= 0x20u;
    *(a1 + 48) = v14;
    v4 = *(a2 + 148);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_39:
  v13 = *(a2 + 32);
  *(a1 + 148) |= 0x10u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 148);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_41:
  v15 = *(a2 + 44);
  *(a1 + 148) |= 0x40u;
  *(a1 + 44) = v15;
  v4 = *(a2 + 148);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 72);
    *(a1 + 148) |= 0x80u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 148);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_57;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 56);
    *(a1 + 148) |= 0x100u;
    *(a1 + 56) = v16;
    v4 = *(a2 + 148);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 64);
  *(a1 + 148) |= 0x200u;
  *(a1 + 64) = v17;
  v4 = *(a2 + 148);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 80);
  *(a1 + 148) |= 0x400u;
  *(a1 + 80) = v18;
  v4 = *(a2 + 148);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 76);
  *(a1 + 148) |= 0x800u;
  *(a1 + 76) = v19;
  v4 = *(a2 + 148);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_47:
  v20 = *(a2 + 88);
  *(a1 + 148) |= 0x1000u;
  v21 = *(a1 + 88);
  if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v4 = *(a2 + 148);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 96);
  *(a1 + 148) |= 0x2000u;
  *(a1 + 96) = v22;
  v4 = *(a2 + 148);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = *(a2 + 97);
  *(a1 + 148) |= 0x4000u;
  *(a1 + 97) = v23;
  v4 = *(a2 + 148);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  *(a1 + 148) |= 0x8000u;
  v24 = *(a1 + 104);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 104);
  if (!v25)
  {
    v25 = *(qword_102636DB8 + 104);
  }

  sub_10043D5A4(v24, v25);
  v4 = *(a2 + 148);
LABEL_57:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v26 = *(a2 + 100);
    *(a1 + 148) |= 0x10000u;
    *(a1 + 100) = v26;
    v4 = *(a2 + 148);
    if ((v4 & 0x20000) == 0)
    {
LABEL_60:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_60;
  }

  v27 = *(a2 + 112);
  *(a1 + 148) |= 0x20000u;
  *(a1 + 112) = v27;
  v4 = *(a2 + 148);
  if ((v4 & 0x40000) == 0)
  {
LABEL_61:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28 = *(a2 + 116);
  *(a1 + 148) |= 0x40000u;
  *(a1 + 116) = v28;
  v4 = *(a2 + 148);
  if ((v4 & 0x80000) == 0)
  {
LABEL_62:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_70:
  v29 = *(a2 + 120);
  *(a1 + 148) |= 0x80000u;
  *(a1 + 120) = v29;
  v4 = *(a2 + 148);
  if ((v4 & 0x100000) == 0)
  {
LABEL_63:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:
  v30 = *(a2 + 124);
  *(a1 + 148) |= 0x100000u;
  *(a1 + 124) = v30;
  v4 = *(a2 + 148);
  if ((v4 & 0x200000) == 0)
  {
LABEL_64:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_73;
  }

LABEL_72:
  v31 = *(a2 + 128);
  *(a1 + 148) |= 0x200000u;
  *(a1 + 128) = v31;
  v4 = *(a2 + 148);
  if ((v4 & 0x400000) == 0)
  {
LABEL_65:
    if ((v4 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_73:
  v32 = *(a2 + 132);
  if (v32 >= 0xA)
  {
    sub_101882C08();
  }

  *(a1 + 148) |= 0x400000u;
  *(a1 + 132) = v32;
  if ((*(a2 + 148) & 0x800000) != 0)
  {
LABEL_75:
    *(a1 + 148) |= 0x800000u;
    v33 = *(a1 + 136);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 136);
    if (!v34)
    {
      v34 = *(qword_102636DB8 + 136);
    }

    sub_10043DA8C(v33, v34);
  }
}

void sub_10043E964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10043E97C(void *result)
{
  v1 = result;
  v2 = result[11];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_102636DB8 != result)
  {
    v4 = result[1];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[3];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[13];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    result = v1[17];
    if (result)
    {
      v8 = *(*result + 8);

      return v8();
    }
  }

  return result;
}

void sub_10043EAE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453760;
  sub_10043E97C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10043EB34(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453760;
  sub_10043E97C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043EC1C(uint64_t result)
{
  v1 = *(result + 148);
  if (v1)
  {
    if (v1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(result + 148);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(result + 148);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v1 = *(result + 148);
      }
    }

    *(result + 72) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 80) = 0;
    *(result + 76) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if ((v1 & 0x1000) != 0)
    {
      v5 = *(result + 88);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(result + 96) = 0;
    v1 = *(result + 148);
    if ((v1 & 0x8000) != 0)
    {
      v6 = *(result + 104);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v1 = *(result + 148);
      }
    }
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 100) = 0;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 112) = 0;
    if ((v1 & 0x800000) != 0)
    {
      v7 = *(result + 136);
      if (v7)
      {
        if (*(v7 + 20))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 20) = 0;
      }
    }
  }

  *(result + 148) = 0;
  return result;
}

uint64_t sub_10043ED50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        *(a1 + 148) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v106[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_10041EEC4(v8, this, v33) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v34 = *(this + 14);
        v35 = __OFSUB__(v34, 1);
        v36 = v34 - 1;
        if (v36 < 0 == v35)
        {
          *(this + 14) = v36;
        }

        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 18)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
        goto LABEL_70;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

LABEL_70:
        *(a1 + 148) |= 2u;
        v38 = *(a1 + 16);
        if (!v38)
        {
          operator new();
        }

        v106[0] = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v39;
          *(this + 1) = v39 + 1;
        }

        v40 = *(this + 14);
        v41 = *(this + 15);
        *(this + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_10041EEC4(v38, this, v43) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v42);
        v44 = *(this + 14);
        v35 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v35)
        {
          *(this + 14) = v45;
        }

        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 != 26)
        {
          continue;
        }

        *(this + 1) = v46 + 1;
LABEL_84:
        *(a1 + 148) |= 4u;
        v47 = *(a1 + 24);
        if (!v47)
        {
          operator new();
        }

        v106[0] = 0;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v48;
          *(this + 1) = v48 + 1;
        }

        v49 = *(this + 14);
        v50 = *(this + 15);
        *(this + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_10041EEC4(v47, this, v52) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v51);
        v53 = *(this + 14);
        v35 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v35)
        {
          *(this + 14) = v54;
        }

        v55 = *(this + 1);
        v18 = *(this + 2);
        if (v55 >= v18 || *v55 != 32)
        {
          continue;
        }

        v19 = v55 + 1;
        *(this + 1) = v19;
LABEL_98:
        if (v19 >= v18 || (v56 = *v19, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v57 = *(this + 1);
          v18 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v56;
          v57 = v19 + 1;
          *(this + 1) = v57;
        }

        *(a1 + 148) |= 8u;
        if (v57 >= v18 || *v57 != 41)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_106:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v106;
        *(a1 + 148) |= 0x10u;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 49)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_110:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v106;
        *(a1 + 148) |= 0x20u;
        v60 = *(this + 1);
        v20 = *(this + 2);
        if (v60 >= v20 || *v60 != 56)
        {
          continue;
        }

        v26 = v60 + 1;
        *(this + 1) = v26;
LABEL_114:
        if (v26 >= v20 || (v61 = *v26, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v62 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v61;
          v62 = v26 + 1;
          *(this + 1) = v62;
        }

        *(a1 + 148) |= 0x40u;
        if (v62 >= v20 || *v62 != 64)
        {
          continue;
        }

        v21 = v62 + 1;
        *(this + 1) = v21;
LABEL_122:
        if (v21 >= v20 || (v63 = *v21, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v64 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v63;
          v64 = v21 + 1;
          *(this + 1) = v64;
        }

        *(a1 + 148) |= 0x80u;
        if (v64 >= v20 || *v64 != 73)
        {
          continue;
        }

        *(this + 1) = v64 + 1;
LABEL_130:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v106;
        *(a1 + 148) |= 0x100u;
        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 != 81)
        {
          continue;
        }

        *(this + 1) = v65 + 1;
LABEL_134:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v106;
        *(a1 + 148) |= 0x200u;
        v66 = *(this + 1);
        if (v66 >= *(this + 2) || *v66 != 89)
        {
          continue;
        }

        *(this + 1) = v66 + 1;
LABEL_138:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v106;
        *(a1 + 148) |= 0x400u;
        v67 = *(this + 1);
        v14 = *(this + 2);
        if (v67 >= v14 || *v67 != 96)
        {
          continue;
        }

        v15 = v67 + 1;
        *(this + 1) = v15;
LABEL_142:
        v106[0] = 0;
        if (v15 >= v14 || (v68 = *v15, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v68 = v106[0];
          v69 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          v69 = v15 + 1;
          *(this + 1) = v69;
        }

        *(a1 + 76) = v68;
        v16 = *(a1 + 148) | 0x800;
        *(a1 + 148) = v16;
        if (v69 >= v14 || *v69 != 106)
        {
          continue;
        }

        *(this + 1) = v69 + 1;
LABEL_150:
        *(a1 + 148) = v16 | 0x1000;
        if (*(a1 + 88) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v70 = *(this + 1);
        v12 = *(this + 2);
        if (v70 >= v12 || *v70 != 112)
        {
          continue;
        }

        v25 = v70 + 1;
        *(this + 1) = v25;
LABEL_156:
        v106[0] = 0;
        if (v25 >= v12 || (v71 = *v25, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v71 = v106[0];
          v72 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v72 = v25 + 1;
          *(this + 1) = v72;
        }

        *(a1 + 96) = v71 != 0;
        *(a1 + 148) |= 0x2000u;
        if (v72 >= v12 || *v72 != 120)
        {
          continue;
        }

        v13 = v72 + 1;
        *(this + 1) = v13;
LABEL_164:
        v106[0] = 0;
        if (v13 >= v12 || (v73 = *v13, (v73 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v73 = v106[0];
          v74 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v74 = (v13 + 1);
          *(this + 1) = v74;
        }

        *(a1 + 97) = v73 != 0;
        v17 = *(a1 + 148) | 0x4000;
        *(a1 + 148) = v17;
        if (v12 - v74 < 2 || *v74 != 130 || v74[1] != 1)
        {
          continue;
        }

        *(this + 1) = v74 + 2;
LABEL_173:
        *(a1 + 148) = v17 | 0x8000;
        v75 = *(a1 + 104);
        if (!v75)
        {
          operator new();
        }

        v106[0] = 0;
        v76 = *(this + 1);
        if (v76 >= *(this + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v76;
          *(this + 1) = v76 + 1;
        }

        v77 = *(this + 14);
        v78 = *(this + 15);
        *(this + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_10043D770(v75, this, v80) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v79);
        v81 = *(this + 14);
        v35 = __OFSUB__(v81, 1);
        v82 = v81 - 1;
        if (v82 < 0 == v35)
        {
          *(this + 14) = v82;
        }

        v83 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v83 <= 1 || *v83 != 136 || v83[1] != 1)
        {
          continue;
        }

        v11 = (v83 + 2);
        *(this + 1) = v11;
LABEL_188:
        if (v11 >= v10 || (v84 = *v11, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 100));
          if (!result)
          {
            return result;
          }

          v85 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 100) = v84;
          v85 = (v11 + 1);
          *(this + 1) = v85;
        }

        *(a1 + 148) |= 0x10000u;
        if (v10 - v85 < 2 || *v85 != 144 || v85[1] != 1)
        {
          continue;
        }

        v22 = (v85 + 2);
        *(this + 1) = v22;
LABEL_197:
        if (v22 >= v10 || (v86 = *v22, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 112));
          if (!result)
          {
            return result;
          }

          v87 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 112) = v86;
          v87 = (v22 + 1);
          *(this + 1) = v87;
        }

        *(a1 + 148) |= 0x20000u;
        if (v10 - v87 < 2 || *v87 != 152 || v87[1] != 1)
        {
          continue;
        }

        v27 = (v87 + 2);
        *(this + 1) = v27;
LABEL_206:
        if (v27 >= v10 || (v88 = *v27, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 116));
          if (!result)
          {
            return result;
          }

          v89 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 116) = v88;
          v89 = (v27 + 1);
          *(this + 1) = v89;
        }

        *(a1 + 148) |= 0x40000u;
        if (v10 - v89 < 2 || *v89 != 160 || v89[1] != 1)
        {
          continue;
        }

        v29 = (v89 + 2);
        *(this + 1) = v29;
LABEL_215:
        if (v29 >= v10 || (v90 = *v29, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 120));
          if (!result)
          {
            return result;
          }

          v91 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 120) = v90;
          v91 = (v29 + 1);
          *(this + 1) = v91;
        }

        *(a1 + 148) |= 0x80000u;
        if (v10 - v91 < 2 || *v91 != 168 || v91[1] != 1)
        {
          continue;
        }

        v23 = (v91 + 2);
        *(this + 1) = v23;
LABEL_224:
        if (v23 >= v10 || (v92 = *v23, v92 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 124));
          if (!result)
          {
            return result;
          }

          v93 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 124) = v92;
          v93 = (v23 + 1);
          *(this + 1) = v93;
        }

        *(a1 + 148) |= 0x100000u;
        if (v10 - v93 < 2 || *v93 != 176 || v93[1] != 1)
        {
          continue;
        }

        v24 = (v93 + 2);
        *(this + 1) = v24;
LABEL_233:
        if (v24 >= v10 || (v94 = *v24, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 128));
          if (!result)
          {
            return result;
          }

          v95 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 128) = v94;
          v95 = (v24 + 1);
          *(this + 1) = v95;
        }

        *(a1 + 148) |= 0x200000u;
        if (v10 - v95 < 2 || *v95 != 184 || v95[1] != 1)
        {
          continue;
        }

        v28 = (v95 + 2);
        *(this + 1) = v28;
LABEL_242:
        v106[0] = 0;
        if (v28 >= v10 || (v96 = *v28, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v96 = v106[0];
        }

        else
        {
          *(this + 1) = v28 + 1;
        }

        if (v96 <= 9)
        {
          *(a1 + 148) |= 0x400000u;
          *(a1 + 132) = v96;
        }

        v97 = *(this + 1);
        if (*(this + 4) - v97 < 2 || *v97 != 194 || v97[1] != 1)
        {
          continue;
        }

        *(this + 1) = v97 + 2;
LABEL_253:
        *(a1 + 148) |= 0x800000u;
        v98 = *(a1 + 136);
        if (!v98)
        {
          operator new();
        }

        v106[0] = 0;
        v99 = *(this + 1);
        if (v99 >= *(this + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v99;
          *(this + 1) = v99 + 1;
        }

        v100 = *(this + 14);
        v101 = *(this + 15);
        *(this + 14) = v100 + 1;
        if (v100 < v101)
        {
          v102 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
          if (sub_10043DCEC(v98, this, v103))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v102);
              v104 = *(this + 14);
              v35 = __OFSUB__(v104, 1);
              v105 = v104 - 1;
              if (v105 < 0 == v35)
              {
                *(this + 14) = v105;
              }

              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_84;
        }

        goto LABEL_58;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_98;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_58;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_58;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v26 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_114;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_122;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_130;
        }

        goto LABEL_58;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_58;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_138;
        }

        goto LABEL_58;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_142;
      case 0xDu:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v16 = *(a1 + 148);
        goto LABEL_150;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v25 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_156;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_164;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        v17 = *(a1 + 148);
        goto LABEL_173;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_188;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v22 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_197;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v27 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_206;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v29 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_215;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v23 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_224;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v24 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_233;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v28 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_242;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        goto LABEL_253;
      default:
LABEL_58:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_10043FBD8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 148);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636DB8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 148);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636DB8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_32:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636DB8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 97), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_47:
  v10 = *(v5 + 104);
  if (!v10)
  {
    v10 = *(qword_102636DB8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v10, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 100), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 112), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 116), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 120), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 124), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 132), a2, a4);
    if ((*(v5 + 148) & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_57;
  }

LABEL_55:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 128), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  if ((v6 & 0x800000) == 0)
  {
    return result;
  }

LABEL_57:
  v11 = *(v5 + 136);
  if (!v11)
  {
    v11 = *(qword_102636DB8 + 136);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v11, a2, a4);
}

uint64_t sub_10043FF00(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 148);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636DB8 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 148);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636DB8 + 16);
    }

    v10 = *(v9 + 36);
    if (*(v9 + 36))
    {
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 9;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 32) = v10;
    v4 += v10 + 2;
    v3 = *(a1 + 148);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_102636DB8 + 24);
    }

    v13 = *(v12 + 36);
    if (*(v12 + 36))
    {
      v14 = (v13 << 31 >> 31) & 9;
      if ((v13 & 2) != 0)
      {
        v14 += 9;
      }

      if ((v13 & 4) != 0)
      {
        v13 = v14 + 9;
      }

      else
      {
        v13 = v14;
      }
    }

    *(v12 + 32) = v13;
    v4 += v13 + 2;
    v3 = *(a1 + 148);
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if ((v3 & 8) != 0)
  {
LABEL_36:
    v15 = *(a1 + 40);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(a1 + 148);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_40:
  v17 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v17 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v17 + 9;
  }

  else
  {
    v5 = v17;
  }

  if ((v3 & 0x40) != 0)
  {
    v18 = *(a1 + 44);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(a1 + 148);
    }

    else
    {
      v19 = 2;
    }

    v5 = (v19 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v20 = *(a1 + 72);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(a1 + 148);
    }

    else
    {
      v21 = 2;
    }

    v5 = (v21 + v5);
  }

LABEL_55:
  if ((v3 & 0xFF00) != 0)
  {
    v22 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v22 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v22 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v23 = v22 + 9;
    }

    else
    {
      v23 = v22;
    }

    if ((v3 & 0x800) != 0)
    {
      v24 = *(a1 + 76);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 11;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
        v3 = *(a1 + 148);
      }

      else
      {
        v25 = 2;
      }

      v23 += v25;
    }

    if ((v3 & 0x1000) != 0)
    {
      v26 = *(a1 + 88);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v3 = *(a1 + 148);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      v23 += v31 + v27 + 1;
    }

    v5 = ((v3 >> 12) & 2) + ((v3 >> 13) & 2) + v23;
    if ((v3 & 0x8000) != 0)
    {
      v32 = *(a1 + 104);
      if (!v32)
      {
        v32 = *(qword_102636DB8 + 104);
      }

      v33 = *(v32 + 36);
      v34 = (v33 << 31 >> 31) & 9;
      if ((v33 & 2) != 0)
      {
        v34 += 9;
      }

      if ((v33 & 4) != 0)
      {
        v34 += 9;
      }

      if (*(v32 + 36))
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      *(v32 + 32) = v35;
      v5 = (v5 + v35 + 3);
      v3 = *(a1 + 148);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v36 = *(a1 + 100);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
        v3 = *(a1 + 148);
      }

      else
      {
        v37 = 3;
      }

      v5 = (v37 + v5);
      if ((v3 & 0x20000) == 0)
      {
LABEL_94:
        if ((v3 & 0x40000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_109;
      }
    }

    else if ((v3 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

    v38 = *(a1 + 112);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v39 = 3;
    }

    v5 = (v39 + v5);
    if ((v3 & 0x40000) == 0)
    {
LABEL_95:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_113;
    }

LABEL_109:
    v40 = *(a1 + 116);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v41 = 3;
    }

    v5 = (v41 + v5);
    if ((v3 & 0x80000) == 0)
    {
LABEL_96:
      if ((v3 & 0x100000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_117;
    }

LABEL_113:
    v42 = *(a1 + 120);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v43 = 3;
    }

    v5 = (v43 + v5);
    if ((v3 & 0x100000) == 0)
    {
LABEL_97:
      if ((v3 & 0x200000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_121;
    }

LABEL_117:
    v44 = *(a1 + 124);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v45 = 3;
    }

    v5 = (v45 + v5);
    if ((v3 & 0x200000) == 0)
    {
LABEL_98:
      if ((v3 & 0x400000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_125;
    }

LABEL_121:
    v46 = *(a1 + 128);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v47 = 3;
    }

    v5 = (v47 + v5);
    if ((v3 & 0x400000) == 0)
    {
LABEL_99:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_137;
      }

LABEL_131:
      v50 = *(a1 + 136);
      if (!v50)
      {
        v50 = *(qword_102636DB8 + 136);
      }

      v51 = sub_10043E2C0(v50);
      v53 = v51;
      if (v51 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51, v52);
      }

      else
      {
        v54 = 1;
      }

      v5 = (v5 + v53 + v54 + 2);
      goto LABEL_137;
    }

LABEL_125:
    v48 = *(a1 + 132);
    if ((v48 & 0x80000000) != 0)
    {
      v49 = 12;
    }

    else if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2) + 2;
      v3 = *(a1 + 148);
    }

    else
    {
      v49 = 3;
    }

    v5 = (v49 + v5);
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

LABEL_137:
  *(a1 + 144) = v5;
  return v5;
}

void sub_100440398(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10043E3C8(a1, lpsrc);
}

double sub_100440438(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      *(a1 + 44) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636DC0 + 8);
      }

      result = sub_10041ED1C(v6, v7);
      v5 = *(a2 + 44);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 24);
    *(a1 + 44) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 44) & 8) == 0)
    {
      return result;
    }

LABEL_16:
    *(a1 + 44) |= 8u;
    v8 = *(a1 + 32);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      v9 = *(qword_102636DC0 + 32);
    }

    return sub_10041ED1C(v8, v9);
  }

  return result;
}

void sub_1004405E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004405FC(void *result)
{
  if (qword_102636DC0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10044069C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024537D8;
  sub_1004405FC(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1004406F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024537D8;
  sub_1004405FC(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100440758(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636DC0;
  if (!qword_102636DC0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636DC0;
  }

  return result;
}

uint64_t sub_1004407E0(uint64_t result)
{
  LOBYTE(v1) = *(result + 44);
  if (v1)
  {
    if (*(result + 44))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(result + 44);
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(result + 32);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_100440838(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            v9 = *(a1 + 44);
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (v8 != 1)
        {
          goto LABEL_22;
        }

LABEL_38:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v31;
        v9 = *(a1 + 44) | 4;
        *(a1 + 44) = v9;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 34)
        {
          *(this + 1) = v21 + 1;
LABEL_42:
          *(a1 + 44) = v9 | 8;
          v22 = *(a1 + 32);
          if (!v22)
          {
            operator new();
          }

          v31[0] = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31))
            {
              return 0;
            }
          }

          else
          {
            v31[0] = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31[0]);
          if (!sub_10041EEC4(v22, this, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
          v28 = *(this + 14);
          v17 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v17)
          {
            *(this + 14) = v29;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 44) |= 1u;
      v10 = *(a1 + 8);
      if (!v10)
      {
        operator new();
      }

      v31[0] = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31))
        {
          return 0;
        }
      }

      else
      {
        v31[0] = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31[0]);
      if (!sub_10041EEC4(v10, this, v15) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
      v16 = *(this + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(this + 14) = v18;
      }

      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 17)
      {
        *(this + 1) = v19 + 1;
LABEL_34:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v31;
        *(a1 + 44) |= 2u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 25)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_34;
    }

LABEL_22:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100440BE8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636DC0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_102636DC0 + 32);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t sub_100440CB0(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 44);
  if (v1)
  {
    if (*(a1 + 44))
    {
      v2 = *(a1 + 8);
      if (!v2)
      {
        v2 = *(qword_102636DC0 + 8);
      }

      v3 = *(v2 + 36);
      if (*(v2 + 36))
      {
        v4 = (v3 << 31 >> 31) & 9;
        if ((v3 & 2) != 0)
        {
          v4 += 9;
        }

        if ((v3 & 4) != 0)
        {
          v3 = v4 + 9;
        }

        else
        {
          v3 = v4;
        }
      }

      *(v2 + 32) = v3;
      LODWORD(v2) = v3 + 2;
      v1 = *(a1 + 44);
    }

    else
    {
      LODWORD(v2) = 0;
    }

    if ((v1 & 2) != 0)
    {
      LODWORD(v2) = v2 + 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 = (v2 + 9);
    }

    else
    {
      v2 = v2;
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        v5 = *(qword_102636DC0 + 32);
      }

      v6 = *(v5 + 36);
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v7 += 9;
      }

      if (*(v5 + 36))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *(v5 + 32) = v8;
      v2 = (v2 + v8 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 40) = v2;
  return v2;
}

double sub_100440D90(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100440438(a1, lpsrc);
}

void sub_100440E30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_102636DC8 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      v9 = *(qword_102636DC8 + 16);
    }

    sub_10043E3C8(v8, v9);
  }
}

void sub_100440FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100441000(void *result)
{
  if (qword_102636DC8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1004410A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453850;
  sub_100441000(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1004410F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453850;
  sub_100441000(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10044115C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636DC8;
  if (!qword_102636DC8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636DC8;
  }

  return result;
}

uint64_t sub_1004411DC(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 32);
  if (v2)
  {
    if (*(result + 32))
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(result + 32);
      }
    }

    *(result + 24) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_10043EC1C(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100441240(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10041EEC4(v9, this, v17) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
      v18 = *(this + 14);
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v20 < 0 == v19)
      {
        *(this + 14) = v20;
      }

      v21 = *(this + 1);
      v11 = *(this + 2);
      if (v21 < v11 && *v21 == 16)
      {
        v12 = v21 + 1;
        *(this + 1) = v12;
LABEL_31:
        v33 = 0;
        if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v22 = v33;
          v23 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 24) = v22;
        v13 = *(a1 + 32) | 2;
        *(a1 + 32) = v13;
        if (v23 < v11 && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
LABEL_39:
          *(a1 + 32) = v13 | 4;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v35 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10043ED50(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v19 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v19)
          {
            *(this + 14) = v32;
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
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_31;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1004415F0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636DC8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636DC8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_10044169C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102636DC8 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636DC8 + 16);
    }

    v11 = sub_10043FF00(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_28:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1004417B0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100440E30(a1, lpsrc);
}

float sub_100441850(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 12);
    *(a1 + 24) |= 2u;
    *(a1 + 12) = result;
    if ((*(a2 + 24) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 16);
    *(a1 + 24) |= 4u;
    *(a1 + 16) = result;
  }

  return result;
}

void sub_100441924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10044195C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024538C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100441A00(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_100441A18(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        a1[4] = v12;
        a1[6] |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      a1[2] = v14;
      a1[6] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        a1[3] = v13;
        a1[6] |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 29)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100441BD0(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t sub_100441C5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 20) = v1;
  return v1;
}

float sub_100441C94(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100441850(a1, lpsrc);
}

double sub_100441D34(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 8);
      *(a1 + 44) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 44);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 24);
    *(a1 + 44) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 44) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = result;
  }

  return result;
}

void sub_100441E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100441E60(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453940;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100441F0C(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_100441F28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v7 != 4 || v8 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 8u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v13;
      *(a1 + 44) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_20:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 44) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
LABEL_28:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v13;
          *(a1 + 44) |= 4u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 33)
          {
            *(this + 1) = v11 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100442144(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

uint64_t sub_1004421EC(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 40) = v1;
  return v1;
}

double sub_100442230(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100441D34(a1, lpsrc);
}

double sub_1004422D0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v5 = *(a2 + 68);
  if (v5)
  {
    if (v5)
    {
      *(a1 + 68) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 8);
      if (!v8)
      {
        v8 = *(qword_102636DE0 + 8);
      }

      *&result = sub_100441850(v7, v8);
      v5 = *(a2 + 68);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 68) |= 2u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_102636DE0 + 16);
    }

    *&result = sub_100441850(v9, v10);
    v5 = *(a2 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    LODWORD(result) = *(a2 + 24);
    *(a1 + 68) |= 4u;
    *(a1 + 24) = LODWORD(result);
    v5 = *(a2 + 68);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    LODWORD(result) = *(a2 + 28);
    *(a1 + 68) |= 8u;
    *(a1 + 28) = LODWORD(result);
    v5 = *(a2 + 68);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(result) = *(a2 + 32);
    *(a1 + 68) |= 0x10u;
    *(a1 + 32) = LODWORD(result);
    v5 = *(a2 + 68);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_32:
    v11 = *(a2 + 36);
    if ((v11 + 1) >= 8)
    {
      sub_101882C34();
    }

    *(a1 + 68) |= 0x20u;
    *(a1 + 36) = v11;
    v5 = *(a2 + 68);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v6 = *(a2 + 40);
    *(a1 + 68) |= 0x40u;
    *(a1 + 40) = v6;
    v5 = *(a2 + 68);
LABEL_12:
    if ((v5 & 0x80) != 0)
    {
      LODWORD(result) = *(a2 + 44);
      *(a1 + 68) |= 0x80u;
      *(a1 + 44) = LODWORD(result);
      v5 = *(a2 + 68);
    }
  }

  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    LODWORD(result) = *(a2 + 52);
    *(a1 + 68) |= 0x200u;
    *(a1 + 52) = LODWORD(result);
    if ((*(a2 + 68) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  LODWORD(result) = *(a2 + 48);
  *(a1 + 68) |= 0x100u;
  *(a1 + 48) = LODWORD(result);
  v5 = *(a2 + 68);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((v5 & 0x400) == 0)
  {
    return result;
  }

LABEL_37:
  *(a1 + 68) |= 0x400u;
  v12 = *(a1 + 56);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 56);
  if (!v13)
  {
    v13 = *(qword_102636DE0 + 56);
  }

  return sub_100441D34(v12, v13);
}

void sub_1004425CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004425E4(void *result)
{
  if (qword_102636DE0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[7];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_1004426B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024539B8;
  sub_1004425E4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100442704(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024539B8;
  sub_1004425E4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004427D4(uint64_t result)
{
  v1 = *(result + 68);
  if (v1)
  {
    if (v1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 68);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(result + 68);
      }
    }

    *(result + 24) = 0;
    *(result + 32) = 0xFFFFFFFF00000000;
    *(result + 40) = 0;
    *(result + 44) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v4 = *(result + 56);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
      }
    }
  }

  *(result + 68) = 0;
  return result;
}

uint64_t sub_100442870(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v5 = *(this + 1);
            if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
              *(this + 1) = v5 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v7 = TagFallback >> 3;
            v8 = TagFallback & 7;
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v7 != 1)
              {
                if (v7 != 2 || v8 != 2)
                {
                  goto LABEL_45;
                }

                goto LABEL_57;
              }

              if (v8 != 2)
              {
                goto LABEL_45;
              }

              *(a1 + 68) |= 1u;
              v10 = *(a1 + 8);
              if (!v10)
              {
                operator new();
              }

              v52 = 0;
              v11 = *(this + 1);
              if (v11 >= *(this + 2) || *v11 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
                {
                  return 0;
                }
              }

              else
              {
                v52 = *v11;
                *(this + 1) = v11 + 1;
              }

              v16 = *(this + 14);
              v17 = *(this + 15);
              *(this + 14) = v16 + 1;
              if (v16 >= v17)
              {
                return 0;
              }

              v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52);
              if (!sub_100441A18(v10, this, v19) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
              v20 = *(this + 14);
              v21 = __OFSUB__(v20, 1);
              v22 = v20 - 1;
              if (v22 < 0 == v21)
              {
                *(this + 14) = v22;
              }

              v23 = *(this + 1);
              if (v23 < *(this + 2) && *v23 == 18)
              {
                *(this + 1) = v23 + 1;
LABEL_57:
                *(a1 + 68) |= 2u;
                v24 = *(a1 + 16);
                if (!v24)
                {
                  operator new();
                }

                v52 = 0;
                v25 = *(this + 1);
                if (v25 >= *(this + 2) || *v25 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
                  {
                    return 0;
                  }
                }

                else
                {
                  v52 = *v25;
                  *(this + 1) = v25 + 1;
                }

                v26 = *(this + 14);
                v27 = *(this + 15);
                *(this + 14) = v26 + 1;
                if (v26 >= v27)
                {
                  return 0;
                }

                v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52);
                if (!sub_100441A18(v24, this, v29) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
                v30 = *(this + 14);
                v21 = __OFSUB__(v30, 1);
                v31 = v30 - 1;
                if (v31 < 0 == v21)
                {
                  *(this + 14) = v31;
                }

                v32 = *(this + 1);
                if (v32 < *(this + 2) && *v32 == 29)
                {
                  *(this + 1) = v32 + 1;
LABEL_71:
                  v52 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 24) = v52;
                  *(a1 + 68) |= 4u;
                  v33 = *(this + 1);
                  if (v33 < *(this + 2) && *v33 == 37)
                  {
                    *(this + 1) = v33 + 1;
                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              if (v7 == 3)
              {
                if (v8 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_71;
              }

              if (v7 != 4)
              {
                if (v7 != 5 || v8 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_79;
              }

              if (v8 != 5)
              {
                goto LABEL_45;
              }

LABEL_75:
              v52 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 28) = v52;
              *(a1 + 68) |= 8u;
              v34 = *(this + 1);
              if (v34 < *(this + 2) && *v34 == 45)
              {
                *(this + 1) = v34 + 1;
LABEL_79:
                v52 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = v52;
                *(a1 + 68) |= 0x10u;
                v35 = *(this + 1);
                v14 = *(this + 2);
                if (v35 < v14 && *v35 == 48)
                {
                  v15 = v35 + 1;
                  *(this + 1) = v15;
LABEL_83:
                  v52 = 0;
                  if (v15 >= v14 || (v36 = *v15, (v36 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = v52;
                  }

                  else
                  {
                    *(this + 1) = v15 + 1;
                  }

                  if (v36 + 1 <= 7)
                  {
                    *(a1 + 68) |= 0x20u;
                    *(a1 + 36) = v36;
                  }

                  v38 = *(this + 1);
                  v12 = *(this + 2);
                  if (v38 < v12 && *v38 == 56)
                  {
                    v13 = v38 + 1;
                    *(this + 1) = v13;
                    goto LABEL_93;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 8)
          {
            break;
          }

          if (v7 == 6)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v15 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_83;
          }

          if (v7 == 7)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v13 = *(this + 1);
            v12 = *(this + 2);
LABEL_93:
            v52 = 0;
            if (v13 >= v12 || (v39 = *v13, (v39 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
              if (!result)
              {
                return result;
              }

              v39 = v52;
              v40 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              v40 = v13 + 1;
              *(this + 1) = v40;
            }

            *(a1 + 40) = v39 != 0;
            *(a1 + 68) |= 0x40u;
            if (v40 < v12 && *v40 == 69)
            {
              *(this + 1) = v40 + 1;
LABEL_101:
              v52 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 44) = v52;
              *(a1 + 68) |= 0x80u;
              v41 = *(this + 1);
              if (v41 < *(this + 2) && *v41 == 77)
              {
                *(this + 1) = v41 + 1;
                goto LABEL_105;
              }
            }
          }

          else
          {
            if (v7 == 8 && v8 == 5)
            {
              goto LABEL_101;
            }

LABEL_45:
            if (v8 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
            {
              return 0;
            }
          }
        }

        if (v7 != 9)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_45;
        }

LABEL_105:
        v52 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v52;
        *(a1 + 68) |= 0x100u;
        v42 = *(this + 1);
        if (v42 < *(this + 2) && *v42 == 85)
        {
          *(this + 1) = v42 + 1;
          goto LABEL_109;
        }
      }

      if (v7 != 10)
      {
        if (v7 == 11 && v8 == 2)
        {
          v9 = *(a1 + 68);
          goto LABEL_113;
        }

        goto LABEL_45;
      }

      if (v8 != 5)
      {
        goto LABEL_45;
      }

LABEL_109:
      v52 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 52) = v52;
      v9 = *(a1 + 68) | 0x200;
      *(a1 + 68) = v9;
      v43 = *(this + 1);
    }

    while (v43 >= *(this + 2) || *v43 != 90);
    *(this + 1) = v43 + 1;
LABEL_113:
    *(a1 + 68) = v9 | 0x400;
    v44 = *(a1 + 56);
    if (!v44)
    {
      operator new();
    }

    v52 = 0;
    v45 = *(this + 1);
    if (v45 >= *(this + 2) || *v45 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52))
      {
        return 0;
      }
    }

    else
    {
      v52 = *v45;
      *(this + 1) = v45 + 1;
    }

    v46 = *(this + 14);
    v47 = *(this + 15);
    *(this + 14) = v46 + 1;
    if (v46 >= v47)
    {
      return 0;
    }

    v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52);
    if (!sub_100441F28(v44, this, v49) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
    v50 = *(this + 14);
    v21 = __OFSUB__(v50, 1);
    v51 = v50 - 1;
    if (v51 < 0 == v21)
    {
      *(this + 14) = v51;
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

uint64_t sub_100442FC8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636DE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636DE0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
    if ((*(v5 + 68) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return result;
  }

LABEL_27:
  v9 = *(v5 + 56);
  if (!v9)
  {
    v9 = *(qword_102636DE0 + 56);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v9, a2, a4);
}

uint64_t sub_100443164(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 68);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_41;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102636DE0 + 8);
    }

    v7 = *(v6 + 24);
    if (*(v6 + 24))
    {
      v8 = (v7 << 31 >> 31) & 5;
      if ((v7 & 2) != 0)
      {
        v8 += 5;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 5;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 20) = v7;
    v4 = v7 + 2;
    v3 = *(a1 + 68);
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636DE0 + 16);
    }

    v10 = *(v9 + 24);
    if (*(v9 + 24))
    {
      v11 = (v10 << 31 >> 31) & 5;
      if ((v10 & 2) != 0)
      {
        v11 += 5;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 5;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 20) = v10;
    v4 += v10 + 2;
    v3 = *(a1 + 68);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 8) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 0x10) != 0)
  {
    v12 = v4 + 5;
  }

  else
  {
    v12 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v13 = *(a1 + 36);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v14 = 2;
    }

    v12 += v14;
  }

  v15 = ((v3 >> 5) & 2) + v12;
  if ((v3 & 0x80) != 0)
  {
    v5 = v15 + 5;
  }

  else
  {
    v5 = v15;
  }

LABEL_41:
  if ((v3 & 0xFF00) != 0)
  {
    v16 = v5 + 5;
    if ((v3 & 0x100) == 0)
    {
      v16 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = v16 + 5;
    }

    else
    {
      v5 = v16;
    }

    if ((v3 & 0x400) != 0)
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = *(qword_102636DE0 + 56);
      }

      v18 = sub_1004421EC(v17);
      v20 = v18;
      if (v18 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, v19);
      }

      else
      {
        v21 = 1;
      }

      v5 = (v5 + v20 + v21 + 1);
    }
  }

  *(a1 + 64) = v5;
  return v5;
}

double sub_10044332C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004422D0(a1, lpsrc);
}

float sub_1004433CC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 40))
  {
    *(a1 + 40) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636DE8 + 8);
    }

    v4 = sub_10041ED1C(v7, v8);
    v5 = *(a2 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 40) |= 2u;
  v9 = *(a1 + 16);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    v10 = *(qword_102636DE8 + 16);
  }

  v4 = sub_1004422D0(v9, v10);
  v5 = *(a2 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    LODWORD(v4) = *(a2 + 28);
    *(a1 + 40) |= 8u;
    *(a1 + 28) = LODWORD(v4);
    if ((*(a2 + 40) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return *&v4;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 24);
  *(a1 + 40) |= 4u;
  *(a1 + 24) = LODWORD(v4);
  v5 = *(a2 + 40);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) != 0)
  {
LABEL_9:
    v6 = *(a2 + 32);
    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = v6;
  }

  return *&v4;
}

void sub_1004435AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004435C4(void *result)
{
  if (qword_102636DE8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_100443664(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453A30;
  sub_1004435C4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1004436B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453A30;
  sub_1004435C4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100443720(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636DE8;
  if (!qword_102636DE8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636DE8;
  }

  return result;
}

uint64_t sub_1004437A4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 40);
  if (v2)
  {
    if (*(result + 40))
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(result + 40);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_1004427D4(result);
      }
    }

    *(v1 + 32) = 0;
    *(v1 + 24) = 0;
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_10044380C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_56:
          v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v35) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 28) = v35;
          *(a1 + 40) |= 8u;
          v31 = *(this + 1);
          v9 = *(this + 2);
          if (v31 < v9 && *v31 == 40)
          {
            v10 = v31 + 1;
            *(this + 1) = v10;
LABEL_60:
            v35 = 0;
            if (v10 >= v9 || (v32 = *v10, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
              if (!result)
              {
                return result;
              }

              v32 = v35;
              v33 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v33 = v10 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 32) = v32 != 0;
            *(a1 + 40) |= 0x10u;
            if (v33 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        else
        {
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_60;
          }

LABEL_21:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(a1 + 40) |= 1u;
      v11 = *(a1 + 8);
      if (!v11)
      {
        operator new();
      }

      v35 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
        {
          return 0;
        }
      }

      else
      {
        v35 = *v12;
        *(this + 1) = v12 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
      if (!sub_10041EEC4(v11, this, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
      v17 = *(this + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(this + 14) = v19;
      }

      v20 = *(this + 1);
      if (v20 < *(this + 2) && *v20 == 18)
      {
        *(this + 1) = v20 + 1;
        goto LABEL_38;
      }
    }

    if (v7 != 2 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_38:
    *(a1 + 40) |= 2u;
    v21 = *(a1 + 16);
    if (!v21)
    {
      operator new();
    }

    v35 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
    if (!sub_100442870(v21, this, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v27 = *(this + 14);
    v18 = __OFSUB__(v27, 1);
    v28 = v27 - 1;
    if (v28 < 0 == v18)
    {
      *(this + 14) = v28;
    }

    v29 = *(this + 1);
    if (v29 < *(this + 2) && *v29 == 29)
    {
      *(this + 1) = v29 + 1;
LABEL_52:
      v35 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v35) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v35;
      *(a1 + 40) |= 4u;
      v30 = *(this + 1);
      if (v30 < *(this + 2) && *v30 == 37)
      {
        *(this + 1) = v30 + 1;
        goto LABEL_56;
      }
    }
  }
}

uint64_t sub_100443C6C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636DE8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636DE8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_15:
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v9, a2, a4);
}

float sub_100443D50(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004433CC(a1, lpsrc);
}

double sub_100443DF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100456264((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636DF0 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_100443EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100443EFC(uint64_t *a1)
{
  *a1 = off_102453AA8;
  if (qword_102636DF0 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100443F98(uint64_t *a1)
{
  sub_100443EFC(a1);

  operator delete();
}

uint64_t sub_100443FD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636DF0;
  if (!qword_102636DF0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636DF0;
  }

  return result;
}

uint64_t sub_100444054(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_1004440A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10041EEC4(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_10044380C(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100444404(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636DF0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_10044448C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102636DF0 + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = v5 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 24);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = sub_100325170(*(*(a1 + 16) + 8 * v9), a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(a1 + 24));
  }

  *(a1 + 40) = v8;
  return v8;
}

double sub_100444568(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100443DF0(a1, lpsrc);
}

float sub_100444608(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 56) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636DF8 + 8);
    }

    v4 = sub_100441D34(v7, v8);
    v5 = *(a2 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 56) |= 2u;
  v9 = *(a1 + 16);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    v10 = *(qword_102636DF8 + 16);
  }

  *&v4 = sub_100441850(v9, v10);
  v5 = *(a2 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_26:
  *(a1 + 56) |= 4u;
  v11 = *(a1 + 24);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    v12 = *(qword_102636DF8 + 24);
  }

  *&v4 = sub_100441850(v11, v12);
  v5 = *(a2 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_31:
  *(a1 + 56) |= 8u;
  v13 = *(a1 + 32);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 32);
  if (!v14)
  {
    v14 = *(qword_102636DF8 + 32);
  }

  *&v4 = sub_100441850(v13, v14);
  v5 = *(a2 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    v16 = *(a2 + 44);
    *(a1 + 56) |= 0x20u;
    *(a1 + 44) = v16;
    v5 = *(a2 + 56);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(a2 + 40);
  if ((v15 + 1) >= 8)
  {
    sub_101882C60();
  }

  *(a1 + 56) |= 0x10u;
  *(a1 + 40) = v15;
  v5 = *(a2 + 56);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_39:
  v17 = *(a2 + 45);
  *(a1 + 56) |= 0x40u;
  *(a1 + 45) = v17;
  v5 = *(a2 + 56);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    v6 = *(a2 + 46);
    *(a1 + 56) |= 0x80u;
    *(a1 + 46) = v6;
    v5 = *(a2 + 56);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    LODWORD(v4) = *(a2 + 48);
    *(a1 + 56) |= 0x100u;
    *(a1 + 48) = LODWORD(v4);
  }

  return *&v4;
}

void sub_100444914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10044492C(void *result)
{
  if (qword_102636DF8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[4];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_100444A24(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453B20;
  sub_10044492C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100444A78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453B20;
  sub_10044492C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100444B4C(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (v1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 44))
        {
          *(v2 + 24) = 0u;
          *(v2 + 8) = 0u;
        }

        *(v2 + 44) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v1 = *(result + 56);
      }
    }

    *(result + 40) = -1;
    *(result + 44) = 0;
    *(result + 46) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 48) = 0;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_100444C10(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 != 5)
          {
            if (v7 != 6 || (TagFallback & 7) != 0)
            {
              goto LABEL_39;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_104;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_39;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
LABEL_94:
          v61 = 0;
          if (v15 >= v14 || (v52 = *v15, (v52 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
            if (!result)
            {
              return result;
            }

            v52 = v61;
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v52 + 1 <= 7)
          {
            *(a1 + 56) |= 0x10u;
            *(a1 + 40) = v52;
          }

          v54 = *(this + 1);
          v9 = *(this + 2);
          if (v54 < v9 && *v54 == 48)
          {
            v10 = v54 + 1;
            *(this + 1) = v10;
LABEL_104:
            v61 = 0;
            if (v10 >= v9 || (v55 = *v10, (v55 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
              if (!result)
              {
                return result;
              }

              v55 = v61;
              v56 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v56 = v10 + 1;
              *(this + 1) = v56;
            }

            *(a1 + 44) = v55 != 0;
            *(a1 + 56) |= 0x20u;
            if (v56 < v9 && *v56 == 56)
            {
              v13 = v56 + 1;
              *(this + 1) = v13;
LABEL_112:
              v61 = 0;
              if (v13 >= v9 || (v57 = *v13, (v57 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
                if (!result)
                {
                  return result;
                }

                v57 = v61;
                v58 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v58 = v13 + 1;
                *(this + 1) = v58;
              }

              *(a1 + 45) = v57 != 0;
              *(a1 + 56) |= 0x40u;
              if (v58 < v9 && *v58 == 64)
              {
                v16 = v58 + 1;
                *(this + 1) = v16;
                goto LABEL_120;
              }
            }
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_112;
          }

LABEL_39:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v7 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_39;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
LABEL_120:
          v61 = 0;
          if (v16 >= v9 || (v59 = *v16, (v59 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
            if (!result)
            {
              return result;
            }

            v59 = v61;
            v60 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v60 = v16 + 1;
            *(this + 1) = v60;
          }

          *(a1 + 46) = v59 != 0;
          *(a1 + 56) |= 0x80u;
          if (v60 < v9 && *v60 == 77)
          {
            *(this + 1) = v60 + 1;
            goto LABEL_128;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 5)
          {
            goto LABEL_39;
          }

LABEL_128:
          v61 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v61) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v61;
          *(a1 + 56) |= 0x100u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 != 1)
      {
        if (v7 != 2 || v8 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_52;
      }

      if (v8 != 2)
      {
        goto LABEL_39;
      }

      *(a1 + 56) |= 1u;
      v11 = *(a1 + 8);
      if (!v11)
      {
        operator new();
      }

      v61 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
        {
          return 0;
        }
      }

      else
      {
        v61 = *v12;
        *(this + 1) = v12 + 1;
      }

      v17 = *(this + 14);
      v18 = *(this + 15);
      *(this + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
      if (!sub_100441F28(v11, this, v20) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
      v21 = *(this + 14);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v23 < 0 == v22)
      {
        *(this + 14) = v23;
      }

      v24 = *(this + 1);
      if (v24 < *(this + 2) && *v24 == 18)
      {
        *(this + 1) = v24 + 1;
LABEL_52:
        *(a1 + 56) |= 2u;
        v25 = *(a1 + 16);
        if (!v25)
        {
          operator new();
        }

        v61 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
          {
            return 0;
          }
        }

        else
        {
          v61 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
        if (!sub_100441A18(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 26)
        {
          *(this + 1) = v33 + 1;
LABEL_66:
          *(a1 + 56) |= 4u;
          v34 = *(a1 + 24);
          if (!v34)
          {
            operator new();
          }

          v61 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
            {
              return 0;
            }
          }

          else
          {
            v61 = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
          if (!sub_100441A18(v34, this, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
          v40 = *(this + 14);
          v22 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v22)
          {
            *(this + 14) = v41;
          }

          v42 = *(this + 1);
          if (v42 < *(this + 2) && *v42 == 34)
          {
            *(this + 1) = v42 + 1;
            goto LABEL_80;
          }
        }
      }
    }

    if (v7 == 3)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    if (v7 != 4 || v8 != 2)
    {
      goto LABEL_39;
    }

LABEL_80:
    *(a1 + 56) |= 8u;
    v43 = *(a1 + 32);
    if (!v43)
    {
      operator new();
    }

    v61 = 0;
    v44 = *(this + 1);
    if (v44 >= *(this + 2) || *v44 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61))
      {
        return 0;
      }
    }

    else
    {
      v61 = *v44;
      *(this + 1) = v44 + 1;
    }

    v45 = *(this + 14);
    v46 = *(this + 15);
    *(this + 14) = v45 + 1;
    if (v45 >= v46)
    {
      return 0;
    }

    v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
    if (!sub_100441A18(v43, this, v48) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
    v49 = *(this + 14);
    v22 = __OFSUB__(v49, 1);
    v50 = v49 - 1;
    if (v50 < 0 == v22)
    {
      *(this + 14) = v50;
    }

    v51 = *(this + 1);
    v14 = *(this + 2);
    if (v51 < v14 && *v51 == 40)
    {
      v15 = v51 + 1;
      *(this + 1) = v15;
      goto LABEL_94;
    }
  }
}

uint64_t sub_1004453B4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636DF8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636DF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636DF8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636DF8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 46), a2, a4);
    if ((*(v5 + 56) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 45), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_27:
  v11 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, v11, a3);
}

uint64_t sub_100445528(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636DF8 + 8);
  }

  v7 = sub_1004421EC(v6);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(a1 + 56);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636DF8 + 16);
    }

    v11 = *(v10 + 24);
    if (*(v10 + 24))
    {
      v12 = (v11 << 31 >> 31) & 5;
      if ((v11 & 2) != 0)
      {
        v12 += 5;
      }

      if ((v11 & 4) != 0)
      {
        v11 = v12 + 5;
      }

      else
      {
        v11 = v12;
      }
    }

    *(v10 + 20) = v11;
    v4 += v11 + 2;
    v3 = *(a1 + 56);
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_34:
    v16 = *(a1 + 32);
    if (!v16)
    {
      v16 = *(qword_102636DF8 + 32);
    }

    v17 = *(v16 + 24);
    if (*(v16 + 24))
    {
      v18 = (v17 << 31 >> 31) & 5;
      if ((v17 & 2) != 0)
      {
        v18 += 5;
      }

      if ((v17 & 4) != 0)
      {
        v17 = v18 + 5;
      }

      else
      {
        v17 = v18;
      }
    }

    *(v16 + 20) = v17;
    v4 += v17 + 2;
    v3 = *(a1 + 56);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_102636DF8 + 24);
  }

  v14 = *(v13 + 24);
  if (*(v13 + 24))
  {
    v15 = (v14 << 31 >> 31) & 5;
    if ((v14 & 2) != 0)
    {
      v15 += 5;
    }

    if ((v14 & 4) != 0)
    {
      v14 = v15 + 5;
    }

    else
    {
      v14 = v15;
    }
  }

  *(v13 + 20) = v14;
  v4 += v14 + 2;
  v3 = *(a1 + 56);
  if ((v3 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
LABEL_43:
    v19 = *(a1 + 40);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
  }

LABEL_49:
  v5 = ((v3 >> 4) & 2) + v4 + ((v3 >> 5) & 2) + ((v3 >> 6) & 2);
LABEL_50:
  if ((v3 & 0x100) != 0)
  {
    result = v5 + 5;
  }

  else
  {
    result = v5;
  }

  *(a1 + 52) = result;
  return result;
}

float sub_10044571C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100444608(a1, lpsrc);
}

void sub_1004457BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_100445848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100445880(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453B98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100445920(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_100445934(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 16) |= 1u;
      if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100445A34(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_100445A50(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

void sub_100445AA0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1004457BC(a1, lpsrc);
}

float sub_100445B40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 56))
  {
    *(a1 + 56) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636E08 + 8);
    }

    v4 = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 56) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636E08 + 16);
  }

  *&v4 = sub_100444608(v8, v9);
  v5 = *(a2 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  *(a1 + 24) = v10;
  v5 = *(a2 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a2 + 28);
  *(a1 + 56) |= 8u;
  *(a1 + 28) = v11;
  v5 = *(a2 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  v12 = *(a2 + 40);
  if (v12 >= 5)
  {
    sub_101882C8C();
  }

  *(a1 + 56) |= 0x10u;
  *(a1 + 40) = v12;
  v5 = *(a2 + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    LODWORD(v4) = *(a2 + 44);
    *(a1 + 56) |= 0x40u;
    *(a1 + 44) = LODWORD(v4);
    if ((*(a2 + 56) & 0x80) == 0)
    {
      return *&v4;
    }

    goto LABEL_12;
  }

LABEL_28:
  *(a1 + 56) |= 0x20u;
  v13 = *(a1 + 32);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 32);
  if (!v14)
  {
    v14 = *(qword_102636E08 + 32);
  }

  sub_1004457BC(v13, v14);
  v5 = *(a2 + 56);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    LODWORD(v4) = *(a2 + 48);
    *(a1 + 56) |= 0x80u;
    *(a1 + 48) = LODWORD(v4);
  }

  return *&v4;
}

void sub_100445DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100445DFC(void *result)
{
  if (qword_102636E08 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100445EC8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453C10;
  sub_100445DFC(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100445F1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453C10;
  sub_100445DFC(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100445F84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E08;
  if (!qword_102636E08)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E08;
  }

  return result;
}

uint64_t sub_100446010(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 56);
  if (v2)
  {
    if (*(result + 56))
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(result + 56);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_100444B4C(result);
        v2 = *(v1 + 56);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 28) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
      }
    }

    *(v1 + 44) = 0;
    *(v1 + 48) = 0;
  }

  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_1004460A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_62;
            }
          }

          else if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_70;
          }

          goto LABEL_36;
        }

        if (v7 == 1)
        {
          if (v8 != 2)
          {
            goto LABEL_36;
          }

          *(a1 + 56) |= 1u;
          v11 = *(a1 + 8);
          if (!v11)
          {
            operator new();
          }

          v49 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v12;
            *(this + 1) = v12 + 1;
          }

          v15 = *(this + 14);
          v16 = *(this + 15);
          *(this + 14) = v15 + 1;
          if (v15 >= v16)
          {
            return 0;
          }

          v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
          if (!sub_10041EEC4(v11, this, v18) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
          v19 = *(this + 14);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v21 < 0 == v20)
          {
            *(this + 14) = v21;
          }

          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 18)
          {
            *(this + 1) = v22 + 1;
LABEL_48:
            *(a1 + 56) |= 2u;
            v23 = *(a1 + 16);
            if (!v23)
            {
              operator new();
            }

            v49 = 0;
            v24 = *(this + 1);
            if (v24 >= *(this + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v24;
              *(this + 1) = v24 + 1;
            }

            v25 = *(this + 14);
            v26 = *(this + 15);
            *(this + 14) = v25 + 1;
            if (v25 >= v26)
            {
              return 0;
            }

            v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
            if (!sub_100444C10(v23, this, v28) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
            v29 = *(this + 14);
            v20 = __OFSUB__(v29, 1);
            v30 = v29 - 1;
            if (v30 < 0 == v20)
            {
              *(this + 14) = v30;
            }

            v31 = *(this + 1);
            v9 = *(this + 2);
            if (v31 < v9 && *v31 == 24)
            {
              v14 = v31 + 1;
              *(this + 1) = v14;
LABEL_62:
              v49 = 0;
              if (v14 >= v9 || (v32 = *v14, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
                if (!result)
                {
                  return result;
                }

                v32 = v49;
                v33 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v33 = v14 + 1;
                *(this + 1) = v33;
              }

              *(a1 + 24) = v32 != 0;
              *(a1 + 56) |= 4u;
              if (v33 < v9 && *v33 == 32)
              {
                v10 = v33 + 1;
                *(this + 1) = v10;
LABEL_70:
                if (v10 >= v9 || (v35 = *v10, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                  if (!result)
                  {
                    return result;
                  }

                  v36 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 28) = v35;
                  v36 = v10 + 1;
                  *(this + 1) = v36;
                }

                *(a1 + 56) |= 8u;
                if (v36 < v9 && *v36 == 40)
                {
                  v13 = v36 + 1;
                  *(this + 1) = v13;
LABEL_78:
                  v49 = 0;
                  if (v13 >= v9 || (v37 = *v13, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v49;
                  }

                  else
                  {
                    *(this + 1) = v13 + 1;
                  }

                  if (v37 <= 4)
                  {
                    *(a1 + 56) |= 0x10u;
                    *(a1 + 40) = v37;
                  }

                  v38 = *(this + 1);
                  if (v38 < *(this + 2) && *v38 == 50)
                  {
                    *(this + 1) = v38 + 1;
                    goto LABEL_88;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 2)
          {
            goto LABEL_48;
          }

LABEL_36:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_36;
        }

LABEL_102:
        v49 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v49) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v49;
        *(a1 + 56) |= 0x40u;
        v48 = *(this + 1);
        if (v48 < *(this + 2) && *v48 == 69)
        {
          *(this + 1) = v48 + 1;
          goto LABEL_106;
        }
      }

      else
      {
        if (v7 != 8 || v8 != 5)
        {
          goto LABEL_36;
        }

LABEL_106:
        v49 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v49) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v49;
        *(a1 + 56) |= 0x80u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_78;
      }

      goto LABEL_36;
    }

    if (v7 != 6 || v8 != 2)
    {
      goto LABEL_36;
    }

LABEL_88:
    *(a1 + 56) |= 0x20u;
    v39 = *(a1 + 32);
    if (!v39)
    {
      operator new();
    }

    v49 = 0;
    v40 = *(this + 1);
    if (v40 >= *(this + 2) || *v40 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
      {
        return 0;
      }
    }

    else
    {
      v49 = *v40;
      *(this + 1) = v40 + 1;
    }

    v41 = *(this + 14);
    v42 = *(this + 15);
    *(this + 14) = v41 + 1;
    if (v41 >= v42)
    {
      return 0;
    }

    v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
    if (!sub_100445934(v39, this, v44) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v43);
    v45 = *(this + 14);
    v20 = __OFSUB__(v45, 1);
    v46 = v45 - 1;
    if (v46 < 0 == v20)
    {
      *(this + 14) = v46;
    }

    v47 = *(this + 1);
    if (v47 < *(this + 2) && *v47 == 61)
    {
      *(this + 1) = v47 + 1;
      goto LABEL_102;
    }
  }
}

uint64_t sub_100446720(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636E08 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636E08 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 44), a3);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_102636E08 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v10, a3);
}

uint64_t sub_100446868(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    result = 0;
    goto LABEL_49;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636E08 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 56);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636E08 + 16);
    }

    v10 = sub_100445528(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 += v11 + v12 + 1;
    v3 = *(a1 + 56);
  }

LABEL_21:
  v13 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v14 = *(a1 + 28);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v15 = 2;
    }

    v13 += v15;
    if ((v3 & 0x10) == 0)
    {
LABEL_23:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_44;
      }

LABEL_35:
      v18 = *(a1 + 32);
      if (!v18)
      {
        v18 = *(qword_102636E08 + 32);
      }

      if (*(v18 + 16))
      {
        v20 = *(v18 + 8);
        if (v20 > 0x7F)
        {
          v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
          v19 = v23 + 1;
          *(v18 + 12) = v23 + 1;
          if ((v23 + 1) >= 0x80)
          {
            v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v23 + 1), v24);
            goto LABEL_43;
          }

LABEL_42:
          v21 = 1;
LABEL_43:
          v13 += v19 + v21 + 1;
          v3 = *(a1 + 56);
          goto LABEL_44;
        }

        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      *(v18 + 12) = v19;
      goto LABEL_42;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(a1 + 40);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 56);
  }

  else
  {
    v17 = 2;
  }

  v13 += v17;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_44:
  v22 = v13 + 5;
  if ((v3 & 0x40) == 0)
  {
    v22 = v13;
  }

  if ((v3 & 0x80) != 0)
  {
    result = v22 + 5;
  }

  else
  {
    result = v22;
  }

LABEL_49:
  *(a1 + 52) = result;
  return result;
}

float sub_100446A48(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100445B40(a1, lpsrc);
}

double sub_100446AE8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100456380((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636E10 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_100446BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100446BF4(uint64_t *a1)
{
  *a1 = off_102453C88;
  if (qword_102636E10 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100446C90(uint64_t *a1)
{
  sub_100446BF4(a1);

  operator delete();
}

uint64_t sub_100446CC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636E10;
  if (!qword_102636E10)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636E10;
  }

  return result;
}

uint64_t sub_100446D4C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1003C79DC(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_100446D9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 44) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
      if (!sub_10041EEC4(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        do
        {
          *(this + 1) = v17 + 1;
LABEL_27:
          v18 = *(a1 + 28);
          v19 = *(a1 + 24);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v18 + 1);
              v18 = *(a1 + 28);
            }

            *(a1 + 28) = v18 + 1;
            operator new();
          }

          v20 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          if (!sub_1004460A0(v21, this, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
          v27 = *(this + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(this + 14) = v28;
          }

          v17 = *(this + 1);
          v29 = *(this + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100447104(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636E10 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_10044718C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102636E10 + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = v5 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 24);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = sub_100446868(*(*(a1 + 16) + 8 * v9), a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(a1 + 24));
  }

  *(a1 + 40) = v8;
  return v8;
}