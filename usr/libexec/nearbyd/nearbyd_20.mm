uint64_t sub_1001178A8(uint64_t result, uint64_t a2)
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

uint64_t sub_10011793C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE20;
}

void sub_1001179D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1001179E4(void *a1)
{
  *a1 = off_100993AC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_100117A40(uint64_t a1)
{
  *a1 = off_100993AC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100117A94(uint64_t a1)
{
  *a1 = off_100993AC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100117B68(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 16)
      {
        break;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 28) |= 1u;
      if (v11 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100117C6C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(this + 16), a2, a4);
  }

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100117CE0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    *a2 = 16;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, a2 + 1, a3);
  }

  v7 = *(this + 1);
  v6 = (this + 8);
  v5 = v7;
  if (!v7 || *v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100117D54(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4 && *v4 != v4[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_100117DB8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100101E5C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100117E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100117EA4(uint64_t result, uint64_t a2)
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

uint64_t sub_100117F38()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE30;
}

void sub_100117FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100117FE0(void *a1)
{
  *a1 = off_100993B70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  return a1;
}

void sub_100118048(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100993B70;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001180AC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100118048(a1);

  operator delete();
}

uint64_t sub_100118150(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_20:
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 36) |= 2u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        break;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_20;
      }
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1001182F4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100118380(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(v6 + 8);
    }

    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = a2 + 2;
    }

    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v10, v11, v8, a4);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v12 = *(this + 3);
    *a2 = 16;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_10011845C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 36) & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(a1 + 36);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) != 0)
    {
LABEL_15:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100118528(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10010132C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001185FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100118614(uint64_t result, uint64_t a2)
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

uint64_t sub_1001186A8()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE40;
}

void sub_10011873C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100118750(void *a1)
{
  *a1 = off_100993C20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  return a1;
}

void sub_1001187B8(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100993C20;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011881C(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1001187B8(a1);

  operator delete();
}

uint64_t sub_1001188C0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_20:
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 36) |= 2u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        break;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_20;
      }
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100118A64(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100118AF0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(v6 + 8);
    }

    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = a2 + 2;
    }

    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v10, v11, v8, a4);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v12 = *(this + 3);
    *a2 = 16;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_100118BCC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 36) & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(a1 + 36);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) != 0)
    {
LABEL_15:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100118C98(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100101440(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100118D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100118D84(uint64_t result, uint64_t a2)
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

uint64_t sub_100118E18()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE50;
}

void sub_100118EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100118EC0(uint64_t a1)
{
  *a1 = off_100993CD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100118F20(uint64_t a1, uint64_t a2)
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

void sub_100119000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100119018(uint64_t a1)
{
  *a1 = off_100993CD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011906C(uint64_t a1)
{
  *a1 = off_100993CD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100119140(uint64_t a1)
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

uint64_t sub_100119164(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100119320(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_1001193D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1001194F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_10011956C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100118F20(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100119640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100119658(uint64_t result, uint64_t a2)
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

uint64_t sub_1001196EC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE60;
}

void sub_100119780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100119794(uint64_t a1)
{
  *a1 = off_100993D80;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 76) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1001197FC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v7 = *(a2 + 80);
    *(a1 + 88) |= 1u;
    *(a1 + 80) = v7;
    v4 = *(a2 + 88);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 88) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 24);
  *(a1 + 88) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 32);
  *(a1 + 88) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(a1 + 88) |= 0x20u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 48);
    if (!v13)
    {
      v13 = *(qword_1009F9D38 + 48);
    }

    sub_100118F20(v12, v13);
    v4 = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_30:
      *(a1 + 88) |= 0x80u;
      v16 = *(a1 + 64);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 64);
      if (!v17)
      {
        v17 = *(qword_1009F9D38 + 64);
      }

      sub_100118F20(v16, v17);
      if ((*(a2 + 88) & 0x100) != 0)
      {
        goto LABEL_13;
      }

      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_25;
  }

LABEL_19:
  v11 = *(a2 + 40);
  *(a1 + 88) |= 0x10u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  *(a1 + 88) |= 0x40u;
  v14 = *(a1 + 56);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 56);
  if (!v15)
  {
    v15 = *(qword_1009F9D38 + 56);
  }

  sub_100118F20(v14, v15);
  v4 = *(a2 + 88);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
LABEL_13:
    v5 = *(a2 + 72);
    *(a1 + 88) |= 0x100u;
    *(a1 + 72) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100119AA8(void *a1)
{
  *a1 = off_100993D80;
  v2 = (a1 + 1);
  sub_100119B08(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100119B08(void *result)
{
  if (qword_1009F9D38 != result)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[8];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_100119BD8(void *a1)
{
  sub_100119AA8(a1);

  operator delete();
}

uint64_t sub_100119C7C(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 80) = 0;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 48);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 88) & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 88) & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v5 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v5)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 89))
  {
    *(v1 + 72) = 0;
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 20) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_100119D74(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if (v9 != 1)
            {
              goto LABEL_37;
            }

            goto LABEL_57;
          }

          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_37;
          }

          v10 = *(a1 + 88);
