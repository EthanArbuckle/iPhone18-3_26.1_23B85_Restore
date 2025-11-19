void sub_10039AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10039AB80(void *result)
{
  v1 = result[3];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[5];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[6];
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

void sub_10039AC60(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447508;
  sub_10039AB80(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039ACB4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447508;
  sub_10039AB80(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039AD80(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 5;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 24);
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

    *(result + 56) = 0;
    *(result + 32) = 0;
    if ((*(result + 64) & 0x40) != 0)
    {
      v3 = *(result + 40);
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

    if ((*(result + 64) & 0x80) != 0)
    {
      v4 = *(result + 48);
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
  }

  *(result + 64) = 0;
  return result;
}

uint64_t sub_10039AE40(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_59;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_67;
            }

            goto LABEL_34;
          }

          if (v7 != 7)
          {
            if (v7 == 8 && v8 == 2)
            {
              goto LABEL_81;
            }

            goto LABEL_34;
          }

          if (v8 != 2)
          {
            goto LABEL_34;
          }

          v15 = *(a1 + 64);
LABEL_75:
          *(a1 + 64) = v15 | 0x40;
          if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 66)
          {
            *(this + 1) = v25 + 1;
LABEL_81:
            *(a1 + 64) |= 0x80u;
            if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
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

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_49;
          }

          goto LABEL_34;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_34;
        }

        v11 = *(a1 + 64);
LABEL_53:
        *(a1 + 64) = v11 | 8;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
        if (v20 < v9 && *v20 == 40)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
LABEL_59:
          v26[0] = 0;
          if (v14 >= v9 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
            if (!result)
            {
              return result;
            }

            v21 = v26[0];
            v22 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 56) = v21;
          *(a1 + 64) |= 0x10u;
          if (v22 < v9 && *v22 == 48)
          {
            v10 = v22 + 1;
            *(this + 1) = v10;
LABEL_67:
            if (v10 >= v9 || (v23 = *v10, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v23;
              v24 = v10 + 1;
              *(this + 1) = v24;
            }

            v15 = *(a1 + 64) | 0x20;
            *(a1 + 64) = v15;
            if (v24 < v9 && *v24 == 58)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_75;
            }
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v26[0] = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
        if (!result)
        {
          return result;
        }

        v13 = v26[0];
      }

      else
      {
        *(this + 1) = v12 + 1;
      }

      if (v13 - 1 <= 5)
      {
        *(a1 + 64) |= 1u;
        *(a1 + 16) = v13;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 17)
      {
        *(this + 1) = v17 + 1;
LABEL_45:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v26;
        *(a1 + 64) |= 2u;
        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 29)
        {
          *(this + 1) = v18 + 1;
LABEL_49:
          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v26[0];
          v11 = *(a1 + 64) | 4;
          *(a1 + 64) = v11;
          v19 = *(this + 1);
          if (v19 < *(this + 2) && *v19 == 34)
          {
            *(this + 1) = v19 + 1;
            goto LABEL_53;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_34:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10039B29C(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 64);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_10039B3B4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if (*(a1 + 64))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v4 = 2;
    }
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
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v7 = *(a1 + 24);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v3 = *(a1 + 64);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v5 = (v5 + v12 + v8 + 1);
    if ((v3 & 0x10) == 0)
    {
LABEL_17:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(a1 + 56);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v14 = 2;
  }

  v5 = (v14 + v5);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 64);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

LABEL_37:
  v15 = *(a1 + 40);
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
    v3 = *(a1 + 64);
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

  v5 = (v5 + v20 + v16 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_46:
    v21 = *(a1 + 48);
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

    v5 = (v5 + v26 + v22 + 1);
  }

LABEL_55:
  *(a1 + 60) = v5;
  return v5;
}

void sub_10039B5A8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039A944(a1, lpsrc);
}

void sub_10039B648(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 16);
    if ((v5 - 1) >= 6)
    {
      sub_101871D20();
    }

    *(a1 + 40) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(a2 + 20);
    *(a1 + 40) |= 4u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 8);
  *(a1 + 40) |= 2u;
  *(a1 + 8) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = *(a2 + 24);
  *(a1 + 40) |= 8u;
  *(a1 + 24) = v9;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_11:
    v6 = *(a2 + 32);
    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = v6;
  }
}

void sub_10039B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10039B7A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447580;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039B850(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 16) = 1;
    *(result + 8) = 0;
    *(result + 28) = 0;
    *(result + 20) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_10039B874(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v22[0] = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
          if (!result)
          {
            return result;
          }

          v13 = v22[0];
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 - 1 <= 5)
        {
          *(a1 + 40) |= 1u;
          *(a1 + 16) = v13;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 17)
        {
          *(this + 1) = v15 + 1;
LABEL_34:
          *v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v22;
          *(a1 + 40) |= 2u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 29)
          {
            *(this + 1) = v16 + 1;
LABEL_38:
            v22[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v22) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v22[0];
            *(a1 + 40) |= 4u;
            v17 = *(this + 1);
            v9 = *(this + 2);
            if (v17 < v9 && *v17 == 32)
            {
              v11 = v17 + 1;
              *(this + 1) = v11;
              goto LABEL_42;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
LABEL_42:
      if (v11 >= v9 || (v18 = *v11, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v18;
        v19 = v11 + 1;
        *(this + 1) = v19;
      }

      *(a1 + 40) |= 8u;
      if (v19 < v9 && *v19 == 40)
      {
        v10 = v19 + 1;
        *(this + 1) = v10;
LABEL_50:
        v22[0] = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
          if (!result)
          {
            return result;
          }

          v20 = v22[0];
          v21 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 32) = v20;
        *(a1 + 40) |= 0x10u;
        if (v21 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_50;
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

uint64_t sub_10039BB44(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v7, a2, a4);
}

uint64_t sub_10039BC08(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v4 = 2;
      }
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
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(a1 + 32);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 36) = v5;
  return v5;
}

void sub_10039BCD8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039B648(a1, lpsrc);
}

float sub_10039BD78(uint64_t a1, uint64_t a2)
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

void sub_10039BE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10039BE84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024475F8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039BF28(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_10039BF40(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

uint64_t sub_10039C0F8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_10039C184(uint64_t a1)
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

float sub_10039C1BC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10039BD78(a1, lpsrc);
}

uint64_t sub_10039C26C(uint64_t a1, uint64_t a2)
{
  *a1 = off_102447670;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 24) = 0;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 1;
  sub_10039C2E8(a1, a2);
  return a1;
}

float sub_10039C2E8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (v5)
  {
    if (*(a2 + 56))
    {
      v6 = *(a2 + 16);
      if ((v6 - 1) >= 6)
      {
        sub_101871D4C();
      }

      *(a1 + 56) |= 1u;
      *(a1 + 16) = v6;
      v5 = *(a2 + 56);
    }

    if ((v5 & 2) != 0)
    {
      v4 = *(a2 + 8);
      *(a1 + 56) |= 2u;
      *(a1 + 8) = v4;
      v5 = *(a2 + 56);
      if ((v5 & 4) == 0)
      {
LABEL_9:
        if ((v5 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v4) = *(a2 + 20);
    *(a1 + 56) |= 4u;
    *(a1 + 20) = v4;
    v5 = *(a2 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(a1 + 56) |= 8u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_102635EC8 + 24);
    }

    *&v4 = sub_10039BD78(v7, v8);
    v5 = *(a2 + 56);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_24:
    v9 = *(a2 + 32);
    *(a1 + 56) |= 0x10u;
    v10 = *(a1 + 32);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v5 = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_27:
    v11 = *(a2 + 40);
    if ((v11 - 1) >= 2)
    {
      sub_101871D78();
    }

    *(a1 + 56) |= 0x20u;
    *(a1 + 40) = v11;
    v5 = *(a2 + 56);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 44);
    *(a1 + 56) |= 0x40u;
    *(a1 + 44) = v4;
    v5 = *(a2 + 56);
LABEL_14:
    if ((v5 & 0x80) != 0)
    {
      LODWORD(v4) = *(a2 + 48);
      *(a1 + 56) |= 0x80u;
      *(a1 + 48) = v4;
    }
  }

  return *&v4;
}

