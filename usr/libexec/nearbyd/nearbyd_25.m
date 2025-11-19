uint64_t sub_10014D144(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v5 = *(a1 + 16);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 36);
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 36) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 20);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
LABEL_14:
    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 24);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 36);
      }

      else
      {
        v9 = 2;
      }

      v4 = (v9 + v4);
      if ((v3 & 8) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(a1 + 28);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_27:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10014D258(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014CA64(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014D344(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10014D3D8()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE2A0;
}

void sub_10014D46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014D480(uint64_t a1)
{
  *a1 = off_100996CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10014D4E4(uint64_t a1, uint64_t a2)
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
    v7 = *(a2 + 32);
    *(a1 + 60) |= 1u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 60);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 60) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 24);
  *(a1 + 60) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 48);
    *(a1 + 60) |= 0x10u;
    *(a1 + 48) = v11;
    if ((*(a2 + 60) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 60) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(a1 + 60) |= 0x20u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014D624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014D63C(uint64_t a1)
{
  *a1 = off_100996CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014D690(uint64_t a1)
{
  *a1 = off_100996CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014D764(uint64_t a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014D78C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_42;
            }

            goto LABEL_26;
          }

          if (v8 != 5)
          {
            if (v8 == 6 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_50;
            }

            goto LABEL_26;
          }

          if (v9 != 1)
          {
            goto LABEL_26;
          }

LABEL_46:
          v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v23;
          *(a1 + 60) |= 0x10u;
          v20 = *(this + 1);
          v10 = *(this + 2);
          if (v20 < v10 && *v20 == 48)
          {
            v11 = v20 + 1;
            *(this + 1) = v11;
LABEL_50:
            if (v11 >= v10 || (v21 = *v11, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v22 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 36) = v21;
              v22 = v11 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 60) |= 0x20u;
            if (v22 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 60) |= 1u;
        if (v15 < v12 && *v15 == 17)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_34;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_26;
      }

LABEL_34:
      v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v23;
      *(a1 + 60) |= 2u;
      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 25)
      {
        *(this + 1) = v17 + 1;
LABEL_38:
        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v23;
        *(a1 + 60) |= 4u;
        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 33)
        {
          *(this + 1) = v18 + 1;
LABEL_42:
          v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v23;
          *(a1 + 60) |= 8u;
          v19 = *(this + 1);
          if (v19 < *(this + 2) && *v19 == 41)
          {
            *(this + 1) = v19 + 1;
            goto LABEL_46;
          }
        }
      }
    }

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_38;
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

uint64_t sub_10014DA88(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
    if ((*(v5 + 60) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  }

LABEL_8:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10014DB8C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 60))
  {
    v4 = *(this + 8);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  v5 = *(this + 15);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v6;
    a2 += 9;
    v5 = *(this + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(this + 3);
  *a2 = 25;
  *(a2 + 1) = v7;
  a2 += 9;
  v5 = *(this + 15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = *(this + 6);
    *a2 = 41;
    *(a2 + 1) = v9;
    a2 += 9;
    if ((*(this + 15) & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v8;
  a2 += 9;
  v5 = *(this + 15);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v10 = *(this + 9);
  *a2 = 48;
  if (v10 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
  }

LABEL_18:
  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, a2, a3);
}

uint64_t sub_10014DDB8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (v3)
  {
    if (*(a1 + 60))
    {
      v6 = *(a1 + 32);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 60);
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
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x20) != 0)
    {
      v7 = *(a1 + 36);
      if (v7 >= 0x80)
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

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 56) = v5;
  return v5;
}

uint64_t sub_10014DE90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014D4E4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014DF7C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10014E010()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE2B0;
}

void sub_10014E0A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014E0B8(uint64_t a1)
{
  *a1 = off_100996D70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10014E11C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 40);
      *(a1 + 48) |= 1u;
      *(a1 + 40) = v5;
      v4 = *(a2 + 48);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        v7 = *(qword_1009F9F08 + 16);
      }

      sub_10014B4EC(v6, v7);
      v4 = *(a2 + 48);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 48) |= 4u;
      v8 = *(a1 + 24);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 24);
      if (!v9)
      {
        v9 = *(qword_1009F9F08 + 24);
      }

      sub_10014B4EC(v8, v9);
      v4 = *(a2 + 48);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 48) |= 8u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 32);
      if (!v11)
      {
        v11 = *(qword_1009F9F08 + 32);
      }

      sub_10014B4EC(v10, v11);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014E314(void *a1)
{
  *a1 = off_100996D70;
  v2 = (a1 + 1);
  sub_10014E374(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10014E374(void *result)
{
  if (qword_1009F9F08 != result)
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

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10014E444(void *a1)
{
  sub_10014E314(a1);

  operator delete();
}

uint64_t sub_10014E4E8(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 48);
  if (v2)
  {
    *(this + 40) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10014B7C0(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_10014B7C0(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_10014B7C0(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 10) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_10014E578(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
            if (v12 >= v11 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v14 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v13;
              v14 = v12 + 1;
              *(this + 1) = v14;
            }

            v10 = *(a1 + 48) | 1;
            *(a1 + 48) = v10;
            if (v14 < v11 && *v14 == 18)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_20;
            }

            v10 = *(a1 + 48);
LABEL_28:
            *(a1 + 48) = v10 | 2;
            v16 = *(a1 + 16);
            if (!v16)
            {
              operator new();
            }

            v46 = 0;
            v17 = *(this + 1);
            if (v17 >= *(this + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v17;
              *(this + 1) = v17 + 1;
            }

            v18 = *(this + 14);
            v19 = *(this + 15);
            *(this + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v46);
            if (!sub_10014B830(v16, this, v21, v22) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
            v23 = *(this + 14);
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v25 < 0 == v24)
            {
              *(this + 14) = v25;
            }

            v26 = *(this + 1);
            if (v26 < *(this + 2) && *v26 == 26)
            {
              *(this + 1) = v26 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 48) |= 4u;
        v27 = *(a1 + 24);
        if (!v27)
        {
          operator new();
        }

        v47 = 0;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v28;
          *(this + 1) = v28 + 1;
        }

        v29 = *(this + 14);
        v30 = *(this + 15);
        *(this + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
        if (!sub_10014B830(v27, this, v32, v33) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
        v34 = *(this + 14);
        v24 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v24)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        if (v36 < *(this + 2) && *v36 == 34)
        {
          *(this + 1) = v36 + 1;
          goto LABEL_56;
        }
      }

      if (v8 != 4 || v9 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 48) |= 8u;
      v37 = *(a1 + 32);
      if (!v37)
      {
        operator new();
      }

      v48 = 0;
      v38 = *(this + 1);
      if (v38 >= *(this + 2) || *v38 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v48))
        {
          return 0;
        }
      }

      else
      {
        v48 = *v38;
        *(this + 1) = v38 + 1;
      }

      v39 = *(this + 14);
      v40 = *(this + 15);
      *(this + 14) = v39 + 1;
      if (v39 >= v40)
      {
        return 0;
      }

      v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v48);
      if (!sub_10014B830(v37, this, v42, v43) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
      v44 = *(this + 14);
      v24 = __OFSUB__(v44, 1);
      v45 = v44 - 1;
      if (v45 < 0 == v24)
      {
        *(this + 14) = v45;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

uint64_t sub_10014E9B0(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 40), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1009F9F08 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9F08 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
  if ((*(v5 + 48) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_1009F9F08 + 32);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v9, a2, a4);
  }

LABEL_16:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EAAC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 48))
  {
    v5 = *(this + 10);
    *a2 = 8;
    v6 = a2 + 1;
    if (v5 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    else
    {
      *(v3 + 1) = v5;
      v3 = (v3 + 2);
    }
  }

  v7 = *(this + 12);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(qword_1009F9F08 + 16);
    }

    *v3 = 18;
    v9 = v8[28];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v10 = (v3 + 2);
    }

    v3 = sub_10014C0B4(v8, v10, a3);
    v7 = *(this + 12);
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9F08 + 24);
  }

  *v3 = 26;
  v12 = v11[28];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v12;
    v13 = (v3 + 2);
  }

  v3 = sub_10014C0B4(v11, v13, a3);
  if ((*(this + 12) & 8) != 0)
  {
LABEL_21:
    v14 = *(this + 4);
    if (!v14)
    {
      v14 = *(qword_1009F9F08 + 32);
    }

    *v3 = 34;
    v15 = v14[28];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v16 = (v3 + 2);
    }

    v3 = sub_10014C0B4(v14, v16, a3);
  }