LABEL_61:
          *(a1 + 88) = v10 | 0x20;
          v20 = *(a1 + 48);
          if (!v20)
          {
            operator new();
          }

          v51[0] = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
            {
              return 0;
            }
          }

          else
          {
            v51[0] = *v21;
            *(this + 1) = v21 + 1;
          }

          v22 = *(this + 14);
          v23 = *(this + 15);
          *(this + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
          if (!sub_100119164(v20, this, v25, v26) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
          v27 = *(this + 14);
          v28 = __OFSUB__(v27, 1);
          v29 = v27 - 1;
          if (v29 < 0 == v28)
          {
            *(this + 14) = v29;
          }

          v30 = *(this + 1);
          if (v30 < *(this + 2) && *v30 == 58)
          {
            *(this + 1) = v30 + 1;
LABEL_75:
            *(a1 + 88) |= 0x40u;
            v31 = *(a1 + 56);
            if (!v31)
            {
              operator new();
            }

            v51[0] = 0;
            v32 = *(this + 1);
            if (v32 >= *(this + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
              {
                return 0;
              }
            }

            else
            {
              v51[0] = *v32;
              *(this + 1) = v32 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
            if (!sub_100119164(v31, this, v36, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v38 = *(this + 14);
            v28 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v28)
            {
              *(this + 14) = v39;
            }

            v40 = *(this + 1);
            if (v40 < *(this + 2) && *v40 == 66)
            {
              *(this + 1) = v40 + 1;
              goto LABEL_89;
            }
          }
        }

        else
        {
          if (v8 == 7)
          {
            if (v9 != 2)
            {
              goto LABEL_37;
            }

            goto LABEL_75;
          }

          if (v8 == 8)
          {
            if (v9 != 2)
            {
              goto LABEL_37;
            }

LABEL_89:
            *(a1 + 88) |= 0x80u;
            v41 = *(a1 + 64);
            if (!v41)
            {
              operator new();
            }

            v51[0] = 0;
            v42 = *(this + 1);
            if (v42 >= *(this + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
              {
                return 0;
              }
            }

            else
            {
              v51[0] = *v42;
              *(this + 1) = v42 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
            if (!sub_100119164(v41, this, v46, v47) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v48 = *(this + 14);
            v28 = __OFSUB__(v48, 1);
            v49 = v48 - 1;
            if (v49 < 0 == v28)
            {
              *(this + 14) = v49;
            }

            v50 = *(this + 1);
            if (v50 < *(this + 2) && *v50 == 73)
            {
              *(this + 1) = v50 + 1;
              goto LABEL_103;
            }
          }

          else
          {
            if (v8 != 9 || v9 != 1)
            {
              goto LABEL_37;
            }

LABEL_103:
            *v51 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 72) = *v51;
            *(a1 + 88) |= 0x100u;
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

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_49;
        }

        if (v8 == 4 && v9 == 1)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
      if (v12 >= v11 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v11 = *(this + 2);
      }

      else
      {
        *(a1 + 80) = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 88) |= 1u;
      if (v14 < v11 && *v14 == 17)
      {
        *(this + 1) = v14 + 1;
LABEL_45:
        *v51 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v51;
        *(a1 + 88) |= 2u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 25)
        {
          *(this + 1) = v16 + 1;
LABEL_49:
          *v51 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v51;
          *(a1 + 88) |= 4u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 33)
          {
            *(this + 1) = v17 + 1;
LABEL_53:
            *v51 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v51;
            *(a1 + 88) |= 8u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 41)
            {
              *(this + 1) = v18 + 1;
LABEL_57:
              *v51 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 40) = *v51;
              v10 = *(a1 + 88) | 0x10;
              *(a1 + 88) = v10;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 50)
              {
                *(this + 1) = v19 + 1;
                goto LABEL_61;
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_45;
    }

LABEL_37:
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

uint64_t sub_10011A394(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 80), a2, a4);
    v6 = *(v5 + 88);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 88);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 88);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 88);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_22:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(qword_1009F9D38 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v10, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v12 = *(v5 + 64);
    if (!v12)
    {
      v12 = *(qword_1009F9D38 + 64);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v12, a2, a4);
    if ((*(v5 + 88) & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_25:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_1009F9D38 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v11, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  if ((v6 & 0x100) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  }

LABEL_11:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011A51C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 88))
  {
    v5 = *(this + 20);
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

  v7 = *(this + 22);
  if ((v7 & 2) != 0)
  {
    v13 = *(this + 2);
    *v3 = 17;
    *(v3 + 1) = v13;
    v3 = (v3 + 9);
    v7 = *(this + 22);
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  v14 = *(this + 3);
  *v3 = 25;
  *(v3 + 1) = v14;
  v3 = (v3 + 9);
  v7 = *(this + 22);
  if ((v7 & 8) == 0)
  {
LABEL_8:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(this + 4);
  *v3 = 33;
  *(v3 + 1) = v15;
  v3 = (v3 + 9);
  v7 = *(this + 22);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = *(this + 5);
  *v3 = 41;
  *(v3 + 1) = v16;
  v3 = (v3 + 9);
  v7 = *(this + 22);
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_24:
  v17 = *(this + 6);
  if (!v17)
  {
    v17 = *(qword_1009F9D38 + 48);
  }

  *v3 = 50;
  v18 = *(v17 + 40);
  if (v18 > 0x7F)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v18;
    v19 = v3 + 2;
  }

  v3 = sub_1001193D0(v17, v19, a3);
  v7 = *(this + 22);
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v23 = *(this + 8);
    if (!v23)
    {
      v23 = *(qword_1009F9D38 + 64);
    }

    *v3 = 66;
    v24 = *(v23 + 40);
    if (v24 > 0x7F)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v24;
      v25 = v3 + 2;
    }

    v3 = sub_1001193D0(v23, v25, a3);
    if ((*(this + 22) & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_30:
  v20 = *(this + 7);
  if (!v20)
  {
    v20 = *(qword_1009F9D38 + 56);
  }

  *v3 = 58;
  v21 = *(v20 + 40);
  if (v21 > 0x7F)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v21;
    v22 = v3 + 2;
  }

  v3 = sub_1001193D0(v20, v22, a3);
  v7 = *(this + 22);
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if ((v7 & 0x100) != 0)
  {
LABEL_13:
    v8 = *(this + 9);
    *v3 = 73;
    *(v3 + 1) = v8;
    v3 = (v3 + 9);
  }

LABEL_14:
  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, v3, a3);
}

uint64_t sub_10011A870(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_39;
  }

  if (v3)
  {
    v6 = *(a1 + 80);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 88);
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
    v7 = *(a1 + 48);
    if (!v7)
    {
      v7 = *(qword_1009F9D38 + 48);
    }

    v8 = sub_1001194F8(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v5 += v9 + v10 + 1;
    v3 = *(a1 + 88);
    if ((v3 & 0x40) == 0)
    {
LABEL_19:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_19;
  }

  v11 = *(a1 + 56);
  if (!v11)
  {
    v11 = *(qword_1009F9D38 + 56);
  }

  v12 = sub_1001194F8(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v5 += v13 + v14 + 1;
  v3 = *(a1 + 88);
  if ((v3 & 0x80) != 0)
  {
LABEL_33:
    v15 = *(a1 + 64);
    if (!v15)
    {
      v15 = *(qword_1009F9D38 + 64);
    }

    v16 = sub_1001194F8(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v5 += v17 + v18 + 1;
    v3 = *(a1 + 88);
  }

LABEL_39:
  if ((v3 & 0x100) != 0)
  {
    v19 = v5 + 9;
  }

  else
  {
    v19 = v5;
  }

  v20 = *(a1 + 8);
  if (v20 && *v20 != v20[1])
  {
    v19 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v19;
  }

  *(a1 + 84) = v19;
  return v19;
}

uint64_t sub_10011AA20(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001197FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AB0C(uint64_t result, uint64_t a2)
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

uint64_t sub_10011ABA0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE70;
}

void sub_10011AC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AC48(uint64_t a1)
{
  *a1 = off_100993E30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  return a1;
}

uint64_t sub_10011ACB8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
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

      goto LABEL_16;
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
  v9 = *(a2 + 25);
  *(a1 + 52) |= 4u;
  *(a1 + 25) = v9;
  v4 = *(a2 + 52);
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
  v10 = *(a2 + 28);
  *(a1 + 52) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 52);
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
  v11 = *(a2 + 32);
  *(a1 + 52) |= 0x10u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v13 = *(a2 + 40);
    *(a1 + 52) |= 0x40u;
    *(a1 + 40) = v13;
    if ((*(a2 + 52) & 0x80) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

LABEL_19:
  v12 = *(a2 + 36);
  *(a1 + 52) |= 0x20u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 52);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(a1 + 52) |= 0x80u;
    *(a1 + 44) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011AE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011AE50(uint64_t a1)
{
  *a1 = off_100993E30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011AEA4(uint64_t a1)
{
  *a1 = off_100993E30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10011AF14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9D40;
  if (!qword_1009F9D40)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9D40;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011AFA8(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
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

uint64_t sub_10011AFD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if (v9 == 5)
            {
              goto LABEL_58;
            }
          }

          else if (v8 == 6 && v9 == 5)
          {
            goto LABEL_62;
          }

          goto LABEL_38;
        }

        if (v8 == 7)
        {
          if (v9 != 5)
          {
            goto LABEL_38;
          }

LABEL_66:
          v23[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v23[0];
          *(a1 + 52) |= 0x40u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 69)
          {
            *(this + 1) = v22 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v8 != 8 || v9 != 5)
          {
            goto LABEL_38;
          }

LABEL_70:
          v23[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 44) = v23[0];
          *(a1 + 52) |= 0x80u;
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
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_46;
          }
        }

        else if (v8 == 4 && v9 == 5)
        {
          goto LABEL_54;
        }

        goto LABEL_38;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_38;
      }

      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v23;
      *(a1 + 52) |= 1u;
      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 < v10 && *v12 == 16)
      {
        v11 = v12 + 1;
        *(this + 1) = v11;
LABEL_30:
        v23[0] = 0;
        if (v11 >= v10 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v13 = v23[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 24) = v13 != 0;
        *(a1 + 52) |= 2u;
        if (v14 < v10 && *v14 == 24)
        {
          v15 = v14 + 1;
          *(this + 1) = v15;
LABEL_46:
          v23[0] = 0;
          if (v15 >= v10 || (v17 = *v15, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
            if (!result)
            {
              return result;
            }

            v17 = v23[0];
            v18 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v18 = v15 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 25) = v17 != 0;
          *(a1 + 52) |= 4u;
          if (v18 < v10 && *v18 == 37)
          {
            *(this + 1) = v18 + 1;
LABEL_54:
            v23[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 28) = v23[0];
            *(a1 + 52) |= 8u;
            v19 = *(this + 1);
            if (v19 < *(this + 2) && *v19 == 45)
            {
              *(this + 1) = v19 + 1;
LABEL_58:
              v23[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 32) = v23[0];
              *(a1 + 52) |= 0x10u;
              v20 = *(this + 1);
              if (v20 < *(this + 2) && *v20 == 53)
              {
                *(this + 1) = v20 + 1;
LABEL_62:
                v23[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v23) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 36) = v23[0];
                *(a1 + 52) |= 0x20u;
                v21 = *(this + 1);
                if (v21 < *(this + 2) && *v21 == 61)
                {
                  *(this + 1) = v21 + 1;
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_30;
    }

LABEL_38:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10011B3BC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 25), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  }

LABEL_10:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_10011B4F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 24);
  *a2 = 16;
  *(a2 + 1) = v10;
  a2 += 2;
  v3 = *(a1 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(a1 + 25);
  *a2 = 24;
  *(a2 + 1) = v11;
  a2 += 2;
  v3 = *(a1 + 52);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  v3 = *(a1 + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(a1 + 32);
  *a2 = 45;
  *(a2 + 1) = v13;
  a2 += 5;
  v3 = *(a1 + 52);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v15 = *(a1 + 40);
    *a2 = 61;
    *(a2 + 1) = v15;
    a2 += 5;
    if ((*(a1 + 52) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v14 = *(a1 + 36);
  *a2 = 53;
  *(a2 + 1) = v14;
  a2 += 5;
  v3 = *(a1 + 52);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v3 & 0x80) != 0)
  {
LABEL_9:
    v4 = *(a1 + 44);
    *a2 = 69;
    *(a2 + 1) = v4;
    a2 += 5;
  }

LABEL_10:
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

uint64_t sub_10011B6C8(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[13];
  if (v3)
  {
    v4 = (((v3 << 31) >> 31) & 9 | v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (a1 + 2);
  v7 = *(a1 + 1);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  a1[12] = v5;
  return v5;
}

uint64_t sub_10011B780(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011ACB8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011B854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011B86C(uint64_t result, uint64_t a2)
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

uint64_t sub_10011B900()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE80;
}

void sub_10011B994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011B9A8(uint64_t a1)
{
  *a1 = off_100993EE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  return a1;
}

uint64_t sub_10011BA10(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 40))
  {
    v7 = *(a2 + 16);
    *(a1 + 40) |= 1u;
    *(a1 + 16) = v7;
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

  v8 = *(a2 + 17);
  *(a1 + 40) |= 2u;
  *(a1 + 17) = v8;
  v4 = *(a2 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 32);
    *(a1 + 40) |= 8u;
    *(a1 + 32) = v10;
    if ((*(a2 + 40) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 20);
  *(a1 + 40) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 40);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 24);
    *(a1 + 40) |= 0x10u;
    *(a1 + 24) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011BB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011BB48(uint64_t a1)
{
  *a1 = off_100993EE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011BB9C(uint64_t a1)
{
  *a1 = off_100993EE0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011BC70(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 28) = 0;
    *(a1 + 20) = 0;
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

uint64_t sub_10011BC98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v26[0] = 0;
        v15 = *(this + 1);
        v12 = *(this + 2);
        if (v15 >= v12 || (v16 = *v15, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v16 = v26[0];
          v17 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 16) = v16 != 0;
        *(a1 + 40) |= 1u;
        if (v17 < v12 && *v17 == 16)
        {
          v13 = v17 + 1;
          *(this + 1) = v13;
LABEL_32:
          v26[0] = 0;
          if (v13 >= v12 || (v19 = *v13, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
            if (!result)
            {
              return result;
            }

            v19 = v26[0];
            v20 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            v20 = v13 + 1;
            *(this + 1) = v20;
          }

          *(a1 + 17) = v19 != 0;
          *(a1 + 40) |= 2u;
          if (v20 < v12 && *v20 == 29)
          {
            *(this + 1) = v20 + 1;
LABEL_40:
            v26[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v26[0];
            *(a1 + 40) |= 4u;
            v21 = *(this + 1);
            v10 = *(this + 2);
            if (v21 < v10 && *v21 == 32)
            {
              v14 = v21 + 1;
              *(this + 1) = v14;
              goto LABEL_44;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
LABEL_44:
      v26[0] = 0;
      if (v14 >= v10 || (v22 = *v14, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
        if (!result)
        {
          return result;
        }

        v22 = v26[0];
        v23 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v23 = v14 + 1;
        *(this + 1) = v23;
      }

      *(a1 + 32) = v22;
      *(a1 + 40) |= 8u;
      if (v23 < v10 && *v23 == 40)
      {
        v11 = v23 + 1;
        *(this + 1) = v11;
LABEL_52:
        *v26 = 0;
        if (v11 >= v10 || (v24 = *v11, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v24 = *v26;
          v25 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v25 = v11 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 24) = v24;
        *(a1 + 40) |= 0x10u;
        if (v25 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_52;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10011BF94(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(5, *(v5 + 24), a2, a4);
  }

LABEL_7:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10011C07C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 16);
    *a2 = 8;
    a2[1] = v5;
    a2 += 2;
    v4 = *(this + 10);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 17);
  *a2 = 16;
  a2[1] = v6;
  a2 += 2;
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_8:
  v7 = *(this + 5);
  *a2 = 29;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((*(this + 10) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v8 = *(this + 8);
  *a2 = 32;
  if ((v8 & 0x80000000) != 0)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, (a2 + 1), a3);
  }

  else
  {
    if (v8 <= 0x7F)
    {
      a2[1] = v8;
      a2 += 2;
      goto LABEL_15;
    }

    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
  }

  a2 = v9;
LABEL_15:
  if ((*(this + 40) & 0x10) != 0)
  {
    v10 = *(this + 3);
    *a2 = 40;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, (a2 + 1), a3);
  }

  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, a2, a3);
}

uint64_t sub_10011C1B4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2);
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
      v6 = *(a1 + 32);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
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

    if ((v3 & 0x10) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 36) = v5;
  return v5;
}

uint64_t sub_10011C270(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011BA10(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C35C(uint64_t result, uint64_t a2)
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

uint64_t sub_10011C3F0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE90;
}

void sub_10011C484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10011C498(void *a1)
{
  *a1 = off_100993F90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_10011C4F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9D50 + 16);
    }

    sub_10011BA10(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011C604(void *a1)
{
  *a1 = off_100993F90;
  if (qword_1009F9D50 != a1)
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

void sub_10011C69C(void *a1)
{
  sub_10011C604(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011C740(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_10011BC70(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_10011C7A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10011BC98(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10011C964(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9D50 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10011C9E8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F9D50 + 16);
    }

    *a2 = 10;
    v5 = v4[9];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      a2[1] = v5;
      v6 = a2 + 2;
    }

    a2 = sub_10011C07C(v4, v6, a3);
  }

  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_10011CA98(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9D50 + 16);
    }

    v5 = sub_10011C1B4(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_10011CB2C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011C4F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011CC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011CC18(uint64_t result, uint64_t a2)
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

uint64_t sub_10011CCAC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDEA0;
}

void sub_10011CD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011CD54(uint64_t a1)
{
  *a1 = off_100994040;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  return a1;
}

uint64_t sub_10011CDC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  sub_10011DF54((a1 + 56), a2 + 56);
  v4 = *(a2 + 84);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 84) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 84);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 36);
  *(a1 + 84) |= 2u;
  *(a1 + 36) = v9;
  v4 = *(a2 + 84);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 24);
  *(a1 + 84) |= 4u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 37);
  *(a1 + 84) |= 8u;
  *(a1 + 37) = v11;
  v4 = *(a2 + 84);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 32);
    *(a1 + 84) |= 0x20u;
    *(a1 + 32) = v13;
    v4 = *(a2 + 84);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v12 = *(a2 + 28);
  *(a1 + 84) |= 0x10u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 84);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v14 = *(a2 + 40);
  *(a1 + 84) |= 0x40u;
  *(a1 + 40) = v14;
  v4 = *(a2 + 84);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(a1 + 84) |= 0x80u;
    *(a1 + 44) = v5;
    v4 = *(a2 + 84);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 48);
    *(a1 + 84) |= 0x100u;
    *(a1 + 48) = v15;
    v4 = *(a2 + 84);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 39);
      *(a1 + 84) |= 0x400u;
      *(a1 + 39) = v17;
      if ((*(a2 + 84) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 38);
  *(a1 + 84) |= 0x200u;
  *(a1 + 38) = v16;
  v4 = *(a2 + 84);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 52);
    *(a1 + 84) |= 0x800u;
    *(a1 + 52) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011CFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011CFF0(uint64_t *a1)
{
  *a1 = off_100994040;
  sub_100077C08(a1 + 7);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011D054(uint64_t *a1)
{
  sub_10011CFF0(a1);

  operator delete();
}

uint64_t sub_10011D0F8(uint64_t a1)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 30) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 38) = 0;
    *(a1 + 48) = 0;
  }

  result = sub_100077B98(a1 + 56);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 19) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_10011D174(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 1)
        {
          goto LABEL_38;
        }

        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v47;
        *(a1 + 84) |= 1u;
        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || *v10 != 16)
        {
          continue;
        }

        v11 = v10 + 1;
        *(this + 1) = v11;
        goto LABEL_28;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_28:
        v47[0] = 0;
        if (v11 >= v9 || (v16 = *v11, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v16 = v47[0];
          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v17 = v11 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 36) = v16 != 0;
        *(a1 + 84) |= 2u;
        if (v17 >= v9 || *v17 != 29)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
LABEL_46:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v47[0];
        *(a1 + 84) |= 4u;
        v20 = *(this + 1);
        v14 = *(this + 2);
        if (v20 >= v14 || *v20 != 32)
        {
          continue;
        }

        v15 = v20 + 1;
        *(this + 1) = v15;
LABEL_50:
        v47[0] = 0;
        if (v15 >= v14 || (v21 = *v15, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v21 = v47[0];
          v22 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          v22 = v15 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 37) = v21 != 0;
        *(a1 + 84) |= 8u;
        if (v22 >= v14 || *v22 != 45)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_58:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 28) = v47[0];
        *(a1 + 84) |= 0x10u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 53)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_62:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v47[0];
        *(a1 + 84) |= 0x20u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 61)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_66:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v47[0];
        *(a1 + 84) |= 0x40u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 69)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_70:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v47[0];
        *(a1 + 84) |= 0x80u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 77)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_74:
        v47[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v47[0];
        *(a1 + 84) |= 0x100u;
        v27 = *(this + 1);
        v12 = *(this + 2);
        if (v27 >= v12 || *v27 != 80)
        {
          continue;
        }

        v13 = v27 + 1;
        *(this + 1) = v13;
LABEL_78:
        v47[0] = 0;
        if (v13 >= v12 || (v28 = *v13, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v28 = v47[0];
          v29 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v29 = v13 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 38) = v28 != 0;
        *(a1 + 84) |= 0x200u;
        if (v29 >= v12 || *v29 != 88)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_86:
        v47[0] = 0;
        if (v18 >= v12 || (v30 = *v18, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v30 = v47[0];
          v31 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 39) = v30 != 0;
        *(a1 + 84) |= 0x400u;
        if (v31 >= v12 || *v31 != 101)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_94:
        v47[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v47))
        {
          *(a1 + 52) = v47[0];
          *(a1 + 84) |= 0x800u;
          v32 = *(this + 1);
          if (v32 < *(this + 2) && *v32 == 106)
          {
            do
            {
              *(this + 1) = v32 + 1;
LABEL_98:
              v33 = *(a1 + 68);
              v34 = *(a1 + 64);
              if (v34 >= v33)
              {
                if (v33 == *(a1 + 72))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v33 + 1);
                  v33 = *(a1 + 68);
                }

                *(a1 + 68) = v33 + 1;
                sub_10014971C();
              }

              v35 = *(a1 + 56);
              *(a1 + 64) = v34 + 1;
              v36 = *(v35 + 8 * v34);
              v47[0] = 0;
              v37 = *(this + 1);
              if (v37 >= *(this + 2) || *v37 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
                {
                  return 0;
                }
              }

              else
              {
                v47[0] = *v37;
                *(this + 1) = v37 + 1;
              }

              v38 = *(this + 14);
              v39 = *(this + 15);
              *(this + 14) = v38 + 1;
              if (v38 >= v39)
              {
                return 0;
              }

              v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
              if (!sub_100119D74(v36, this, v41, v42) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
              v43 = *(this + 14);
              v44 = __OFSUB__(v43, 1);
              v45 = v43 - 1;
              if (v45 < 0 == v44)
              {
                *(this + 14) = v45;
              }

              v32 = *(this + 1);
              v46 = *(this + 2);
            }

            while (v32 < v46 && *v32 == 106);
            if (v32 == v46 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v8 == 5)
        {
          goto LABEL_46;
        }

        goto LABEL_38;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_50;
      case 5u:
        if (v8 == 5)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      case 6u:
        if (v8 == 5)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      case 7u:
        if (v8 == 5)
        {
          goto LABEL_66;
        }

        goto LABEL_38;
      case 8u:
        if (v8 == 5)
        {
          goto LABEL_70;
        }

        goto LABEL_38;
      case 9u:
        if (v8 != 5)
        {
          goto LABEL_38;
        }

        goto LABEL_74;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_78;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_86;
      case 0xCu:
        if (v8 == 5)
        {
          goto LABEL_94;
        }

        goto LABEL_38;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_38;
      default:
LABEL_38:
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

uint64_t sub_10011D804(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 36), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 37), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 38), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 39), a2, a4);
  if ((*(v5 + 84) & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 52), a3);
  }

