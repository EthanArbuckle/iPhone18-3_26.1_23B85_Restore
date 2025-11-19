uint64_t sub_100155D7C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001545F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100155E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100155E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100155E84(uint64_t result, uint64_t a2)
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

uint64_t sub_100155F18()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CEC8;
}

void sub_100155FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100155FBC(uint64_t a1)
{
  *a1 = off_10043E9B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100156010(uint64_t a1)
{
  *a1 = off_10043E9B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10015610C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          a1[4] = v20;
          a1[9] |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_22:
          a1[5] = v20;
          a1[9] |= 2u;
          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 24)
          {
            v14 = v13 + 1;
            *(this + 1) = v14;
            goto LABEL_30;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
LABEL_30:
      v20 = 0;
      if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v15 = v20;
        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      a1[6] = -(v15 & 1) ^ (v15 >> 1);
      a1[9] |= 4u;
      if (v16 < v10 && *v16 == 32)
      {
        v11 = v16 + 1;
        *(this + 1) = v16 + 1;
        v20 = 0;
        if ((v16 + 1) >= v10)
        {
          goto LABEL_40;
        }

LABEL_38:
        v18 = *v11;
        if ((v18 & 0x80000000) != 0)
        {
LABEL_40:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v18 = v20;
          v19 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_42;
        }

        v19 = v11 + 1;
        *(this + 1) = v19;
LABEL_42:
        a1[7] = -(v18 & 1) ^ (v18 >> 1);
        a1[9] |= 8u;
        if (v19 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_40;
      }

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

uint64_t sub_1001563B4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 36) & 8) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 28), a2, a4);
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