LABEL_27:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v3, a3);
}

uint64_t sub_10014EC48(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 48);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F9F08 + 16);
  }

  v7 = sub_10014C3CC(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 48);
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v10 = *(qword_1009F9F08 + 24);
  }

  v11 = sub_10014C3CC(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(a1 + 48) & 8) != 0)
  {
LABEL_25:
    v14 = *(a1 + 32);
    if (!v14)
    {
      v14 = *(qword_1009F9F08 + 32);
    }

    v15 = sub_10014C3CC(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_31:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 44) = v4;
  return v4;
}

uint64_t sub_10014EDB8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014E11C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014EE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014EEA4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10014EF38()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE2C0;
}

void sub_10014EFCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014EFE0(uint64_t a1)
{
  *a1 = off_100996E20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10014F048(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      v8 = *(a2 + 32);
      *(a1 + 68) |= 1u;
      *(a1 + 32) = v8;
      v4 = *(a2 + 68);
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

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 16);
    *(a1 + 68) |= 2u;
    *(a1 + 16) = v9;
    v4 = *(a2 + 68);
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
    v10 = *(a2 + 24);
    *(a1 + 68) |= 4u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 68);
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
    v11 = *(a2 + 40);
    *(a1 + 68) |= 8u;
    *(a1 + 40) = v11;
    v4 = *(a2 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 36);
    if (v12 >= 5)
    {
      sub_10049E43C();
    }

    *(a1 + 68) |= 0x10u;
    *(a1 + 36) = v12;
    v4 = *(a2 + 68);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v5 = *(a2 + 48);
    *(a1 + 68) |= 0x20u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 68);
LABEL_11:
    if ((v4 & 0x40) != 0)
    {
      v6 = *(a2 + 56);
      *(a1 + 68) |= 0x40u;
      *(a1 + 56) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10014F1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014F1C8(uint64_t a1)
{
  *a1 = off_100996E20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014F21C(uint64_t a1)
{
  *a1 = off_100996E20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014F2F0(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014F318(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
              goto LABEL_30;
            }

            v13 = *(this + 1);
            v12 = *(this + 2);
            if (v13 >= v12 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v14;
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 68) |= 1u;
            if (v15 < v12 && *v15 == 17)
            {
              *(this + 1) = v15 + 1;
              goto LABEL_38;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 1)
              {
                goto LABEL_30;
              }

              goto LABEL_42;
            }

            if (v9 != 1)
            {
              goto LABEL_30;
            }

LABEL_38:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v23;
            *(a1 + 68) |= 2u;
            v17 = *(this + 1);
            if (v17 < *(this + 2) && *v17 == 25)
            {
              *(this + 1) = v17 + 1;
LABEL_42:
              *v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = *v23;
              *(a1 + 68) |= 4u;
              v18 = *(this + 1);
              if (v18 < *(this + 2) && *v18 == 33)
              {
                *(this + 1) = v18 + 1;
                goto LABEL_46;
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
          if (v9 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_30;
        }

        if (v8 != 7 || v9 != 1)
        {
          goto LABEL_30;
        }

LABEL_65:
        *v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v23;
        *(a1 + 68) |= 0x40u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_30;
      }

LABEL_46:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 40) = *v23;
      *(a1 + 68) |= 8u;
      v19 = *(this + 1);
      v10 = *(this + 2);
      if (v19 < v10 && *v19 == 40)
      {
        v11 = v19 + 1;
        *(this + 1) = v11;
LABEL_50:
        v23[0] = 0;
        if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v20 = v23[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v20 > 4)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v20);
        }

        else
        {
          *(a1 + 68) |= 0x10u;
          *(a1 + 36) = v20;
        }

        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 49)
        {
          *(this + 1) = v21 + 1;
LABEL_61:
          *v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = *v23;
          *(a1 + 68) |= 0x20u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 57)
          {
            *(this + 1) = v22 + 1;
            goto LABEL_65;
          }
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_50;
    }