void sub_10039C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10039C52C(void *result)
{
  v1 = result[4];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_102635EC8 != result)
  {
    result = result[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10039C5E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447670;
  sub_10039C52C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039C634(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447670;
  sub_10039C52C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039C708(uint64_t result)
{
  LOBYTE(v1) = *(result + 56);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 6;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = *(result + 32);
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

    *(result + 44) = 0;
    *(result + 48) = 0;
    *(result + 40) = 1;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_10039C788(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 == 5)
            {
              if (v8 == 2)
              {
                goto LABEL_66;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_72;
            }

            goto LABEL_34;
          }

          if (v7 == 7)
          {
            if (v8 != 5)
            {
              goto LABEL_34;
            }

LABEL_82:
            v32[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v32) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 44) = v32[0];
            *(a1 + 56) |= 0x40u;
            v31 = *(this + 1);
            if (v31 < *(this + 2) && *v31 == 69)
            {
              *(this + 1) = v31 + 1;
              goto LABEL_86;
            }
          }

          else
          {
            if (v7 != 8 || v8 != 5)
            {
              goto LABEL_34;
            }

LABEL_86:
            v32[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v32) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = v32[0];
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
          }

          v32[0] = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
            if (!result)
            {
              return result;
            }

            v13 = v32[0];
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v13 - 1 <= 5)
          {
            *(a1 + 56) |= 1u;
            *(a1 + 16) = v13;
          }

          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 17)
          {
            *(this + 1) = v15 + 1;
LABEL_44:
            *v32 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 8) = *v32;
            *(a1 + 56) |= 2u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 29)
            {
              *(this + 1) = v16 + 1;
              goto LABEL_48;
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 1)
          {
            goto LABEL_44;
          }

LABEL_34:
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

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(a1 + 56);
          goto LABEL_52;
        }

        goto LABEL_34;
      }

      if (v8 != 5)
      {
        goto LABEL_34;
      }

LABEL_48:
      v32[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v32) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 20) = v32[0];
      v11 = *(a1 + 56) | 4;
      *(a1 + 56) = v11;
      v17 = *(this + 1);
    }

    while (v17 >= *(this + 2) || *v17 != 34);
    *(this + 1) = v17 + 1;
LABEL_52:
    *(a1 + 56) = v11 | 8;
    v18 = *(a1 + 24);
    if (!v18)
    {
      operator new();
    }

    v32[0] = 0;
    v19 = *(this + 1);
    if (v19 >= *(this + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
      {
        return 0;
      }
    }

    else
    {
      v32[0] = *v19;
      *(this + 1) = v19 + 1;
    }

    v20 = *(this + 14);
    v21 = *(this + 15);
    *(this + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32[0]);
    if (!sub_10039BF40(v18, this, v23) || *(this + 36) != 1)
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
    if (v27 < *(this + 2) && *v27 == 42)
    {
      *(this + 1) = v27 + 1;
LABEL_66:
      *(a1 + 56) |= 0x10u;
      if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v28 = *(this + 1);
      v9 = *(this + 2);
      if (v28 < v9 && *v28 == 48)
      {
        v10 = v28 + 1;
        *(this + 1) = v10;
LABEL_72:
        v32[0] = 0;
        if (v10 >= v9 || (v29 = *v10, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
          if (!result)
          {
            return result;
          }

          v29 = v32[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v29 - 1 <= 1)
        {
          *(a1 + 56) |= 0x20u;
          *(a1 + 40) = v29;
        }

        v30 = *(this + 1);
        if (v30 < *(this + 2) && *v30 == 61)
        {
          *(this + 1) = v30 + 1;
          goto LABEL_82;
        }
      }
    }
  }
}

uint64_t sub_10039CC80(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 56);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_102635EC8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 56);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 44), a3);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
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
  v8 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v8, a3);
}

uint64_t sub_10039CDA8(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 56);
  if (!v3)
  {
    result = 0;
    goto LABEL_49;
  }

  if (*(a1 + 56))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v4 = 2;
    }
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
    v7 = v4 + 5;
  }

  else
  {
    v7 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_102635EC8 + 24);
    }

    v9 = *(v8 + 24);
    v10 = (v9 << 31 >> 31) & 5;
    if ((v9 & 2) != 0)
    {
      v10 += 5;
    }

    if ((v9 & 4) != 0)
    {
      v10 += 5;
    }

    if (*(v8 + 24))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v8 + 20) = v11;
    v7 += v11 + 2;
    v3 = *(a1 + 56);
    if ((v3 & 0x10) == 0)
    {
LABEL_17:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
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
    v3 = *(a1 + 56);
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

  v7 += v17 + v13 + 1;
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v18 = *(a1 + 40);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 56);
  }

  else
  {
    v19 = 2;
  }

  v7 += v19;
LABEL_44:
  v20 = v7 + 5;
  if ((v3 & 0x40) == 0)
  {
    v20 = v7;
  }

  if ((v3 & 0x80) != 0)
  {
    result = v20 + 5;
  }

  else
  {
    result = v20;
  }

LABEL_49:
  *(a1 + 52) = result;
  return result;
}

float sub_10039CF3C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10039C2E8(a1, lpsrc);
}

void sub_10039CFDC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 16);
      if ((v5 - 1) >= 6)
      {
        sub_101871DA4();
      }

      *(a1 + 40) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 40) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 40);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 20);
    *(a1 + 40) |= 4u;
    *(a1 + 20) = v7;
    v4 = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 24);
      *(a1 + 40) |= 0x10u;
      v10 = *(a1 + 24);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      return;
    }

LABEL_14:
    v8 = *(a2 + 32);
    *(a1 + 40) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 40) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_10039D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039D150(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_10039D1C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024476E8;
  sub_10039D150(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039D218(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024476E8;
  sub_10039D150(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039D2E0(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 2;
    *(result + 32) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(result + 24);
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
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_10039D334(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_42:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v17[0];
          v9 = *(a1 + 40) | 8;
          *(a1 + 40) = v9;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 42)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_46;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 40);
LABEL_46:
          *(a1 + 40) = v9 | 0x10;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v17[0] = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
        if (!result)
        {
          return result;
        }

        v11 = v17[0];
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v11 - 1 <= 5)
      {
        *(a1 + 40) |= 1u;
        *(a1 + 16) = v11;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_34:
        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v17;
        *(a1 + 40) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 29)
        {
          *(this + 1) = v14 + 1;
LABEL_38:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v17[0];
          *(a1 + 40) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 37)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_42;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_34;
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

uint64_t sub_10039D60C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_10039D6D0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v6 = *(a1 + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v4 = 2;
      }
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
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(a1 + 24);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v5 = (v5 + v12 + v8 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 36) = v5;
  return v5;
}

void sub_10039D7C0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039CFDC(a1, lpsrc);
}

void sub_10039D860(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 16);
    if ((v5 - 1) >= 6)
    {
      sub_101871DD0();
    }

    *(a1 + 44) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 8);
    *(a1 + 44) |= 2u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v9 = *(a2 + 32);
      *(a1 + 44) |= 8u;
      *(a1 + 32) = v9;
      v4 = *(a2 + 44);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 4u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v10 = *(a2 + 24);
  *(a1 + 44) |= 0x10u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 44) & 0x20) != 0)
  {
LABEL_12:
    v6 = *(a2 + 36);
    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v6;
  }
}

