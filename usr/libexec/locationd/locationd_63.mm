uint64_t sub_100433D94(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_102636D28 + 8);
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
    v8 = *(qword_102636D28 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_100433E40(uint64_t a1, unsigned int a2)
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
      v5 = *(qword_102636D28 + 8);
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
      v10 = *(qword_102636D28 + 16);
    }

    v11 = sub_100433464(v10);
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

void sub_100433F54(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100433614(a1, lpsrc);
}

void sub_100433FF4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636D30 + 8);
      }

      sub_10041ED1C(v6, v7);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 40);
    *(a1 + 48) |= 0x10u;
    *(a1 + 40) = v11;
    v4 = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 41);
    *(a1 + 48) |= 0x20u;
    *(a1 + 41) = v12;
    v4 = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 42);
    *(a1 + 48) |= 0x40u;
    *(a1 + 42) = v13;
    if ((*(a2 + 48) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 43);
    *(a1 + 48) |= 0x80u;
    *(a1 + 43) = v5;
  }
}

void sub_1004341C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004341DC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452F68;
  if (qword_102636D30 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10043426C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004341DC(a1);

  operator delete();
}

uint64_t sub_1004342FC(uint64_t result)
{
  if (*(result + 48))
  {
    if (*(result + 48))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_100434338(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_85;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_61;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_69;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 4 && v8 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 1)
      {
        goto LABEL_49;
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

    if (v8 != 2)
    {
      goto LABEL_36;
    }

    *(a1 + 48) |= 1u;
    v12 = *(a1 + 8);
    if (!v12)
    {
      operator new();
    }

    v36[0] = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36))
      {
        return 0;
      }
    }

    else
    {
      v36[0] = *v13;
      *(this + 1) = v13 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36[0]);
    if (!sub_10041EEC4(v12, this, v19) || *(this + 36) != 1)
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
    if (v23 < *(this + 2) && *v23 == 17)
    {
      *(this + 1) = v23 + 1;
LABEL_49:
      *v36 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v36) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v36;
      *(a1 + 48) |= 2u;
      v24 = *(this + 1);
      if (v24 < *(this + 2) && *v24 == 25)
      {
        *(this + 1) = v24 + 1;
LABEL_53:
        *v36 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v36) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v36;
        *(a1 + 48) |= 4u;
        v25 = *(this + 1);
        if (v25 < *(this + 2) && *v25 == 33)
        {
          *(this + 1) = v25 + 1;
LABEL_57:
          *v36 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v36) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v36;
          *(a1 + 48) |= 8u;
          v26 = *(this + 1);
          v9 = *(this + 2);
          if (v26 < v9 && *v26 == 40)
          {
            v14 = v26 + 1;
            *(this + 1) = v14;
LABEL_61:
            v36[0] = 0;
            if (v14 >= v9 || (v27 = *v14, (v27 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36);
              if (!result)
              {
                return result;
              }

              v27 = v36[0];
              v28 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v28 = v14 + 1;
              *(this + 1) = v28;
            }

            *(a1 + 40) = v27 != 0;
            *(a1 + 48) |= 0x10u;
            if (v28 < v9 && *v28 == 48)
            {
              v10 = v28 + 1;
              *(this + 1) = v10;
LABEL_69:
              v36[0] = 0;
              if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36);
                if (!result)
                {
                  return result;
                }

                v30 = v36[0];
                v31 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v31 = v10 + 1;
                *(this + 1) = v31;
              }

              *(a1 + 41) = v30 != 0;
              *(a1 + 48) |= 0x20u;
              if (v31 < v9 && *v31 == 56)
              {
                v15 = v31 + 1;
                *(this + 1) = v15;
LABEL_77:
                v36[0] = 0;
                if (v15 >= v9 || (v32 = *v15, (v32 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36);
                  if (!result)
                  {
                    return result;
                  }

                  v32 = v36[0];
                  v33 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  v33 = v15 + 1;
                  *(this + 1) = v33;
                }

                *(a1 + 42) = v32 != 0;
                *(a1 + 48) |= 0x40u;
                if (v33 < v9 && *v33 == 64)
                {
                  v11 = v33 + 1;
                  *(this + 1) = v11;
LABEL_85:
                  v36[0] = 0;
                  if (v11 >= v9 || (v34 = *v11, (v34 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36);
                    if (!result)
                    {
                      return result;
                    }

                    v34 = v36[0];
                    v35 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    v35 = v11 + 1;
                    *(this + 1) = v35;
                  }

                  *(a1 + 43) = v34 != 0;
                  *(a1 + 48) |= 0x80u;
                  if (v35 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
}

uint64_t sub_100434840(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D30 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 42), a2, a4);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v8, a2, a4);
}

uint64_t sub_100434968(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (v1)
    {
      v4 = *(a1 + 8);
      if (!v4)
      {
        v4 = *(qword_102636D30 + 8);
      }

      v5 = *(v4 + 36);
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v6 += 9;
      }

      if (*(v4 + 36))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      *(v4 + 32) = v7;
      v2 = v7 + 2;
      v1 = *(a1 + 48);
    }

    else
    {
      v2 = 0;
    }

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
      v2 += 9;
    }

    v8.i64[0] = 0x200000002;
    v8.i64[1] = 0x200000002;
    v3 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_101C77210), v8)) + v2);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_100434A2C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100433FF4(a1, lpsrc);
}

void sub_100434ACC(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_102636D38 + 8);
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
      v9 = *(qword_102636D38 + 16);
    }

    sub_100433FF4(v8, v9);
  }
}

void sub_100434C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100434C74(void *result)
{
  if (qword_102636D38 != result)
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

void sub_100434D14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452FE0;
  sub_100434C74(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100434D68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452FE0;
  sub_100434C74(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100434DD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D38;
  if (!qword_102636D38)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D38;
  }

  return result;
}

uint64_t sub_100434E50(uint64_t result)
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
        result = sub_1004342FC(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100434EB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (!sub_100434338(v25, this, v30) || *(this + 36) != 1)
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

uint64_t sub_100435234(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_102636D38 + 8);
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
    v8 = *(qword_102636D38 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_1004352E0(uint64_t a1, unsigned int a2)
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
      v5 = *(qword_102636D38 + 8);
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
      v10 = *(qword_102636D38 + 16);
    }

    v11 = sub_100434968(v10);
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

void sub_1004353F4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100434ACC(a1, lpsrc);
}

double sub_100435494(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 124);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 124) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636D40 + 8);
    }

    result = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 124);
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

  result = *(a2 + 16);
  *(a1 + 124) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 124);
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
  result = *(a2 + 24);
  *(a1 + 124) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 124);
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
  result = *(a2 + 32);
  *(a1 + 124) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 124);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 48);
    *(a1 + 124) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 124);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 40);
  *(a1 + 124) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 124);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  v8 = *(a2 + 72);
  if (v8 >= 3)
  {
    sub_1018829CC();
  }

  *(a1 + 124) |= 0x40u;
  *(a1 + 72) = v8;
  v5 = *(a2 + 124);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 56);
    *(a1 + 124) |= 0x80u;
    *(a1 + 56) = result;
    v5 = *(a2 + 124);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 64);
    *(a1 + 124) |= 0x100u;
    *(a1 + 64) = result;
    v5 = *(a2 + 124);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 80);
  *(a1 + 124) |= 0x200u;
  *(a1 + 80) = result;
  v5 = *(a2 + 124);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v9 = *(a2 + 76);
  *(a1 + 124) |= 0x400u;
  *(a1 + 76) = v9;
  v5 = *(a2 + 124);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 88);
  *(a1 + 124) |= 0x800u;
  *(a1 + 88) = result;
  v5 = *(a2 + 124);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 96);
  *(a1 + 124) |= 0x1000u;
  *(a1 + 96) = result;
  v5 = *(a2 + 124);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_41:
  result = *(a2 + 104);
  *(a1 + 124) |= 0x2000u;
  *(a1 + 104) = result;
  if ((*(a2 + 124) & 0x4000) != 0)
  {
LABEL_21:
    result = *(a2 + 112);
    *(a1 + 124) |= 0x4000u;
    *(a1 + 112) = result;
  }

  return result;
}