LABEL_14:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011D9F0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 21);
  if (v5)
  {
    v15 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v15;
    v3 = (a2 + 9);
    v5 = *(this + 21);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v16 = *(this + 36);
  *v3 = 16;
  *(v3 + 1) = v16;
  v3 = (v3 + 2);
  v5 = *(this + 21);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = *(this + 6);
  *v3 = 29;
  *(v3 + 1) = v17;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = *(this + 37);
  *v3 = 32;
  *(v3 + 1) = v18;
  v3 = (v3 + 2);
  v5 = *(this + 21);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = *(this + 7);
  *v3 = 45;
  *(v3 + 1) = v19;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = *(this + 8);
  *v3 = 53;
  *(v3 + 1) = v20;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v21 = *(this + 10);
  *v3 = 61;
  *(v3 + 1) = v21;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v22 = *(this + 11);
  *v3 = 69;
  *(v3 + 1) = v22;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v23 = *(this + 12);
  *v3 = 77;
  *(v3 + 1) = v23;
  v3 = (v3 + 5);
  v5 = *(this + 21);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v24 = *(this + 38);
  *v3 = 80;
  *(v3 + 1) = v24;
  v3 = (v3 + 2);
  v5 = *(this + 21);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_36:
  v25 = *(this + 39);
  *v3 = 88;
  *(v3 + 1) = v25;
  v3 = (v3 + 2);
  if ((*(this + 21) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 13);
    *v3 = 101;
    *(v3 + 1) = v6;
    v3 = (v3 + 5);
  }

LABEL_14:
  if (*(this + 16) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 7) + 8 * v7);
      *v3 = 106;
      v9 = v8[21];
      if (v9 > 0x7F)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v9;
        v10 = (v3 + 2);
      }

      v3 = sub_10011A51C(v8, v10, a3);
      ++v7;
    }

    while (v7 < *(this + 16));
  }

  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, v3, a3);
}