void sub_10039D9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10039D9FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447760;
  sub_10039D150(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039DA50(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447760;
  sub_10039D150(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039DB14(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 3;
    *(result + 32) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(result + 24);
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

    *(result + 36) = 0;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_10039DB6C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v13 = *(this + 2);
              goto LABEL_45;
            }

            goto LABEL_26;
          }

          if (v7 != 5)
          {
            if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_59;
            }

            goto LABEL_26;
          }

          if (v8 != 2)
          {
            goto LABEL_26;
          }

          v15 = *(a1 + 44);
LABEL_53:
          *(a1 + 44) = v15 | 0x10;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v9 = *(this + 2);
          if (v22 < v9 && *v22 == 48)
          {
            v10 = v22 + 1;
            *(this + 1) = v10;
LABEL_59:
            v25[0] = 0;
            if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
              if (!result)
              {
                return result;
              }

              v23 = v25[0];
              v24 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v24 = v10 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 36) = v23;
            *(a1 + 44) |= 0x20u;
            if (v24 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          goto LABEL_26;
        }

        v25[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v25);
          if (!result)
          {
            return result;
          }

          v12 = v25[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 1 <= 5)
        {
          *(a1 + 44) |= 1u;
          *(a1 + 16) = v12;
        }

        v17 = *(this + 1);
        if (v17 < *(this + 2) && *v17 == 17)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_37;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_26;
      }

LABEL_37:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v25) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v25;
      *(a1 + 44) |= 2u;
      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 29)
      {
        *(this + 1) = v18 + 1;
LABEL_41:
        v25[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v25) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 20) = v25[0];
        *(a1 + 44) |= 4u;
        v19 = *(this + 1);
        v13 = *(this + 2);
        if (v19 < v13 && *v19 == 32)
        {
          v14 = v19 + 1;
          *(this + 1) = v14;
LABEL_45:
          if (v14 >= v13 || (v20 = *v14, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v20;
            v21 = v14 + 1;
            *(this + 1) = v21;
          }

          v15 = *(a1 + 44) | 8;
          *(a1 + 44) = v15;
          if (v21 < v13 && *v21 == 42)
          {
            *(this + 1) = v21 + 1;
            goto LABEL_53;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 5)
    {
      goto LABEL_41;
    }

LABEL_26:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10039DED0(uint64_t result, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v7, a2, a4);
}

uint64_t sub_10039DFB0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_38;
  }

  if (*(a1 + 44))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v4 = 2;
    }
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
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v7 = *(a1 + 32);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v8 = 2;
    }

    v5 = (v8 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_17:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 24);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(a1 + 44);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v5 = (v5 + v14 + v10 + 1);
  if ((v3 & 0x20) != 0)
  {
LABEL_32:
    v15 = *(a1 + 36);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

LABEL_38:
  *(a1 + 40) = v5;
  return v5;
}

void sub_10039E0FC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039D860(a1, lpsrc);
}

void sub_10039E19C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 16);
    if ((v5 - 1) >= 6)
    {
      sub_101871DFC();
    }

    *(a1 + 44) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 8);
    *(a1 + 44) |= 2u;
    *(a1 + 8) = v6;
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_15:
      v8 = *(a2 + 24);
      *(a1 + 44) |= 8u;
      v9 = *(a1 + 24);
      if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 44);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 20);
  *(a1 + 44) |= 4u;
  *(a1 + 20) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v10 = *(a2 + 32);
  if ((v10 - 1) >= 0xF)
  {
    sub_101871E28();
  }

  *(a1 + 44) |= 0x10u;
  *(a1 + 32) = v10;
  if ((*(a2 + 44) & 0x20) != 0)
  {
LABEL_20:
    v11 = *(a2 + 36);
    if ((v11 - 1) >= 2)
    {
      sub_101871E54();
    }

    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v11;
  }
}

void sub_10039E340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10039E358(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024477D8;
  sub_10039D150(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039E3AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024477D8;
  sub_10039D150(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039E478(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 4;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 24);
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

    *(result + 32) = 0x100000001;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_10039E4D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(this + 1);
                v14 = *(this + 2);
                goto LABEL_51;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_61;
            }

            goto LABEL_26;
          }

          if (v8 != 2)
          {
            goto LABEL_26;
          }

          v13 = *(a1 + 44);
LABEL_45:
          *(a1 + 44) = v13 | 8;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v14 = *(this + 2);
          if (v20 < v14 && *v20 == 40)
          {
            v15 = v20 + 1;
            *(this + 1) = v15;
LABEL_51:
            v24[0] = 0;
            if (v15 >= v14 || (v21 = *v15, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v24);
              if (!result)
              {
                return result;
              }

              v21 = v24[0];
            }

            else
            {
              *(this + 1) = v15 + 1;
            }

            if (v21 - 1 <= 0xE)
            {
              *(a1 + 44) |= 0x10u;
              *(a1 + 32) = v21;
            }

            v22 = *(this + 1);
            v9 = *(this + 2);
            if (v22 < v9 && *v22 == 48)
            {
              v10 = v22 + 1;
              *(this + 1) = v10;
LABEL_61:
              v24[0] = 0;
              if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v24);
                if (!result)
                {
                  return result;
                }

                v23 = v24[0];
              }

              else
              {
                *(this + 1) = v10 + 1;
              }

              if (v23 - 1 <= 1)
              {
                *(a1 + 44) |= 0x20u;
                *(a1 + 36) = v23;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v24[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v24);
          if (!result)
          {
            return result;
          }

          v12 = v24[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 - 1 <= 5)
        {
          *(a1 + 44) |= 1u;
          *(a1 + 16) = v12;
        }

        v17 = *(this + 1);
        if (v17 < *(this + 2) && *v17 == 17)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_37;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_26;
      }

LABEL_37:
      *v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v24;
      *(a1 + 44) |= 2u;
      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 29)
      {
        *(this + 1) = v18 + 1;
LABEL_41:
        v24[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v24) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 20) = v24[0];
        v13 = *(a1 + 44) | 4;
        *(a1 + 44) = v13;
        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 34)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_45;
        }
      }
    }

    if (v7 == 3 && v8 == 5)
    {
      goto LABEL_41;
    }

LABEL_26:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10039E854(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, v7, a2, a4);
}

uint64_t sub_10039E934(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 44))
  {
    v6 = *(a1 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v4 = 2;
    }
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
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v7 = *(a1 + 24);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v3 = *(a1 + 44);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v5 = (v5 + v12 + v8 + 1);
    if ((v3 & 0x10) == 0)
    {
LABEL_17:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(a1 + 32);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v14 = 2;
  }

  v5 = (v14 + v5);
  if ((v3 & 0x20) != 0)
  {
LABEL_34:
    v15 = *(a1 + 36);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

LABEL_40:
  *(a1 + 40) = v5;
  return v5;
}

void sub_10039EA8C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039E19C(a1, lpsrc);
}