void sub_10043575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100435774(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453058;
  if (qword_102636D40 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100435804(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100435774(a1);

  operator delete();
}

uint64_t sub_1004358A4(uint64_t result)
{
  v1 = *(result + 124);
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
        v1 = *(result + 124);
      }
    }

    *(result + 72) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 64) = 0;
    *(result + 76) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
  }

  *(result + 124) = 0;
  return result;
}

uint64_t sub_100435908(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_40;
        }

        *(a1 + 124) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v38[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38))
          {
            return 0;
          }
        }

        else
        {
          v38[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v38[0]);
        if (!sub_10041EEC4(v8, this, v17) || *(this + 36) != 1)
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
        if (v21 >= *(this + 2) || *v21 != 17)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
        goto LABEL_52;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v38;
        *(a1 + 124) |= 2u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 25)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_56:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v38;
        *(a1 + 124) |= 4u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 33)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_60:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v38;
        *(a1 + 124) |= 8u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 41)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_64:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v38;
        *(a1 + 124) |= 0x10u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 49)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_68:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v38;
        *(a1 + 124) |= 0x20u;
        v26 = *(this + 1);
        v10 = *(this + 2);
        if (v26 >= v10 || *v26 != 56)
        {
          continue;
        }

        v11 = v26 + 1;
        *(this + 1) = v11;
LABEL_72:
        v38[0] = 0;
        if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
          if (!result)
          {
            return result;
          }

          v27 = v38[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v27 <= 2)
        {
          *(a1 + 124) |= 0x40u;
          *(a1 + 72) = v27;
        }

        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 65)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_82:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v38;
        *(a1 + 124) |= 0x80u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 73)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_86:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v38;
        *(a1 + 124) |= 0x100u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 81)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_90:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v38;
        *(a1 + 124) |= 0x200u;
        v32 = *(this + 1);
        v12 = *(this + 2);
        if (v32 >= v12 || *v32 != 88)
        {
          continue;
        }

        v13 = v32 + 1;
        *(this + 1) = v13;
LABEL_94:
        v38[0] = 0;
        if (v13 >= v12 || (v33 = *v13, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
          if (!result)
          {
            return result;
          }

          v33 = v38[0];
          v34 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v34 = v13 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 76) = v33 != 0;
        *(a1 + 124) |= 0x400u;
        if (v34 >= v12 || *v34 != 97)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_102:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v38;
        *(a1 + 124) |= 0x800u;
        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 != 105)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_106:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v38;
        *(a1 + 124) |= 0x1000u;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 != 113)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_110:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v38;
        *(a1 + 124) |= 0x2000u;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 121)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_114:
        *v38 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38))
        {
          *(a1 + 112) = *v38;
          *(a1 + 124) |= 0x4000u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_72;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_86;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_94;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_40;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_40;
      default:
LABEL_40:
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

uint64_t sub_100435FE4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 124);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D40 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 72), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 76), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
    if ((*(v5 + 124) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v5 + 112);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t sub_1004361D0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 124);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636D40 + 8);
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
      v3 = *(a1 + 124);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v9 = v4 + 9;
    }

    else
    {
      v9 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v10 = *(a1 + 72);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = *(a1 + 124);
      }

      else
      {
        v11 = 2;
      }

      v9 += v11;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v12 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v12 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v3 >> 9) & 2);
    if ((v3 & 0x800) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      result = v13 + 9;
    }

    else
    {
      result = v13;
    }
  }

  *(a1 + 120) = result;
  return result;
}

double sub_100436338(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100435494(a1, lpsrc);
}

double sub_1004363D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(a1 + 32) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636D48 + 8);
      }

      result = sub_10041ED1C(v6, v7);
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 32) & 4) == 0)
    {
      return result;
    }

LABEL_14:
    *(a1 + 32) |= 4u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_102636D48 + 16);
    }

    return sub_100435494(v9, v10);
  }

  return result;
}

void sub_100436578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100436590(void *result)
{
  if (qword_102636D48 != result)
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

void sub_100436630(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024530D0;
  sub_100436590(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100436684(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024530D0;
  sub_100436590(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004366EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D48;
  if (!qword_102636D48)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D48;
  }

  return result;
}

uint64_t sub_10043676C(uint64_t result)
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
        result = sub_1004358A4(result);
      }
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1004367D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (!sub_100435908(v25, this, v30) || *(this + 36) != 1)
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

uint64_t sub_100436B60(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_102636D48 + 8);
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
    v8 = *(qword_102636D48 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t sub_100436C0C(uint64_t a1, unsigned int a2)
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
      v5 = *(qword_102636D48 + 8);
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
      v10 = *(qword_102636D48 + 16);
    }

    v11 = sub_1004361D0(v10, a2);
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

double sub_100436D20(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004363D8(a1, lpsrc);
}

double sub_100436DC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 8);
      *(a1 + 52) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 52);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 52) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 52);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 24);
    *(a1 + 52) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 52);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 32);
    *(a1 + 52) |= 8u;
    *(a1 + 32) = result;
    if ((*(a2 + 52) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = result;
  }

  return result;
}

void sub_100436ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100436F0C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453148;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100436FB8(uint64_t result)
{
  if (*(result + 52))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_100436FD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v17;
          *(a1 + 52) |= 8u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 41)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v17;
          *(a1 + 52) |= 0x10u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v17 = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v17);
        if (!result)
        {
          return result;
        }

        v11 = v17;
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 8) = v11;
      *(a1 + 52) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_32:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v17;
        *(a1 + 52) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_36:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v17;
          *(a1 + 52) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10043726C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 32), a3);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v4, v7, a3);
}

uint64_t sub_100437330(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (v3)
  {
    if (*(a1 + 52))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 48) = result;
  return result;
}

double sub_1004373B0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100436DC0(a1, lpsrc);
}