uint64_t sub_10011DD1C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9 | v3 & 2;
    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    v5 = v4 + ((v3 >> 2) & 2);
    if ((v3 & 0x10) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 += 5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 5;
  if ((v3 & 0x100) == 0)
  {
    v6 = v5;
  }

  v7 = ((v3 >> 9) & 2) + ((v3 >> 8) & 2) + v6;
  if ((v3 & 0x800) != 0)
  {
    v7 += 5;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(a1 + 64);
  v10 = (v9 + v8);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_10011A870(*(*(a1 + 56) + 8 * v11), a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(a1 + 64));
  }

  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v10;
  }

  *(a1 + 80) = v10;
  return v10;
}

uint64_t sub_10011DE68(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011CDC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011DF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DF54(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_10014971C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1001197FC(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10011E07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E094(uint64_t result, uint64_t a2)
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

uint64_t sub_10011E128()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDEB0;
}

void sub_10011E1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E1D0(uint64_t a1)
{
  *a1 = off_1009940F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10011E238(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 16);
    *(a1 + 64) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 64);
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

  else if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 24);
  *(a1 + 64) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 64);
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
  v7 = *(a2 + 28);
  *(a1 + 64) |= 4u;
  *(a1 + 28) = v7;
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(a1 + 64) |= 0x10u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_1009F9D60 + 32);
    }

    sub_10011CDC0(v9, v10);
    v4 = *(a2 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_15:
  v8 = *(a2 + 56);
  *(a1 + 64) |= 8u;
  *(a1 + 56) = v8;
  v4 = *(a2 + 64);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  *(a1 + 64) |= 0x20u;
  v11 = *(a1 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 40);
  if (!v12)
  {
    v12 = *(qword_1009F9D60 + 40);
  }

  sub_10011ACB8(v11, v12);
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_26:
    *(a1 + 64) |= 0x40u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 48);
    if (!v14)
    {
      v14 = *(qword_1009F9D60 + 48);
    }

    sub_10011C4F4(v13, v14);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011E4A0(void *a1)
{
  *a1 = off_1009940F0;
  v2 = (a1 + 1);
  sub_10011E500(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10011E500(void *result)
{
  if (qword_1009F9D60 != result)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[6];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10011E5D0(void *a1)
{
  sub_10011E4A0(a1);

  operator delete();
}

uint64_t sub_10011E674(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 64);
  if (v2)
  {
    *(this + 56) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = sub_10011D0F8(this);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_10011AFA8(this);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_10011C740(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 14) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_10011E708(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              goto LABEL_30;
            }

            v13 = *(this + 1);
            v11 = *(this + 2);
            if (v13 >= v11 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v14;
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 64) |= 1u;
            if (v15 < v11 && *v15 == 16)
            {
              v17 = v15 + 1;
              *(this + 1) = v17;
LABEL_39:
              if (v17 >= v11 || (v19 = *v17, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v20 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v19;
                v20 = v17 + 1;
                *(this + 1) = v20;
              }

              *(a1 + 64) |= 2u;
              if (v20 < v11 && *v20 == 24)
              {
                v12 = v20 + 1;
                *(this + 1) = v12;
                goto LABEL_47;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_30;
              }

              v17 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_39;
            }

            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
LABEL_47:
            if (v12 >= v11 || (v21 = *v12, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v22 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v21;
              v22 = v12 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 64) |= 4u;
            if (v22 < v11 && *v22 == 32)
            {
              v16 = v22 + 1;
              *(this + 1) = v16;
              goto LABEL_55;
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(this + 1);
          v11 = *(this + 2);
LABEL_55:
          if (v16 >= v11 || (v23 = *v16, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
            if (!result)
            {
              return result;
            }

            v24 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 56) = v23;
            v24 = v16 + 1;
            *(this + 1) = v24;
          }

          v10 = *(a1 + 64) | 8;
          *(a1 + 64) = v10;
          if (v24 < v11 && *v24 == 42)
          {
            *(this + 1) = v24 + 1;
            goto LABEL_63;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_30;
          }

          v10 = *(a1 + 64);
LABEL_63:
          *(a1 + 64) = v10 | 0x10;
          v25 = *(a1 + 32);
          if (!v25)
          {
            operator new();
          }

          v55 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10011D174(v25, this, v30, v31) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v32 = *(this + 14);
          v33 = __OFSUB__(v32, 1);
          v34 = v32 - 1;
          if (v34 < 0 == v33)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          if (v35 < *(this + 2) && *v35 == 50)
          {
            *(this + 1) = v35 + 1;
LABEL_77:
            *(a1 + 64) |= 0x20u;
            v36 = *(a1 + 40);
            if (!v36)
            {
              operator new();
            }

            v56 = 0;
            v37 = *(this + 1);
            if (v37 >= *(this + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v56))
              {
                return 0;
              }
            }

            else
            {
              v56 = *v37;
              *(this + 1) = v37 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v56);
            if (!sub_10011AFD8(v36, this, v41, v42) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
            v43 = *(this + 14);
            v33 = __OFSUB__(v43, 1);
            v44 = v43 - 1;
            if (v44 < 0 == v33)
            {
              *(this + 14) = v44;
            }

            v45 = *(this + 1);
            if (v45 < *(this + 2) && *v45 == 58)
            {
              *(this + 1) = v45 + 1;
              goto LABEL_91;
            }
          }
        }
      }

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 2)
      {
        goto LABEL_30;
      }

LABEL_91:
      *(a1 + 64) |= 0x40u;
      v46 = *(a1 + 48);
      if (!v46)
      {
        operator new();
      }

      v57 = 0;
      v47 = *(this + 1);
      if (v47 >= *(this + 2) || *v47 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
        {
          return 0;
        }
      }

      else
      {
        v57 = *v47;
        *(this + 1) = v47 + 1;
      }

      v48 = *(this + 14);
      v49 = *(this + 15);
      *(this + 14) = v48 + 1;
      if (v48 >= v49)
      {
        return 0;
      }

      v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v57);
      if (!sub_10011C7A0(v46, this, v51, v52) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
      v53 = *(this + 14);
      v33 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v54 < 0 == v33)
      {
        *(this + 14) = v54;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (v9 == 2)
    {
      goto LABEL_77;
    }

LABEL_30:
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

uint64_t sub_10011ECDC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 64);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(qword_1009F9D60 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v7, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(qword_1009F9D60 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v8, a2, a4);
  if ((*(v5 + 64) & 0x40) != 0)
  {
LABEL_19:
    v9 = *(v5 + 48);
    if (!v9)
    {
      v9 = *(qword_1009F9D60 + 48);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v9, a2, a4);
  }

LABEL_22:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011EE2C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 64) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
    if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 64) & 8) != 0)
  {
    v9 = *(this + 14);
    *v3 = 32;
    if (v9 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v3 = (v3 + 2);
    }
  }

  v10 = *(this + 16);
  if ((v10 & 0x10) != 0)
  {
    v11 = *(this + 4);
    if (!v11)
    {
      v11 = *(qword_1009F9D60 + 32);
    }

    *v3 = 42;
    v12 = v11[20];
    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v13 = (v3 + 2);
    }

    v3 = sub_10011D9F0(v11, v13, a3);
    v10 = *(this + 16);
    if ((v10 & 0x20) == 0)
    {
LABEL_17:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v14 = *(this + 5);
  if (!v14)
  {
    v14 = *(qword_1009F9D60 + 40);
  }

  *v3 = 50;
  v15 = *(v14 + 48);
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v15;
    v16 = v3 + 2;
  }

  v3 = sub_10011B4F8(v14, v16, a3);
  if ((*(this + 16) & 0x40) != 0)
  {
LABEL_31:
    v17 = *(this + 6);
    if (!v17)
    {
      v17 = *(qword_1009F9D60 + 48);
    }

    *v3 = 58;
    v18 = v17[6];
    if (v18 > 0x7F)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v18;
      v19 = v3 + 2;
    }

    v3 = sub_10011C9E8(v17, v19, a3);
  }