uint64_t sub_100156488(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[9];
  if (v3)
  {
    v8 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v3 = a1[9];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((a1[9] & 4) == 0)
  {
LABEL_4:
    if ((a1[9] & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v13 = a1[7];
    *a2 = 32;
    v14 = ((2 * v13) ^ (v13 >> 31));
    if (v14 > 0x7F)
    {
      v16 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, a2 + 1, a3);
      v4 = (v16 + 2);
      v5 = *(v16 + 1);
      if (!v5)
      {
        return a2;
      }
    }

    else
    {
      *(a2 + 1) = v14;
      a2 += 2;
      v15 = *(a1 + 1);
      v4 = (a1 + 2);
      v5 = v15;
      if (!v15)
      {
        return a2;
      }
    }

    goto LABEL_6;
  }

LABEL_12:
  v10 = a1[6];
  *a2 = 24;
  v11 = ((2 * v10) ^ (v10 >> 31));
  if (v11 > 0x7F)
  {
    v12 = a1;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    a1 = v12;
    if ((v12[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(a2 + 1) = v11;
    a2 += 2;
    if ((a1[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_6:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_100156600(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (!*(a1 + 36))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v10 = ((2 * *(a1 + 28)) ^ (*(a1 + 28) >> 31));
    if (v10 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1 + v5;
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = (v5 + 2);
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

  v9 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
  if (v9 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1 + v5;
    if ((*(a1 + 36) & 8) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_19:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v11;
  return v11;
}

uint64_t sub_100156714(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001547E8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001567F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100156808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015681C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001568B0()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CED8;
}

void sub_100156940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100156954(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
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

void sub_100156A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100156A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100156A64(uint64_t a1)
{
  *a1 = off_10043EA60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100156AB8(uint64_t a1)
{
  *a1 = off_10043EA60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100156BCC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = xmmword_1003D2650;
    *(a1 + 32) = 0xC05390D4FDF3B646;
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

uint64_t sub_100156C08(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100156DDC(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100156E94(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
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
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100156FC4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100157038(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100156954(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100157118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100157140(uint64_t result, uint64_t a2)
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

uint64_t sub_1001571D4()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CEE8;
}

void sub_100157264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100157278(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100157338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100157360(uint64_t a1)
{
  *a1 = off_10043EB10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001573B4(uint64_t a1)
{
  *a1 = off_10043EB10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001574B8(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0x42852A7F415A872BLL;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001574E0(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100157658(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1001576F4(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_10015778C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
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

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_1001577F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100157278(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001578D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001578E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001578FC(uint64_t result, uint64_t a2)
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

uint64_t sub_100157990()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CEF8;
}

void sub_100157A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100157A34(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100157AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100157B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100157B1C(uint64_t a1)
{
  *a1 = off_10043EBC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100157B70(uint64_t a1)
{
  *a1 = off_10043EBC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100157C74(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0x4120000040200000;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100157C9C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100157E14(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100157EB0(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100157F48(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
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

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_100157FB0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100157A34(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100158090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001580A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001580B8(uint64_t result, uint64_t a2)
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

uint64_t sub_10015814C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF08;
}

void sub_1001581DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001581F0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1001582B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001582C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001582D8(uint64_t a1)
{
  *a1 = off_10043EC70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015832C(uint64_t a1)
{
  *a1 = off_10043EC70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100158430(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0xC24800003FC00000;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100158458(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001585D0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_10015866C(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100158704(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
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

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_10015876C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001581F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100158860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158874(uint64_t result, uint64_t a2)
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

uint64_t sub_100158908()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF18;
}

void sub_100158998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001589AC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100158A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100158A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100158A94(uint64_t a1)
{
  *a1 = off_10043ED20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100158AE8(uint64_t a1)
{
  *a1 = off_10043ED20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100158BEC(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0xC3C800003DCCCCCDLL;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100158C14(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100158D8C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100158E28(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100158EC0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
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

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_100158F28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001589AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100159008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100159030(uint64_t result, uint64_t a2)
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

uint64_t sub_1001590C4()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF28;
}

void sub_100159154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100159168(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045E290 + 16);
    }

    sub_100157278(v5, v6);
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
      v8 = *(qword_10045E290 + 24);
    }

    sub_100157A34(v7, v8);
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
      v10 = *(qword_10045E290 + 32);
    }

    sub_1001581F0(v9, v10);
    v4 = *(a2 + 52);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 52) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045E290 + 40);
    }

    sub_1001589AC(v11, v12);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100159484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100159498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001594AC(void *a1)
{
  *a1 = off_10043EDD0;
  if (qword_10045E290 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001595C8(void *a1)
{
  sub_1001594AC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100159698(uint64_t a1)
{
  if (*(a1 + 52))
  {
    if (*(a1 + 52))
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        if (*(v1 + 28))
        {
          *(v1 + 16) = 0x42852A7F415A872BLL;
        }

        v3 = *(v1 + 8);
        v2 = (v1 + 8);
        *(v2 + 5) = 0;
        if (v3)
        {
          v4 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
          a1 = v4;
        }
      }
    }

    if ((*(a1 + 52) & 2) != 0)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 16) = 0x4120000040200000;
        }

        v7 = *(v5 + 8);
        v6 = (v5 + 8);
        *(v6 + 5) = 0;
        if (v7)
        {
          v8 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
          a1 = v8;
        }
      }
    }

    if ((*(a1 + 52) & 4) != 0)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        if (*(v9 + 28))
        {
          *(v9 + 16) = 0xC24800003FC00000;
        }

        v11 = *(v9 + 8);
        v10 = (v9 + 8);
        *(v10 + 5) = 0;
        if (v11)
        {
          v12 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
          a1 = v12;
        }
      }
    }

    if ((*(a1 + 52) & 8) != 0)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        if (*(v13 + 28))
        {
          *(v13 + 16) = 0xC3C800003DCCCCCDLL;
        }

        v15 = *(v13 + 8);
        v14 = (v13 + 8);
        *(v14 + 5) = 0;
        if (v15)
        {
          v16 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v14);
          a1 = v16;
        }
      }
    }
  }

  v18 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v18)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001597E0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            goto LABEL_26;
          }

          *(a1 + 52) |= 1u;
          v14 = *(a1 + 16);
          if (!v14)
          {
            operator new();
          }

          v51 = 0;
          v15 = *(this + 1);
          if (v15 >= *(this + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v15;
            *(this + 1) = v15 + 1;
          }

          v16 = *(this + 14);
          v17 = *(this + 15);
          *(this + 14) = v16 + 1;
          if (v16 >= v17)
          {
            return 0;
          }

          v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51);
          if (!sub_1001574E0(v14, this, v19, v20) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
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
            *(a1 + 52) |= 2u;
            v10 = *(a1 + 24);
            if (!v10)
            {
LABEL_38:
              operator new();
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_26;
          }

          *(a1 + 52) |= 2u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            goto LABEL_38;
          }

LABEL_11:
          v51 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v11;
            *(this + 1) = v11 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51);
          if (!sub_100157C9C(v10, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v22 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v22)
          {
            *(this + 14) = v31;
          }

          v32 = *(this + 1);
          if (v32 < *(this + 2) && *v32 == 26)
          {
            *(this + 1) = v32 + 1;
            goto LABEL_50;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_26;
      }

LABEL_50:
      *(a1 + 52) |= 4u;
      v33 = *(a1 + 32);
      if (!v33)
      {
        operator new();
      }

      v51 = 0;
      v34 = *(this + 1);
      if (v34 >= *(this + 2) || *v34 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
        {
          return 0;
        }
      }

      else
      {
        v51 = *v34;
        *(this + 1) = v34 + 1;
      }

      v35 = *(this + 14);
      v36 = *(this + 15);
      *(this + 14) = v35 + 1;
      if (v35 >= v36)
      {
        return 0;
      }

      v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51);
      if (!sub_100158458(v33, this, v38, v39) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
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
        *(a1 + 52) |= 8u;
        v12 = *(a1 + 40);
        if (!v12)
        {
LABEL_64:
          operator new();
        }

LABEL_17:
        v51 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v13;
          *(this + 1) = v13 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51);
        if (!sub_100158C14(v12, this, v46, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
        v48 = *(this + 14);
        v22 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v22)
        {
          *(this + 14) = v49;
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

    if (v8 == 4 && v9 == 2)
    {
      *(a1 + 52) |= 8u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        goto LABEL_64;
      }

      goto LABEL_17;
    }

LABEL_26:
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

uint64_t sub_100159DAC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 52);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045E290 + 16), a2, a4);
      v6 = *(v5 + 52);
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

LABEL_15:
    v12 = *(v5 + 32);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
      if ((*(v5 + 52) & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045E290 + 32), a2, a4);
      if ((*(v5 + 52) & 8) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v11 = *(v5 + 24);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045E290 + 24), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v13 = *(v5 + 40);
  if (v13)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
    v14 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v14;
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045E290 + 40), a2, a4);
    v15 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v15;
    if (!v15)
    {
      return result;
    }
  }

LABEL_23:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100159F20(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(this + 2);
  if (v5)
  {
    *a2 = 10;
    v6 = a2 + 1;
    v7 = v5[6];
    if (v7 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(qword_10045E290 + 16);
    *a2 = 10;
    v6 = a2 + 1;
    v7 = v5[6];
    if (v7 <= 0x7F)
    {
LABEL_4:
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
      v8 = v5[7];
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
  v8 = v5[7];
  if (v8)
  {
LABEL_8:
    v9 = v5[4];
    *v3 = 13;
    *(v3 + 1) = v9;
    v3 = (v3 + 5);
    v8 = v5[7];
  }

LABEL_9:
  if ((v8 & 2) != 0)
  {
    v13 = v5[5];
    *v3 = 21;
    *(v3 + 1) = v13;
    v3 = (v3 + 5);
    v14 = *(v5 + 1);
    v11 = (v5 + 2);
    v10 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v5 + 1);
    v11 = (v5 + 2);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if (*v10 != v10[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, v3, a3);
  }

LABEL_15:
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_29;
  }

  v15 = *(this + 3);
  if (v15)
  {
    *v3 = 18;
    v16 = v3 + 1;
    v17 = v15[6];
    if (v17 <= 0x7F)
    {
      goto LABEL_18;
    }

LABEL_21:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    v18 = v15[7];
    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = *(qword_10045E290 + 24);
  *v3 = 18;
  v16 = v3 + 1;
  v17 = v15[6];
  if (v17 > 0x7F)
  {
    goto LABEL_21;
  }

LABEL_18:
  *(v3 + 1) = v17;
  v3 = (v3 + 2);
  v18 = v15[7];
  if (v18)
  {
LABEL_22:
    v19 = v15[4];
    *v3 = 13;
    *(v3 + 1) = v19;
    v3 = (v3 + 5);
    v18 = v15[7];
  }

LABEL_23:
  if ((v18 & 2) != 0)
  {
    v23 = v15[5];
    *v3 = 21;
    *(v3 + 1) = v23;
    v3 = (v3 + 5);
    v24 = *(v15 + 1);
    v21 = (v15 + 2);
    v20 = v24;
    if (!v24)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v22 = *(v15 + 1);
    v21 = (v15 + 2);
    v20 = v22;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  if (*v20 != v20[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v3, a3);
  }

LABEL_29:
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_43;
  }

  v25 = *(this + 4);
  if (v25)
  {
    *v3 = 26;
    v26 = v3 + 1;
    v27 = v25[6];
    if (v27 <= 0x7F)
    {
      goto LABEL_32;
    }

LABEL_35:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
    v28 = v25[7];
    if ((v28 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v25 = *(qword_10045E290 + 32);
  *v3 = 26;
  v26 = v3 + 1;
  v27 = v25[6];
  if (v27 > 0x7F)
  {
    goto LABEL_35;
  }

LABEL_32:
  *(v3 + 1) = v27;
  v3 = (v3 + 2);
  v28 = v25[7];
  if (v28)
  {
LABEL_36:
    v29 = v25[4];
    *v3 = 13;
    *(v3 + 1) = v29;
    v3 = (v3 + 5);
    v28 = v25[7];
  }

LABEL_37:
  if ((v28 & 2) != 0)
  {
    v33 = v25[5];
    *v3 = 21;
    *(v3 + 1) = v33;
    v3 = (v3 + 5);
    v34 = *(v25 + 1);
    v31 = (v25 + 2);
    v30 = v34;
    if (!v34)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(v25 + 1);
    v31 = (v25 + 2);
    v30 = v32;
    if (!v32)
    {
      goto LABEL_43;
    }
  }

  if (*v30 != v30[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v3, a3);
  }

LABEL_43:
  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_57;
  }

  v35 = *(this + 5);
  if (v35)
  {
    *v3 = 34;
    v36 = v3 + 1;
    v37 = v35[6];
    if (v37 <= 0x7F)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v35 = *(qword_10045E290 + 40);
    *v3 = 34;
    v36 = v3 + 1;
    v37 = v35[6];
    if (v37 <= 0x7F)
    {
LABEL_46:
      *(v3 + 1) = v37;
      v3 = (v3 + 2);
      v38 = v35[7];
      if ((v38 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v36, a3);
  v38 = v35[7];
  if (v38)
  {
LABEL_50:
    v39 = v35[4];
    *v3 = 13;
    *(v3 + 1) = v39;
    v3 = (v3 + 5);
    v38 = v35[7];
  }

LABEL_51:
  if ((v38 & 2) != 0)
  {
    v43 = v35[5];
    *v3 = 21;
    *(v3 + 1) = v43;
    v3 = (v3 + 5);
    v44 = *(v35 + 1);
    v41 = (v35 + 2);
    v40 = v44;
    if (!v44)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = *(v35 + 1);
    v41 = (v35 + 2);
    v40 = v42;
    if (!v42)
    {
      goto LABEL_57;
    }
  }

  if (*v40 != v40[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v41, v3, a3);
  }

LABEL_57:
  v47 = *(this + 1);
  v46 = (this + 8);
  v45 = v47;
  if (!v47 || *v45 == v45[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v46, v3, a3);
}

uint64_t sub_10015A380(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

  if (*(a1 + 52))
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045E290 + 16);
    }

    v8 = *(v7 + 28);
    v9 = (v8 << 31 >> 31) & 5;
    if ((v8 & 2) != 0)
    {
      v9 += 5;
    }

    if (*(v7 + 28))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v7 + 8);
    if (!v11 || *v11 == v11[1])
    {
      *(v7 + 24) = v10;
      v4 = (v10 + 2);
      v3 = *(a1 + 52);
      if ((v3 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v7 + 8), a2) + v10);
      *(v7 + 24) = v12;
      if (v12 >= 0x80)
      {
        v4 = v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4 = (v12 + 2);
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_10045E290 + 24);
  }

  v14 = *(v13 + 28);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 28))
  {
    LODWORD(v16) = v15;
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v17 = *(v13 + 8);
  if (!v17 || *v17 == v17[1])
  {
    *(v13 + 24) = v16;
    v18 = 1;
  }

  else
  {
    v16 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v13 + 8), a2) + v16);
    *(v13 + 24) = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }
  }

  v4 = (v4 + v16 + v18 + 1);
  v3 = *(a1 + 52);
LABEL_36:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_38;
    }

LABEL_55:
    v26 = *(a1 + 40);
    if (!v26)
    {
      v26 = *(qword_10045E290 + 40);
    }

    v27 = *(v26 + 28);
    v28 = (v27 << 31 >> 31) & 5;
    if ((v27 & 2) != 0)
    {
      v28 += 5;
    }

    if (*(v26 + 28))
    {
      LODWORD(v29) = v28;
    }

    else
    {
      LODWORD(v29) = 0;
    }

    v30 = *(v26 + 8);
    if (!v30 || *v30 == v30[1])
    {
      *(v26 + 24) = v29;
      v31 = 1;
    }

    else
    {
      v29 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v26 + 8), a2) + v29);
      *(v26 + 24) = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }
    }

    v4 = (v4 + v29 + v31 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    v20 = *(qword_10045E290 + 32);
  }

  v21 = *(v20 + 28);
  v22 = (v21 << 31 >> 31) & 5;
  if ((v21 & 2) != 0)
  {
    v22 += 5;
  }

  if (*(v20 + 28))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v20 + 8);
  if (!v24 || *v24 == v24[1])
  {
    *(v20 + 24) = v23;
    v4 = (v4 + v23 + 2);
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v25 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v20 + 8), a2) + v23);
    *(v20 + 24) = v25;
    if (v25 >= 0x80)
    {
      v4 = v4 + v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v4 = (v4 + v25 + 2);
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_38:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_39:
    *(a1 + 48) = v4;
    return v4;
  }

LABEL_69:
  if (*v6 == v6[1])
  {
    goto LABEL_39;
  }

  v32 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 48) = v32;
  return v32;
}

uint64_t sub_10015A6B0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100159168(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015A790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015A7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015A7B8(uint64_t result, uint64_t a2)
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

uint64_t sub_10015A84C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF38;
}

void sub_10015A8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015A8F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      *(a1 + 52) |= 4u;
      v7 = *(a1 + 32);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 32);
      if (v8)
      {
        sub_100156954(v7, v8);
        if ((*(a2 + 52) & 8) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      else
      {
        sub_100156954(v7, *(qword_10045E298 + 32));
        if ((*(a2 + 52) & 8) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_18:
  *(a1 + 52) |= 8u;
  v9 = *(a1 + 40);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 40);
  if (!v10)
  {
    v10 = *(qword_10045E298 + 40);
  }

  sub_100159168(v9, v10);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015AB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015AB5C(void *a1)
{
  *a1 = off_10043EE80;
  if (qword_10045E298 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015AC1C(void *a1)
{
  *a1 = off_10043EE80;
  if (qword_10045E298 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015AD90(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    *(a1 + 16) = xmmword_1003D2660;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        if (*(v2 + 44))
        {
          *(v2 + 16) = xmmword_1003D2650;
          *(v2 + 32) = 0xC05390D4FDF3B646;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 9) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    if ((*(a1 + 52) & 8) != 0 && *(a1 + 40))
    {
      v6 = a1;
      sub_100159698(*(a1 + 40));
      a1 = v6;
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015AE58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_28;
        }

        *v34 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v34;
        *(a1 + 52) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 1)
        {
          goto LABEL_28;
        }

        *v34 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
        {
          return 0;
        }

LABEL_23:
        *(a1 + 24) = *v34;
        v13 = *(a1 + 52) | 2;
        *(a1 + 52) = v13;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
          *(a1 + 52) = v13 | 4;
          v15 = *(a1 + 32);
          if (!v15)
          {
            goto LABEL_32;
          }

LABEL_33:
          v34[0] = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34))
            {
              return 0;
            }
          }

          else
          {
            v34[0] = *v16;
            *(this + 1) = v16 + 1;
          }

          v17 = *(this + 14);
          v18 = *(this + 15);
          *(this + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34[0]);
          if (!sub_100156C08(v15, this, v20, v21) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
          v22 = *(this + 14);
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v24 < 0 == v23)
          {
            *(this + 14) = v24;
          }

          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 34)
          {
            *(this + 1) = v25 + 1;
            *(a1 + 52) |= 8u;
            v10 = *(a1 + 40);
            if (!v10)
            {
LABEL_45:
              operator new();
            }

LABEL_16:
            v34[0] = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34))
              {
                return 0;
              }
            }

            else
            {
              v34[0] = *v11;
              *(this + 1) = v11 + 1;
            }

            v26 = *(this + 14);
            v27 = *(this + 15);
            *(this + 14) = v26 + 1;
            if (v26 >= v27)
            {
              return 0;
            }

            v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34[0]);
            if (!sub_1001597E0(v10, this, v29, v30) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
            v31 = *(this + 14);
            v23 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v23)
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
    }

    if (v8 == 3)
    {
      if (v9 == 2)
      {
        *(a1 + 52) |= 4u;
        v15 = *(a1 + 32);
        if (!v15)
        {
LABEL_32:
          operator new();
        }

        goto LABEL_33;
      }
    }

    else if (v8 == 4 && v9 == 2)
    {
      *(a1 + 52) |= 8u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        goto LABEL_45;
      }

      goto LABEL_16;
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

uint64_t sub_10015B2CC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_9:
      v10 = *(v5 + 32);
      if (v10)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
        if ((*(v5 + 52) & 8) != 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045E298 + 32), a2, a4);
        if ((*(v5 + 52) & 8) != 0)
        {
          goto LABEL_13;
        }
      }

LABEL_5:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(v5 + 40);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v11, a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045E298 + 40), a2, a4);
    v13 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v13;
    if (!v13)
    {
      return result;
    }
  }

LABEL_17:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015B3F0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 13);
  if (v5)
  {
    v9 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v9;
    v3 = (a2 + 9);
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11 = *(this + 4);
      if (v11)
      {
        *v3 = 26;
        v12 = v3 + 1;
        v13 = *(v11 + 40);
        if (v13 <= 0x7F)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = *(qword_10045E298 + 32);
        *v3 = 26;
        v12 = v3 + 1;
        v13 = *(v11 + 40);
        if (v13 <= 0x7F)
        {
LABEL_11:
          *(v3 + 1) = v13;
          v3 = sub_100156E94(v11, v3 + 2, a3);
          if ((*(this + 13) & 8) != 0)
          {
            goto LABEL_15;
          }

LABEL_5:
          v8 = *(this + 1);
          v7 = (this + 8);
          v6 = v8;
          if (!v8)
          {
            return v3;
          }

          goto LABEL_21;
        }
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
      v3 = sub_100156E94(v11, v14, v15);
      if ((*(this + 13) & 8) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v10;
  v3 = (v3 + 9);
  v5 = *(this + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v16 = *(this + 5);
  if (v16)
  {
    *v3 = 34;
    v17 = v3 + 1;
    v18 = v16[12];
    if (v18 <= 0x7F)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *(qword_10045E298 + 40);
    *v3 = 34;
    v17 = v3 + 1;
    v18 = v16[12];
    if (v18 <= 0x7F)
    {
LABEL_17:
      *(v3 + 1) = v18;
      v3 = sub_100159F20(v16, (v3 + 2), a3);
      v19 = *(this + 1);
      v7 = (this + 8);
      v6 = v19;
      if (!v19)
      {
        return v3;
      }

      goto LABEL_21;
    }
  }

  v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, a3);
  v3 = sub_100159F20(v16, v20, v21);
  v22 = *(this + 1);
  v7 = (this + 8);
  v6 = v22;
  if (!v22)
  {
    return v3;
  }

LABEL_21:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_10015B610(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (!*(a1 + 52))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = sub_10015A380(v15, a2);
      if (v16 < 0x80)
      {
LABEL_30:
        v17 = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v16 = sub_10015A380(*(qword_10045E298 + 40), a2);
      if (v16 < 0x80)
      {
        goto LABEL_30;
      }
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
LABEL_33:
    v5 = (v5 + v16 + v17 + 1);
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    v9 = *(qword_10045E298 + 32);
  }

  v10 = *(v9 + 44);
  v11 = (v10 << 31 >> 31) & 9;
  if ((v10 & 2) != 0)
  {
    v11 += 9;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 9;
  }

  if (*(v9 + 44))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v9 + 8);
  if (!v13 || *v13 == v13[1])
  {
    *(v9 + 40) = v12;
    v5 = (v5 + v12 + 1 + 1);
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 8), a2) + v12);
    *(v9 + 40) = v14;
    if (v14 >= 0x80)
    {
      v5 = v5 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v5 = (v5 + v14 + 1 + 1);
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 48) = v5;
    return v5;
  }

LABEL_34:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 48) = v18;
  return v18;
}

uint64_t sub_10015B7D8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015A8F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015B8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B8E0(uint64_t result, uint64_t a2)
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

uint64_t sub_10015B974()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF48;
}

void sub_10015BA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015BA18(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 40))
  {
    v7 = *(a2 + 16);
    a1[10] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 40);
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

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[10] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 28);
    a1[10] |= 8u;
    a1[7] = v10;
    if ((*(a2 + 40) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 24);
  a1[10] |= 4u;
  a1[6] = v9;
  v4 = *(a2 + 40);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 32);
    a1[10] |= 0x10u;
    a1[8] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10015BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015BB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015BB68(uint64_t a1)
{
  *a1 = off_10043EF30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015BBBC(uint64_t a1)
{
  *a1 = off_10043EF30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015BCC8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 10;
    *(a1 + 20) = xmmword_1003D2670;
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

uint64_t sub_10015BCF8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 5)
          {
            goto LABEL_25;
          }

          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v15 = *(this + 2);
          a1[10] |= 1u;
          if (v13 < v15)
          {
            goto LABEL_34;
          }
        }

        else
        {
          a1[4] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
          a1[10] |= 1u;
          if (v13 < v10)
          {
LABEL_34:
            if (*v13 == 21)
            {
              *(this + 1) = v13 + 1;
              v19 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
              {
                return 0;
              }

LABEL_36:
              a1[5] = v19;
              a1[10] |= 2u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 29)
              {
                *(this + 1) = v16 + 1;
                v19 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
                {
                  return 0;
                }

LABEL_39:
                a1[6] = v19;
                a1[10] |= 4u;
                v17 = *(this + 1);
                if (v17 < *(this + 2) && *v17 == 37)
                {
                  *(this + 1) = v17 + 1;
                  v19 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_42;
                }
              }
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 5)
        {
          goto LABEL_25;
        }

        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_25;
      }

      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      a1[7] = v19;
      a1[10] |= 8u;
      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 45)
      {
        *(this + 1) = v18 + 1;
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

LABEL_45:
        a1[8] = v19;
        a1[10] |= 0x10u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && v9 == 5)
    {
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_45;
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

uint64_t sub_10015C004(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  if ((*(v5 + 40) & 0x10) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
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

uint64_t sub_10015C0F4(unsigned int *a1, _BYTE *a2, unsigned __int8 *a3)
{
  if (a1[10])
  {
    v7 = a1[4];
    *a2 = 8;
    if (v7 > 0x7F)
    {
      v8 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      a1 = v8;
      v3 = v8[10];
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      v3 = a1[10];
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v3 = a1[10];
  if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v9 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = a1[10];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = a1[6];
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v3 = a1[10];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = a1[7];
  *a2 = 37;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((a1[10] & 0x10) == 0)
  {
LABEL_6:
    v6 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = a1[8];
  *a2 = 45;
  *(a2 + 1) = v12;
  a2 += 5;
  v13 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_16:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_10015C280(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v9 = *(a1 + 16);
      if (v9 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
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
      v4 += 5;
    }

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
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 36) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 36) = v10;
  return v10;
}

uint64_t sub_10015C350(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015BA18(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015C444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C458(uint64_t result, uint64_t a2)
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

uint64_t sub_10015C4EC()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF58;
}

void sub_10015C57C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C590(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v7 = *(a2 + 40);
      *(a1 + 48) |= 4u;
      *(a1 + 40) = v7;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_13:
  *(a1 + 48) |= 8u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 32);
  if (!v9)
  {
    v9 = *(qword_10045E2A8 + 32);
  }

  sub_10015BA18(v8, v9);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015C744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015C758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015C76C(void *a1)
{
  *a1 = off_10043EFE0;
  if (qword_10045E2A8 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015C800(void *a1)
{
  *a1 = off_10043EFE0;
  if (qword_10045E2A8 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015C94C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 16) = xmmword_1003D2680;
    *(a1 + 40) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 16) = 10;
          *(v3 + 20) = xmmword_1003D2670;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 8) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
          v1 = vars8;
        }
      }
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015C9E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v8 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v13 = *(this + 2);
              goto LABEL_31;
            }
          }

          else if (v8 == 4 && v9 == 2)
          {
            *(a1 + 48) |= 8u;
            v10 = *(a1 + 32);
            if (!v10)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          }

LABEL_27:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_27;
        }

        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v27;
        *(a1 + 48) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_23;
        }
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_27;
      }

      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      *(a1 + 24) = *v27;
      *(a1 + 48) |= 2u;
      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(this + 1) = v15;