void sub_100437450(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  sub_10045602C((a1 + 32), a2 + 32);
  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    *(a1 + 60) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_102636D58 + 16);
    }

    sub_10041ED1C(v7, v8);
    v4 = *(a2 + 60);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  *(a1 + 60) |= 1u;
  v5 = *(a1 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = *(qword_102636D58 + 8);
  }

  sub_10041ED1C(v5, v6);
  v4 = *(a2 + 60);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  v9 = *(a2 + 24);
  if (v9 >= 7)
  {
    sub_1018829F8();
  }

  *(a1 + 60) |= 4u;
  *(a1 + 24) = v9;
  if ((*(a2 + 60) & 8) != 0)
  {
LABEL_21:
    v10 = *(a2 + 28);
    if (v10 >= 7)
    {
      sub_101882A24();
    }

    *(a1 + 60) |= 8u;
    *(a1 + 28) = v10;
  }
}

void sub_100437620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10043763C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D58;
  if (!qword_102636D58)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D58;
  }

  return result;
}

uint64_t sub_1004376C8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 60);
  if (v2)
  {
    if (*(a1 + 60))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(a1 + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  result = sub_1003C79DC(a1 + 32);
  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_100437744(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v11 = *(this + 2);
LABEL_62:
          v49 = 0;
          if (v12 >= v11 || (v35 = *v12, (v35 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
            if (!result)
            {
              return result;
            }

            v35 = v49;
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v35 <= 6)
          {
            *(a1 + 60) |= 8u;
            *(a1 + 28) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 42)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v37 = *(a1 + 44);
            v38 = *(a1 + 40);
            if (v38 >= v37)
            {
              if (v37 == *(a1 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v37 + 1);
                v37 = *(a1 + 44);
              }

              *(a1 + 44) = v37 + 1;
              operator new();
            }

            v39 = *(a1 + 32);
            *(a1 + 40) = v38 + 1;
            v40 = *(v39 + 8 * v38);
            v49 = 0;
            v41 = *(this + 1);
            if (v41 >= *(this + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v41;
              *(this + 1) = v41 + 1;
            }

            v42 = *(this + 14);
            v43 = *(this + 15);
            *(this + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
            if (!sub_100436FD8(v40, this, v45) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
            v46 = *(this + 14);
            v20 = __OFSUB__(v46, 1);
            v47 = v46 - 1;
            if (v47 < 0 == v20)
            {
              *(this + 14) = v47;
            }

            v36 = *(this + 1);
            v48 = *(this + 2);
            if (v36 >= v48 || *v36 != 42)
            {
              break;
            }

LABEL_71:
            *(this + 1) = v36 + 1;
          }

          if (v36 == v48 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      *(a1 + 60) |= 1u;
      v13 = *(a1 + 8);
      if (!v13)
      {
        operator new();
      }

      v49 = 0;
      v14 = *(this + 1);
      if (v14 >= *(this + 2) || *v14 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
        {
          return 0;
        }
      }

      else
      {
        v49 = *v14;
        *(this + 1) = v14 + 1;
      }

      v15 = *(this + 14);
      v16 = *(this + 15);
      *(this + 14) = v15 + 1;
      if (v15 >= v16)
      {
        return 0;
      }

      v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
      if (!sub_10041EEC4(v13, this, v18) || *(this + 36) != 1)
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
LABEL_38:
        *(a1 + 60) |= 2u;
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
        if (!sub_10041EEC4(v23, this, v28) || *(this + 36) != 1)
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
          v10 = v31 + 1;
          *(this + 1) = v10;
LABEL_52:
          v49 = 0;
          if (v10 >= v9 || (v32 = *v10, (v32 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
            if (!result)
            {
              return result;
            }

            v32 = v49;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v32 <= 6)
          {
            *(a1 + 60) |= 4u;
            *(a1 + 24) = v32;
          }

          v34 = *(this + 1);
          v11 = *(this + 2);
          if (v34 < v11 && *v34 == 32)
          {
            v12 = v34 + 1;
            *(this + 1) = v12;
            goto LABEL_62;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
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

void sub_100437CC4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100437450(a1, lpsrc);
}

void sub_100437D70(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    sub_1003C7898(a1 + 32, *(a1 + 40) + v4);
    memcpy((*(a1 + 32) + 8 * *(a1 + 40)), *(a2 + 32), 8 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    sub_1003C7898(a1 + 56, *(a1 + 64) + v5);
    memcpy((*(a1 + 56) + 8 * *(a1 + 64)), *(a2 + 56), 8 * *(a2 + 64));
    *(a1 + 64) += *(a2 + 64);
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6)
    {
      *(a1 + 80) |= 1u;
      v10 = *(a1 + 8);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 8);
      if (!v11)
      {
        v11 = *(qword_102636D60 + 8);
      }

      sub_10041ED1C(v10, v11);
      v6 = *(a2 + 80);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 80) |= 2u;
    v12 = *(a1 + 16);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 16);
    if (!v13)
    {
      v13 = *(qword_102636D60 + 16);
    }

    sub_10041ED1C(v12, v13);
    v6 = *(a2 + 80);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v14 = *(a2 + 24);
    *(a1 + 80) |= 4u;
    *(a1 + 24) = v14;
    v6 = *(a2 + 80);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_31:
    v15 = *(a2 + 28);
    if (v15 >= 5)
    {
      sub_101882A50();
    }

    *(a1 + 80) |= 8u;
    *(a1 + 28) = v15;
    v6 = *(a2 + 80);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v7 = *(a2 + 48);
    *(a1 + 80) |= 0x10u;
    *(a1 + 48) = v7;
    v6 = *(a2 + 80);
LABEL_14:
    if ((v6 & 0x80) != 0)
    {
      v8 = *(a2 + 52);
      *(a1 + 80) |= 0x80u;
      *(a1 + 52) = v8;
      v6 = *(a2 + 80);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    v9 = *(a2 + 72);
    if (v9 >= 2)
    {
      sub_101882A7C();
    }

    *(a1 + 80) |= 0x100u;
    *(a1 + 72) = v9;
  }
}

void sub_100438018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100438030(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453238;
  sub_1004380B4(a1);
  if (*(a1 + 7))
  {
    operator delete[]();
  }

  if (*(a1 + 4))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_1004380B4(void *result)
{
  if (qword_102636D60 != result)
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

void sub_100438158(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100438030(a1);

  operator delete();
}

uint64_t sub_100438190(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D60;
  if (!qword_102636D60)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D60;
  }

  return result;
}

uint64_t sub_100438224(uint64_t result)
{
  v1 = *(result + 80);
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
        v1 = *(result + 80);
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
        v1 = *(result + 80);
      }
    }

    *(result + 24) = 0;
    *(result + 48) = 0;
    *(result + 52) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
  }

  *(result + 40) = 0;
  *(result + 64) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_1004382A0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
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
        if (v7 != 3)
        {
          if (v7 != 4 || (TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v16 = *(this + 1);
        v11 = *(this + 2);
LABEL_70:
        v68[0] = 0;
        if (v16 >= v11 || (v37 = *v16, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68);
          if (!result)
          {
            return result;
          }

          v37 = v68[0];
          v38 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v38 = v16 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 24) = v37;
        *(a1 + 80) |= 4u;
        if (v38 < v11 && *v38 == 32)
        {
          v12 = v38 + 1;
          *(this + 1) = v12;
LABEL_78:
          v68[0] = 0;
          if (v12 >= v11 || (v39 = *v12, (v39 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68);
            if (!result)
            {
              return result;
            }

            v39 = v68[0];
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v39 <= 4)
          {
            *(a1 + 80) |= 8u;
            *(a1 + 28) = v39;
          }

          v40 = *(this + 1);
          v17 = *(this + 2);
          if (v40 < v17 && *v40 == 40)
          {
            v18 = v40 + 1;
            *(this + 1) = v18;
LABEL_88:
            v68[0] = 0;
            if (v18 >= v17 || (v41 = *v18, (v41 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68);
              if (!result)
              {
                return result;
              }

              v41 = v68[0];
              v42 = *(this + 1);
              v17 = *(this + 2);
            }

            else
            {
              v42 = v18 + 1;
              *(this + 1) = v42;
            }

            *(a1 + 48) = v41;
            *(a1 + 80) |= 0x10u;
            if (v42 < v17 && *v42 == 49)
            {
              while (1)
              {
                *(this + 1) = v42 + 1;
LABEL_96:
                *v68 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v68) & 1) == 0)
                {
                  return 0;
                }

                v43 = *v68;
                v44 = *(a1 + 40);
                if (v44 == *(a1 + 44))
                {
                  sub_1003C7898(a1 + 32, v44 + 1);
                  v44 = *(a1 + 40);
                }

                v45 = *(a1 + 32);
                v46 = v44 + 1;
                *(a1 + 40) = v44 + 1;
                *(v45 + 8 * v44) = v43;
                v47 = *(this + 1);
                v48 = *(this + 4) - v47;
                if (v48 >= 1)
                {
                  v49 = v48 / 9u;
                  v50 = v49 >= *(a1 + 44) - v46 ? *(a1 + 44) - v46 : v49;
                  if (v50 >= 1)
                  {
                    v51 = 0;
                    while (*v47 == 49)
                    {
                      v52 = *(v47 + 1);
                      if (v46 >= *(a1 + 44))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v68);
                        v46 = *(a1 + 40);
                        v45 = *(a1 + 32);
                      }

                      *(a1 + 40) = v46 + 1;
                      *(v45 + 8 * v46) = v52;
                      ++v51;
                      v47 += 9;
                      ++v46;
                      if (v50 == v51)
                      {
                        v51 = v50;
                        goto LABEL_111;
                      }
                    }

                    if (!v51)
                    {
                      goto LABEL_112;
                    }

LABEL_111:
                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v51);
                  }
                }

LABEL_112:
                v42 = *(this + 1);
                if (v42 >= *(this + 2))
                {
                  break;
                }

                v53 = *v42;
                if (v53 != 49)
                {
                  if (v53 == 57)
                  {
                    while (1)
                    {
                      *(this + 1) = v42 + 1;
LABEL_116:
                      *v68 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v68) & 1) == 0)
                      {
                        return 0;
                      }

                      v54 = *v68;
                      v55 = *(a1 + 64);
                      if (v55 == *(a1 + 68))
                      {
                        sub_1003C7898(a1 + 56, v55 + 1);
                        v55 = *(a1 + 64);
                      }

                      v56 = *(a1 + 56);
                      v57 = v55 + 1;
                      *(a1 + 64) = v55 + 1;
                      *(v56 + 8 * v55) = v54;
                      v58 = *(this + 1);
                      v59 = *(this + 4) - v58;
                      if (v59 >= 1)
                      {
                        v60 = v59 / 9u;
                        v61 = v60 >= *(a1 + 68) - v57 ? *(a1 + 68) - v57 : v60;
                        if (v61 >= 1)
                        {
                          v62 = 0;
                          while (*v58 == 57)
                          {
                            v63 = *(v58 + 1);
                            if (v57 >= *(a1 + 68))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v68);
                              v57 = *(a1 + 64);
                              v56 = *(a1 + 56);
                            }

                            *(a1 + 64) = v57 + 1;
                            *(v56 + 8 * v57) = v63;
                            ++v62;
                            v58 += 9;
                            ++v57;
                            if (v61 == v62)
                            {
                              v62 = v61;
                              goto LABEL_131;
                            }
                          }

                          if (!v62)
                          {
                            goto LABEL_132;
                          }

LABEL_131:
                          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v62);
                        }
                      }

LABEL_132:
                      v42 = *(this + 1);
                      v9 = *(this + 2);
                      if (v42 >= v9)
                      {
                        break;
                      }

                      v64 = *v42;
                      if (v64 != 57)
                      {
                        if (v64 != 64)
                        {
                          goto LABEL_1;
                        }

                        v19 = v42 + 1;
                        *(this + 1) = v19;
                        goto LABEL_136;
                      }
                    }
                  }

                  goto LABEL_1;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_43;
          }

          goto LABEL_56;
        }

        if (v8 != 2)
        {
          goto LABEL_43;
        }

        *(a1 + 80) |= 1u;
        v14 = *(a1 + 8);
        if (!v14)
        {
          operator new();
        }

        v68[0] = 0;
        v15 = *(this + 1);
        if (v15 >= *(this + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68))
          {
            return 0;
          }
        }

        else
        {
          v68[0] = *v15;
          *(this + 1) = v15 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v68[0]);
        if (!sub_10041EEC4(v14, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 18)
        {
          *(this + 1) = v27 + 1;
LABEL_56:
          *(a1 + 80) |= 2u;
          v28 = *(a1 + 16);
          if (!v28)
          {
            operator new();
          }

          v68[0] = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68))
            {
              return 0;
            }
          }

          else
          {
            v68[0] = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v68[0]);
          if (!sub_10041EEC4(v28, this, v33) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v34 = *(this + 14);
          v25 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v25)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          v11 = *(this + 2);
          if (v36 < v11 && *v36 == 24)
          {
            v16 = v36 + 1;
            *(this + 1) = v16;
            goto LABEL_70;
          }
        }
      }
    }

    if (TagFallback >> 3 <= 6)
    {
      if (v7 != 5)
      {
        if (v7 != 6)
        {
          goto LABEL_43;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            result = sub_1003A5A94(this, a1 + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_112;
          }

          goto LABEL_43;
        }

        goto LABEL_96;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v18 = *(this + 1);
      v17 = *(this + 2);
      goto LABEL_88;
    }

    if (v7 == 7)
    {
      break;
    }

    if (v7 == 8)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v19 = *(this + 1);
      v9 = *(this + 2);
LABEL_136:
      v68[0] = 0;
      if (v19 >= v9 || (v65 = *v19, (v65 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68);
        if (!result)
        {
          return result;
        }

        v65 = v68[0];
        v66 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v66 = v19 + 1;
        *(this + 1) = v66;
      }

      *(a1 + 52) = v65 != 0;
      *(a1 + 80) |= 0x80u;
      if (v66 < v9 && *v66 == 72)
      {
        v10 = v66 + 1;
        *(this + 1) = v10;
LABEL_144:
        v68[0] = 0;
        if (v10 >= v9 || (v67 = *v10, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v68);
          if (!result)
          {
            return result;
          }

          v67 = v68[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v67 <= 1)
        {
          *(a1 + 80) |= 0x100u;
          *(a1 + 72) = v67;
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

    else
    {
      if (v7 == 9 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_144;
      }

LABEL_43:
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

  if (v8 == 1)
  {
    goto LABEL_116;
  }

  if (v8 != 2)
  {
    goto LABEL_43;
  }

  result = sub_1003A5A94(this, a1 + 56);
  if (result)
  {
    goto LABEL_132;
  }

  return result;
}

void sub_100438B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100438B2C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6)
  {
    v10 = *(result + 8);
    if (!v10)
    {
      v10 = *(qword_102636D60 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v10, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 16);
  if (!v11)
  {
    v11 = *(qword_102636D60 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v11, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  if ((*(v5 + 80) & 0x10) != 0)
  {
LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 48), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v5 + 32) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(*(v5 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v5 + 64));
  }

  v9 = *(v5 + 80);
  if ((v9 & 0x80) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 52), a2, a4);
    v9 = *(v5 + 80);
  }

  if ((v9 & 0x100) != 0)
  {
    v12 = *(v5 + 72);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, v12, a2, a4);
  }

  return result;
}

uint64_t sub_100438CB8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636D60 + 8);
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
      v3 = *(a1 + 80);
      if ((v3 & 2) == 0)
      {
LABEL_25:
        if ((v3 & 4) != 0)
        {
          v12 = *(a1 + 24);
          if ((v12 & 0x80000000) != 0)
          {
            v13 = 11;
          }

          else if (v12 >= 0x80)
          {
            v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
            v3 = *(a1 + 80);
          }

          else
          {
            v13 = 2;
          }

          v4 += v13;
          if ((v3 & 8) == 0)
          {
LABEL_27:
            if ((v3 & 0x10) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_41;
          }
        }

        else if ((v3 & 8) == 0)
        {
          goto LABEL_27;
        }

        v14 = *(a1 + 28);
        if ((v14 & 0x80000000) != 0)
        {
          v15 = 11;
        }

        else if (v14 >= 0x80)
        {
          v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
          v3 = *(a1 + 80);
        }

        else
        {
          v15 = 2;
        }

        v4 += v15;
        if ((v3 & 0x10) == 0)
        {
LABEL_47:
          v5 = ((v3 >> 6) & 2) + v4;
          if ((v3 & 0x100) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }

LABEL_41:
        v16 = *(a1 + 48);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = 11;
        }

        else if (v16 >= 0x80)
        {
          v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
          v3 = *(a1 + 80);
        }

        else
        {
          v17 = 2;
        }

        v4 += v17;
        goto LABEL_47;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636D60 + 16);
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
    v3 = *(a1 + 80);
    goto LABEL_25;
  }

  v5 = 0;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v18 = *(a1 + 72);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
  }

  else
  {
    v19 = 2;
  }

  v5 += v19;