LABEL_30:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10014F69C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
    if ((*(v5 + 68) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  }

LABEL_9:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10014F7BC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 68))
  {
    v4 = *(this + 8);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  v5 = *(this + 17);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v6;
    a2 += 9;
    v5 = *(this + 17);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(this + 3);
  *a2 = 25;
  *(a2 + 1) = v7;
  a2 += 9;
  v5 = *(this + 17);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((*(this + 17) & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v9 = *(this + 9);
  *a2 = 40;
  if ((v9 & 0x80000000) != 0)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, (a2 + 1), a3);
  }

  else
  {
    if (v9 <= 0x7F)
    {
      a2[1] = v9;
      a2 += 2;
      goto LABEL_19;
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
  }

  a2 = v10;
LABEL_19:
  v11 = *(this + 17);
  if ((v11 & 0x20) != 0)
  {
    v12 = *(this + 6);
    *a2 = 49;
    *(a2 + 1) = v12;
    a2 += 9;
    v11 = *(this + 17);
  }

  if ((v11 & 0x40) != 0)
  {
    v13 = *(this + 7);
    *a2 = 57;
    *(a2 + 1) = v13;
    a2 += 9;
  }

  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
}

uint64_t sub_10014FA48(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (v3)
  {
    if (*(a1 + 68))
    {
      v6 = *(a1 + 32);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 68);
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
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v7 = v4 + 9;
    }

    else
    {
      v7 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v8 = *(a1 + 36);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 68);
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    v10 = v7 + 9;
    if ((v3 & 0x20) == 0)
    {
      v10 = v7;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v10 + 9;
    }

    else
    {
      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 64) = v5;
  return v5;
}

uint64_t sub_10014FB3C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014F048(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10014FC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014FC28(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10014FCBC()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE2D0;
}

void sub_10014FD50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014FD64(uint64_t a1)
{
  *a1 = off_100996ED0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10014FDD8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F18 + 16);
      }

      sub_10014A61C(v5, v6);
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 52) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9F18 + 24);
      }

      sub_10014E11C(v7, v8);
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 52) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9F18 + 32);
      }

      sub_10014F048(v9, v10);
      v4 = *(a2 + 52);
    }

    if ((v4 & 8) != 0)
    {
      v11 = *(a2 + 40);
      *(a1 + 52) |= 8u;
      v12 = *(a1 + 40);
      if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015000C(void *a1)
{
  *a1 = off_100996ED0;
  v2 = (a1 + 1);
  sub_10015006C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10015006C(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_1009F9F18 != result)
  {
    v4 = result[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    result = v1[4];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_10015017C(void *a1)
{
  sub_10015000C(a1);

  operator delete();
}

uint64_t sub_1001501BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9F18;
  if (!qword_1009F9F18)
  {
    sub_100149E9C(0, a2, a3, a4);
    return qword_1009F9F18;
  }

  return result;
}

uint64_t sub_100150250(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10014A8D8(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_10014E4E8(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        if (*(this + 68))
        {
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 60) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 52) & 8) != 0)
    {
      v4 = *(v1 + 40);
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

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100150338(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_62;
          }

          goto LABEL_22;
        }

        if (v9 != 2)
        {
          goto LABEL_22;
        }

LABEL_48:
        *(a1 + 52) |= 4u;
        v31 = *(a1 + 32);
        if (!v31)
        {
          operator new();
        }

        v44 = 0;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v32;
          *(this + 1) = v32 + 1;
        }

        v33 = *(this + 14);
        v34 = *(this + 15);
        *(this + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
        if (!sub_10014F318(v31, this, v36, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
        v38 = *(this + 14);
        v18 = __OFSUB__(v38, 1);
        v39 = v38 - 1;
        if (v39 < 0 == v18)
        {
          *(this + 14) = v39;
        }

        v40 = *(this + 1);
        if (v40 < *(this + 2) && *v40 == 34)
        {
          *(this + 1) = v40 + 1;
LABEL_62:
          *(a1 + 52) |= 8u;
          if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 52) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v42 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
      if (!sub_10014A93C(v10, this, v15, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
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
LABEL_34:
        *(a1 + 52) |= 2u;
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        v43 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_10014E578(v21, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v18 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v18)
        {
          *(this + 14) = v29;
        }

        v30 = *(this + 1);
        if (v30 < *(this + 2) && *v30 == 26)
        {
          *(this + 1) = v30 + 1;
          goto LABEL_48;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_34;
    }

LABEL_22:
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

uint64_t sub_1001507D4(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v11 = *(this + 16);
    if (!v11)
    {
      v11 = *(qword_1009F9F18 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v11, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      v13 = *(v5 + 32);
      if (!v13)
      {
        v13 = *(qword_1009F9F18 + 32);
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v13, a2, a4);
      if ((*(v5 + 52) & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(v5 + 24);
  if (!v12)
  {
    v12 = *(qword_1009F9F18 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v12, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v7 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_6:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001508D0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 13);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9F18 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[12];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_10014AE60(v7, v10, a3);
    v6 = *(this + 13);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9F18 + 24);
  }

  *v4 = 18;
  v12 = v11[11];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_10014EAAC(v11, v13, a3);
  v6 = *(this + 13);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

LABEL_18:
  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(qword_1009F9F18 + 32);
  }

  *v4 = 26;
  v15 = v14[16];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = v4 + 2;
  }

  v4 = sub_10014F7BC(v14, v16, a3);
  if ((*(this + 13) & 8) != 0)
  {
LABEL_24:
    v17 = *(this + 5);
    *v4 = 34;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
    }

    if (v18 > 0x7F)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v18;
      v19 = v4 + 2;
    }

    v20 = *(v17 + 23);
    if (v20 >= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = *v17;
    }

    if (v20 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = *(v17 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
  }

LABEL_36:
  v25 = *(this + 1);
  v24 = (this + 8);
  v23 = v25;
  if (!v25 || *v23 == v23[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v24, v4, a3);
}

uint64_t sub_100150AA0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F9F18 + 16);
  }

  v6 = sub_10014B09C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9F18 + 24);
    }

    v10 = sub_10014EC48(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 52);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_1009F9F18 + 32);
  }

  v14 = sub_10014FA48(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
  }

  else
  {
    v16 = 1;
  }

  v4 = (v4 + v15 + v16 + 1);
  if ((*(a1 + 52) & 8) != 0)
  {
LABEL_27:
    v17 = *(a1 + 40);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v4 = (v4 + v22 + v18 + 1);
  }

LABEL_36:
  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_100150C3C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014FDD8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100150D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100150D28(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100150DBC()
{
  v0 = qword_1009EE328;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001499DC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE2E0;
}

void sub_100150E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100150F68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_100151164(a1, a2, a3, a4);
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

  qword_1009EE330 = *(FileByName + 80);
  operator new();
}

void sub_100151164(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EE350 & 1) == 0)
  {
    byte_1009EE350 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPLogEntry.pb.cc", a4);
    sub_1000DD8F8(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x11CLPLogEntry.proto\x12\fCLP.LogEntry\x1A\x1BCLPPrivateDataCapture.proto\xA6\x02\n\bLogEntry\x12;\n\x11event_record_time\x18\x01 \x01(\v2 .CLP.LogEntry.LogEntry.TimeStamp\x12J\n\x14private_data_capture\x18\x04 \x01(\v2,.CLP.LogEntry.PrivateData.PrivateDataCapture\x1A\x8A\x01\n\tTimeStamp\x12\x1A\n\x12cf_absolute_time_s\x18\x01 \x01(\x01\x12\x1C\n\x14mach_absolute_time_s\x18\x02 \x01(\x01\x12\x1E\n\x16mach_continuous_time_s\x18\x03 \x01(\x01\x12#\n\x1Bpipelined_monotonic_time_ns\x18\x04 \x01(\x03*\x04\b\x02\x10\x03", 0x167, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1001512A0()
{
  if (qword_1009F9F20)
  {
    (*(*qword_1009F9F20 + 8))(qword_1009F9F20);
  }

  if (qword_1009EE338)
  {
    (*(*qword_1009EE338 + 8))(qword_1009EE338);
  }

  if (qword_1009F9F28)
  {
    (*(*qword_1009F9F28 + 8))(qword_1009F9F28);
  }

  result = qword_1009EE348;
  if (qword_1009EE348)
  {
    v1 = *(*qword_1009EE348 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100151388()
{
  v0 = qword_1009EE358;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[1] = sub_100150F68;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_1009F9F20)
  {
    (sub_100151164)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F28)
  {
    sub_100151164(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100151454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100151468(uint64_t a1)
{
  *a1 = off_100997028;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100151528(uint64_t a1)
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

uint64_t sub_10015154C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
        if (v8 == 3)
        {
          if (v9 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_25;
      }

      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v18;
      *(a1 + 52) |= 1u;
      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_20:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v18) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v18;
        *(a1 + 52) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 25)
        {
          *(this + 1) = v13 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v18) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v18;
          *(a1 + 52) |= 4u;
          v14 = *(this + 1);
          v10 = *(this + 2);
          if (v14 < v10 && *v14 == 32)
          {
            v11 = v14 + 1;
            *(this + 1) = v11;
LABEL_32:
            v18 = 0;
            if (v11 >= v10 || (v15 = *v11, (v15 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v18);
              if (!result)
              {
                return result;
              }

              v15 = v18;
              v16 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v16 = v11 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 40) = v15;
            *(a1 + 52) |= 8u;
            if (v16 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100151788(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
      if ((*(v5 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 40), a2, a4);
  }

LABEL_6:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100151854(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10000A6F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100151928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100151940(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1001519D4()
{
  v0 = qword_1009EE358;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100150F68;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE340;
}

void sub_100151A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100151A7C(void *a1)
{
  sub_10000A9B8(a1);

  operator delete();
}

uint64_t sub_100151B20(uint64_t a1)
{
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear((a1 + 8));
  if (*(a1 + 60))
  {
    if (*(a1 + 60))
    {
      result = *(a1 + 40);
      if (result)
      {
        if (*(result + 52))
        {
          *(result + 16) = 0u;
          *(result + 32) = 0u;
        }

        v3 = *(result + 8);
        result += 8;
        *(result + 44) = 0;
        if (v3)
        {
          result = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
        }
      }
    }

    if ((*(a1 + 60) & 2) != 0)
    {
      result = *(a1 + 48);
      if (result)
      {
        result = sub_1000DDDD0(result);
      }
    }
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  *(v4 + 7) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_100151BBC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 4)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 60) |= 1u;
      v9 = *(a1 + 40);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!sub_10015154C(v9, a2, v14, v15) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
      v16 = *(a2 + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(a2 + 14) = v18;
      }

      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 34)
      {
        *(a2 + 1) = v19 + 1;
LABEL_30:
        *(a1 + 60) |= 2u;
        v20 = *(a1 + 48);
        if (!v20)
        {
          operator new();
        }

        v31 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v31);
        if (!sub_1000DDE5C(v20, a2, v25, v26) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
        v27 = *(a2 + 14);
        v17 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v17)
        {
          *(a2 + 14) = v28;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (v8 == 4)
    {
      return 1;
    }

    if ((TagFallback & 0xFFFFFFF8) == 0x10)
    {
      if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((a1 + 8), TagFallback, a2, qword_1009F9F20, (a1 + 32)) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, a1 + 32, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100151ED4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 60))
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(qword_1009F9F20 + 40);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((a1 + 8), 2, 3, a2);
  if ((*(a1 + 60) & 2) != 0)
  {
    v10 = *(a1 + 48);
    if (!v10)
    {
      v10 = *(qword_1009F9F20 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, v9);
  }

  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, v8);
  }

  return result;
}

uint64_t sub_100151F94(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10000A570(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100152068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100152080(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10015210C()
{
  v0 = qword_1009EE358;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100150F68;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE330;
}

void sub_1001521A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1001521C8()
{
  v0 = sub_1001523F0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1001523F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EE380 & 1) == 0)
  {
    byte_1009EE380 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPBTProxEstimatorEntry.pb.cc", a4);
    sub_1000CE744(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1DCLPBTProxEstimatorEntry.proto\x12$CLP.LogEntry.Nearbyd.BTProxEstimator\x1A\x14CLPBTProxEntry.proto\x82\x03\n\x14BTProxEstimatorEntry\x12I\n\x11btSampleTimestamp\x18\x01 \x01(\v2..CLP.LogEntry.Nearbyd.BTProx.BTSampleTimeStamp\x12\f\n\x04UUID\x18\x02 \x01(\t\x12\x12\n\nfilterType\x18\x03 \x01(\t\x12\x12\n\nsampleSize\x18\x04 \x01(\x05\x12W\n\x06sample\x18\x05 \x03(\v2G.CLP.LogEntry.Nearbyd.BTProxEstimator.BTProxEstimatorEntry.BTProxSample\x12\x16\n\x0EfilteredResult\x18\x06 \x01(\x01\x1Ax\n\fBTProxSample\x12I\n\x11btSampleTimestamp\x18\x01 \x01(\v2..CLP.LogEntry.Nearbyd.BTProx.BTSampleTimeStamp\x12\x0F\n\achannel\x18\x02 \x01(\x05\x12\f\n\x04rssi\x18\x03 \x01(\x01", 0x1E0, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100152534()
{
  if (qword_1009F9F30)
  {
    (*(*qword_1009F9F30 + 8))(qword_1009F9F30);
  }

  if (qword_1009EE368)
  {
    (*(*qword_1009EE368 + 8))(qword_1009EE368);
  }

  if (qword_1009F9F38)
  {
    (*(*qword_1009F9F38 + 8))(qword_1009F9F38);
  }

  result = qword_1009EE378;
  if (qword_1009EE378)
  {
    v1 = *(*qword_1009EE378 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10015261C()
{
  v0 = qword_1009EE388;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[1] = sub_1001521C8;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_1009F9F30)
  {
    (sub_1001523F0)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F38)
  {
    sub_1001523F0(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1001526E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100152700(uint64_t a1)
{
  *a1 = off_1009971B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100152764(uint64_t a1, uint64_t a2)
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
      *(a1 + 40) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F38 + 16);
      }

      sub_1000CED28(v5, v6);
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 32);
      *(a1 + 40) |= 2u;
      *(a1 + 32) = v7;
      v4 = *(a2 + 40);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 24);
      *(a1 + 40) |= 4u;
      *(a1 + 24) = v8;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001528B0(void *a1)
{
  *a1 = off_1009971B8;
  if (qword_1009F9F38 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100152948(void *a1)
{
  sub_1001528B0(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001529EC(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 40))
  {
    if (*(this + 40))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_1000CEF30(this);
      }
    }

    *(v1 + 8) = 0;
    *(v1 + 3) = 0;
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 8) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_100152A58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      if (v8 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_30;
      }

LABEL_18:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 1 || v9 != 2)
    {
      goto LABEL_18;
    }

    *(a1 + 40) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v26[0] = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26))
      {
        return 0;
      }
    }

    else
    {
      v26[0] = *v11;
      *(this + 1) = v11 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26[0]);
    if (!sub_1000CEF50(v10, this, v17, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    v12 = *(this + 2);
    if (v22 < v12 && *v22 == 16)
    {
      v13 = v22 + 1;
      *(this + 1) = v13;
LABEL_30:
      v26[0] = 0;
      if (v13 >= v12 || (v23 = *v13, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
        if (!result)
        {
          return result;
        }

        v23 = v26[0];
        v24 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        v24 = v13 + 1;
        *(this + 1) = v24;
      }

      *(a1 + 32) = v23;
      *(a1 + 40) |= 2u;
      if (v24 < v12 && *v24 == 25)
      {
        *(this + 1) = v24 + 1;
LABEL_38:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v26;
        *(a1 + 40) |= 4u;
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

uint64_t sub_100152CFC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = *(this + 16);
  if (!v10)
  {
    v10 = *(qword_1009F9F38 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  }

LABEL_5:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100152DBC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9F38 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 24);
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = v3 + 2;
    }

    v3 = sub_1000CF0B8(v6, v9, a3);
    v5 = *(this + 10);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 8);
    *v3 = 16;
    v11 = v3 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    }

    else
    {
      if (v10 <= 0x7F)
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        goto LABEL_15;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    }

    v3 = v12;
  }

LABEL_15:
  if ((*(this + 40) & 4) != 0)
  {
    v13 = *(this + 3);
    *v3 = 25;
    *(v3 + 1) = v13;
    v3 = (v3 + 9);
  }

  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_100152F04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9F38 + 16);
    }

    v6 = sub_1000CF12C(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    LODWORD(v4) = v7 + v8 + 1;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  LODWORD(v4) = 0;
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 32);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v10 = 2;
    }

    LODWORD(v4) = v10 + v4;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

LABEL_21:
  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_100152FEC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100152764(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001530C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001530D8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10015316C()
{
  v0 = qword_1009EE388;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001521C8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE370;
}

void sub_100153200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100153214(uint64_t a1)
{
  *a1 = off_100997268;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v2 = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  *(a1 + 64) = v2;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_100153294(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  sub_1001543E0((a1 + 40), a2 + 40);
  LOBYTE(v4) = *(a2 + 80);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 80))
  {
    *(a1 + 80) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9F30 + 16);
    }

    sub_1000CED28(v5, v6);
    v4 = *(a2 + 80);
  }

  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 24);
    *(a1 + 80) |= 2u;
    v10 = *(a1 + 24);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 80);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v13 = *(a2 + 72);
      *(a1 + 80) |= 8u;
      *(a1 + 72) = v13;
      if ((*(a2 + 80) & 0x20) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(a2 + 32);
  *(a1 + 80) |= 4u;
  v12 = *(a1 + 32);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 80);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v4 & 0x20) != 0)
  {
LABEL_14:
    v7 = *(a2 + 64);
    *(a1 + 80) |= 0x20u;
    *(a1 + 64) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001534A4(uint64_t *a1)
{
  *a1 = off_100997268;
  v2 = a1 + 5;
  sub_100153510(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100153510(void *result)
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

  v3 = result[4];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (qword_1009F9F30 != result)
  {
    result = result[2];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_100153604(uint64_t *a1)
{
  sub_1001534A4(a1);

  operator delete();
}

uint64_t sub_100153644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9F30;
  if (!qword_1009F9F30)
  {
    sub_1001523F0(0, a2, a3, a4);
    return qword_1009F9F30;
  }

  return result;
}

uint64_t sub_1001536D8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 80);
  if (v2)
  {
    if (*(a1 + 80))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_1000CEF30(v3);
        v2 = *(a1 + 80);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 24);
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

    if ((*(a1 + 80) & 4) != 0)
    {
      v5 = *(a1 + 32);
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

    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  result = sub_100077B98(a1 + 40);
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  *(v7 + 18) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return result;
}

uint64_t sub_1001537BC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
LABEL_1:
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
          goto LABEL_28;
        }

        *(a1 + 80) |= 1u;
        v10 = *(a1 + 16);
        if (!v10)
        {
          operator new();
        }

        v47[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
          {
            return 0;
          }
        }

        else
        {
          v47[0] = *v11;
          *(this + 1) = v11 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
        if (!sub_1000CEF50(v10, this, v17, v18) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
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
          goto LABEL_40;
        }
      }

      else if (v8 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_28;
        }

LABEL_40:
        *(a1 + 80) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v24 = *(a1 + 24);
        if ((*(v24 + 23) & 0x8000000000000000) != 0)
        {
          v25 = *v24;
          v26 = *(*(a1 + 24) + 8);
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          *(this + 1) = v27 + 1;
LABEL_48:
          *(a1 + 80) |= 4u;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v28 = *(a1 + 32);
          if ((*(v28 + 23) & 0x8000000000000000) != 0)
          {
            v29 = *v28;
            v30 = *(*(a1 + 32) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          v31 = *(this + 1);
          v12 = *(this + 2);
          if (v31 < v12 && *v31 == 32)
          {
            v13 = v31 + 1;
            *(this + 1) = v13;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v8 == 3 && v9 == 2)
        {
          goto LABEL_48;
        }

LABEL_28:
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

    if (v8 != 4)
    {
      if (v8 == 5)
      {
        if (v9 == 2)
        {
          goto LABEL_64;
        }
      }

      else if (v8 == 6 && v9 == 1)
      {
        goto LABEL_82;
      }

      goto LABEL_28;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_28;
    }

    v13 = *(this + 1);
    v12 = *(this + 2);
LABEL_56:
    v47[0] = 0;
    if (v13 >= v12 || (v32 = *v13, (v32 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
      if (!result)
      {
        return result;
      }

      v32 = v47[0];
      v33 = *(this + 1);
      v12 = *(this + 2);
    }

    else
    {
      v33 = v13 + 1;
      *(this + 1) = v33;
    }

    *(a1 + 72) = v32;
    *(a1 + 80) |= 8u;
  }

  while (v33 >= v12 || *v33 != 42);
  while (1)
  {
    *(this + 1) = v33 + 1;
LABEL_64:
    v34 = *(a1 + 52);
    v35 = *(a1 + 48);
    if (v35 >= v34)
    {
      if (v34 == *(a1 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v34 + 1);
        v34 = *(a1 + 52);
      }

      *(a1 + 52) = v34 + 1;
      sub_10015466C();
    }

    v36 = *(a1 + 40);
    *(a1 + 48) = v35 + 1;
    v37 = *(v36 + 8 * v35);
    v47[0] = 0;
    v38 = *(this + 1);
    if (v38 >= *(this + 2) || *v38 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
      {
        return 0;
      }
    }

    else
    {
      v47[0] = *v38;
      *(this + 1) = v38 + 1;
    }

    v39 = *(this + 14);
    v40 = *(this + 15);
    *(this + 14) = v39 + 1;
    if (v39 >= v40)
    {
      return 0;
    }

    v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
    if (!sub_100152A58(v37, this, v42, v43) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
    v44 = *(this + 14);
    v20 = __OFSUB__(v44, 1);
    v45 = v44 - 1;
    if (v45 < 0 == v20)
    {
      *(this + 14) = v45;
    }

    v33 = *(this + 1);
    if (v33 >= *(this + 2))
    {
      goto LABEL_1;
    }

    v46 = *v33;
    if (v46 != 42)
    {
      if (v46 == 49)
      {
        *(this + 1) = v33 + 1;
LABEL_82:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v47;
        *(a1 + 80) |= 0x20u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      goto LABEL_1;
    }
  }
}

uint64_t sub_100153CD4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    v11 = *(this + 16);
    if (!v11)
    {
      v11 = *(qword_1009F9F30 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v11, a2, a4);
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

  v12 = *(v5 + 24);
  if ((*(v12 + 23) & 0x8000000000000000) != 0)
  {
    v13 = *v12;
    v14 = *(*(v5 + 24) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v15 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  v16 = *(v5 + 32);
  if ((*(v16 + 23) & 0x8000000000000000) != 0)
  {
    v17 = *v16;
    v18 = *(*(v5 + 32) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v19 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 80) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 72), a2, a4);
  }

LABEL_6:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if ((*(v5 + 80) & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100153E38(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 20);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9F30 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 24);
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = v3 + 2;
    }

    v3 = sub_1000CF0B8(v6, v9, a3);
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_26:
      v21 = *(this + 4);
      if ((*(v21 + 23) & 0x8000000000000000) != 0)
      {
        v22 = *v21;
        v23 = *(*(this + 4) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v26 = *(this + 4);
      *v3 = 26;
      v27 = *(v26 + 23);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v27 = *(v26 + 8);
      }

      if (v27 > 0x7F)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v3 + 1, v24);
      }

      else
      {
        *(v3 + 1) = v27;
        v28 = v3 + 2;
      }

      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = *v26;
      }

      if (v29 >= 0)
      {
        v31 = *(v26 + 23);
      }

      else
      {
        v31 = *(v26 + 8);
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, v25);
      if ((*(this + 20) & 8) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  if ((*(v10 + 23) & 0x8000000000000000) != 0)
  {
    v11 = *v10;
    v12 = *(*(this + 3) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v15 = *(this + 3);
  *v3 = 18;
  v16 = *(v15 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = *(v15 + 8);
  }

  if (v16 > 0x7F)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, v13);
  }

  else
  {
    *(v3 + 1) = v16;
    v17 = v3 + 2;
  }

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

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, v14);
  v5 = *(this + 20);
  if ((v5 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_46;
  }

LABEL_40:
  v32 = *(this + 18);
  *v3 = 32;
  v33 = v3 + 1;
  if ((v32 & 0x80000000) != 0)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v32, v33, a3);
  }

  else
  {
    if (v32 <= 0x7F)
    {
      *(v3 + 1) = v32;
      v3 = (v3 + 2);
      goto LABEL_46;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v33, a3);
  }

  v3 = v34;
LABEL_46:
  if (*(this + 12) >= 1)
  {
    v35 = 0;
    do
    {
      v36 = *(*(this + 5) + 8 * v35);
      *v3 = 42;
      v37 = v36[9];
      if (v37 > 0x7F)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v37;
        v38 = (v3 + 2);
      }

      v3 = sub_100152DBC(v36, v38, a3);
      ++v35;
    }

    while (v35 < *(this + 12));
  }

  if ((*(this + 80) & 0x20) != 0)
  {
    v39 = *(this + 8);
    *v3 = 49;
    *(v3 + 1) = v39;
    v3 = (v3 + 9);
  }

  v42 = *(this + 1);
  v41 = (this + 8);
  v40 = v42;
  if (!v42 || *v40 == v40[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v41, v3, a3);
}

uint64_t sub_100154100(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 80);
  if (*(a1 + 80))
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_1009F9F30 + 16);
      }

      v6 = sub_1000CF12C(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      else
      {
        v8 = 1;
      }

      v4 = v7 + v8 + 1;
      v3 = *(a1 + 80);
      if ((v3 & 2) == 0)
      {
LABEL_20:
        if ((v3 & 4) != 0)
        {
          v15 = *(a1 + 32);
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
            v3 = *(a1 + 80);
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

          v4 += v20 + v16 + 1;
          if ((v3 & 8) == 0)
          {
            goto LABEL_38;
          }
        }

        else if ((v3 & 8) == 0)
        {
LABEL_38:
          if ((v3 & 0x20) != 0)
          {
            v3 = v4 + 9;
          }

          else
          {
            v3 = v4;
          }

          goto LABEL_41;
        }

        v21 = *(a1 + 72);
        if ((v21 & 0x80000000) != 0)
        {
          v22 = 11;
        }

        else if (v21 >= 0x80)
        {
          v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
          v3 = *(a1 + 80);
        }

        else
        {
          v22 = 2;
        }

        v4 += v22;
        goto LABEL_38;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
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
      v3 = *(a1 + 80);
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

    v4 += v14 + v10 + 1;
    goto LABEL_20;
  }

LABEL_41:
  v23 = *(a1 + 48);
  v24 = (v23 + v3);
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = sub_100152F04(*(*(a1 + 40) + 8 * v25), a2);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
      }

      else
      {
        v28 = 1;
      }

      v24 = (v27 + v24 + v28);
      ++v25;
    }

    while (v25 < *(a1 + 48));
  }

  v29 = *(a1 + 8);
  if (v29 && *v29 != v29[1])
  {
    v24 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v24;
  }

  *(a1 + 76) = v24;
  return v24;
}

uint64_t sub_1001542F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100153294(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001543C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001543E0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_10015466C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100152764(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100154508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154520(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1001545B4()
{
  v0 = qword_1009EE388;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001521C8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE360;
}

void sub_100154648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1001546D4()
{
  v0 = sub_10015515C();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_10015515C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EE4D8 & 1) == 0)
  {
    byte_1009EE4D8 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPRangeAndAoaSolution.pb.cc", a4);
    sub_100092114(v4, v5, v6, v7);
    sub_1000DF334(v8, v9, v10, v11);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10055F9AC, 0x15AE, v12);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100155740()
{
  if (qword_1009F9F40)
  {
    (*(*qword_1009F9F40 + 8))(qword_1009F9F40);
  }

  if (qword_1009EE398)
  {
    (*(*qword_1009EE398 + 8))(qword_1009EE398);
  }

  if (qword_1009F9F48)
  {
    (*(*qword_1009F9F48 + 8))(qword_1009F9F48);
  }

  if (qword_1009EE3A8)
  {
    (*(*qword_1009EE3A8 + 8))(qword_1009EE3A8);
  }

  if (qword_1009F9F50)
  {
    (*(*qword_1009F9F50 + 8))(qword_1009F9F50);
  }

  if (qword_1009EE3B8)
  {
    (*(*qword_1009EE3B8 + 8))(qword_1009EE3B8);
  }

  if (qword_1009F9F58)
  {
    (*(*qword_1009F9F58 + 8))(qword_1009F9F58);
  }

  if (qword_1009EE3C8)
  {
    (*(*qword_1009EE3C8 + 8))(qword_1009EE3C8);
  }

  if (qword_1009F9F60)
  {
    (*(*qword_1009F9F60 + 8))(qword_1009F9F60);
  }

  if (qword_1009EE3D8)
  {
    (*(*qword_1009EE3D8 + 8))(qword_1009EE3D8);
  }

  if (qword_1009F9F68)
  {
    (*(*qword_1009F9F68 + 8))(qword_1009F9F68);
  }

  if (qword_1009EE3E8)
  {
    (*(*qword_1009EE3E8 + 8))(qword_1009EE3E8);
  }

  if (qword_1009F9F70)
  {
    (*(*qword_1009F9F70 + 8))(qword_1009F9F70);
  }

  if (qword_1009EE3F8)
  {
    (*(*qword_1009EE3F8 + 8))(qword_1009EE3F8);
  }

  if (qword_1009F9F78)
  {
    (*(*qword_1009F9F78 + 8))(qword_1009F9F78);
  }

  if (qword_1009EE408)
  {
    (*(*qword_1009EE408 + 8))(qword_1009EE408);
  }

  if (qword_1009F9F80)
  {
    (*(*qword_1009F9F80 + 8))(qword_1009F9F80);
  }

  if (qword_1009EE418)
  {
    (*(*qword_1009EE418 + 8))(qword_1009EE418);
  }

  if (qword_1009F9F88)
  {
    (*(*qword_1009F9F88 + 8))(qword_1009F9F88);
  }

  if (qword_1009EE428)
  {
    (*(*qword_1009EE428 + 8))(qword_1009EE428);
  }

  if (qword_1009F9F90)
  {
    (*(*qword_1009F9F90 + 8))(qword_1009F9F90);
  }

  if (qword_1009EE438)
  {
    (*(*qword_1009EE438 + 8))(qword_1009EE438);
  }

  if (qword_1009F9F98)
  {
    (*(*qword_1009F9F98 + 8))(qword_1009F9F98);
  }

  if (qword_1009EE448)
  {
    (*(*qword_1009EE448 + 8))(qword_1009EE448);
  }

  if (qword_1009F9FA0)
  {
    (*(*qword_1009F9FA0 + 8))(qword_1009F9FA0);
  }

  if (qword_1009EE460)
  {
    (*(*qword_1009EE460 + 8))(qword_1009EE460);
  }

  if (qword_1009F9FA8)
  {
    (*(*qword_1009F9FA8 + 8))(qword_1009F9FA8);
  }

  if (qword_1009EE470)
  {
    (*(*qword_1009EE470 + 8))(qword_1009EE470);
  }

  if (qword_1009F9FB0)
  {
    (*(*qword_1009F9FB0 + 8))(qword_1009F9FB0);
  }

  if (qword_1009EE480)
  {
    (*(*qword_1009EE480 + 8))(qword_1009EE480);
  }

  if (qword_1009F9FB8)
  {
    (*(*qword_1009F9FB8 + 8))(qword_1009F9FB8);
  }

  if (qword_1009EE490)
  {
    (*(*qword_1009EE490 + 8))(qword_1009EE490);
  }

  if (qword_1009F9FC0)
  {
    (*(*qword_1009F9FC0 + 8))(qword_1009F9FC0);
  }

  if (qword_1009EE4A0)
  {
    (*(*qword_1009EE4A0 + 8))(qword_1009EE4A0);
  }

  if (qword_1009F9FC8)
  {
    (*(*qword_1009F9FC8 + 8))(qword_1009F9FC8);
  }

  if (qword_1009EE4B0)
  {
    (*(*qword_1009EE4B0 + 8))(qword_1009EE4B0);
  }

  if (qword_1009F9FD0)
  {
    (*(*qword_1009F9FD0 + 8))(qword_1009F9FD0);
  }

  result = qword_1009EE4C0;
  if (qword_1009EE4C0)
  {
    v1 = *(*qword_1009EE4C0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100155E88()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v20[1] = sub_1001546D4;
    v21 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v20);
  }

  if (!qword_1009F9F40)
  {
    (sub_10015515C)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F48)
  {
    sub_10015515C(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F50)
  {
    sub_10015515C(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F58)
  {
    sub_10015515C(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F60)
  {
    sub_10015515C(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F68)
  {
    sub_10015515C(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F70)
  {
    sub_10015515C(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F78)
  {
    sub_10015515C(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F80)
  {
    sub_10015515C(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F88)
  {
    sub_10015515C(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F90)
  {
    sub_10015515C(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9F98)
  {
    sub_10015515C(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FA0)
  {
    sub_10015515C(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FA8)
  {
    sub_10015515C(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FB0)
  {
    sub_10015515C(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FB8)
  {
    sub_10015515C(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FC0)
  {
    sub_10015515C(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FC8)
  {
    sub_10015515C(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9FD0)
  {
    sub_10015515C(v18);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1001561B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001561FC(uint64_t result)
{
  v1 = result;
  v2 = qword_1009F9FC0;
  if (!qword_1009F9FC0)
  {
    result = sub_10015515C(result);
    v2 = qword_1009F9FC0;
  }

  v1[2] = v2;
  v3 = qword_1009F9F68;
  if (!qword_1009F9F68)
  {
    result = sub_10015515C(result);
    v3 = qword_1009F9F68;
  }

  v1[8] = v3;
  v4 = qword_1009F9F90;
  if (!qword_1009F9F90)
  {
    result = sub_10015515C(result);
    v4 = qword_1009F9F90;
  }

  v1[9] = v4;
  v5 = qword_1009F9F98;
  if (!qword_1009F9F98)
  {
    result = sub_10015515C(result);
    v5 = qword_1009F9F98;
  }

  v1[10] = v5;
  return result;
}

uint64_t sub_10015628C(uint64_t a1)
{
  *a1 = off_100997348;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_1001562F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  sub_100156FE8((a1 + 32), a2 + 32);
  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      *(a1 + 60) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F50 + 16);
      }

      sub_100157128(v5, v6);
      v4 = *(a2 + 60);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 60) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9F50 + 24);
      }

      sub_1000E4A9C(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100156478(uint64_t *a1)
{
  *a1 = off_100997348;
  v2 = a1 + 4;
  sub_1001564E4(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1001564E4(void *result)
{
  if (qword_1009F9F50 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_100156588(uint64_t *a1)
{
  sub_100156478(a1);

  operator delete();
}

uint64_t sub_10015662C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 60);
  if (v2)
  {
    if (*(a1 + 60))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_1001566AC(v3);
        v2 = *(a1 + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        sub_1000E4D18(v4);
      }
    }
  }

  result = sub_100077B98(a1 + 32);
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  *(v6 + 13) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001566AC(uint64_t a1)
{
  v1 = *(a1 + 140);
  if (v1)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 80) = 0;
    if ((v1 & 0x400) != 0)
    {
      v2 = *(a1 + 88);
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

    *(a1 + 128) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 28) = 0;
  *(result + 33) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100156728(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 60) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v45 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
        {
          return 0;
        }
      }

      else
      {
        v45 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v45);
      if (!sub_100161F50(v10, this, v15, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
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
LABEL_30:
        *(a1 + 60) |= 2u;
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        v46 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v46);
        if (!sub_1000E4D78(v21, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v18 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v18)
        {
          *(this + 14) = v29;
        }

        v30 = *(this + 1);
        if (v30 < *(this + 2) && *v30 == 26)
        {
          do
          {
            *(this + 1) = v30 + 1;
LABEL_44:
            v31 = *(a1 + 44);
            v32 = *(a1 + 40);
            if (v32 >= v31)
            {
              if (v31 == *(a1 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v31 + 1);
                v31 = *(a1 + 44);
              }

              *(a1 + 44) = v31 + 1;
              sub_100166734();
            }

            v33 = *(a1 + 32);
            *(a1 + 40) = v32 + 1;
            v34 = *(v33 + 8 * v32);
            v47 = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(this + 14);
            v37 = *(this + 15);
            *(this + 14) = v36 + 1;
            if (v36 >= v37)
            {
              return 0;
            }

            v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
            if (!sub_100161F50(v34, this, v39, v40) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
            v41 = *(this + 14);
            v18 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v18)
            {
              *(this + 14) = v42;
            }

            v30 = *(this + 1);
            v43 = *(this + 2);
          }

          while (v30 < v43 && *v30 == 26);
          if (v30 == v43 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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

uint64_t sub_100156B54(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9F50 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 60);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9F50 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  }

  if (*(v5 + 40) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 32) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 40));
  }

  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100156C40(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9F50 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[34];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_1001629F4(v7, v10, a3, a4);
    v6 = *(this + 15);
  }

  if ((v6 & 2) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      v11 = *(qword_1009F9F50 + 24);
    }

    *v4 = 18;
    v12 = v11[6];
    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v12;
      v13 = (v4 + 2);
    }

    v4 = sub_1000E4FC0(v11, v13, a3);
  }

  if (*(this + 10) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 4) + 8 * v14);
      *v4 = 26;
      v16 = v15[34];
      if (v16 > 0x7F)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v16;
        v17 = (v4 + 2);
      }

      v4 = sub_1001629F4(v15, v17, a3, a4);
      ++v14;
    }

    while (v14 < *(this + 10));
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v4, a3);
}

uint64_t sub_100156DB4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 60))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_1009F9F50 + 16);
  }

  v5 = sub_100162F54(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9F50 + 24);
    }

    v9 = sub_1000E5070(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(a1 + 40);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_100162F54(*(*(a1 + 32) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(a1 + 40));
  }

  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 56) = v13;
  return v13;
}

uint64_t sub_100156EFC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001562F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100156FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100156FE8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_100166734();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100157128(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100157110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100157128(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    sub_1000778F4((a1 + 112), *(a1 + 120) + v4);
    memcpy((*(a1 + 112) + 8 * *(a1 + 120)), *(a2 + 112), 8 * *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v5 = *(a2 + 140);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v7 = *(a2 + 16);
    *(a1 + 140) |= 1u;
    *(a1 + 16) = v7;
    v5 = *(a2 + 140);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  *(a1 + 140) |= 2u;
  *(a1 + 24) = v8;
  v5 = *(a2 + 140);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 32);
  *(a1 + 140) |= 4u;
  *(a1 + 32) = v9;
  v5 = *(a2 + 140);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 40);
  *(a1 + 140) |= 8u;
  *(a1 + 40) = v10;
  v5 = *(a2 + 140);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    v12 = *(a2 + 56);
    *(a1 + 140) |= 0x20u;
    *(a1 + 56) = v12;
    v5 = *(a2 + 140);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_28:
  v11 = *(a2 + 48);
  *(a1 + 140) |= 0x10u;
  *(a1 + 48) = v11;
  v5 = *(a2 + 140);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  v13 = *(a2 + 64);
  *(a1 + 140) |= 0x40u;
  *(a1 + 64) = v13;
  v5 = *(a2 + 140);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 72);
    *(a1 + 140) |= 0x80u;
    *(a1 + 72) = v6;
    v5 = *(a2 + 140);
  }

LABEL_15:
  if ((v5 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v5 & 0x100) != 0)
  {
    v14 = *(a2 + 80);
    *(a1 + 140) |= 0x100u;
    *(a1 + 80) = v14;
    v5 = *(a2 + 140);
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a2 + 84);
  *(a1 + 140) |= 0x200u;
  *(a1 + 84) = v15;
  v5 = *(a2 + 140);
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_34:
  v16 = *(a2 + 88);
  *(a1 + 140) |= 0x400u;
  v17 = *(a1 + 88);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v5 = *(a2 + 140);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 96);
  *(a1 + 140) |= 0x800u;
  *(a1 + 96) = v18;
  v5 = *(a2 + 140);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a2 + 104);
  *(a1 + 140) |= 0x1000u;
  *(a1 + 104) = v19;
  v5 = *(a2 + 140);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_41;
  }

LABEL_39:
  v20 = *(a2 + 128);
  if (!sub_100079CC4(v20))
  {
    sub_10049E468();
  }

  *(a1 + 140) |= 0x4000u;
  *(a1 + 128) = v20;
  if ((*(a2 + 140) & 0x8000) != 0)
  {
LABEL_41:
    v21 = *(a2 + 132);
    if (v21 >= 2)
    {
      sub_10049E494();
    }

    *(a1 + 140) |= 0x8000u;
    *(a1 + 132) = v21;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100157438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100157450(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1001574E4()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE3B0;
}

void sub_100157578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015758C(uint64_t a1)
{
  *a1 = off_1009973F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1001575F8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  sub_1001585F8((a1 + 24), a2 + 24);
  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      *(a1 + 68) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F58 + 16);
      }

      sub_100158738(v5, v6);
      v4 = *(a2 + 68);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 68) |= 4u;
      v7 = *(a1 + 48);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 48);
      if (!v8)
      {
        v8 = *(qword_1009F9F58 + 48);
      }

      sub_1001588DC(v7, v8);
      v4 = *(a2 + 68);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 68) |= 8u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 56);
      if (!v10)
      {
        v10 = *(qword_1009F9F58 + 56);
      }

      sub_100158B84(v9, v10);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001577E0(uint64_t *a1)
{
  *a1 = off_1009973F8;
  v2 = a1 + 3;
  sub_10015784C(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10015784C(void *result)
{
  if (qword_1009F9F58 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[6];
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

void sub_10015791C(uint64_t *a1)
{
  sub_1001577E0(a1);

  operator delete();
}

uint64_t sub_1001579C0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 68);
  if (v2)
  {
    if (*(a1 + 68))
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        sub_100157A70(v3);
        v2 = *(a1 + 68);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        sub_100157AF0(v4);
        v2 = *(a1 + 68);
      }
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        if (*(v5 + 40))
        {
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
        }

        v7 = *(v5 + 8);
        v6 = (v5 + 8);
        *(v6 + 8) = 0;
        if (v7)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
        }
      }
    }
  }

  result = sub_100077B98(a1 + 24);
  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  *(v9 + 15) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return result;
}

uint64_t sub_100157A70(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_1001566AC(this);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_10015E248(this);
      }
    }

    *(v1 + 32) = 1;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100157AF0(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  *(result + 35) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100157B40(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100157B64(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_66;
          }

          goto LABEL_22;
        }

        if (v9 != 2)
        {
          goto LABEL_22;
        }

LABEL_52:
        *(a1 + 68) |= 4u;
        v34 = *(a1 + 48);
        if (!v34)
        {
          operator new();
        }

        v54 = 0;
        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
          {
            return 0;
          }
        }

        else
        {
          v54 = *v35;
          *(this + 1) = v35 + 1;
        }

        v36 = *(this + 14);
        v37 = *(this + 15);
        *(this + 14) = v36 + 1;
        if (v36 >= v37)
        {
          return 0;
        }

        v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54);
        if (!sub_10015F860(v34, this, v39, v40) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
        v41 = *(this + 14);
        v18 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v18)
        {
          *(this + 14) = v42;
        }

        v43 = *(this + 1);
        if (v43 < *(this + 2) && *v43 == 34)
        {
          *(this + 1) = v43 + 1;
LABEL_66:
          *(a1 + 68) |= 8u;
          v44 = *(a1 + 56);
          if (!v44)
          {
            operator new();
          }

          v54 = 0;
          v45 = *(this + 1);
          if (v45 >= *(this + 2) || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
            {
              return 0;
            }
          }

          else
          {
            v54 = *v45;
            *(this + 1) = v45 + 1;
          }

          v46 = *(this + 14);
          v47 = *(this + 15);
          *(this + 14) = v46 + 1;
          if (v46 >= v47)
          {
            return 0;
          }

          v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54);
          if (!sub_100160C1C(v44, this, v49, v50) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
          v51 = *(this + 14);
          v18 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (v52 < 0 == v18)
          {
            *(this + 14) = v52;
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 68) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v54 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          return 0;
        }
      }

      else
      {
        v54 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54);
      if (!sub_10016144C(v10, this, v15, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
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
        while (2)
        {
          *(this + 1) = v20 + 1;
LABEL_34:
          v21 = *(a1 + 36);
          v22 = *(a1 + 32);
          if (v22 >= v21)
          {
            if (v21 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v21 + 1);
              v21 = *(a1 + 36);
            }

            *(a1 + 36) = v21 + 1;
            sub_100166798();
          }

          v23 = *(a1 + 24);
          *(a1 + 32) = v22 + 1;
          v24 = *(v23 + 8 * v22);
          v54 = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
            {
              return 0;
            }
          }

          else
          {
            v54 = *v25;
            *(this + 1) = v25 + 1;
          }

          v26 = *(this + 14);
          v27 = *(this + 15);
          *(this + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54);
          if (!sub_10015E2FC(v24, this, v29, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
          v31 = *(this + 14);
          v18 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v18)
          {
            *(this + 14) = v32;
          }

          v20 = *(this + 1);
          if (v20 < *(this + 2))
          {
            v33 = *v20;
            if (v33 == 18)
            {
              continue;
            }

            if (v33 == 26)
            {
              *(this + 1) = v20 + 1;
              goto LABEL_52;
            }
          }

          break;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_34;
    }

LABEL_22:
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

uint64_t sub_1001580A0(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 68))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9F58 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 68);
  if ((v8 & 4) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      v9 = *(qword_1009F9F58 + 48);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
    v8 = *(v5 + 68);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(v5 + 56);
    if (!v10)
    {
      v10 = *(qword_1009F9F58 + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
  }

  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001581B4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 68))
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9F58 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[9];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = (v4 + 2);
    }

    v4 = sub_10016189C(v6, v9, a3, a4);
  }

  if (*(this + 8) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(this + 3) + 8 * v10);
      *v4 = 18;
      v12 = v11[22];
      if (v12 > 0x7F)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v12;
        v13 = (v4 + 2);
      }

      v4 = sub_10015ED18(v11, v13, a3);
      ++v10;
    }

    while (v10 < *(this + 8));
  }

  v14 = *(this + 17);
  if ((v14 & 4) != 0)
  {
    v15 = *(this + 6);
    if (!v15)
    {
      v15 = *(qword_1009F9F58 + 48);
    }

    *v4 = 26;
    v16 = v15[36];
    if (v16 > 0x7F)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v16;
      v17 = (v4 + 2);
    }

    v4 = sub_1001601A4(v15, v17, a3);
    v14 = *(this + 17);
  }

  if ((v14 & 8) != 0)
  {
    v18 = *(this + 7);
    if (!v18)
    {
      v18 = *(qword_1009F9F58 + 56);
    }

    *v4 = 34;
    v19 = *(v18 + 36);
    if (v19 > 0x7F)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v19;
      v20 = v4 + 2;
    }

    v4 = sub_100160EA8(v18, v20, a3);
  }

  v23 = *(this + 1);
  v22 = (this + 8);
  v21 = v23;
  if (!v23 || *v21 == v21[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v22, v4, a3);
}

uint64_t sub_10015837C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 68))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9F58 + 16);
    }

    v6 = sub_1001619F0(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = v7 + v8 + 1;
    v3 = *(a1 + 68);
    if ((v3 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 68) & 4) != 0)
  {
LABEL_12:
    v9 = *(a1 + 48);
    if (!v9)
    {
      v9 = *(qword_1009F9F58 + 48);
    }

    v10 = sub_1001606F4(v9, a2);
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
    v3 = *(a1 + 68);
  }

LABEL_18:
  if ((v3 & 8) != 0)
  {
    v13 = *(a1 + 56);
    if (!v13)
    {
      v13 = *(qword_1009F9F58 + 56);
    }

    v14 = sub_100160F98(v13, a2);
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
  }

LABEL_25:
  v17 = *(a1 + 32);
  v18 = (v17 + v4);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sub_10015F0A0(*(*(a1 + 24) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(a1 + 32));
  }

  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v18;
  }

  *(a1 + 64) = v18;
  return v18;
}