LABEL_31:
        v27[0] = 0;
        if (v15 >= v13 || (v16 = *v15, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27);
          if (!result)
          {
            return result;
          }

          v16 = v27[0];
          if (v27[0] > 1)
          {
LABEL_37:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v16);
            goto LABEL_38;
          }
        }

        else
        {
          *(this + 1) = v15 + 1;
          if (v16 > 1)
          {
            goto LABEL_37;
          }
        }

        *(a1 + 48) |= 4u;
        *(a1 + 40) = v16;
LABEL_38:
        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 34)
        {
          break;
        }
      }
    }

    *(this + 1) = v18 + 1;
    *(a1 + 48) |= 8u;
    v10 = *(a1 + 32);
    if (!v10)
    {
LABEL_41:
      operator new();
    }

LABEL_16:
    v27[0] = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v11;
      *(this + 1) = v11 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
    if (!sub_10015BCF8(v10, this, v22, v23) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v24 = *(this + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(this + 14) = v26;
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

uint64_t sub_10015CDB0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 40), a2, a4);
  if ((*(v5 + 48) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_10:
  v10 = *(v5 + 32);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
    v11 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045E2A8 + 32), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015CEAC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 12);
  if (v5)
  {
    v9 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v9;
    v3 = (a2 + 9);
    v5 = *(this + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11 = *(this + 10);
      *v3 = 24;
      v12 = v3 + 1;
      if ((v11 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

      else if (v11 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(v3 + 1) = v11;
        v3 = (v3 + 2);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      v8 = *(this + 1);
      v7 = (this + 8);
      v6 = v8;
      if (!v8)
      {
        return v3;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v10;
  v3 = (v3 + 9);
  if ((*(this + 12) & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  v13 = *(this + 4);
  if (v13)
  {
    *v3 = 34;
    v14 = v3 + 1;
    v15 = v13[9];
    if (v15 <= 0x7F)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = *(qword_10045E2A8 + 32);
    *v3 = 34;
    v14 = v3 + 1;
    v15 = v13[9];
    if (v15 <= 0x7F)
    {
LABEL_18:
      *(v3 + 1) = v15;
      v3 = sub_10015C0F4(v13, v3 + 2, a3);
      v16 = *(this + 1);
      v7 = (this + 8);
      v6 = v16;
      if (!v16)
      {
        return v3;
      }

      goto LABEL_22;
    }
  }

  v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, a3);
  v3 = sub_10015C0F4(v13, v17, v18);
  v19 = *(this + 1);
  v7 = (this + 8);
  v6 = v19;
  if (!v19)
  {
    return v3;
  }

LABEL_22:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_10015D0A4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (!*(a1 + 48))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    v10 = *(a1 + 32);
    if (v10)
    {
      LOBYTE(v11) = *(v10 + 40);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = *(qword_10045E2A8 + 32);
      LOBYTE(v11) = *(v10 + 40);
      if (v11)
      {
LABEL_20:
        if (v11)
        {
          v16 = *(v10 + 16);
          if (v16 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
            v11 = *(v10 + 40);
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          v12 = 0;
        }

        if ((v11 & 2) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 4) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 8) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 0x10) != 0)
        {
          v13 = (v12 + 5);
        }

        else
        {
          v13 = v12;
        }

        v14 = (v10 + 8);
        v15 = *(v10 + 8);
        if (!v15)
        {
LABEL_40:
          *(v10 + 36) = v13;
          if (v13 >= 0x80)
          {
            v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
          }

          else
          {
            v17 = 1;
          }

          v5 = (v5 + v13 + v17 + 1);
          v6 = (a1 + 8);
          v7 = *(a1 + 8);
          if (!v7)
          {
            goto LABEL_8;
          }

          goto LABEL_44;
        }

LABEL_38:
        if (*v15 != v15[1])
        {
          v13 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v13);
        }

        goto LABEL_40;
      }
    }

    v13 = 0;
    v14 = (v10 + 8);
    v15 = *(v10 + 8);
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v9 = *(a1 + 40);
  if ((v9 & 0x80000000) != 0)
  {
    v5 = (v5 + 11);
    if ((v3 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (v9 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1 + v5;
    if ((*(a1 + 48) & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 44) = v5;
    return v5;
  }

LABEL_44:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v18;
  return v18;
}

uint64_t sub_10015D274(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015C590(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015D354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015D368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015D37C(uint64_t result, uint64_t a2)
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

uint64_t sub_10015D410()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF68;
}

void sub_10015D4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015D4B4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = a1[7];
        v11 = a1[6];
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 2);
        a1[6] = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == a1[8])
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v10 + 1);
        v10 = a1[7];
      }

      a1[7] = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 2);
      v8 = a1[6];
      a1[6] = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  v13 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), *(a2 + 48) + a1[12]);
  if (*(a2 + 48) >= 1)
  {
    v14 = 0;
    do
    {
      while (1)
      {
        v18 = *(*(a2 + 40) + 8 * v14);
        v19 = a1[13];
        v20 = a1[12];
        if (v20 >= v19)
        {
          break;
        }

        v21 = *(a1 + 5);
        a1[12] = v20 + 1;
        v13 = std::string::operator=(*(v21 + 8 * v20), v18);
        if (++v14 >= *(a2 + 48))
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
        }
      }

      if (v19 == a1[14])
      {
        v13 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), v19 + 1);
        v19 = a1[13];
      }

      a1[13] = v19 + 1;
      v15 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v13);
      v16 = *(a1 + 5);
      v17 = a1[12];
      a1[12] = v17 + 1;
      *(v16 + 8 * v17) = v15;
      v13 = std::string::operator=(v15, v18);
      ++v14;
    }

    while (v14 < *(a2 + 48));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10015D6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015D6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015D6E8(uint64_t a1)
{
  *a1 = off_10043F090;
  if (*(a1 + 52) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 40) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 52));
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 16) + 8 * v4);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v4;
    }

    while (v4 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015D7DC(uint64_t a1)
{
  sub_10015D6E8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015D8BC(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  *(a1 + 24) = 0;
  if (*(a1 + 48) >= 1)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(*(a1 + 40) + 8 * v3);
        if (*(v4 + 23) < 0)
        {
          break;
        }

        *v4 = 0;
        *(v4 + 23) = 0;
        if (++v3 >= *(a1 + 48))
        {
          goto LABEL_11;
        }
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
    }

    while (v3 < *(a1 + 48));
  }

LABEL_11:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  *(result + 15) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015D988(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1 && v8 == 2)
      {
        while (1)
        {
          v9 = v5[7];
          v10 = v5[6];
          if (v10 >= v9)
          {
            if (v9 == v5[8])
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 4), v9 + 1);
              v9 = v5[7];
            }

            v5[7] = v9 + 1;
            v13 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v14 = *(v5 + 2);
            v15 = v5[6];
            v5[6] = v15 + 1;
            *(v14 + 8 * v15) = v13;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v11 = *(v5 + 2);
            v5[6] = v10 + 1;
            v12 = *(v11 + 8 * v10);
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          v16 = *(this + 1);
          if (v16 >= *(this + 2))
          {
            break;
          }

          v17 = *v16;
          if (v17 != 10)
          {
            if (v17 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_34;
          }

          *(this + 1) = v16 + 1;
        }
      }

      else
      {
LABEL_23:
        if (v8 == 4)
        {
          return 1;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v18 = v5[13];
      v19 = v5[12];
      if (v19 >= v18)
      {
        if (v18 == v5[14])
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 10), v18 + 1);
          v18 = v5[13];
        }

        v5[13] = v18 + 1;
        v22 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v23 = *(v5 + 5);
        v24 = v5[12];
        v5[12] = v24 + 1;
        *(v23 + 8 * v24) = v22;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v20 = *(v5 + 5);
        v5[12] = v19 + 1;
        v21 = *(v20 + 8 * v19);
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      v16 = *(this + 1);
      v25 = *(this + 2);
      if (v16 >= v25 || *v16 != 18)
      {
        break;
      }