LABEL_54:
  result = 9 * (*(a1 + 64) + *(a1 + 40)) + v5;
  *(a1 + 76) = result;
  return result;
}

void sub_100438E9C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100437D70(a1, lpsrc);
}

void sub_100438F3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 8);
      if (v5 >= 4 && v5 != 1001)
      {
        sub_101882AA8();
      }

      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 4 && v6 != 1001)
      {
        sub_101882AD4();
      }

      *(a1 + 24) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 24) |= 4u;
      *(a1 + 16) = v7;
      v4 = *(a2 + 24);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 17);
      *(a1 + 24) |= 8u;
      *(a1 + 17) = v8;
    }
  }
}

void sub_100439048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100439080(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024532B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004390D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D68;
  if (!qword_102636D68)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D68;
  }

  return result;
}

uint64_t sub_100439154(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_10043916C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_43;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_51;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v23 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v13 = v23;
      }

      else
      {
        *(this + 1) = v12 + 1;
      }

      if (v13 < 4 || v13 == 1001)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 8) = v13;
      }

      v15 = *(this + 1);
      v8 = *(this + 2);
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(this + 1) = v9;
LABEL_32:
        v23 = 0;
        if (v9 >= v8 || (v16 = *v9, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
          if (!result)
          {
            return result;
          }

          v16 = v23;
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v16 < 4 || v16 == 1001)
        {
          *(a1 + 24) |= 2u;
          *(a1 + 12) = v16;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
        if (v17 < v10 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_43:
          v23 = 0;
          if (v14 >= v10 || (v18 = *v14, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
            v19 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v19 = v14 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 16) = v18 != 0;
          *(a1 + 24) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
LABEL_51:
            v23 = 0;
            if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 17) = v20 != 0;
            *(a1 + 24) |= 8u;
            if (v21 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_32;
    }

LABEL_20:
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

uint64_t sub_100439428(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 24) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_1004394D0(unsigned int *a1, unsigned int a2)
{
  v3 = a1[6];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[6];
        if ((v3 & 2) == 0)
        {
LABEL_19:
          result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
          goto LABEL_20;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v7 = a1[3];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[6];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  a1[5] = result;
  return result;
}

void sub_100439598(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100438F3C(a1, lpsrc);
}

void sub_100439638(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v7;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 17);
    *(a1 + 32) |= 4u;
    *(a1 + 17) = v9;
    v4 = *(a2 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_16:
    v10 = *(a2 + 20);
    if (v10 >= 5)
    {
      sub_101882B00();
    }

    *(a1 + 32) |= 8u;
    *(a1 + 20) = v10;
    v4 = *(a2 + 32);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 18);
    *(a1 + 32) |= 0x10u;
    *(a1 + 18) = v5;
    v4 = *(a2 + 32);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 32) |= 0x20u;
      *(a1 + 24) = v6;
    }
  }
}