float sub_10039EB2C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v5) = *(a2 + 72);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 64);
    if ((v6 - 1) >= 6)
    {
      sub_101871E80();
    }

    *(a1 + 72) |= 1u;
    *(a1 + 64) = v6;
    v5 = *(a2 + 72);
  }

  if ((v5 & 2) != 0)
  {
    v4 = *(a2 + 8);
    *(a1 + 72) |= 2u;
    *(a1 + 8) = v4;
    v5 = *(a2 + 72);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 72) |= 4u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v8 = *(qword_102635EE8 + 16);
  }

  sub_10039B648(v7, v8);
  v5 = *(a2 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(a1 + 72) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    v10 = *(qword_102635EE8 + 24);
  }

  sub_10039CFDC(v9, v10);
  v5 = *(a2 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    *(a1 + 72) |= 0x20u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 40);
    if (!v14)
    {
      v14 = *(qword_102635EE8 + 40);
    }

    sub_10039E19C(v13, v14);
    v5 = *(a2 + 72);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        return *&v4;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(a1 + 72) |= 0x10u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    v12 = *(qword_102635EE8 + 32);
  }

  sub_10039D860(v11, v12);
  v5 = *(a2 + 72);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_36:
  *(a1 + 72) |= 0x40u;
  v15 = *(a1 + 48);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 48);
  if (!v16)
  {
    v16 = *(qword_102635EE8 + 48);
  }

  sub_10039A944(v15, v16);
  if ((*(a2 + 72) & 0x80) != 0)
  {
LABEL_41:
    *(a1 + 72) |= 0x80u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 56);
    if (!v18)
    {
      v18 = *(qword_102635EE8 + 56);
    }

    *&v4 = sub_10039C2E8(v17, v18);
  }

  return *&v4;
}

void sub_10039EF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10039EF40(void *result)
{
  if (qword_102635EE8 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[7];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_10039F090(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447850;
  sub_10039EF40(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10039F0E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447850;
  sub_10039EF40(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10039F1B8(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 72);
  if (v2)
  {
    *(result + 64) = 1;
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 16) = 1;
          *(v3 + 8) = 0;
          *(v3 + 28) = 0;
          *(v3 + 20) = 0;
        }

        *(v3 + 40) = 0;
        v2 = *(result + 72);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_10039D2E0(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_10039DB14(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_10039E478(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_10039AD80(result);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_10039C708(result);
      }
    }
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_10039F280(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
            if (v7 == 5)
            {
              if (v8 == 2)
              {
                goto LABEL_76;
              }
            }

            else if (v7 == 6 && v8 == 2)
            {
              goto LABEL_90;
            }

            goto LABEL_34;
          }

          if (v7 == 7)
          {
            if (v8 != 2)
            {
              goto LABEL_34;
            }

LABEL_104:
            *(a1 + 72) |= 0x40u;
            v52 = *(a1 + 48);
            if (!v52)
            {
              operator new();
            }

            v69[0] = 0;
            v53 = *(this + 1);
            if (v53 >= *(this + 2) || *v53 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
              {
                return 0;
              }
            }

            else
            {
              v69[0] = *v53;
              *(this + 1) = v53 + 1;
            }

            v54 = *(this + 14);
            v55 = *(this + 15);
            *(this + 14) = v54 + 1;
            if (v54 >= v55)
            {
              return 0;
            }

            v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
            if (!sub_10039AE40(v52, this, v57) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
            v58 = *(this + 14);
            v22 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v59 < 0 == v22)
            {
              *(this + 14) = v59;
            }

            v60 = *(this + 1);
            if (v60 < *(this + 2) && *v60 == 66)
            {
              *(this + 1) = v60 + 1;
              goto LABEL_118;
            }
          }

          else
          {
            if (v7 != 8 || v8 != 2)
            {
              goto LABEL_34;
            }

LABEL_118:
            *(a1 + 72) |= 0x80u;
            v61 = *(a1 + 56);
            if (!v61)
            {
              operator new();
            }

            v69[0] = 0;
            v62 = *(this + 1);
            if (v62 >= *(this + 2) || *v62 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
              {
                return 0;
              }
            }

            else
            {
              v69[0] = *v62;
              *(this + 1) = v62 + 1;
            }

            v63 = *(this + 14);
            v64 = *(this + 15);
            *(this + 14) = v63 + 1;
            if (v63 >= v64)
            {
              return 0;
            }

            v65 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
            if (!sub_10039C788(v61, this, v66) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v65);
            v67 = *(this + 14);
            v22 = __OFSUB__(v67, 1);
            v68 = v67 - 1;
            if (v68 < 0 == v22)
            {
              *(this + 14) = v68;
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

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_62;
          }

          goto LABEL_34;
        }

        if (v8 != 2)
        {
          goto LABEL_34;
        }

        v11 = *(a1 + 72);
LABEL_48:
        *(a1 + 72) = v11 | 4;
        v15 = *(a1 + 16);
        if (!v15)
        {
          operator new();
        }

        v69[0] = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
          {
            return 0;
          }
        }

        else
        {
          v69[0] = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
        if (!sub_10039B874(v15, this, v20) || *(this + 36) != 1)
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
        if (v24 < *(this + 2) && *v24 == 34)
        {
          *(this + 1) = v24 + 1;
LABEL_62:
          *(a1 + 72) |= 8u;
          v25 = *(a1 + 24);
          if (!v25)
          {
            operator new();
          }

          v69[0] = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
            {
              return 0;
            }
          }

          else
          {
            v69[0] = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
          if (!sub_10039D334(v25, this, v30) || *(this + 36) != 1)
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
          if (v33 < *(this + 2) && *v33 == 42)
          {
            *(this + 1) = v33 + 1;
LABEL_76:
            *(a1 + 72) |= 0x10u;
            v34 = *(a1 + 32);
            if (!v34)
            {
              operator new();
            }

            v69[0] = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
              {
                return 0;
              }
            }

            else
            {
              v69[0] = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(this + 14);
            v37 = *(this + 15);
            *(this + 14) = v36 + 1;
            if (v36 >= v37)
            {
              return 0;
            }

            v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
            if (!sub_10039DB6C(v34, this, v39) || *(this + 36) != 1)
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
            if (v42 < *(this + 2) && *v42 == 50)
            {
              *(this + 1) = v42 + 1;
LABEL_90:
              *(a1 + 72) |= 0x20u;
              v43 = *(a1 + 40);
              if (!v43)
              {
                operator new();
              }

              v69[0] = 0;
              v44 = *(this + 1);
              if (v44 >= *(this + 2) || *v44 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
                {
                  return 0;
                }
              }

              else
              {
                v69[0] = *v44;
                *(this + 1) = v44 + 1;
              }

              v45 = *(this + 14);
              v46 = *(this + 15);
              *(this + 14) = v45 + 1;
              if (v45 >= v46)
              {
                return 0;
              }

              v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
              if (!sub_10039E4D0(v43, this, v48) || *(this + 36) != 1)
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
              if (v51 < *(this + 2) && *v51 == 58)
              {
                *(this + 1) = v51 + 1;
                goto LABEL_104;
              }
            }
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v69[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
        if (!result)
        {
          return result;
        }

        v10 = v69[0];
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v10 - 1 <= 5)
      {
        *(a1 + 72) |= 1u;
        *(a1 + 64) = v10;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_44:
        *v69 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v69;
        v11 = *(a1 + 72) | 2;
        *(a1 + 72) = v11;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_48;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_44;
    }

LABEL_34:
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

uint64_t sub_10039FB48(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 64), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102635EE8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_102635EE8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_102635EE8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(qword_102635EE8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(qword_102635EE8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 72) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 56);
    if (!v12)
    {
      v12 = *(qword_102635EE8 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v12, a2, a4);
  }

  return result;
}

uint64_t sub_10039FCC0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 72);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_56;
  }

  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_102635EE8 + 16);
    }

    v8 = sub_10039BC08(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v5 = (v5 + v9 + v10 + 1);
    v3 = *(a1 + 72);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v11 = *(qword_102635EE8 + 24);
  }

  v12 = sub_10039D6D0(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v5 = (v5 + v13 + v14 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_102635EE8 + 32);
  }

  v16 = sub_10039DFB0(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v5 = (v5 + v17 + v18 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v19 = *(a1 + 40);
  if (!v19)
  {
    v19 = *(qword_102635EE8 + 40);
  }

  v20 = sub_10039E934(v19, a2);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
  }

  else
  {
    v22 = 1;
  }

  v5 = (v5 + v21 + v22 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v23 = *(a1 + 48);
  if (!v23)
  {
    v23 = *(qword_102635EE8 + 48);
  }

  v24 = sub_10039B3B4(v23, a2);
  v25 = v24;
  if (v24 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
  }

  else
  {
    v26 = 1;
  }

  v5 = (v5 + v25 + v26 + 1);
  if ((*(a1 + 72) & 0x80) != 0)
  {
LABEL_50:
    v27 = *(a1 + 56);
    if (!v27)
    {
      v27 = *(qword_102635EE8 + 56);
    }

    v28 = sub_10039CDA8(v27, a2);
    v30 = v28;
    if (v28 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, v29);
    }

    else
    {
      v31 = 1;
    }

    v5 = (v5 + v30 + v31 + 1);
  }

LABEL_56:
  *(a1 + 68) = v5;
  return v5;
}

float sub_10039FF08(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10039EB2C(a1, lpsrc);
}

void sub_10039FFA8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 28) |= 2u;
      v7 = *(a1 + 16);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1003A0090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A00A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024478C8;
  sub_1002AC6F0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A00FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024478C8;
  sub_1002AC6F0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A01B8(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    *(result + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 16);
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
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1003A0204(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(a1 + 28);
LABEL_22:
        *(a1 + 28) = v12 | 2;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      v12 = *(a1 + 28) | 1;
      *(a1 + 28) = v12;
      if (v11 < v8 && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
        goto LABEL_22;
      }
    }

LABEL_13:
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

uint64_t sub_1003A03A4(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_1003A0410(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 28))
  {
    if (*(a1 + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      if ((*(a1 + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v4 = *(a1 + 16);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v3 + v9 + v5 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(a1 + 24) = v3;
  return v3;
}

void sub_1003A04C4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10039FFA8(a1, lpsrc);
}

void sub_1003A0564(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      if ((v6 - 1) >= 6)
      {
        sub_101871EAC();
      }

      *(a1 + 36) |= 2u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 20);
      *(a1 + 36) |= 4u;
      *(a1 + 20) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 36) |= 8u;
      v8 = *(a1 + 24);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 24);
      if (!v9)
      {
        v9 = *(qword_102635EF8 + 24);
      }

      sub_10039FFA8(v8, v9);
    }
  }
}

void sub_1003A06B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A06CC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102447940;
  if (qword_102635EF8 != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1003A075C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003A06CC(a1);

  operator delete();
}

uint64_t sub_1003A07F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 36);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 1;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_1003A01B8(result);
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_1003A0834(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 == 5)
            {
              goto LABEL_34;
            }
          }

          else if (v7 == 4 && v8 == 2)
          {
            v11 = *(a1 + 36);
            goto LABEL_38;
          }

          goto LABEL_24;
        }

        if (v7 == 1)
        {
          break;
        }

        if (v7 == 2 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_20;
        }