LABEL_34:
      *(this + 1) = v16 + 1;
    }
  }

  while (v16 != v25 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_10015DBC4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v4 + 16) + 8 * v5);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v5;
    }

    while (v5 < *(v4 + 24));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v4 + 40) + 8 * v7);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v4 + 48));
  }

  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015DC94(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          *(result + 1) = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if (*(a1 + 48) >= 1)
  {
    for (i = 0; i < *(a1 + 48); ++i)
    {
      v18 = *(*(a1 + 40) + 8 * i);
      *result = 18;
      v19 = *(v18 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v18 + 8);
        if (v19 > 0x7F)
        {
LABEL_31:
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, result + 1, a3);
          goto LABEL_20;
        }
      }

      else if (v19 > 0x7F)
      {
        goto LABEL_31;
      }

      *(result + 1) = v19;
      v14 = result + 2;
LABEL_20:
      v15 = *(v18 + 23);
      if (v15 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = *v18;
      }

      if (v15 >= 0)
      {
        v17 = *(v18 + 23);
      }

      else
      {
        v17 = *(v18 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
    }
  }

  v22 = *(a1 + 8);
  v21 = (a1 + 8);
  v20 = v22;
  if (v22 && *v20 != v20[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, result, a3);
  }

  return result;
}

uint64_t sub_10015DE20(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v10 = *(*(a1 + 16) + 8 * v4);
      v7 = *(v10 + 23);
      v9 = v7;
      v8 = *(v10 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v7 = *(v10 + 23);
        v8 = *(v10 + 8);
        v3 = *(a1 + 24);
        v9 = *(v10 + 23);
      }

      else
      {
        v6 = 1;
      }

      if (v9 < 0)
      {
        v7 = v8;
      }

      v5 += v6 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 48);
  v13 = (v12 + v5);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v17 = *(*(a1 + 40) + 8 * i);
      v16 = *(v17 + 23);
      v18 = v16;
      v19 = *(v17 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = v19;
      }

      if (v20 < 0x80)
      {
        v15 = 1;
      }

      else
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
        v16 = *(v17 + 23);
        v19 = *(v17 + 8);
        v12 = *(a1 + 48);
        v18 = *(v17 + 23);
      }

      if (v18 < 0)
      {
        v16 = v19;
      }

      v13 = (v15 + v13 + v16);
    }
  }

  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 64) = v13;
  return v13;
}