uint64_t sub_10015850C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001575F8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001585E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001585F8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_100166798();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10015DC3C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100158720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158738(uint64_t a1, uint64_t a2)
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
      *(a1 + 40) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9FB0 + 16);
      }

      sub_100157128(v5, v6);
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9FB0 + 24);
      }

      sub_10015F420(v7, v8);
      v4 = *(a2 + 40);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 32);
      if ((v9 - 1) >= 0xA)
      {
        sub_10049E4C0();
      }

      *(a1 + 40) |= 4u;
      *(a1 + 32) = v9;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_1001588DC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    sub_100077844((a1 + 32), *(a1 + 40) + v4);
    memcpy((*(a1 + 32) + 4 * *(a1 + 40)), *(a2 + 32), 4 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 148);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = *(a2 + 16);
    *(a1 + 148) |= 1u;
    *(a1 + 16) = v9;
    v5 = *(a2 + 148);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 24);
  *(a1 + 148) |= 2u;
  *(a1 + 24) = v10;
  v5 = *(a2 + 148);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 48);
  *(a1 + 148) |= 8u;
  *(a1 + 48) = v11;
  v5 = *(a2 + 148);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = *(a2 + 64);
    *(a1 + 148) |= 0x20u;
    *(a1 + 64) = v13;
    v5 = *(a2 + 148);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_27:
  v12 = *(a2 + 56);
  *(a1 + 148) |= 0x10u;
  *(a1 + 56) = v12;
  v5 = *(a2 + 148);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_29:
  v14 = *(a2 + 72);
  *(a1 + 148) |= 0x40u;
  *(a1 + 72) = v14;
  v5 = *(a2 + 148);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 80);
    *(a1 + 148) |= 0x80u;
    *(a1 + 80) = v6;
    v5 = *(a2 + 148);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v5 & 0x100) != 0)
  {
    v15 = *(a2 + 88);
    *(a1 + 148) |= 0x100u;
    *(a1 + 88) = v15;
    v5 = *(a2 + 148);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(a2 + 96);
  *(a1 + 148) |= 0x200u;
  *(a1 + 96) = v16;
  v5 = *(a2 + 148);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 104);
  *(a1 + 148) |= 0x400u;
  *(a1 + 104) = v17;
  v5 = *(a2 + 148);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 112);
  *(a1 + 148) |= 0x800u;
  *(a1 + 112) = v18;
  v5 = *(a2 + 148);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