LABEL_24:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 != 1)
      {
        goto LABEL_24;
      }

      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v26;
      *(a1 + 36) |= 1u;
      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 < v9 && *v12 == 16)
      {
        v10 = v12 + 1;
        *(this + 1) = v10;
LABEL_20:
        v26[0] = 0;
        if (v10 >= v9 || (v13 = *v10, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v13 = v26[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v13 - 1 <= 5)
        {
          *(a1 + 36) |= 2u;
          *(a1 + 16) = v13;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 29)
        {
          *(this + 1) = v15 + 1;
LABEL_34:
          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v26[0];
          v11 = *(a1 + 36) | 4;
          *(a1 + 36) = v11;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 34)
          {
            break;
          }
        }
      }
    }

    *(this + 1) = v16 + 1;
LABEL_38:
    *(a1 + 36) = v11 | 8;
    v17 = *(a1 + 24);
    if (!v17)
    {
      operator new();
    }

    v26[0] = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26))
      {
        return 0;
      }
    }

    else
    {
      v26[0] = *v18;
      *(this + 1) = v18 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26[0]);
    if (!sub_1003A0204(v17, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
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

uint64_t sub_1003A0B50(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_102635EF8 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t sub_1003A0C08(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    LODWORD(v4) = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 16);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 36);
      }

      else
      {
        v6 = 2;
      }

      LODWORD(v4) = v6 + v4;
    }

    if ((v3 & 4) != 0)
    {
      v4 = (v4 + 5);
    }

    else
    {
      v4 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v7 = *(a1 + 24);
      if (!v7)
      {
        v7 = *(qword_102635EF8 + 24);
      }

      v8 = sub_1003A0410(v7, a2);
      v10 = v8;
      if (v8 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, v9);
      }

      else
      {
        v11 = 1;
      }

      v4 = (v4 + v10 + v11 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return v4;
}

void sub_1003A0CD8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A0564(a1, lpsrc);
}