uint64_t sub_10015DF64(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015D4B4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015E044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015E06C(uint64_t result, uint64_t a2)
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

uint64_t sub_10015E100()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF78;
}

void sub_10015E190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015E1A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045E2B8 + 16);
    }

    sub_10015D4B4(v5, v6);
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v10;
    if ((*(a2 + 44) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 44) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 36);
    *(a1 + 44) |= 8u;
    *(a1 + 36) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015E36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015E380(void *a1)
{
  *a1 = off_10043F140;
  if (qword_10045E2B8 != a1)
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

void sub_10015E414(void *a1)
{
  *a1 = off_10043F140;
  if (qword_10045E2B8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015E568(uint64_t a1)
{
  if (*(a1 + 44))
  {
    if (*(a1 + 44))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 24) >= 1)
        {
          v3 = 0;
          do
          {
            while (1)
            {
              v4 = *(*(v2 + 16) + 8 * v3);
              if (*(v4 + 23) < 0)
              {
                break;
              }

              *v4 = 0;
              *(v4 + 23) = 0;
              if (++v3 >= *(v2 + 24))
              {
                goto LABEL_9;
              }
            }

            **v4 = 0;
            *(v4 + 8) = 0;
            ++v3;
          }

          while (v3 < *(v2 + 24));
        }

LABEL_9:
        *(v2 + 24) = 0;
        if (*(v2 + 48) >= 1)
        {
          v5 = 0;
          do
          {
            while (1)
            {
              v6 = *(*(v2 + 40) + 8 * v5);
              if (*(v6 + 23) < 0)
              {
                break;
              }

              *v6 = 0;
              *(v6 + 23) = 0;
              if (++v5 >= *(v2 + 48))
              {
                goto LABEL_14;
              }
            }

            **v6 = 0;
            *(v6 + 8) = 0;
            ++v5;
          }

          while (v5 < *(v2 + 48));
        }

LABEL_14:
        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        *(v7 + 10) = 0;
        *(v7 + 15) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }

        v1 = vars8;
      }
    }

    *(a1 + 24) = 0x4049000000000000;
    *(a1 + 32) = 1;
    *(a1 + 36) = 307200;
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015E6A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v10 = *(this + 2);
            v32[0] = 0;
            if (v14 >= v10)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