LABEL_37:
  v22 = *(this + 1);
  v21 = (this + 8);
  v20 = v22;
  if (!v22 || *v20 == v20[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v3, a3);
}

uint64_t sub_10011F050(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (*(a1 + 64))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 24);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 28);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 56);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a1 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9D60 + 32);
  }

  v12 = sub_10011DD1C(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 = (v4 + v13 + v14 + 1);
  v3 = *(a1 + 64);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

LABEL_31:
  v15 = *(a1 + 40);
  if (!v15)
  {
    v15 = *(qword_1009F9D60 + 40);
  }

  v16 = sub_10011B6C8(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_37:
    v19 = *(a1 + 48);
    if (!v19)
    {
      v19 = *(qword_1009F9D60 + 48);
    }

    v20 = sub_10011CA98(v19, a2);
    v21 = v20;
    if (v20 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    }

    else
    {
      v22 = 1;
    }

    v4 = (v4 + v21 + v22 + 1);
  }

LABEL_43:
  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 60) = v4;
  return v4;
}

uint64_t sub_10011F230(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011E238(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011F304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F31C(uint64_t result, uint64_t a2)
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

uint64_t sub_10011F3B0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDEC0;
}

void sub_10011F444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F458(uint64_t a1)
{
  *a1 = off_1009941A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10011F4C0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_10011FE94((a1 + 24), a2 + 24);
  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9D68 + 16);
    }

    sub_10011ACB8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10011F5DC(uint64_t *a1)
{
  *a1 = off_1009941A0;
  if (qword_1009F9D68 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011F680(uint64_t *a1)
{
  sub_10011F5DC(a1);

  operator delete();
}

uint64_t sub_10011F6C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9D68;
  if (!qword_1009F9D68)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9D68;
  }

  return result;
}