void sub_1003A0D78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), *(a2 + 16) + *(a1 + 16));
  LODWORD(v4) = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = *(a1 + 20);
      v8 = *(a1 + 16);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v7 + 1);
          v7 = *(a1 + 20);
        }

        *(a1 + 20) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 8);
      *(a1 + 16) = v8 + 1;
      sub_10039EB2C(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), *(a2 + 80) + *(a1 + 80));
  LODWORD(v10) = *(a2 + 80);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      v12 = *(*(a2 + 72) + 8 * v11);
      v13 = *(a1 + 84);
      v14 = *(a1 + 80);
      if (v14 >= v13)
      {
        if (v13 == *(a1 + 88))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v13 + 1);
          v13 = *(a1 + 84);
        }

        *(a1 + 84) = v13 + 1;
        operator new();
      }

      v15 = *(a1 + 72);
      *(a1 + 80) = v14 + 1;
      sub_1003A0564(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 80);
    }

    while (v11 < v10);
  }

  v16 = *(a2 + 104);
  if ((v16 & 0x1FE) == 0)
  {
    goto LABEL_32;
  }

  if ((v16 & 2) == 0)
  {
    if ((v16 & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_36:
    v21 = *(a2 + 40);
    *(a1 + 104) |= 4u;
    *(a1 + 40) = v21;
    v16 = *(a2 + 104);
    if ((v16 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v20 = *(a2 + 32);
  *(a1 + 104) |= 2u;
  *(a1 + 32) = v20;
  v16 = *(a2 + 104);
  if ((v16 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v16 & 8) != 0)
  {
LABEL_27:
    v17 = *(a2 + 48);
    *(a1 + 104) |= 8u;
    *(a1 + 48) = v17;
    v16 = *(a2 + 104);
  }

LABEL_28:
  if ((v16 & 0x10) != 0)
  {
    v22 = *(a2 + 56);
    *(a1 + 104) |= 0x10u;
    v23 = *(a1 + 56);
    if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v23, v22);
    v16 = *(a2 + 104);
    if ((v16 & 0x20) == 0)
    {
LABEL_30:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  v24 = *(a2 + 64);
  *(a1 + 104) |= 0x20u;
  v25 = *(a1 + 64);
  if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v16 = *(a2 + 104);
  if ((v16 & 0x80) != 0)
  {
LABEL_31:
    v18 = *(a2 + 96);
    *(a1 + 104) |= 0x80u;
    *(a1 + 96) = v18;
    v16 = *(a2 + 104);
  }

LABEL_32:
  if ((v16 & 0x100) != 0)
  {
    v19 = *(a2 + 97);
    *(a1 + 104) |= 0x100u;
    *(a1 + 97) = v19;
  }
}

void sub_1003A11E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A120C(uint64_t *a1)
{
  *a1 = off_1024479B8;
  v2 = a1 + 9;
  sub_1003A127C(a1);
  sub_100027438(v2);
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_1003A127C(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 64);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

void sub_1003A1334(uint64_t *a1)
{
  sub_1003A120C(a1);

  operator delete();
}

uint64_t sub_1003A13E0(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x1FE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(a1 + 56);
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

    if ((*(a1 + 104) & 0x20) != 0)
    {
      v4 = *(a1 + 64);
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

    *(a1 + 96) = 0;
    v2 = *(a1 + 104);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 97) = 0;
  }

  sub_1003C79DC(a1 + 8);
  result = sub_1003C79DC(a1 + 72);
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1003A14A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
              if (v7 != 4 || v8 != 1)
              {
                goto LABEL_57;
              }

              goto LABEL_70;
            }

            if (v8 != 1)
            {
              goto LABEL_57;
            }

LABEL_66:
            *v52 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v52) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v52;
            *(a1 + 104) |= 4u;
            v32 = *(this + 1);
            if (v32 < *(this + 2) && *v32 == 33)
            {
              *(this + 1) = v32 + 1;
LABEL_70:
              *v52 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v52) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v52;
              v29 = *(a1 + 104) | 8;
              *(a1 + 104) = v29;
              v33 = *(this + 1);
              if (v33 < *(this + 2) && *v33 == 42)
              {
                *(this + 1) = v33 + 1;
LABEL_74:
                *(a1 + 104) = v29 | 0x10;
                if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v34 = *(this + 1);
                if (v34 < *(this + 2) && *v34 == 50)
                {
                  *(this + 1) = v34 + 1;
                  goto LABEL_80;
                }
              }
            }
          }

          else if (v7 == 1)
          {
            if (v8 != 2)
            {
              goto LABEL_57;
            }

            while (1)
            {
              v15 = *(a1 + 20);
              v16 = *(a1 + 16);
              if (v16 >= v15)
              {
                if (v15 == *(a1 + 24))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v15 + 1);
                  v15 = *(a1 + 20);
                }

                *(a1 + 20) = v15 + 1;
                operator new();
              }

              v17 = *(a1 + 8);
              *(a1 + 16) = v16 + 1;
              v18 = *(v17 + 8 * v16);
              v52[0] = 0;
              v19 = *(this + 1);
              if (v19 >= *(this + 2) || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v52))
                {
                  return 0;
                }
              }

              else
              {
                v52[0] = *v19;
                *(this + 1) = v19 + 1;
              }

              v20 = *(this + 14);
              v21 = *(this + 15);
              *(this + 14) = v20 + 1;
              if (v20 >= v21)
              {
                return 0;
              }

              v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52[0]);
              if (!sub_10039F280(v18, this, v23) || *(this + 36) != 1)
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
              v11 = *(this + 2);
              if (v27 >= v11)
              {
                break;
              }

              v28 = *v27;
              if (v28 != 10)
              {
                if (v28 != 16)
                {
                  goto LABEL_1;
                }

                v12 = (v27 + 1);
                *(this + 1) = v12;
                goto LABEL_18;
              }

              *(this + 1) = v27 + 1;
            }
          }

          else
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_57;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
LABEL_18:
            if (v12 >= v11 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v14 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v13;
              v14 = v12 + 1;
              *(this + 1) = v14;
            }

            *(a1 + 104) |= 2u;
            if (v14 < v11 && *v14 == 25)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_66;
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 == 5)
        {
          if (v8 != 2)
          {
            goto LABEL_57;
          }

          v29 = *(a1 + 104);
          goto LABEL_74;
        }

        if (v7 != 6 || v8 != 2)
        {
          goto LABEL_57;
        }

LABEL_80:
        *(a1 + 104) |= 0x20u;
        if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v35 = *(this + 1);
        if (v35 < *(this + 2) && *v35 == 58)
        {
          while (1)
          {
            *(this + 1) = v35 + 1;
LABEL_86:
            v36 = *(a1 + 84);
            v37 = *(a1 + 80);
            if (v37 >= v36)
            {
              if (v36 == *(a1 + 88))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v36 + 1);
                v36 = *(a1 + 84);
              }

              *(a1 + 84) = v36 + 1;
              operator new();
            }

            v38 = *(a1 + 72);
            *(a1 + 80) = v37 + 1;
            v39 = *(v38 + 8 * v37);
            v52[0] = 0;
            v40 = *(this + 1);
            if (v40 >= *(this + 2) || *v40 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v52))
              {
                return 0;
              }
            }

            else
            {
              v52[0] = *v40;
              *(this + 1) = v40 + 1;
            }

            v41 = *(this + 14);
            v42 = *(this + 15);
            *(this + 14) = v41 + 1;
            if (v41 >= v42)
            {
              return 0;
            }

            v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52[0]);
            if (!sub_1003A0834(v39, this, v44) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v43);
            v45 = *(this + 14);
            v25 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v25)
            {
              *(this + 14) = v46;
            }

            v35 = *(this + 1);
            v9 = *(this + 2);
            if (v35 >= v9)
            {
              break;
            }

            v47 = *v35;
            if (v47 != 58)
            {
              if (v47 != 64)
              {
                goto LABEL_1;
              }

              v30 = v35 + 1;
              *(this + 1) = v30;
              goto LABEL_104;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 2)
        {
          goto LABEL_57;
        }

        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_57;
      }

      v30 = *(this + 1);
      v9 = *(this + 2);
LABEL_104:
      v52[0] = 0;
      if (v30 >= v9 || (v48 = *v30, (v48 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v52);
        if (!result)
        {
          return result;
        }

        v48 = v52[0];
        v49 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v49 = v30 + 1;
        *(this + 1) = v49;
      }

      *(a1 + 96) = v48 != 0;
      *(a1 + 104) |= 0x80u;
      if (v49 < v9 && *v49 == 72)
      {
        v10 = v49 + 1;
        *(this + 1) = v10;
LABEL_112:
        v52[0] = 0;
        if (v10 >= v9 || (v50 = *v10, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v52);
          if (!result)
          {
            return result;
          }

          v50 = v52[0];
          v51 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v51 = v10 + 1;
          *(this + 1) = v51;
        }

        *(a1 + 97) = v50 != 0;
        *(a1 + 104) |= 0x100u;
        if (v51 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_112;
    }

LABEL_57:
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

uint64_t sub_1003A1BC8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 104);
  if ((v7 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 104);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 40), a3);
  v7 = *(v5 + 104);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 48), a3);
  v7 = *(v5 + 104);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 104) & 0x20) != 0)
  {
LABEL_9:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_10:
  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  v9 = *(v5 + 104);
  if ((v9 & 0x80) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 96), a2, a4);
    v9 = *(v5 + 104);
  }

  if ((v9 & 0x100) != 0)
  {
    v10 = *(v5 + 97);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v10, a2, a4);
  }

  return result;
}