LABEL_24:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v8 != 4 || (TagFallback & 7) != 0)
          {
            goto LABEL_24;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_51;
          }

LABEL_48:
          v28 = *v11;
          if (v28 < 0)
          {
            goto LABEL_51;
          }

          *(a1 + 36) = v28;
          v29 = v11 + 1;
          *(this + 1) = v29;
          *(a1 + 44) |= 8u;
          if (v29 == v10)
          {
LABEL_53:
            if (*(this + 11) || *(this + 6) == *(this + 10))
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
        break;
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_24;
      }

      *v32 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 24) = *v32;
      *(a1 + 44) |= 2u;
      v24 = *(this + 1);
      v10 = *(this + 2);
      if (v24 < v10 && *v24 == 24)
      {
        v14 = v24 + 1;
        *(this + 1) = v14;
        v32[0] = 0;
        if (v14 >= v10)
        {
          goto LABEL_43;
        }

LABEL_41:
        v25 = *v14;
        if ((v25 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32);
          if (!result)
          {
            return result;
          }

          v25 = v32[0];
          v26 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_45;
        }

        v26 = v14 + 1;
        *(this + 1) = v26;
LABEL_45:
        *(a1 + 32) = v25 != 0;
        *(a1 + 44) |= 4u;
        if (v26 < v10 && *v26 == 32)
        {
          v11 = v26 + 1;
          *(this + 1) = v11;
          if (v11 < v10)
          {
            goto LABEL_48;
          }

LABEL_51:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v30 = *(this + 2);
          *(a1 + 44) |= 8u;
          if (v31 == v30)
          {
            goto LABEL_53;
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 44) |= 1u;
    v12 = *(a1 + 16);
    if (!v12)
    {
      operator new();
    }

    v32[0] = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
      {
        return 0;
      }
    }

    else
    {
      v32[0] = *v13;
      *(this + 1) = v13 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32[0]);
    if (!sub_10015D988(v12, this, v18, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
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
      *v32 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }
  }
}

uint64_t sub_10015EA70(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045E2B8 + 16), a2, a4);
      v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 32), a2, a4);
  if ((*(v5 + 44) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015EB6C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 11);
  if (v5)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = a2 + 1;
      v12 = *(v10 + 64);
      if (v12 <= 0x7F)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(qword_10045E2B8 + 16);
      *a2 = 10;
      v11 = a2 + 1;
      v12 = *(v10 + 64);
      if (v12 <= 0x7F)
      {
LABEL_12:
        *(a2 + 1) = v12;
        a2 = sub_10015DC94(v10, (a2 + 2), a3, a4);
        v5 = *(this + 11);
        if ((v5 & 2) != 0)
        {
          goto LABEL_16;
        }

LABEL_3:
        if ((v5 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    a2 = sub_10015DC94(v10, v13, v14, v15);
    v5 = *(this + 11);
    if ((v5 & 2) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v16 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v16;
  a2 = (a2 + 9);
  v5 = *(this + 11);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v18 = *(this + 9);
    *a2 = 32;
    if (v18 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, a2 + 1, a3);
      v20 = *(this + 1);
      v7 = (this + 8);
      v6 = v20;
      if (!v20)
      {
        return a2;
      }
    }

    else
    {
      *(a2 + 1) = v18;
      a2 = (a2 + 2);
      v19 = *(this + 1);
      v7 = (this + 8);
      v6 = v19;
      if (!v19)
      {
        return a2;
      }
    }

    goto LABEL_6;
  }

LABEL_17:
  v17 = *(this + 32);
  *a2 = 24;
  *(a2 + 1) = v17;
  a2 = (a2 + 2);
  if ((*(this + 11) & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8)
  {
    return a2;
  }

LABEL_6:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}

uint64_t sub_10015ED0C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_18;
  }

  if (v3)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = sub_10015DE20(v6, a2);
      if (v7 < 0x80)
      {
LABEL_7:
        v8 = 1;
LABEL_10:
        v4 = v7 + v8 + 1;
        v3 = *(a1 + 44);
        goto LABEL_11;
      }
    }

    else
    {
      v7 = sub_10015DE20(*(qword_10045E2B8 + 16), a2);
      if (v7 < 0x80)
      {
        goto LABEL_7;
      }
    }

    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  v5 = v4 + ((v3 >> 1) & 2);
  if ((v3 & 8) != 0)
  {
    v9 = *(a1 + 36);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v5 = (v10 + v5);
  }

LABEL_18:
  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_10015EE00(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015E1A4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015EEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015EF08(uint64_t result, uint64_t a2)
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

uint64_t sub_10015EF9C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF88;
}

void sub_10015F02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F040(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  if (*(a2 + 48))
  {
    v13 = *(a2 + 40);
    *(a1 + 48) |= 1u;
    *(a1 + 40) = v13;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015F1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015F1CC(uint64_t a1)
{
  *a1 = off_10043F1F0;
  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 16) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015F270(uint64_t a1)
{
  *a1 = off_10043F1F0;
  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 16) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015F3C8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 40) = 1;
  }

  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_8;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_8:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015F448(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_22;
      }

LABEL_14:
      if (v8 == 4)
      {
        return 1;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 >> 3 != 1 || (v7 & 7) != 0)
    {
      goto LABEL_14;
    }

    v21 = 0;
    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
      if (!result)
      {
        return result;
      }

      v11 = v21;
      v12 = *(this + 1);
      v10 = *(this + 2);
    }

    else
    {
      v12 = v9 + 1;
      *(this + 1) = v12;
    }

    *(v5 + 40) = v11 != 0;
    *(v5 + 48) |= 1u;
    if (v12 < v10 && *v12 == 18)
    {
      do
      {
        *(this + 1) = v12 + 1;
LABEL_22:
        v13 = *(v5 + 28);
        v14 = *(v5 + 24);
        if (v14 >= v13)
        {
          if (v13 == *(v5 + 32))
          {
            result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v13 + 1);
            v13 = *(v5 + 28);
          }

          *(v5 + 28) = v13 + 1;
          v17 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
          v18 = *(v5 + 16);
          v19 = *(v5 + 24);
          *(v5 + 24) = v19 + 1;
          *(v18 + 8 * v19) = v17;
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v15 = *(v5 + 16);
          *(v5 + 24) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }
        }

        v12 = *(this + 1);
        v20 = *(this + 2);
      }

      while (v12 < v20 && *v12 == 18);
      if (v12 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_10015F650(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 48))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015F704(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 48) & 1) == 0)
  {
    result = a2;
    if (*(this + 6) < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v6 = *(this + 40);
  *a2 = 8;
  *(a2 + 1) = v6;
  result = (a2 + 2);
  if (*(this + 6) >= 1)
  {
LABEL_5:
    for (i = 0; i < *(this + 6); ++i)
    {
      v12 = *(*(this + 2) + 8 * i);
      *result = 18;
      v13 = *(v12 + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v13 = *(v12 + 8);
        if (v13 > 0x7F)
        {
LABEL_18:
          v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, result + 1, a3);
          goto LABEL_7;
        }
      }

      else if (v13 > 0x7F)
      {
        goto LABEL_18;
      }

      *(result + 1) = v13;
      v8 = result + 2;
LABEL_7:
      v9 = *(v12 + 23);
      if (v9 >= 0)
      {
        v10 = v12;
      }

      else
      {
        v10 = *v12;
      }

      if (v9 >= 0)
      {
        v11 = *(v12 + 23);
      }

      else
      {
        v11 = *(v12 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v10, v11, v8, a4);
    }
  }

LABEL_19:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (v16 && *v14 != v14[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, result, a3);
  }

  return result;
}

uint64_t sub_10015F828(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = 2 * (*(a1 + 48) & 1);
  if (!*(a1 + 48))
  {
    v3 = 0;
  }

  v4 = *(a1 + 24);
  v5 = (v3 + v4);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v9 = *(*(a1 + 16) + 8 * i);
      v8 = *(v9 + 23);
      v10 = v8;
      v11 = *(v9 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = v11;
      }

      if (v12 < 0x80)
      {
        v7 = 1;
      }

      else
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
        v8 = *(v9 + 23);
        v11 = *(v9 + 8);
        v4 = *(a1 + 24);
        v10 = *(v9 + 23);
      }

      if (v10 < 0)
      {
        v8 = v11;
      }

      v5 = (v7 + v5 + v8);
    }
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 44) = v5;
  return v5;
}