LABEL_36:
    v20 = *(a2 + 128);
    *(a1 + 148) |= 0x2000u;
    *(a1 + 128) = v20;
    if ((*(a2 + 148) & 0x4000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_22;
  }

LABEL_35:
  v19 = *(a2 + 120);
  *(a1 + 148) |= 0x1000u;
  *(a1 + 120) = v19;
  v5 = *(a2 + 148);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  if ((v5 & 0x4000) != 0)
  {
LABEL_22:
    v7 = *(a2 + 136);
    *(a1 + 148) |= 0x4000u;
    *(a1 + 136) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100158B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158B84(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = v8;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 32);
  *(a1 + 40) |= 1u;
  *(a1 + 32) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 24);
    *(a1 + 40) |= 4u;
    *(a1 + 24) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100158C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158C7C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100158D10()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE3C0;
}

void sub_100158DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158DB8(uint64_t a1)
{
  *a1 = off_1009974A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100158E18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100158EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100158F10(uint64_t a1)
{
  *a1 = off_1009974A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100158F64(uint64_t a1)
{
  *a1 = off_1009974A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100159038(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015905C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100159218(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_1001592C8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 32);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}

uint64_t sub_1001593F0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100159464(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100158E18(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100159538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100159550(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1001595E4()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE3F0;
}

void sub_100159678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015968C(uint64_t a1)
{
  *a1 = off_100997558;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1001596EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001597CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001597E4(uint64_t a1)
{
  *a1 = off_100997558;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100159838(uint64_t a1)
{
  *a1 = off_100997558;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015990C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100159930(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100159AEC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_100159B9C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 32);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}

uint64_t sub_100159CC4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100159D38(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001596EC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100159E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100159E24(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100159EB8()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE400;
}