uint64_t sub_1003A1D34(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 104);
  if ((v3 & 0x1FE) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
      v3 = *(a1 + 104);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v6 = v4 + 9;
    }

    else
    {
      v6 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(a1 + 56);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v3 = *(a1 + 104);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v6 += v12 + v8 + 1;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 = *(a1 + 64);
      v14 = *(v13 + 23);
      v15 = v14;
      v16 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(v13 + 23);
        v16 = *(v13 + 8);
        v3 = *(a1 + 104);
        v15 = *(v13 + 23);
      }

      else
      {
        v18 = 1;
      }

      if (v15 < 0)
      {
        v14 = v16;
      }

      v6 += v18 + v14 + 1;
    }

    v5 = ((v3 >> 6) & 2) + v6;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v19 = (v3 >> 7) & 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 16);
  v21 = v20 + v5 + v19;
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = sub_10039FCC0(*(*(a1 + 8) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 += v24 + v25;
      ++v22;
    }

    while (v22 < *(a1 + 16));
  }

  v26 = *(a1 + 80);
  v27 = (v26 + v21);
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = sub_1003A0C08(*(*(a1 + 72) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      v27 = (v30 + v27 + v31);
      ++v28;
    }

    while (v28 < *(a1 + 80));
  }

  *(a1 + 100) = v27;
  return v27;
}

void sub_1003A1F24(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A0D78(a1, lpsrc);
}

std::string *sub_1003A1FC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  result = sub_1003A2600((a1 + 16), a2 + 16);
  if (*(a2 + 44))
  {
    v5 = *(a2 + 8);
    *(a1 + 44) |= 1u;
    v6 = *(a1 + 8);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    return std::string::operator=(v6, v5);
  }

  return result;
}

void sub_1003A2098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A20B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447A30;
  v2 = (a1 + 16);
  sub_10000FCA0(a1);
  sub_1003C7A9C(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A2118(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003A20B0(a1);

  operator delete();
}

uint64_t sub_1003A21AC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 8);
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

  result = sub_1003C7A4C(a1 + 16);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_1003A2214(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  v4 = result;
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v6 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v6;
        *(this + 1) = v5 + 1;
        if (!v6)
        {
          return 1;
        }
      }

      v7 = v6 & 7;
      if (v6 >> 3 == 2)
      {
        break;
      }

      if (v6 >> 3 != 1 || v7 != 2)
      {
        goto LABEL_17;
      }

      *(v4 + 44) |= 1u;
      if (*(v4 + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 18)
      {
        do
        {
          *(this + 1) = v8 + 1;
LABEL_20:
          v9 = *(v4 + 28);
          v10 = *(v4 + 24);
          if (v10 >= v9)
          {
            if (v9 == *(v4 + 32))
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16), v9 + 1);
              v9 = *(v4 + 28);
            }

            *(v4 + 28) = v9 + 1;
            v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v12 = *(v4 + 16);
            v13 = *(v4 + 24);
            *(v4 + 24) = v13 + 1;
            *(v12 + 8 * v13) = v11;
          }

          else
          {
            *(v4 + 24) = v10 + 1;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v8 = *(this + 1);
          v14 = *(this + 2);
        }

        while (v8 < v14 && *v8 == 18);
        if (v8 == v14 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_20;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, v6, a3);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003A2400(uint64_t result)
{
  v1 = result;
  if (*(result + 44))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v1 + 24) >= 1)
  {
    v2 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  return result;
}

uint64_t sub_1003A2478(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 24);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v14 = *(*(a1 + 16) + 8 * i);
      v15 = *(v14 + 23);
      v16 = v15;
      v17 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
        v15 = *(v14 + 23);
        v17 = *(v14 + 8);
        v11 = *(a1 + 24);
        v16 = *(v14 + 23);
      }

      else
      {
        v19 = 1;
      }

      if (v16 < 0)
      {
        v15 = v17;
      }

      v12 = (v19 + v12 + v15);
    }
  }

  *(a1 + 40) = v12;
  return v12;
}

std::string *sub_1003A2578(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1003A1FC4(a1, lpsrc);
}

std::string *sub_1003A2600(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v12 = *a1;
        v13 = *(a1 + 2);
        *(a1 + 2) = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        v10 = *a1;
        *(a1 + 2) = v9 + 1;
        v11 = *(v10 + 8 * v9);
      }

      result = std::string::operator=(v11, v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1003A2728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A2758(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 8);
    *(a1 + 48) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 16);
  *(a1 + 48) |= 2u;
  *(a1 + 16) = v6;
  v4 = *(a2 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 24);
  if ((v7 - 1) >= 2)
  {
    sub_101871ED8();
  }

  *(a1 + 48) |= 4u;
  *(a1 + 24) = v7;
  v4 = *(a2 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = *(a2 + 29);
    *(a1 + 48) |= 0x10u;
    *(a1 + 29) = v9;
    v4 = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_16:
  v8 = *(a2 + 28);
  *(a1 + 48) |= 8u;
  *(a1 + 28) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v10 = *(a2 + 40);
  if ((v10 - 1) >= 6)
  {
    sub_101871F04();
  }

  *(a1 + 48) |= 0x20u;
  *(a1 + 40) = v10;
  if ((*(a2 + 48) & 0x40) != 0)
  {
LABEL_20:
    v11 = *(a2 + 32);
    *(a1 + 48) |= 0x40u;
    v12 = *(a1 + 32);
    if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
  }
}

void sub_1003A2908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A2920(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_1003A2994(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447AA8;
  sub_1003A2920(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A29E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447AA8;
  sub_1003A2920(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A2AB8(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 1;
    *(result + 28) = 0;
    *(result + 40) = 1;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(result + 32);
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
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_1003A2B14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          break;
        }

        if (v7 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_31;
          }

          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v26;
          *(a1 + 48) |= 1u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 17)
          {
            *(this + 1) = v13 + 1;
            goto LABEL_34;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_38;
          }

          if (v8 != 1)
          {
            goto LABEL_31;
          }

LABEL_34:
          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v26;
          *(a1 + 48) |= 2u;
          v16 = *(this + 1);
          v11 = *(this + 2);
          if (v16 < v11 && *v16 == 24)
          {
            v12 = v16 + 1;
            *(this + 1) = v12;
LABEL_38:
            v26[0] = 0;
            if (v12 >= v11 || (v17 = *v12, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
              if (!result)
              {
                return result;
              }

              v17 = v26[0];
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v17 - 1 <= 1)
            {
              *(a1 + 48) |= 4u;
              *(a1 + 24) = v17;
            }

            v19 = *(this + 1);
            v9 = *(this + 2);
            if (v19 < v9 && *v19 == 32)
            {
              v14 = v19 + 1;
              *(this + 1) = v14;
              goto LABEL_48;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_64;
          }
        }

        else if (v7 == 7 && v8 == 2)
        {
          goto LABEL_74;
        }

        goto LABEL_31;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v14 = *(this + 1);
      v9 = *(this + 2);
LABEL_48:
      v26[0] = 0;
      if (v14 >= v9 || (v20 = *v14, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
        if (!result)
        {
          return result;
        }

        v20 = v26[0];
        v21 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v21 = v14 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 28) = v20 != 0;
      *(a1 + 48) |= 8u;
      if (v21 < v9 && *v21 == 40)
      {
        v10 = v21 + 1;
        *(this + 1) = v10;
LABEL_56:
        v26[0] = 0;
        if (v10 >= v9 || (v22 = *v10, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v22 = v26[0];
          v23 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v23 = v10 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 29) = v22 != 0;
        *(a1 + 48) |= 0x10u;
        if (v23 < v9 && *v23 == 48)
        {
          v15 = v23 + 1;
          *(this + 1) = v15;
LABEL_64:
          v26[0] = 0;
          if (v15 >= v9 || (v24 = *v15, (v24 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
            if (!result)
            {
              return result;
            }

            v24 = v26[0];
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v24 - 1 <= 5)
          {
            *(a1 + 48) |= 0x20u;
            *(a1 + 40) = v24;
          }

          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 58)
          {
            *(this + 1) = v25 + 1;
LABEL_74:
            *(a1 + 48) |= 0x40u;
            if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
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
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_56;
    }

LABEL_31:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1003A2F1C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t sub_1003A3018(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 24);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    v7 = ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + v4;
    if ((v3 & 0x20) != 0)
    {
      v8 = *(a1 + 40);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v9 = 2;
      }

      v7 = (v9 + v7);
    }

    if ((v3 & 0x40) != 0)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 23);
      v12 = v11;
      v13 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v14 = *(v10 + 23);
      }

      else
      {
        v14 = v13;
      }

      if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
        v11 = *(v10 + 23);
        v13 = *(v10 + 8);
        v12 = *(v10 + 23);
      }

      else
      {
        v15 = 1;
      }

      if (v12 < 0)
      {
        v11 = v13;
      }

      v7 = (v7 + v15 + v11 + 1);
    }
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 44) = v7;
  return v7;
}

void sub_1003A3148(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A2758(a1, lpsrc);
}

void sub_1003A31E8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      *(a1 + 40) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 40);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v7;
    if ((*(a2 + 40) & 8) == 0)
    {
      return;
    }

LABEL_12:
    v8 = *(a2 + 24);
    *(a1 + 40) |= 8u;
    v9 = *(a1 + 24);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
  }
}