uint64_t sub_10015F900(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015F040(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015FA08(uint64_t result, uint64_t a2)
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

uint64_t sub_10015FA9C()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CF98;
}

void sub_10015FB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015FB40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
    v4 = *(a2 + 92);
    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = *(a2 + 92);
    if (!v4)
    {
      goto LABEL_30;
    }
  }

  if (v4)
  {
    *(a1 + 92) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045E2C8 + 16);
    }

    sub_10015A8F0(v5, v6);
    v4 = *(a2 + 92);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 92) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045E2C8 + 24);
    }

    sub_10015C590(v7, v8);
    v4 = *(a2 + 92);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 92) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045E2C8 + 32);
    }

    sub_10015E1A4(v9, v10);
    v4 = *(a2 + 92);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 92) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045E2C8 + 40);
    }

    sub_10015F040(v11, v12);
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x10) != 0)
  {
    v21 = *(a2 + 48);
    *(a1 + 92) |= 0x10u;
    *(a1 + 48) = v21;
    v4 = *(a2 + 92);
    if ((v4 & 0x20) == 0)
    {
LABEL_27:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v22 = *(a2 + 56);
  *(a1 + 92) |= 0x20u;
  *(a1 + 56) = v22;
  v4 = *(a2 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_28:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_47:
  v23 = *(a2 + 64);
  *(a1 + 92) |= 0x40u;
  *(a1 + 64) = v23;
  v4 = *(a2 + 92);
  if ((v4 & 0x80) != 0)
  {
LABEL_29:
    v13 = *(a2 + 68);
    *(a1 + 92) |= 0x80u;
    *(a1 + 68) = v13;
    v4 = *(a2 + 92);
  }

LABEL_30:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 69);
    *(a1 + 92) |= 0x100u;
    *(a1 + 69) = v16;
    v4 = *(a2 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_33:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  v17 = *(a2 + 70);
  *(a1 + 92) |= 0x200u;
  *(a1 + 70) = v17;
  v4 = *(a2 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_34:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = *(a2 + 71);
  *(a1 + 92) |= 0x400u;
  *(a1 + 71) = v18;
  v4 = *(a2 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_35:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

LABEL_43:
    v20 = *(a2 + 80);
    *(a1 + 92) |= 0x1000u;
    *(a1 + 80) = v20;
    if ((*(a2 + 92) & 0x2000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_37;
  }

LABEL_42:
  v19 = *(a2 + 72);
  *(a1 + 92) |= 0x800u;
  *(a1 + 72) = v19;
  v4 = *(a2 + 92);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  if ((v4 & 0x2000) != 0)
  {
LABEL_37:
    v14 = *(a2 + 84);
    *(a1 + 92) |= 0x2000u;
    *(a1 + 84) = v14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015FFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015FFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015FFF4(void *a1)
{
  *a1 = off_10043F2A0;
  if (qword_10045E2C8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100160110(void *a1)
{
  sub_10015FFF4(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100160208(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 23);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 2);
      if (v3)
      {
        v4 = *(v3 + 52);
        if (v4)
        {
          *(v3 + 16) = xmmword_1003D2660;
          if ((v4 & 4) != 0)
          {
            this = *(v3 + 32);
            if (this)
            {
              if (*(this + 44))
              {
                *(this + 1) = xmmword_1003D2650;
                *(this + 4) = 0xC05390D4FDF3B646;
              }

              v5 = *(this + 1);
              this = (this + 8);
              *(this + 9) = 0;
              if (v5)
              {
                this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
              }
            }
          }

          if ((*(v3 + 52) & 8) != 0)
          {
            this = *(v3 + 40);
            if (this)
            {
              this = sub_100159698(this);
            }
          }
        }

        v7 = *(v3 + 8);
        v6 = (v3 + 8);
        *(v6 + 11) = 0;
        if (v7)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
        }
      }
    }

    if ((*(v1 + 92) & 2) != 0)
    {
      this = *(v1 + 3);
      if (this)
      {
        v8 = *(this + 48);
        if (v8)
        {
          *(this + 1) = xmmword_1003D2680;
          *(this + 10) = 0;
          if ((v8 & 8) != 0)
          {
            v9 = *(this + 4);
            if (v9)
            {
              if (*(v9 + 40))
              {
                *(v9 + 16) = 10;
                *(v9 + 20) = xmmword_1003D2670;
              }

              v11 = *(v9 + 8);
              v10 = (v9 + 8);
              *(v10 + 8) = 0;
              if (v11)
              {
                v12 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
                this = v12;
              }
            }
          }
        }

        v13 = *(this + 1);
        this = (this + 8);
        *(this + 10) = 0;
        if (v13)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v14 = *(v1 + 23);
    if ((v14 & 4) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        this = sub_10015E568(this);
        v14 = *(v1 + 23);
      }
    }

    if ((v14 & 8) != 0)
    {
      this = *(v1 + 5);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 40) = 1;
        }

        if (*(this + 6) >= 1)
        {
          v15 = 0;
          do
          {
            while (1)
            {
              v16 = *(*(this + 2) + 8 * v15);
              if (*(v16 + 23) < 0)
              {
                break;
              }

              *v16 = 0;
              *(v16 + 23) = 0;
              if (++v15 >= *(this + 6))
              {
                goto LABEL_39;
              }
            }

            **v16 = 0;
            *(v16 + 8) = 0;
            ++v15;
          }

          while (v15 < *(this + 6));
        }

LABEL_39:
        v17 = *(this + 1);
        this = (this + 8);
        *(this + 4) = 0;
        *(this + 10) = 0;
        if (v17)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 3) = xmmword_1003D26F0;
    *(v1 + 16) = 15;
    *(v1 + 68) = 1;
    v2 = *(v1 + 23);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 19) = 0;
    *(v1 + 69) = 0;
    *(v1 + 80) = 1;
    *(v1 + 21) = 0;
  }

  v19 = *(v1 + 1);
  v18 = (v1 + 8);
  *(v18 + 21) = 0;
  if (v19)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v18);
  }

  return this;
}

uint64_t sub_100160444(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
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

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_49;
        }

        *(a1 + 92) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v80[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
          {
            return 0;
          }
        }

        else
        {
          v80[0] = *v10;
          *(this + 1) = v10 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
        if (!sub_10015AE58(v9, this, v28, v29) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
        v30 = *(this + 14);
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v32 < 0 == v31)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 18)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
        *(a1 + 92) |= 2u;
        v18 = *(a1 + 24);
        if (!v18)
        {
LABEL_63:
          operator new();
        }

LABEL_36:
        v80[0] = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
          {
            return 0;
          }
        }

        else
        {
          v80[0] = *v19;
          *(this + 1) = v19 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
        if (!sub_10015C9E4(v18, this, v37, v38) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v39 = *(this + 14);
        v31 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v31)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 25)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

LABEL_75:
        *(a1 + 48) = *v80;
        *(a1 + 92) |= 0x10u;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 != 33)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

LABEL_78:
        *(a1 + 56) = *v80;
        *(a1 + 92) |= 0x20u;
        v43 = *(this + 1);
        v11 = *(this + 2);
        if (v43 >= v11 || *v43 != 40)
        {
          continue;
        }

        v12 = v43 + 1;
        *(this + 1) = v12;
        v80[0] = 0;
        if (v12 >= v11)
        {
          goto LABEL_83;
        }