uint64_t sub_10011F754(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      sub_10011AFA8(v2);
    }
  }

  result = sub_100077B98(a1 + 24);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 11) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_10011F7BC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
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

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10011AFD8(v9, this, v14, v15) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
      v16 = *(this + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(this + 14) = v18;
      }

      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 18)
      {
        do
        {
          *(this + 1) = v19 + 1;
LABEL_27:
          v20 = *(a1 + 36);
          v21 = *(a1 + 32);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v20 + 1);
              v20 = *(a1 + 36);
            }

            *(a1 + 36) = v20 + 1;
            sub_100149780();
          }

          v22 = *(a1 + 24);
          *(a1 + 32) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v35 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10011E708(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v17 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v17)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          v32 = *(this + 2);
        }

        while (v19 < v32 && *v19 == 18);
        if (v19 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10011FAD4(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9D68 + 16);
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

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10011FB98(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9D68 + 16);
    }

    *a2 = 10;
    v6 = a2 + 1;
    v7 = *(v5 + 48);
    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v8 = v3 + 2;
    }

    v3 = sub_10011B4F8(v5, v8, a3);
  }

  if (*(this + 8) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 3) + 8 * v9);
      *v3 = 18;
      v11 = v10[15];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v11;
        v12 = (v3 + 2);
      }

      v3 = sub_10011EE2C(v10, v12, a3);
      ++v9;
    }

    while (v9 < *(this + 8));
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v3, a3);
}