void sub_1003A3318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A3330(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447B20;
  sub_10039D150(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A3384(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447B20;
  sub_10039D150(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A3448(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 24);
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
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_1003A3498(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_25;
          }

          v13 = *(this + 1);
          v11 = *(this + 2);
LABEL_29:
          if (v13 >= v11 || (v14 = *v13, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v15 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v14;
            v15 = v13 + 1;
            *(this + 1) = v15;
          }

          v9 = *(a1 + 40) | 4;
          *(a1 + 40) = v9;
          if (v15 < v11 && *v15 == 34)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_37;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_25;
          }

          v9 = *(a1 + 40);
LABEL_37:
          *(a1 + 40) = v9 | 8;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v17;
      *(a1 + 40) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_20:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v17;
        *(a1 + 40) |= 2u;
        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 < v11 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_29;
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

uint64_t sub_1003A3700(uint64_t result, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003A37A8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(a1 + 32);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }

    if ((v3 & 8) != 0)
    {
      v8 = *(a1 + 24);
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

      v5 = (v5 + v13 + v9 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 36) = v5;
  return v5;
}

void sub_1003A387C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A31E8(a1, lpsrc);
}

void sub_1003A391C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), *(a2 + 16) + a1[4]);
  LODWORD(v4) = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = a1[5];
      v8 = a1[4];
      if (v8 >= v7)
      {
        if (v7 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v7 + 1);
          v7 = a1[5];
        }

        a1[5] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 1);
      a1[4] = v8 + 1;
      sub_1003A31E8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }
}

void sub_1003A3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A3AFC(uint64_t *a1)
{
  *a1 = off_102447B98;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A3B58(uint64_t *a1)
{
  sub_1003A3AFC(a1);

  operator delete();
}

uint64_t sub_1003A3BE4(uint64_t a1)
{
  result = sub_1003C79DC(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_1003A3C10(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = a1[5];
        v8 = a1[4];
        if (v8 >= v7)
        {
          if (v7 == a1[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v7 + 1);
            v7 = a1[5];
          }

          a1[5] = v7 + 1;
          operator new();
        }

        v9 = *(a1 + 1);
        a1[4] = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(this + 1) = v11 + 1;
        }

        v12 = *(this + 14);
        v13 = *(this + 15);
        *(this + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
        if (!sub_1003A3498(v10, this, v15) || *(this + 36) != 1)
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
        v20 = *(this + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003A3E44(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_1003A3EA8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003A37A8(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

void sub_1003A3F28(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A391C(a1, lpsrc);
}

void sub_1003A3FC8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    v8 = *(a1 + 24);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_1003A40D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A40F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447C10;
  sub_10039D150(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A4144(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447C10;
  sub_10039D150(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003A4204(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 24);
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
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_1003A4250(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
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
          v10 = *(a1 + 36);
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v13;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        v10 = *(a1 + 36) | 2;
        *(a1 + 36) = v10;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 26)
        {
          *(this + 1) = v11 + 1;
LABEL_24:
          *(a1 + 36) = v10 | 4;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
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

uint64_t sub_1003A4440(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003A44CC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(a1 + 24);
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

      v5 = (v5 + v11 + v7 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  return v5;
}

void sub_1003A4578(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A3FC8(a1, lpsrc);
}

void sub_1003A4618(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), *(a2 + 16) + *(a1 + 16));
  LODWORD(v4) = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = *(a1 + 20);
      v8 = *(a1 + 16);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v7 + 1);
          v7 = *(a1 + 20);
        }

        *(a1 + 20) = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 8);
      *(a1 + 16) = v8 + 1;
      sub_1003A3FC8(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    v10 = *(a2 + 32);
    *(a1 + 44) |= 2u;
    v11 = *(a1 + 32);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
  }
}

void sub_1003A4824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003A4844(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102447C88;
  v2 = (a1 + 8);
  sub_1003A2920(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003A48AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003A4844(a1);

  operator delete();
}

uint64_t sub_1003A4940(uint64_t a1)
{
  if ((*(a1 + 44) & 2) != 0)
  {
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

  result = sub_1003C79DC(a1 + 8);
  *(a1 + 44) = 0;
  return result;
}

uint64_t sub_1003A49A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(a1 + 44) |= 2u;
      if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = *(a1 + 20);
        v9 = *(a1 + 16);
        if (v9 >= v8)
        {
          if (v8 == *(a1 + 24))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8), v8 + 1);
            v8 = *(a1 + 20);
          }

          *(a1 + 20) = v8 + 1;
          operator new();
        }

        v10 = *(a1 + 8);
        *(a1 + 16) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v23 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
        if (!sub_1003A4250(v11, this, v16) || *(this + 36) != 1)
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
        if (v20 >= *(this + 2))
        {
          goto LABEL_1;
        }

        v21 = *v20;
        if (v21 != 10)
        {
          if (v21 != 18)
          {
            goto LABEL_1;
          }

          *(this + 1) = v20 + 1;
          goto LABEL_33;
        }

        *(this + 1) = v20 + 1;
      }
    }

LABEL_30:
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

uint64_t sub_1003A4C6C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 44) & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return result;
}

uint64_t sub_1003A4D00(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 44) & 2) != 0)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 16);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_1003A44CC(*(*(a1 + 8) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(a1 + 16));
  }

  *(a1 + 40) = v12;
  return v12;
}

void sub_1003A4DE0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003A4618(a1, lpsrc);
}

void sub_1003A4E80(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), *(a2 + 16) + a1[4]);
  LODWORD(v4) = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= v4)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*(a2 + 8) + 8 * v5);
      v7 = a1[5];
      v8 = a1[4];
      if (v8 >= v7)
      {
        if (v7 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v7 + 1);
          v7 = a1[5];
        }

        a1[5] = v7 + 1;
        operator new();
      }

      v9 = *(a1 + 1);
      a1[4] = v8 + 1;
      sub_1003A4618(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < v4);
  }
}