LABEL_81:
        v44 = *v12;
        if ((v44 & 0x80000000) != 0)
        {
LABEL_83:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v44 = v80[0];
          v45 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v45 = v12 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 68) = v44 != 0;
        *(a1 + 92) |= 0x80u;
        if (v45 >= v11 || *v45 != 48)
        {
          continue;
        }

        v20 = v45 + 1;
        *(this + 1) = v20;
        v80[0] = 0;
        if (v20 >= v11)
        {
          goto LABEL_90;
        }

LABEL_88:
        v47 = *v20;
        if ((v47 & 0x80000000) != 0)
        {
LABEL_90:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v47 = v80[0];
          v48 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v48 = v20 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 69) = v47 != 0;
        *(a1 + 92) |= 0x100u;
        if (v48 >= v11 || *v48 != 56)
        {
          continue;
        }

        v22 = v48 + 1;
        *(this + 1) = v22;
LABEL_95:
        if (v22 < v11)
        {
          v49 = *v22;
          if ((v49 & 0x80000000) == 0)
          {
            *(a1 + 64) = v49;
            v50 = v22 + 1;
            *(this + 1) = v50;
            v51 = *(a1 + 92) | 0x40;
            *(a1 + 92) = v51;
            if (v50 < v11)
            {
              goto LABEL_101;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
        if (!result)
        {
          return result;
        }

        v50 = *(this + 1);
        v52 = *(this + 2);
        v51 = *(a1 + 92) | 0x40;
        *(a1 + 92) = v51;
        if (v50 >= v52)
        {
          continue;
        }

LABEL_101:
        if (*v50 != 66)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
        *(a1 + 92) = v51 | 4;
        v17 = *(a1 + 32);
        if (!v17)
        {
LABEL_103:
          operator new();
        }

LABEL_104:
        v80[0] = 0;
        v53 = *(this + 1);
        if (v53 >= *(this + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
          {
            return 0;
          }
        }

        else
        {
          v80[0] = *v53;
          *(this + 1) = v53 + 1;
        }

        v54 = *(this + 14);
        v55 = *(this + 15);
        *(this + 14) = v54 + 1;
        if (v54 >= v55)
        {
          return 0;
        }

        v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
        if (!sub_10015E6A8(v17, this, v57, v58) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
        v59 = *(this + 14);
        v31 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v31)
        {
          *(this + 14) = v60;
        }

        v61 = *(this + 1);
        v15 = *(this + 2);
        if (v61 >= v15 || *v61 != 72)
        {
          continue;
        }

        v24 = v61 + 1;
        *(this + 1) = v24;
        v80[0] = 0;
        if (v24 >= v15)
        {
          goto LABEL_118;
        }

LABEL_116:
        v62 = *v24;
        if ((v62 & 0x80000000) != 0)
        {
LABEL_118:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v62 = v80[0];
          v63 = *(this + 1);
          v15 = *(this + 2);
          goto LABEL_120;
        }

        v63 = v24 + 1;
        *(this + 1) = v63;
LABEL_120:
        *(a1 + 70) = v62 != 0;
        *(a1 + 92) |= 0x200u;
        if (v63 >= v15 || *v63 != 80)
        {
          continue;
        }

        v16 = v63 + 1;
        *(this + 1) = v16;
        v80[0] = 0;
        if (v16 < v15)
        {
LABEL_123:
          v64 = *v16;
          if ((v64 & 0x80000000) == 0)
          {
            v65 = v16 + 1;
            *(this + 1) = v65;
            goto LABEL_127;
          }
        }

LABEL_125:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
        if (!result)
        {
          return result;
        }

        v64 = v80[0];
        v65 = *(this + 1);
        v15 = *(this + 2);
LABEL_127:
        *(a1 + 71) = v64 != 0;
        v66 = *(a1 + 92) | 0x400;
        *(a1 + 92) = v66;
        if (v65 >= v15 || *v65 != 90)
        {
          continue;
        }

        *(this + 1) = v65 + 1;
        *(a1 + 92) = v66 | 8;
        v23 = *(a1 + 40);
        if (!v23)
        {
LABEL_130:
          operator new();
        }

LABEL_131:
        v80[0] = 0;
        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
          {
            return 0;
          }
        }

        else
        {
          v80[0] = *v67;
          *(this + 1) = v67 + 1;
        }

        v68 = *(this + 14);
        v69 = *(this + 15);
        *(this + 14) = v68 + 1;
        if (v68 < v69)
        {
          v70 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
          if (sub_10015F448(v23, this, v71, v72))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v70);
              v73 = *(this + 14);
              v31 = __OFSUB__(v73, 1);
              v74 = v73 - 1;
              if (v74 < 0 == v31)
              {
                *(this + 14) = v74;
              }

              v75 = *(this + 1);
              if (v75 < *(this + 2) && *v75 == 97)
              {
                *(this + 1) = v75 + 1;
                *v80 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
                {
                  return 0;
                }

LABEL_143:
                *(a1 + 72) = *v80;
                *(a1 + 92) |= 0x800u;
                v76 = *(this + 1);
                v13 = *(this + 2);
                if (v76 < v13 && *v76 == 104)
                {
                  v14 = v76 + 1;
                  *(this + 1) = v14;
                  v80[0] = 0;
                  if (v14 >= v13)
                  {
                    goto LABEL_148;
                  }

LABEL_146:
                  v77 = *v14;
                  if ((v77 & 0x80000000) != 0)
                  {
LABEL_148:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
                    if (!result)
                    {
                      return result;
                    }

                    v77 = v80[0];
                    v78 = *(this + 1);
                    v13 = *(this + 2);
                    goto LABEL_150;
                  }

                  v78 = v14 + 1;
                  *(this + 1) = v78;
LABEL_150:
                  *(a1 + 80) = v77 != 0;
                  *(a1 + 92) |= 0x1000u;
                  if (v78 < v13 && *v78 == 112)
                  {
                    v21 = v78 + 1;
                    *(this + 1) = v21;
LABEL_153:
                    v80[0] = 0;
                    if (v21 >= v13 || (v79 = *v21, (v79 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
                      if (!result)
                      {
                        return result;
                      }

                      v79 = v80[0];
                      if (v80[0] <= 3)
                      {
                        goto LABEL_156;
                      }

LABEL_160:
                      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 14, v79);
                      if (*(this + 1) == *(this + 2))
                      {
                        goto LABEL_161;
                      }
                    }

                    else
                    {
                      *(this + 1) = v21 + 1;
                      if (v79 > 3)
                      {
                        goto LABEL_160;
                      }

LABEL_156:
                      *(a1 + 92) |= 0x2000u;
                      *(a1 + 84) = v79;
                      if (*(this + 1) == *(this + 2))
                      {
LABEL_161:
                        if (*(this + 11) || *(this + 6) == *(this + 10))
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

              continue;
            }
          }
        }

        return 0;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_49;
        }

        *(a1 + 92) |= 2u;
        v18 = *(a1 + 24);
        if (v18)
        {
          goto LABEL_36;
        }

        goto LABEL_63;
      case 3u:
        if (v8 != 1)
        {
          goto LABEL_49;
        }

        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
      case 4u:
        if (v8 != 1)
        {
          goto LABEL_49;
        }

        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        v80[0] = 0;
        if (v12 >= v11)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v20 = *(this + 1);
        v11 = *(this + 2);
        v80[0] = 0;
        if (v20 >= v11)
        {
          goto LABEL_90;
        }

        goto LABEL_88;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v22 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_95;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_49;
        }

        *(a1 + 92) |= 4u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          goto LABEL_103;
        }

        goto LABEL_104;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v24 = *(this + 1);
        v15 = *(this + 2);
        v80[0] = 0;
        if (v24 >= v15)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        v80[0] = 0;
        if (v16 >= v15)
        {
          goto LABEL_125;
        }

        goto LABEL_123;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_49;
        }

        *(a1 + 92) |= 8u;
        v23 = *(a1 + 40);
        if (!v23)
        {
          goto LABEL_130;
        }

        goto LABEL_131;
      case 0xCu:
        if (v8 != 1)
        {
          goto LABEL_49;
        }

        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_143;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        v80[0] = 0;
        if (v14 >= v13)
        {
          goto LABEL_148;
        }

        goto LABEL_146;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v21 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_153;
      default:
LABEL_49:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}