void sub_100439774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004397AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453328;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100439800(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D70;
  if (!qword_102636D70)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D70;
  }

  return result;
}

uint64_t sub_10043988C(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0xBFF0000000000000;
    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 18) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1004398B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_47;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_57;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_65;
          }

          goto LABEL_30;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_30;
        }

        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v28;
        *(a1 + 32) |= 1u;
        v13 = *(this + 1);
        v9 = *(this + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(this + 1) = v14;
          goto LABEL_26;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(this + 1);
      v9 = *(this + 2);
LABEL_26:
      v28[0] = 0;
      if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
        if (!result)
        {
          return result;
        }

        v16 = v28[0];
        v17 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v17 = v14 + 1;
        *(this + 1) = v17;
      }

      *(a1 + 16) = v16 != 0;
      *(a1 + 32) |= 2u;
      if (v17 < v9 && *v17 == 24)
      {
        v10 = v17 + 1;
        *(this + 1) = v10;
LABEL_39:
        v28[0] = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
          if (!result)
          {
            return result;
          }

          v20 = v28[0];
          v21 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 17) = v20 != 0;
        *(a1 + 32) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v15 = v21 + 1;
          *(this + 1) = v15;
LABEL_47:
          v28[0] = 0;
          if (v15 >= v9 || (v22 = *v15, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
            if (!result)
            {
              return result;
            }

            v22 = v28[0];
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v22 <= 4)
          {
            *(a1 + 32) |= 8u;
            *(a1 + 20) = v22;
          }

          v23 = *(this + 1);
          v11 = *(this + 2);
          if (v23 < v11 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(this + 1) = v18;
LABEL_57:
            v28[0] = 0;
            if (v18 >= v11 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
              if (!result)
              {
                return result;
              }

              v24 = v28[0];
              v25 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(this + 1) = v25;
            }

            *(a1 + 18) = v24 != 0;
            *(a1 + 32) |= 0x10u;
            if (v25 < v11 && *v25 == 48)
            {
              v12 = v25 + 1;
              *(this + 1) = v12;
LABEL_65:
              v28[0] = 0;
              if (v12 >= v11 || (v26 = *v12, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
                if (!result)
                {
                  return result;
                }

                v26 = v28[0];
                v27 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                v27 = v12 + 1;
                *(this + 1) = v27;
              }

              *(a1 + 24) = v26;
              *(a1 + 32) |= 0x20u;
              if (v27 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_39;
    }

LABEL_30:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100439C30(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 18), a2, a4);
    if ((*(v5 + 32) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v7, a2, a4);
}

uint64_t sub_100439D10(unsigned int *a1, unsigned int a2)
{
  v3 = a1[8];
  if (v3)
  {
    v4 = (((v3 << 31) >> 31) & 9 | v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v5 = a1[5];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[8];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    v7 = ((v3 >> 3) & 2) + v4;
    if ((v3 & 0x20) != 0)
    {
      v8 = a1[6];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      }

      else
      {
        v9 = 2;
      }

      v7 = (v9 + v7);
    }
  }

  else
  {
    v7 = 0;
  }

  a1[7] = v7;
  return v7;
}

void sub_100439DDC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100439638(a1, lpsrc);
}

void sub_100439E7C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(a1 + 60) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      v8 = *(qword_102636D78 + 8);
    }

    sub_10041ED1C(v7, v8);
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 16);
  *(a1 + 60) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_27:
  v10 = *(a2 + 20);
  if (v10 >= 0x14)
  {
    sub_101882B2C();
  }

  *(a1 + 60) |= 4u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 60) |= 8u;
  v11 = *(a1 + 24);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    v12 = *(qword_102636D78 + 24);
  }

  sub_100438F3C(v11, v12);
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v15 = *(a2 + 40);
    *(a1 + 60) |= 0x20u;
    *(a1 + 40) = v15;
    v4 = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_34:
  *(a1 + 60) |= 0x10u;
  v13 = *(a1 + 32);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 32);
  if (!v14)
  {
    v14 = *(qword_102636D78 + 32);
  }

  sub_100439638(v13, v14);
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  v16 = *(a2 + 41);
  *(a1 + 60) |= 0x40u;
  *(a1 + 41) = v16;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 42);
    *(a1 + 60) |= 0x80u;
    *(a1 + 42) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 43);
    *(a1 + 60) |= 0x100u;
    *(a1 + 43) = v17;
    v4 = *(a2 + 60);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 48);
  *(a1 + 60) |= 0x200u;
  *(a1 + 48) = v18;
  v4 = *(a2 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 44);
  *(a1 + 60) |= 0x400u;
  *(a1 + 44) = v19;
  v4 = *(a2 + 60);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_45:
  v20 = *(a2 + 52);
  *(a1 + 60) |= 0x800u;
  *(a1 + 52) = v20;
  if ((*(a2 + 60) & 0x1000) != 0)
  {
LABEL_19:
    v6 = *(a2 + 49);
    *(a1 + 60) |= 0x1000u;
    *(a1 + 49) = v6;
  }
}