uint64_t sub_10011FCB8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 52))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9D68 + 16);
    }

    v5 = sub_10011B6C8(v4, a2);
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
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 32);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10011F050(*(*(a1 + 24) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(a1 + 32));
  }

  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v9;
  }

  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_10011FDA8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10011F4C0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10011FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011FE94(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100149780();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10011E238(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10011FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011FFD4(uint64_t result, uint64_t a2)
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

uint64_t sub_100120068()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDED0;
}

void sub_1001200FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100120110(uint64_t a1)
{
  *a1 = off_100994250;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_100120180(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 20);
  *(a1 + 72) |= 2u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 24);
  *(a1 + 72) |= 4u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 28);
  *(a1 + 72) |= 8u;
  *(a1 + 28) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v13 = *(a2 + 36);
    *(a1 + 72) |= 0x20u;
    *(a1 + 36) = v13;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  v12 = *(a2 + 32);
  *(a1 + 72) |= 0x10u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v14 = *(a2 + 37);
  *(a1 + 72) |= 0x40u;
  *(a1 + 37) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 38);
    *(a1 + 72) |= 0x80u;
    *(a1 + 38) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 40);
    *(a1 + 72) |= 0x100u;
    *(a1 + 40) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 44);
  *(a1 + 72) |= 0x200u;
  *(a1 + 44) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 48);
  *(a1 + 72) |= 0x400u;
  *(a1 + 48) = v17;
  v4 = *(a2 + 72);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 52);
  *(a1 + 72) |= 0x800u;
  *(a1 + 52) = v18;
  v4 = *(a2 + 72);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    v20 = *(a2 + 60);
    *(a1 + 72) |= 0x2000u;
    *(a1 + 60) = v20;
    if ((*(a2 + 72) & 0x4000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_21;
  }

LABEL_35:
  v19 = *(a2 + 56);
  *(a1 + 72) |= 0x1000u;
  *(a1 + 56) = v19;
  v4 = *(a2 + 72);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((v4 & 0x4000) != 0)
  {
LABEL_21:
    v6 = *(a2 + 64);
    *(a1 + 72) |= 0x4000u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001203EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100120404(uint64_t a1)
{
  *a1 = off_100994250;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100120458(uint64_t a1)
{
  *a1 = off_100994250;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012052C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 31) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100120568(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 72) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v20 = v12 + 1;
          *(this + 1) = v20;
          goto LABEL_47;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
LABEL_47:
        if (v20 >= v9 || (v27 = *v20, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v27;
          v28 = v20 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 72) |= 2u;
        if (v28 >= v9 || *v28 != 29)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_55:
        v52 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v52;
        *(a1 + 72) |= 4u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 37)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_59:
        v52 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 28) = v52;
        *(a1 + 72) |= 8u;
        v30 = *(this + 1);
        v16 = *(this + 2);
        if (v30 >= v16 || *v30 != 40)
        {
          continue;
        }

        v17 = v30 + 1;
        *(this + 1) = v17;
LABEL_63:
        if (v17 >= v16 || (v31 = *v17, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v31;
          v32 = v17 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 72) |= 0x10u;
        if (v32 >= v16 || *v32 != 48)
        {
          continue;
        }

        v21 = v32 + 1;
        *(this + 1) = v21;
LABEL_71:
        v52 = 0;
        if (v21 >= v16 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
          if (!result)
          {
            return result;
          }

          v33 = v52;
          v34 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          v34 = v21 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 36) = v33 != 0;
        *(a1 + 72) |= 0x20u;
        if (v34 >= v16 || *v34 != 56)
        {
          continue;
        }

        v23 = v34 + 1;
        *(this + 1) = v23;
LABEL_79:
        v52 = 0;
        if (v23 >= v16 || (v35 = *v23, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
          if (!result)
          {
            return result;
          }

          v35 = v52;
          v36 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          v36 = v23 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 37) = v35 != 0;
        *(a1 + 72) |= 0x40u;
        if (v36 >= v16 || *v36 != 64)
        {
          continue;
        }

        v19 = v36 + 1;
        *(this + 1) = v19;
LABEL_87:
        v52 = 0;
        if (v19 >= v16 || (v37 = *v19, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
          if (!result)
          {
            return result;
          }

          v37 = v52;
          v38 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          v38 = v19 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 38) = v37 != 0;
        *(a1 + 72) |= 0x80u;
        if (v38 >= v16 || *v38 != 72)
        {
          continue;
        }

        v25 = v38 + 1;
        *(this + 1) = v25;
LABEL_95:
        if (v25 >= v16 || (v39 = *v25, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v39;
          v40 = v25 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 72) |= 0x100u;
        if (v40 >= v16 || *v40 != 85)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_103:
        v52 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v52))
        {
          *(a1 + 44) = v52;
          *(a1 + 72) |= 0x200u;
          v41 = *(this + 1);
          v13 = *(this + 2);
          if (v41 < v13 && *v41 == 88)
          {
            v24 = v41 + 1;
            *(this + 1) = v24;
LABEL_107:
            if (v24 >= v13 || (v42 = *v24, v42 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
              if (!result)
              {
                return result;
              }

              v43 = *(this + 1);
              v13 = *(this + 2);
            }

            else
            {
              *(a1 + 48) = v42;
              v43 = v24 + 1;
              *(this + 1) = v43;
            }

            *(a1 + 72) |= 0x400u;
            if (v43 < v13 && *v43 == 96)
            {
              v15 = v43 + 1;
              *(this + 1) = v15;
LABEL_115:
              if (v15 >= v13 || (v44 = *v15, v44 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                if (!result)
                {
                  return result;
                }

                v45 = *(this + 1);
                v13 = *(this + 2);
              }

              else
              {
                *(a1 + 52) = v44;
                v45 = v15 + 1;
                *(this + 1) = v45;
              }

              *(a1 + 72) |= 0x800u;
              if (v45 < v13 && *v45 == 104)
              {
                v18 = v45 + 1;
                *(this + 1) = v18;
LABEL_123:
                if (v18 >= v13 || (v46 = *v18, v46 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                  if (!result)
                  {
                    return result;
                  }

                  v47 = *(this + 1);
                  v13 = *(this + 2);
                }

                else
                {
                  *(a1 + 56) = v46;
                  v47 = v18 + 1;
                  *(this + 1) = v47;
                }

                *(a1 + 72) |= 0x1000u;
                if (v47 < v13 && *v47 == 112)
                {
                  v22 = v47 + 1;
                  *(this + 1) = v22;
LABEL_131:
                  if (v22 >= v13 || (v48 = *v22, v48 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                    if (!result)
                    {
                      return result;
                    }

                    v49 = *(this + 1);
                    v13 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 60) = v48;
                    v49 = v22 + 1;
                    *(this + 1) = v49;
                  }

                  *(a1 + 72) |= 0x2000u;
                  if (v49 < v13 && *v49 == 120)
                  {
                    v14 = v49 + 1;
                    *(this + 1) = v14;
LABEL_139:
                    if (v14 >= v13 || (v50 = *v14, v50 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                      if (!result)
                      {
                        return result;
                      }

                      v51 = *(this + 1);
                      v13 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 64) = v50;
                      v51 = v14 + 1;
                      *(this + 1) = v51;
                    }

                    *(a1 + 72) |= 0x4000u;
                    if (v51 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        return 0;
      case 3u:
        if (v8 == 5)
        {
          goto LABEL_55;
        }

        goto LABEL_38;
      case 4u:
        if (v8 == 5)
        {
          goto LABEL_59;
        }

        goto LABEL_38;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_63;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_71;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v23 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_79;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_87;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v25 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_95;
      case 0xAu:
        if (v8 == 5)
        {
          goto LABEL_103;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v24 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_107;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_115;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_123;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v22 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_131;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_139;
      default:
LABEL_38:
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

uint64_t sub_100120C48(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 37), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 38), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 44), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 60), a2, a4);
    if ((*(v5 + 72) & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  if ((v6 & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 64), a2, a4);
  }

LABEL_17:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100120E48(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 72))
  {
    v5 = *(this + 4);
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

  if ((*(this + 72) & 2) != 0)
  {
    v7 = *(this + 5);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  v8 = *(this + 18);
  if ((v8 & 4) != 0)
  {
    v9 = *(this + 6);
    *v3 = 29;
    *(v3 + 1) = v9;
    v3 = (v3 + 5);
    v8 = *(this + 18);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(this + 7);
  *v3 = 37;
  *(v3 + 1) = v10;
  v3 = (v3 + 5);
  if ((*(this + 18) & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v11 = *(this + 8);
  *v3 = 40;
  if (v11 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v3 = (v3 + 2);
  }

LABEL_18:
  v12 = *(this + 18);
  if ((v12 & 0x20) != 0)
  {
    v13 = *(this + 36);
    *v3 = 48;
    *(v3 + 1) = v13;
    v3 = (v3 + 2);
    v12 = *(this + 18);
    if ((v12 & 0x40) == 0)
    {
LABEL_20:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((v12 & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(this + 37);
  *v3 = 56;
  *(v3 + 1) = v14;
  v3 = (v3 + 2);
  v12 = *(this + 18);
  if ((v12 & 0x80) == 0)
  {
LABEL_21:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *(this + 38);
  *v3 = 64;
  *(v3 + 1) = v15;
  v3 = (v3 + 2);
  if ((*(this + 18) & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v16 = *(this + 10);
  *v3 = 72;
  if (v16 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v16;
    v3 = (v3 + 2);
  }

LABEL_29:
  v17 = *(this + 18);
  if ((v17 & 0x200) != 0)
  {
    v18 = *(this + 11);
    *v3 = 85;
    *(v3 + 1) = v18;
    v3 = (v3 + 5);
    v17 = *(this + 18);
  }

  if ((v17 & 0x400) != 0)
  {
    v19 = *(this + 12);
    *v3 = 88;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 8) != 0)
  {
    v20 = *(this + 13);
    *v3 = 96;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 0x10) != 0)
  {
    v21 = *(this + 14);
    *v3 = 104;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 0x20) != 0)
  {
    v22 = *(this + 15);
    *v3 = 112;
    if (v22 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v22;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 0x40) != 0)
  {
    v23 = *(this + 16);
    *v3 = 120;
    if (v23 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v23;
      v3 = (v3 + 2);
    }
  }

  v26 = *(this + 1);
  v25 = (this + 8);
  v24 = v26;
  if (!v26 || *v24 == v24[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v25, v3, a3);
}

uint64_t sub_100121188(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[18];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_25;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v7 = a1[5];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[18];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_14;
  }

  v6 = a1[4];
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = a1[18];
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v9 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v10 = v9 + 5;
  }

  else
  {
    v10 = v9;
  }

  if ((v3 & 0x10) != 0)
  {
    v11 = a1[8];
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = a1[18];
    }

    else
    {
      v12 = 2;
    }

    v10 += v12;
  }

  v5 = ((v3 >> 4) & 2) + ((v3 >> 5) & 2) + ((v3 >> 6) & 2) + v10;
LABEL_25:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v13 = a1[10];
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = a1[18];
      }

      else
      {
        v14 = 2;
      }

      LODWORD(v5) = v14 + v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = (v5 + 5);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v15 = a1[12];
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = a1[18];
      }

      else
      {
        v16 = 2;
      }

      v5 = (v16 + v5);
      if ((v3 & 0x800) == 0)
      {
LABEL_36:
        if ((v3 & 0x1000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_48;
      }
    }

    else if ((v3 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    v17 = a1[13];
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = a1[18];
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
    if ((v3 & 0x1000) == 0)
    {
LABEL_37:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_52;
    }

LABEL_48:
    v19 = a1[14];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = a1[18];
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x2000) == 0)
    {
LABEL_38:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_60;
      }

LABEL_56:
      v23 = a1[16];
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      }

      else
      {
        v24 = 2;
      }

      v5 = (v24 + v5);
      goto LABEL_60;
    }

LABEL_52:
    v21 = a1[15];
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = a1[18];
    }

    else
    {
      v22 = 2;
    }

    v5 = (v22 + v5);
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_60:
  v25 = *(a1 + 1);
  if (v25 && *v25 != v25[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[17] = v5;
  return v5;
}

uint64_t sub_1001213B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100120180(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001214A4(uint64_t result, uint64_t a2)
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

uint64_t sub_100121538()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDEE0;
}

void sub_1001215CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001215E0(uint64_t a1)
{
  *a1 = off_100994300;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100121644(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_100077844((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 48);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 + 32);
      *(a1 + 48) |= 2u;
      *(a1 + 32) = v6;
      v5 = *(a2 + 48);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 40);
      *(a1 + 48) |= 4u;
      *(a1 + 40) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100121744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10012175C(void *a1)
{
  *a1 = off_100994300;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001217D4(void *a1)
{
  sub_10012175C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100121878(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1FE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001218A4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 == 1)
        {
          goto LABEL_39;
        }

        goto LABEL_15;
      }

      if (v8 != 1)
      {
        goto LABEL_15;
      }

      if (v9 == 2)
      {
        result = sub_100063628(this, a1 + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (v9 == 5)
      {
        while (1)
        {
          v28[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          v15 = v28[0];
          v16 = *(a1 + 24);
          if (v16 == *(a1 + 28))
          {
            sub_100077844((a1 + 16), v16 + 1);
            v16 = *(a1 + 24);
          }

          v17 = *(a1 + 16);
          v18 = v16 + 1;
          *(a1 + 24) = v16 + 1;
          *(v17 + 4 * v16) = v15;
          v19 = *(this + 1);
          v20 = *(this + 4) - v19;
          if (v20 >= 1)
          {
            v21 = v20 / 5u;
            v22 = v21 >= *(a1 + 28) - v18 ? *(a1 + 28) - v18 : v21;
            if (v22 >= 1)
            {
              v23 = 0;
              while (*v19 == 13)
              {
                v24 = *(v19 + 1);
                if (v18 >= *(a1 + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
                  v18 = *(a1 + 24);
                  v17 = *(a1 + 16);
                }

                *(a1 + 24) = v18 + 1;
                *(v17 + 4 * v18) = v24;
                ++v23;
                v19 += 5;
                ++v18;
                if (v22 == v23)
                {
                  v23 = v22;
                  goto LABEL_53;
                }
              }

              if (!v23)
              {
                goto LABEL_20;
              }

LABEL_53:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v23);
            }
          }

LABEL_20:
          v13 = *(this + 1);
          if (v13 >= *(this + 2))
          {
            break;
          }

          v14 = *v13;
          if (v14 == 17)
          {
            *(this + 1) = v13 + 1;
LABEL_39:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v28;
            *(a1 + 48) |= 2u;
            v25 = *(this + 1);
            v10 = *(this + 2);
            if (v25 < v10 && *v25 == 24)
            {
              v11 = v25 + 1;
              *(this + 1) = v11;
              goto LABEL_43;
            }

            goto LABEL_1;
          }

          if (v14 != 13)
          {
            goto LABEL_1;
          }

          *(this + 1) = v13 + 1;
        }
      }

      else
      {
LABEL_15:
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

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_15;
    }

    v11 = *(this + 1);
    v10 = *(this + 2);
LABEL_43:
    if (v11 >= v10 || (v26 = *v11, v26 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      v27 = *(this + 1);
      v10 = *(this + 2);
    }

    else
    {
      *(a1 + 40) = v26;
      v27 = v11 + 1;
      *(this + 1) = v27;
    }

    *(a1 + 48) |= 4u;
  }

  while (v27 != v10 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

void sub_100121BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100121BDC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v5 + 16) + 4 * v6++), a3);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 48);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 32), a3);
    v7 = *(v5 + 48);
  }

  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
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

uint64_t sub_100121CA8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 2) + 4 * v4);
      *a2 = 13;
      *(a2 + 1) = v5;
      a2 += 5;
      ++v4;
    }

    while (v4 < *(this + 6));
  }

  v6 = *(this + 12);
  if ((v6 & 2) != 0)
  {
    v7 = *(this + 4);
    *a2 = 17;
    *(a2 + 1) = v7;
    a2 += 9;
    v6 = *(this + 12);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(this + 10);
    *a2 = 24;
    if (v8 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v8;
      a2 += 2;
    }
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_100121DDC(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[12];
  if ((v3 & 0x1FE) != 0)
  {
    v4 = (v3 << 30 >> 31) & 9;
    if ((v3 & 4) != 0)
    {
      v5 = a1[10];
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 1);
  v8 = (5 * a1[6] + v4);
  if (v7 && *v7 != v7[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v8;
  }

  a1[11] = v8;
  return v8;
}

uint64_t sub_100121E74(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100121644(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100121F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100121F60(uint64_t result, uint64_t a2)
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