void sub_10043A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10043A1D8(void *result)
{
  if (qword_102636D78 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
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

void sub_10043A2A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024533A0;
  sub_10043A1D8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10043A2F8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024533A0;
  sub_10043A1D8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043A360(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D78;
  if (!qword_102636D78)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D78;
  }

  return result;
}

uint64_t sub_10043A3F0(uint64_t result)
{
  v1 = *(result + 60);
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
        v1 = *(result + 60);
      }
    }

    *(result + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 16) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(result + 60);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(result + 32);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0xBFF0000000000000;
          *(v4 + 16) = 0;
          *(v4 + 20) = 0;
          *(v4 + 18) = 0;
        }

        *(v4 + 32) = 0;
        v1 = *(result + 60);
      }
    }

    *(result + 40) = 0;
    *(result + 42) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 52) = 0;
    *(result + 43) = 0;
    *(result + 46) = 0;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_10043A49C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_36;
        }

        *(a1 + 60) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v69 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
          {
            return 0;
          }
        }

        else
        {
          v69 = *v9;
          *(this + 1) = v9 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
        if (!sub_10041EEC4(v8, this, v25) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        v26 = *(this + 14);
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *(this + 14) = v28;
        }

        v29 = *(this + 1);
        v14 = *(this + 2);
        if (v29 >= v14 || *v29 != 16)
        {
          continue;
        }

        v17 = v29 + 1;
        *(this + 1) = v17;
        goto LABEL_49;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(this + 1);
        v14 = *(this + 2);
LABEL_49:
        v69 = 0;
        if (v17 >= v14 || (v30 = *v17, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v30 = v69;
          v31 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          v31 = v17 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 16) = v30;
        *(a1 + 60) |= 2u;
        if (v31 >= v14 || *v31 != 24)
        {
          continue;
        }

        v15 = v31 + 1;
        *(this + 1) = v15;
LABEL_57:
        v69 = 0;
        if (v15 >= v14 || (v33 = *v15, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v33 = v69;
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v33 <= 0x13)
        {
          *(a1 + 60) |= 4u;
          *(a1 + 20) = v33;
        }

        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 34)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_67:
        *(a1 + 60) |= 8u;
        v35 = *(a1 + 24);
        if (!v35)
        {
          operator new();
        }

        v69 = 0;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
          {
            return 0;
          }
        }

        else
        {
          v69 = *v36;
          *(this + 1) = v36 + 1;
        }

        v37 = *(this + 14);
        v38 = *(this + 15);
        *(this + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
        if (!sub_10043916C(v35, this, v40) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v39);
        v41 = *(this + 14);
        v27 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v27)
        {
          *(this + 14) = v42;
        }

        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 != 42)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_81:
        *(a1 + 60) |= 0x10u;
        v44 = *(a1 + 32);
        if (!v44)
        {
          operator new();
        }

        v69 = 0;
        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
          {
            return 0;
          }
        }

        else
        {
          v69 = *v45;
          *(this + 1) = v45 + 1;
        }

        v46 = *(this + 14);
        v47 = *(this + 15);
        *(this + 14) = v46 + 1;
        if (v46 < v47)
        {
          v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
          if (sub_1004398B0(v44, this, v49))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
              v50 = *(this + 14);
              v27 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v51 < 0 == v27)
              {
                *(this + 14) = v51;
              }

              v52 = *(this + 1);
              v10 = *(this + 2);
              if (v52 < v10 && *v52 == 48)
              {
                v18 = v52 + 1;
                *(this + 1) = v18;
LABEL_95:
                v69 = 0;
                if (v18 >= v10 || (v53 = *v18, (v53 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                  if (!result)
                  {
                    return result;
                  }

                  v53 = v69;
                  v54 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v54 = v18 + 1;
                  *(this + 1) = v54;
                }

                *(a1 + 40) = v53 != 0;
                *(a1 + 60) |= 0x20u;
                if (v54 < v10 && *v54 == 56)
                {
                  v19 = v54 + 1;
                  *(this + 1) = v19;
LABEL_103:
                  v69 = 0;
                  if (v19 >= v10 || (v55 = *v19, (v55 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                    if (!result)
                    {
                      return result;
                    }

                    v55 = v69;
                    v56 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    v56 = v19 + 1;
                    *(this + 1) = v56;
                  }

                  *(a1 + 41) = v55 != 0;
                  *(a1 + 60) |= 0x40u;
                  if (v56 < v10 && *v56 == 64)
                  {
                    v16 = v56 + 1;
                    *(this + 1) = v16;
LABEL_111:
                    v69 = 0;
                    if (v16 >= v10 || (v57 = *v16, (v57 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                      if (!result)
                      {
                        return result;
                      }

                      v57 = v69;
                      v58 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      v58 = v16 + 1;
                      *(this + 1) = v58;
                    }

                    *(a1 + 42) = v57 != 0;
                    *(a1 + 60) |= 0x80u;
                    if (v58 < v10 && *v58 == 72)
                    {
                      v21 = v58 + 1;
                      *(this + 1) = v21;
LABEL_119:
                      v69 = 0;
                      if (v21 >= v10 || (v59 = *v21, (v59 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                        if (!result)
                        {
                          return result;
                        }

                        v59 = v69;
                        v60 = *(this + 1);
                        v10 = *(this + 2);
                      }

                      else
                      {
                        v60 = v21 + 1;
                        *(this + 1) = v60;
                      }

                      *(a1 + 43) = v59 != 0;
                      *(a1 + 60) |= 0x100u;
                      if (v60 < v10 && *v60 == 80)
                      {
                        v13 = v60 + 1;
                        *(this + 1) = v13;
LABEL_127:
                        v69 = 0;
                        if (v13 >= v10 || (v61 = *v13, (v61 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                          if (!result)
                          {
                            return result;
                          }

                          v61 = v69;
                          v62 = *(this + 1);
                          v10 = *(this + 2);
                        }

                        else
                        {
                          v62 = v13 + 1;
                          *(this + 1) = v62;
                        }

                        *(a1 + 48) = v61 != 0;
                        *(a1 + 60) |= 0x200u;
                        if (v62 < v10 && *v62 == 88)
                        {
                          v20 = v62 + 1;
                          *(this + 1) = v20;
LABEL_135:
                          v69 = 0;
                          if (v20 >= v10 || (v63 = *v20, (v63 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                            if (!result)
                            {
                              return result;
                            }

                            v63 = v69;
                            v64 = *(this + 1);
                            v10 = *(this + 2);
                          }

                          else
                          {
                            v64 = v20 + 1;
                            *(this + 1) = v64;
                          }

                          *(a1 + 44) = v63;
                          *(a1 + 60) |= 0x400u;
                          if (v64 < v10 && *v64 == 96)
                          {
                            v11 = v64 + 1;
                            *(this + 1) = v11;
LABEL_143:
                            v69 = 0;
                            if (v11 >= v10 || (v65 = *v11, (v65 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                              if (!result)
                              {
                                return result;
                              }

                              v65 = v69;
                              v66 = *(this + 1);
                              v10 = *(this + 2);
                            }

                            else
                            {
                              v66 = v11 + 1;
                              *(this + 1) = v66;
                            }

                            *(a1 + 52) = v65;
                            *(a1 + 60) |= 0x800u;
                            if (v66 < v10 && *v66 == 104)
                            {
                              v12 = v66 + 1;
                              *(this + 1) = v12;
LABEL_151:
                              v69 = 0;
                              if (v12 >= v10 || (v67 = *v12, (v67 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                                if (!result)
                                {
                                  return result;
                                }

                                v67 = v69;
                                v68 = *(this + 1);
                                v10 = *(this + 2);
                              }

                              else
                              {
                                v68 = v12 + 1;
                                *(this + 1) = v68;
                              }

                              *(a1 + 49) = v67 != 0;
                              *(a1 + 60) |= 0x1000u;
                              if (v68 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_57;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_36;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_81;
        }

        goto LABEL_36;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_95;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_103;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_111;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_127;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_135;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_143;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_151;
      default:
LABEL_36:
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

uint64_t sub_10043AD80(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D78 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
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
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_102636D78 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_102636D78 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 41), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 42), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 43), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 52), a2, a4);
    if ((*(v5 + 60) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return result;
  }

LABEL_33:
  v10 = *(v5 + 49);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v10, a2, a4);
}

uint64_t sub_10043AF54(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 60);
  if (!v3)
  {
    result = 0;
    goto LABEL_44;
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
    v6 = *(qword_102636D78 + 8);
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
  v3 = *(a1 + 60);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102636D78 + 24);
    }

    v14 = sub_1004394D0(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 += v15 + v16 + 1;
    v3 = *(a1 + 60);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v11 = *(a1 + 20);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
LABEL_37:
    v17 = *(a1 + 32);
    if (!v17)
    {
      v17 = *(qword_102636D78 + 32);
    }

    v18 = sub_100439D10(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
    v3 = *(a1 + 60);
  }

LABEL_43:
  result = ((v3 >> 4) & 2) + v4 + ((v3 >> 5) & 2) + ((v3 >> 6) & 2);
LABEL_44:
  if ((v3 & 0xFF00) != 0)
  {
    v21 = ((v3 >> 7) & 2) + result + ((v3 >> 8) & 2);
    if ((v3 & 0x400) != 0)
    {
      v22 = *(a1 + 44);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = 11;
      }

      else if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
        v3 = *(a1 + 60);
      }

      else
      {
        v23 = 2;
      }

      v21 += v23;
    }

    if ((v3 & 0x800) != 0)
    {
      v24 = *(a1 + 52);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 11;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
        v3 = *(a1 + 60);
      }

      else
      {
        v25 = 2;
      }

      v21 += v25;
    }

    result = ((v3 >> 11) & 2) + v21;
  }

  *(a1 + 56) = result;
  return result;
}

void sub_10043B1AC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100439E7C(a1, lpsrc);
}

void sub_10043B24C(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_102636D80 + 8);
      }

      sub_10041ED1C(v5, v6);
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if ((v7 + 1) >= 8)
      {
        sub_101882B58();
      }

      *(a1 + 32) |= 2u;
      *(a1 + 16) = v7;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      if ((v8 + 1) >= 8)
      {
        sub_101882B84();
      }

      *(a1 + 32) |= 4u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 32);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(a1 + 32) |= 8u;
      *(a1 + 24) = v9;
    }
  }
}

void sub_10043B3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043B3C4(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453418;
  if (qword_102636D80 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10043B454(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10043B3C4(a1);

  operator delete();
}

uint64_t sub_10043B48C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D80;
  if (!qword_102636D80)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D80;
  }

  return result;
}

uint64_t sub_10043B514(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 32))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = -1;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10043B550(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v15 = *(this + 2);
            goto LABEL_45;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_55;
        }

        goto LABEL_22;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_35;
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

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 32) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

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

    v17 = *(this + 14);
    v18 = *(this + 15);
    *(this + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
    if (!sub_10041EEC4(v13, this, v20) || *(this + 36) != 1)
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
    v9 = *(this + 2);
    if (v24 < v9 && *v24 == 16)
    {
      v10 = v24 + 1;
      *(this + 1) = v10;
LABEL_35:
      v32 = 0;
      if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
        if (!result)
        {
          return result;
        }

        v25 = v32;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v25 + 1 <= 7)
      {
        *(a1 + 32) |= 2u;
        *(a1 + 16) = v25;
      }

      v27 = *(this + 1);
      v15 = *(this + 2);
      if (v27 < v15 && *v27 == 24)
      {
        v16 = v27 + 1;
        *(this + 1) = v16;
LABEL_45:
        v32 = 0;
        if (v16 >= v15 || (v28 = *v16, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
          if (!result)
          {
            return result;
          }

          v28 = v32;
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v28 + 1 <= 7)
        {
          *(a1 + 32) |= 4u;
          *(a1 + 20) = v28;
        }

        v29 = *(this + 1);
        v11 = *(this + 2);
        if (v29 < v11 && *v29 == 32)
        {
          v12 = v29 + 1;
          *(this + 1) = v12;
LABEL_55:
          v32 = 0;
          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
            if (!result)
            {
              return result;
            }

            v30 = v32;
            v31 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            v31 = v12 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 24) = v30;
          *(a1 + 32) |= 8u;
          if (v31 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_10043B8B4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D80 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v8 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v8, a2, a4);
}

uint64_t sub_10043B96C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636D80 + 8);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(a1 + 16);
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
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_30:
    v12 = *(a1 + 24);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_36:
  *(a1 + 28) = v4;
  return v4;
}

void sub_10043BAA0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10043B24C(a1, lpsrc);
}

void sub_10043BB40(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      if ((v5 + 1) >= 8)
      {
        sub_101882BB0();
      }

      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 4)
      {
        sub_101882BDC();
      }

      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_10043BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043BC40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453490;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043BC94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D88;
  if (!qword_102636D88)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D88;
  }

  return result;
}

uint64_t sub_10043BD18(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0xFFFFFFFFLL;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10043BD30(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 + 1 <= 7)
      {
        a1[5] |= 1u;
        a1[2] = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_24:
        v14 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v12 <= 3)
        {
          a1[5] |= 2u;
          a1[3] = v12;
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

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t sub_10043BED8(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_10043BF44(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 12);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 16) = v4;
  return v4;
}

void sub_10043BFF0(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10043BB40(a1, lpsrc);
}

float sub_10043C090(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    *(a1 + 32) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636D90 + 8);
    }

    v4 = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 20);
      *(a1 + 32) |= 4u;
      *(a1 + 20) = LODWORD(v4);
      if ((*(a2 + 32) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 16);
  *(a1 + 32) |= 2u;
  *(a1 + 16) = LODWORD(v4);
  v5 = *(a2 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = LODWORD(v4);
  }

  return *&v4;
}

void sub_10043C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043C1F8(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453508;
  if (qword_102636D90 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10043C288(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10043C1F8(a1);

  operator delete();
}

uint64_t sub_10043C310(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 32))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10043C348(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
            goto LABEL_22;
          }

LABEL_38:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v22;
          *(a1 + 32) |= 4u;
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 37)
          {
            *(this + 1) = v20 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v22;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
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

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
    if (!sub_10041EEC4(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 21)
    {
      *(this + 1) = v18 + 1;
LABEL_34:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v22;
      *(a1 + 32) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 29)
      {
        *(this + 1) = v19 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t sub_10043C63C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636D90 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t sub_10043C6F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if (v1)
    {
      v1 = *(a1 + 8);
      if (!v1)
      {
        v1 = *(qword_102636D90 + 8);
      }

      v3 = *(v1 + 36);
      if (*(v1 + 36))
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

      *(v1 + 32) = v3;
      v2 = v3 + 2;
      LODWORD(v1) = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 28) = v1;
  return v1;
}

float sub_10043C784(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10043C090(a1, lpsrc);
}

double sub_10043C824(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_10045614C((a1 + 16), a2 + 16);
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
      v6 = *(qword_102636D98 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_10043C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043C930(uint64_t *a1)
{
  *a1 = off_102453580;
  if (qword_102636D98 != a1)
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

void sub_10043C9CC(uint64_t *a1)
{
  sub_10043C930(a1);

  operator delete();
}

uint64_t sub_10043CA04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636D98;
  if (!qword_102636D98)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636D98;
  }

  return result;
}

uint64_t sub_10043CA88(uint64_t a1)
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

uint64_t sub_10043CAD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (!sub_10043C348(v21, this, v26) || *(this + 36) != 1)
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

uint64_t sub_10043CE34(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636D98 + 8);
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

uint64_t sub_10043CEBC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(qword_102636D98 + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_10043C6F4(*(*(a1 + 16) + 8 * v8));
      v11 = v9;
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
      }

      else
      {
        v12 = 1;
      }

      v7 = (v11 + v7 + v12);
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  *(a1 + 40) = v7;
  return v7;
}

double sub_10043CF98(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10043C824(a1, lpsrc);
}

double sub_10043D038(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 20))
  {
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636DA0 + 8);
    }

    return sub_10041ED1C(v5, v6);
  }

  return result;
}

void sub_10043D120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043D138(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024535F8;
  if (qword_102636DA0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10043D1C8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10043D138(a1);

  operator delete();
}

uint64_t sub_10043D200(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636DA0;
  if (!qword_102636DA0)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636DA0;
  }

  return result;
}

uint64_t sub_10043D27C(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (*(v1 + 36))
      {
        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
      }

      *(v1 + 36) = 0;
    }
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10043D2A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v17);
      if (!sub_10041EEC4(v7, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v11);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_10043D474(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102636DA0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_10043D4A0(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      v2 = *(qword_102636DA0 + 8);
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
    v1 = (v3 + 2);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 16) = v1;
  return v1;
}

double sub_10043D504(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10043D038(a1, lpsrc);
}

double sub_10043D5A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 36);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_10043D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10043D6B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453670;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10043D758(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_10043D770(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
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

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
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