uint64_t sub_1001374B8(uint64_t a1)
{
  *a1 = off_1009954E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *&v2 = 0;
  *(a1 + 24) = v2;
  return a1;
}

uint64_t sub_100137524(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100137620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100137638(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009954E0;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013769C(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100137638(a1);

  operator delete();
}

uint64_t sub_1001376DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E48;
  if (!qword_1009F9E48)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E48;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100137770(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001377C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          goto LABEL_16;
        }

LABEL_19:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
        goto LABEL_19;
      }
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100137960(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    v6 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_1001379EC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
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
      a2[1] = v7;
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
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
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

uint64_t sub_100137B00(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 16);
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
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v11 = v12 + 1;
        v3 = *(a1 + 36);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 2;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v4 = v11 + v7;
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
  }

  else
  {
    v5 = 0;
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_100137BC0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100137524(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100137C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100137CAC(uint64_t result, uint64_t a2)
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

uint64_t sub_100137D40()
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

  return qword_1009EE090;
}

void sub_100137DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100137DE8(uint64_t a1)
{
  *a1 = off_100995590;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_100137E60(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_100138890((a1 + 32), a2 + 32);
  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      v5 = *(a2 + 16);
      *(a1 + 60) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 60);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 60) |= 2u;
      v7 = *(a1 + 24);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100137F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100137F80(uint64_t a1)
{
  *a1 = off_100995590;
  v2 = (a1 + 32);
  sub_1000880E8(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100137FF0(uint64_t a1)
{
  sub_100137F80(a1);

  operator delete();
}

uint64_t sub_100138030(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E50;
  if (!qword_1009F9E50)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E50;
  }

  return result;
}

uint64_t sub_1001380C4(uint64_t a1)
{
  v2 = *(a1 + 60);
  if (v2)
  {
    *(a1 + 16) = 0;
    if ((v2 & 2) != 0)
    {
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
  }

  result = sub_100077B98(a1 + 32);
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  *(v5 + 13) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

uint64_t sub_10013815C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_23;
      }

      v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v28;
      v10 = *(a1 + 60) | 1;
      *(a1 + 60) = v10;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_16:
        *(a1 + 60) = v10 | 2;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 26)
        {
          do
          {
            *(this + 1) = v13 + 1;
LABEL_26:
            v14 = *(a1 + 44);
            v15 = *(a1 + 40);
            if (v15 >= v14)
            {
              if (v14 == *(a1 + 48))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32), v14 + 1);
                v14 = *(a1 + 44);
              }

              *(a1 + 44) = v14 + 1;
              sub_100149848();
            }

            v16 = *(a1 + 32);
            *(a1 + 40) = v15 + 1;
            v17 = *(v16 + 8 * v15);
            v29 = 0;
            v18 = *(this + 1);
            if (v18 >= *(this + 2) || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
              {
                return 0;
              }
            }

            else
            {
              v29 = *v18;
              *(this + 1) = v18 + 1;
            }

            v19 = *(this + 14);
            v20 = *(this + 15);
            *(this + 14) = v19 + 1;
            if (v19 >= v20)
            {
              return 0;
            }

            v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29);
            if (!sub_100104318(v17, this, v22, v23) || *(this + 36) != 1)
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

            v13 = *(this + 1);
            v27 = *(this + 2);
          }

          while (v13 < v27 && *v13 == 26);
          if (v13 == v27 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v10 = *(a1 + 60);
      goto LABEL_16;
    }

LABEL_23:
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

uint64_t sub_100138440(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 60);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 32) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013850C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 15);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(this + 3);
    *v4 = 18;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  }

  if (*(this + 10) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 4) + 8 * v14);
      *v4 = 26;
      v16 = v15[20];
      if (v16 > 0x7F)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v16;
        v17 = (v4 + 2);
      }

      v4 = sub_1001049E0(v15, v17, a3, a4);
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

uint64_t sub_100138690(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 24);
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
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v7 = *(v5 + 23);
      }

      else
      {
        v10 = 1;
      }

      if (v7 < 0)
      {
        v6 = v8;
      }

      v4 += v10 + v6 + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *(a1 + 40);
  v12 = (v11 + v4);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_100104CF8(*(*(a1 + 32) + 8 * v13), a2);
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

    while (v13 < *(a1 + 40));
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 56) = v12;
  return v12;
}

uint64_t sub_1001387A4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100137E60(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100138878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100138890(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100149848();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100103E18(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1001389B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001389D0(uint64_t result, uint64_t a2)
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

uint64_t sub_100138A64()
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

  return qword_1009EE0A0;
}

void sub_100138AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100138B0C(uint64_t a1)
{
  *a1 = off_100995640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100138B78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 124);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 16);
    *(a1 + 124) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 124);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 124) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 124);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 28);
  *(a1 + 124) |= 4u;
  *(a1 + 28) = v9;
  v4 = *(a2 + 124);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 32);
  *(a1 + 124) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 124);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_33:
    v12 = *(a2 + 40);
    *(a1 + 124) |= 0x20u;
    *(a1 + 40) = v12;
    v4 = *(a2 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_32:
  v11 = *(a2 + 36);
  *(a1 + 124) |= 0x10u;
  *(a1 + 36) = v11;
  v4 = *(a2 + 124);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  v13 = *(a2 + 44);
  *(a1 + 124) |= 0x40u;
  *(a1 + 44) = v13;
  v4 = *(a2 + 124);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 124) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 124);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 56);
    *(a1 + 124) |= 0x100u;
    *(a1 + 56) = v14;
    v4 = *(a2 + 124);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 64);
  *(a1 + 124) |= 0x200u;
  *(a1 + 64) = v15;
  v4 = *(a2 + 124);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(a2 + 72);
  *(a1 + 124) |= 0x400u;
  *(a1 + 72) = v16;
  v4 = *(a2 + 124);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(a2 + 80);
  *(a1 + 124) |= 0x800u;
  *(a1 + 80) = v17;
  v4 = *(a2 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(a2 + 88);
  *(a1 + 124) |= 0x1000u;
  *(a1 + 88) = v18;
  v4 = *(a2 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(a2 + 96);
  *(a1 + 124) |= 0x2000u;
  *(a1 + 96) = v19;
  v4 = *(a2 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_42:
  v20 = *(a2 + 100);
  *(a1 + 124) |= 0x4000u;
  *(a1 + 100) = v20;
  v4 = *(a2 + 124);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 104);
    *(a1 + 124) |= 0x8000u;
    *(a1 + 104) = v6;
    v4 = *(a2 + 124);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x10000) == 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

LABEL_45:
    v22 = *(a2 + 112);
    *(a1 + 124) |= 0x20000u;
    *(a1 + 112) = v22;
    if ((*(a2 + 124) & 0x40000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_46;
  }

  v21 = *(a2 + 108);
  *(a1 + 124) |= 0x10000u;
  *(a1 + 108) = v21;
  v4 = *(a2 + 124);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_45;
  }

LABEL_26:
  if ((v4 & 0x40000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_46:
  v23 = *(a2 + 116);
  if (v23 >= 3)
  {
    sub_10049E334();
  }

  *(a1 + 124) |= 0x40000u;
  *(a1 + 116) = v23;
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100138E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100138E90(uint64_t a1)
{
  *a1 = off_100995640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100138EE4(uint64_t a1)
{
  *a1 = off_100995640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100138F54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E58;
  if (!qword_1009F9E58)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E58;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100138FE8(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 108) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 29) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100139040(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_46;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
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

        *(a1 + 124) |= 1u;
        if (v12 < v9 && *v12 == 21)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_55;
        }

        continue;
      case 2u:
        if (v8 != 5)
        {
          goto LABEL_46;
        }

LABEL_55:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v47;
        *(a1 + 124) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 29)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_59:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 28) = v47;
        *(a1 + 124) |= 4u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 37)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_63:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v47;
        *(a1 + 124) |= 8u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 45)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_67:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 36) = v47;
        *(a1 + 124) |= 0x10u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 53)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_71:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v47;
        *(a1 + 124) |= 0x20u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 61)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_75:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v47;
        *(a1 + 124) |= 0x40u;
        v28 = *(this + 1);
        v13 = *(this + 2);
        if (v28 >= v13 || *v28 != 64)
        {
          continue;
        }

        v17 = v28 + 1;
        *(this + 1) = v17;
LABEL_79:
        if (v17 >= v13 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v29;
          v30 = v17 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 124) |= 0x80u;
        if (v30 >= v13 || *v30 != 72)
        {
          continue;
        }

        v21 = v30 + 1;
        *(this + 1) = v21;
LABEL_87:
        if (v21 >= v13 || (v31 = *v21, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v31;
          v32 = v21 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 124) |= 0x100u;
        if (v32 >= v13 || *v32 != 80)
        {
          continue;
        }

        v16 = v32 + 1;
        *(this + 1) = v16;
LABEL_95:
        if (v16 >= v13 || (v33 = *v16, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v33;
          v34 = v16 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 124) |= 0x200u;
        if (v34 >= v13 || *v34 != 88)
        {
          continue;
        }

        v20 = v34 + 1;
        *(this + 1) = v20;
LABEL_103:
        if (v20 >= v13 || (v35 = *v20, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v35;
          v36 = v20 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 124) |= 0x400u;
        if (v36 >= v13 || *v36 != 96)
        {
          continue;
        }

        v14 = v36 + 1;
        *(this + 1) = v14;
LABEL_111:
        if (v14 >= v13 || (v37 = *v14, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 80) = v37;
          v38 = v14 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 124) |= 0x800u;
        if (v38 >= v13 || *v38 != 104)
        {
          continue;
        }

        v15 = v38 + 1;
        *(this + 1) = v15;
LABEL_119:
        if (v15 >= v13 || (v39 = *v15, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v39;
          v40 = v15 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 124) |= 0x1000u;
        if (v40 >= v13 || *v40 != 117)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_127:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = v47;
        *(a1 + 124) |= 0x2000u;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 125)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_131:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 100) = v47;
        *(a1 + 124) |= 0x4000u;
        v42 = *(this + 1);
        if (*(this + 4) - v42 < 2 || *v42 != 133 || v42[1] != 1)
        {
          continue;
        }

        *(this + 1) = v42 + 2;
LABEL_136:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = v47;
        *(a1 + 124) |= 0x8000u;
        v43 = *(this + 1);
        if (*(this + 4) - v43 < 2 || *v43 != 141 || v43[1] != 1)
        {
          continue;
        }

        *(this + 1) = v43 + 2;
LABEL_141:
        v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 108) = v47;
        *(a1 + 124) |= 0x10000u;
        v44 = *(this + 1);
        if (*(this + 4) - v44 < 2 || *v44 != 149 || v44[1] != 1)
        {
          continue;
        }

        *(this + 1) = v44 + 2;
LABEL_146:
        v47 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v47))
        {
          *(a1 + 112) = v47;
          *(a1 + 124) |= 0x20000u;
          v45 = *(this + 1);
          v18 = *(this + 2);
          if (v18 - v45 >= 2 && *v45 == 152 && v45[1] == 1)
          {
            v19 = (v45 + 2);
            *(this + 1) = v19;
LABEL_151:
            v47 = 0;
            if (v19 >= v18 || (v46 = *v19, (v46 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
              if (!result)
              {
                return result;
              }

              v46 = v47;
            }

            else
            {
              *(this + 1) = v19 + 1;
            }

            if (v46 > 2)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 19, v46);
            }

            else
            {
              *(a1 + 124) |= 0x40000u;
              *(a1 + 116) = v46;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          goto LABEL_59;
        }

        goto LABEL_46;
      case 4u:
        if (v8 == 5)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      case 5u:
        if (v8 == 5)
        {
          goto LABEL_67;
        }

        goto LABEL_46;
      case 6u:
        if (v8 == 5)
        {
          goto LABEL_71;
        }

        goto LABEL_46;
      case 7u:
        if (v8 == 5)
        {
          goto LABEL_75;
        }

        goto LABEL_46;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v17 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_79;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v21 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_87;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v16 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_95;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v20 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_103;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_111;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_119;
      case 0xEu:
        if (v8 == 5)
        {
          goto LABEL_127;
        }

        goto LABEL_46;
      case 0xFu:
        if (v8 == 5)
        {
          goto LABEL_131;
        }

        goto LABEL_46;
      case 0x10u:
        if (v8 == 5)
        {
          goto LABEL_136;
        }

        goto LABEL_46;
      case 0x11u:
        if (v8 == 5)
        {
          goto LABEL_141;
        }

        goto LABEL_46;
      case 0x12u:
        if (v8 == 5)
        {
          goto LABEL_146;
        }

        goto LABEL_46;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_151;
      default:
LABEL_46:
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

uint64_t sub_100139860(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 28), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 44), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xC, *(v5 + 80), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xD, *(v5 + 88), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xE, a2, *(v5 + 96), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xF, a2, *(v5 + 100), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x10, a2, *(v5 + 104), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x12, a2, *(v5 + 112), a3);
    if ((*(v5 + 124) & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x11, a2, *(v5 + 108), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_44;
  }

LABEL_19:
  if ((v6 & 0x40000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 116), a2, a4);
  }

LABEL_21:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100139AD0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 31);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
    v4 = *(this + 31);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 6);
  *a2 = 21;
  *(a2 + 1) = v6;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = *(this + 7);
  *a2 = 29;
  *(a2 + 1) = v7;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(this + 8);
  *a2 = 37;
  *(a2 + 1) = v8;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(this + 9);
  *a2 = 45;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(this + 10);
  *a2 = 53;
  *(a2 + 1) = v10;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(this + 11);
  *a2 = 61;
  *(a2 + 1) = v11;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(this + 6);
  *a2 = 64;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(this + 7);
  *a2 = 72;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(this + 8);
  *a2 = 80;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(this + 9);
  *a2 = 88;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(this + 10);
  *a2 = 96;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(this + 11);
  *a2 = 104;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, a2 + 1, a3);
  v4 = *(this + 31);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(this + 24);
  *a2 = 117;
  *(a2 + 1) = v18;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = *(this + 25);
  *a2 = 125;
  *(a2 + 1) = v19;
  a2 += 5;
  v4 = *(this + 31);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20 = *(this + 26);
  *a2 = 389;
  *(a2 + 2) = v20;
  a2 += 6;
  v4 = *(this + 31);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v21 = *(this + 27);
  *a2 = 397;
  *(a2 + 2) = v21;
  a2 += 6;
  v4 = *(this + 31);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

LABEL_39:
    v23 = *(this + 29);
    *a2 = 408;
    if ((v23 & 0x80000000) != 0)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, a2 + 2, a3);
    }

    else
    {
      if (v23 <= 0x7F)
      {
        *(a2 + 2) = v23;
        a2 += 3;
        goto LABEL_45;
      }

      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, a2 + 2, a3);
    }

    a2 = v24;
    goto LABEL_45;
  }

LABEL_38:
  v22 = *(this + 28);
  *a2 = 405;
  *(a2 + 2) = v22;
  a2 += 6;
  if ((*(this + 31) & 0x40000) != 0)
  {
    goto LABEL_39;
  }

LABEL_45:
  v27 = *(this + 1);
  v26 = (this + 8);
  v25 = v27;
  if (!v27 || *v25 == v25[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v26, a2, a3);
}

uint64_t sub_100139EBC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 124);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 124);
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
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
      v3 = *(a1 + 124);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 56), a2) + 1;
      v3 = *(a1 + 124);
      if ((v3 & 0x200) == 0)
      {
LABEL_24:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_47;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 64), a2) + 1;
    v3 = *(a1 + 124);
    if ((v3 & 0x400) == 0)
    {
LABEL_25:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_48;
    }

LABEL_47:
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 72), a2) + 1;
    v3 = *(a1 + 124);
    if ((v3 & 0x800) == 0)
    {
LABEL_26:
      if ((v3 & 0x1000) == 0)
      {
LABEL_28:
        v6 = v5 + 5;
        if ((v3 & 0x2000) == 0)
        {
          v6 = v5;
        }

        if ((v3 & 0x4000) != 0)
        {
          v6 += 5;
        }

        if ((v3 & 0x8000) != 0)
        {
          v5 = v6 + 6;
        }

        else
        {
          v5 = v6;
        }

        goto LABEL_35;
      }

LABEL_27:
      LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 88), a2) + 1;
      v3 = *(a1 + 124);
      goto LABEL_28;
    }

LABEL_48:
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2) + 1;
    v3 = *(a1 + 124);
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_35:
  if ((v3 & 0xFF0000) != 0)
  {
    v7 = v5 + 6;
    if ((v3 & 0x10000) == 0)
    {
      v7 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v5 = v7 + 6;
    }

    else
    {
      v5 = v7;
    }

    if ((v3 & 0x40000) != 0)
    {
      v8 = *(a1 + 116);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 12;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 2;
      }

      else
      {
        v9 = 3;
      }

      v5 = (v9 + v5);
    }
  }

  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 120) = v5;
  return v5;
}

uint64_t sub_10013A09C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100138B78(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013A170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013A188(uint64_t result, uint64_t a2)
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

uint64_t sub_10013A21C()
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

  return qword_1009EE0B0;
}

void sub_10013A2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013A2C4(uint64_t a1)
{
  *a1 = off_1009956F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10013A328(uint64_t a1, uint64_t a2)
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

LABEL_12:
      v9 = *(a2 + 28);
      *(a1 + 40) |= 4u;
      *(a1 + 28) = v9;
      if ((*(a2 + 40) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 40) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013A428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013A440(uint64_t a1)
{
  *a1 = off_1009956F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013A494(uint64_t a1)
{
  *a1 = off_1009956F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10013A504(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E60;
  if (!qword_1009F9E60)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E60;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013A598(uint64_t a1)
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

uint64_t sub_10013A5BC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 >= v9 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 40) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v16;
          v17 = v10 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 40) |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v15 = v17 + 1;
          *(this + 1) = v15;
LABEL_37:
          v24 = 0;
          if (v15 >= v9 || (v18 = *v15, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
            if (!result)
            {
              return result;
            }

            v18 = v24;
            v19 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v19 = v15 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 28) = v18;
          *(a1 + 40) |= 4u;
          if (v19 < v9 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
LABEL_45:
            v23 = 0;
            if (v11 >= v9 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 32) = v20;
            *(a1 + 40) |= 8u;
            if (v21 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10013A83C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 28), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013A908(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    v5 = *(this + 10);
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

  if ((*(this + 40) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
    v9 = v3 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
    }

    else
    {
      if (v8 <= 0x7F)
      {
        *(v3 + 1) = v8;
        v3 = (v3 + 2);
        goto LABEL_14;
      }

      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    }

    v3 = v10;
  }

LABEL_14:
  if ((*(this + 40) & 8) != 0)
  {
    v11 = *(this + 8);
    *v3 = 32;
    v12 = v3 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v3 + 1) = v11;
        v3 = (v3 + 2);
        goto LABEL_21;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v3 = v13;
  }

LABEL_21:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_10013AA3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 40) & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v5 = *(a1 + 24);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 40);
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
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v8 = 2;
      }

      v4 = (v8 + v4);
      if ((v3 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_26;
    }

    v9 = *(a1 + 32);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
    goto LABEL_26;
  }

  v4 = 0;
LABEL_26:
  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_10013AB48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013A328(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013AC34(uint64_t result, uint64_t a2)
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

uint64_t sub_10013ACC8()
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

  return qword_1009EE0C0;
}

void sub_10013AD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013AD70(uint64_t a1)
{
  *a1 = off_1009957A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_10013ADDC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 72))
  {
    v7 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 72);
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

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 72);
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
  v9 = *(a2 + 32);
  *(a1 + 72) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 72);
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
  v10 = *(a2 + 40);
  *(a1 + 72) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 72);
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
  v11 = *(a2 + 48);
  *(a1 + 72) |= 0x10u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v13 = *(a2 + 60);
    *(a1 + 72) |= 0x40u;
    *(a1 + 60) = v13;
    if ((*(a2 + 72) & 0x80) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

LABEL_19:
  v12 = *(a2 + 56);
  *(a1 + 72) |= 0x20u;
  *(a1 + 56) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 72) |= 0x80u;
    *(a1 + 64) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013AF74(uint64_t a1)
{
  *a1 = off_1009957A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013AFC8(uint64_t a1)
{
  *a1 = off_1009957A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013B09C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013B0C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_62;
            }
          }

          else if (v8 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_70;
          }
        }

        else if (v8 == 5)
        {
          if (v9 == 1)
          {
            goto LABEL_45;
          }
        }

        else if (v8 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 == 1)
          {
            goto LABEL_37;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_53;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_53;
      }

      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v26;
      *(a1 + 72) |= 1u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_30:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v26;
        *(a1 + 72) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_37:
          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v26;
          *(a1 + 72) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
LABEL_41:
            *v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v26;
            *(a1 + 72) |= 8u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 41)
            {
              *(this + 1) = v16 + 1;
LABEL_45:
              *v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v26;
              *(a1 + 72) |= 0x10u;
              v17 = *(this + 1);
              v10 = *(this + 2);
              if (v17 < v10 && *v17 == 48)
              {
                v11 = v17 + 1;
                *(this + 1) = v11;
LABEL_49:
                v26[0] = 0;
                if (v11 >= v10 || (v18 = *v11, (v18 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                  if (!result)
                  {
                    return result;
                  }

                  v18 = v26[0];
                  v19 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v19 = v11 + 1;
                  *(this + 1) = v19;
                }

                *(a1 + 56) = v18;
                *(a1 + 72) |= 0x20u;
                if (v19 < v10 && *v19 == 56)
                {
                  v20 = v19 + 1;
                  *(this + 1) = v20;
LABEL_62:
                  v26[0] = 0;
                  if (v20 >= v10 || (v22 = *v20, (v22 & 0x80000000) != 0))
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
                    v23 = v20 + 1;
                    *(this + 1) = v23;
                  }

                  *(a1 + 60) = v22;
                  *(a1 + 72) |= 0x40u;
                  if (v23 < v10 && *v23 == 64)
                  {
                    v12 = v23 + 1;
                    *(this + 1) = v12;
LABEL_70:
                    v26[0] = 0;
                    if (v12 >= v10 || (v24 = *v12, (v24 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                      if (!result)
                      {
                        return result;
                      }

                      v24 = v26[0];
                      v25 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      v25 = v12 + 1;
                      *(this + 1) = v25;
                    }

                    *(a1 + 64) = v24 != 0;
                    *(a1 + 72) |= 0x80u;
                    if (v25 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_30;
    }

LABEL_53:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10013B4C4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
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

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 60), a2, a4);
    if ((*(v5 + 72) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 64), a2, a4);
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

uint64_t sub_10013B600(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v5;
    a2 += 9;
    v4 = *(this + 18);
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

  v6 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v6;
  a2 += 9;
  v4 = *(this + 18);
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
  v7 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v7;
  a2 += 9;
  v4 = *(this + 18);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v8;
  a2 += 9;
  v4 = *(this + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(this + 6);
  *a2 = 41;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(this + 18) & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v10 = *(this + 14);
  *a2 = 48;
  if ((v10 & 0x80000000) != 0)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  }

  else
  {
    if (v10 <= 0x7F)
    {
      *(a2 + 1) = v10;
      a2 += 2;
      goto LABEL_19;
    }

    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  a2 = v11;
LABEL_19:
  if ((*(this + 72) & 0x40) == 0)
  {
    goto LABEL_26;
  }

  v12 = *(this + 15);
  *a2 = 56;
  if ((v12 & 0x80000000) != 0)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  }

  else
  {
    if (v12 <= 0x7F)
    {
      *(a2 + 1) = v12;
      a2 += 2;
      goto LABEL_26;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
  }

  a2 = v13;
LABEL_26:
  if ((*(this + 72) & 0x80) != 0)
  {
    v14 = *(this + 64);
    *a2 = 64;
    *(a2 + 1) = v14;
    a2 += 2;
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_10013B8C0(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[18];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
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
      v6 = a1[14];
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[18];
      }

      else
      {
        v7 = 2;
      }

      v5 += v7;
    }

    if ((v3 & 0x40) != 0)
    {
      v9 = a1[15];
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = a1[18];
      }

      else
      {
        v10 = 2;
      }

      v5 += v10;
    }

    v8 = ((v3 >> 6) & 2) + v5;
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a1 + 1);
  if (v11 && *v11 != v11[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v8;
  }

  a1[17] = v8;
  return v8;
}

uint64_t sub_10013B9CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013ADDC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013BAB8(uint64_t result, uint64_t a2)
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

uint64_t sub_10013BB4C()
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

  return qword_1009EE0D0;
}

void sub_10013BBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013BBF4(uint64_t a1)
{
  *a1 = off_100995850;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10013BC54(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        v7 = *(qword_1009F9E70 + 16);
      }

      sub_10013ADDC(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013BD84(void *a1)
{
  *a1 = off_100995850;
  if (qword_1009F9E70 != a1)
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

void sub_10013BE1C(void *a1)
{
  sub_10013BD84(a1);

  operator delete();
}

uint64_t sub_10013BE5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E70;
  if (!qword_1009F9E70)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E70;
  }

  return result;
}

uint64_t sub_10013BEF0(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 24) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        if (*(this + 72))
        {
          *(this + 64) = 0;
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 64) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 6) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10013BF7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 == 2)
        {
          v13 = *(a1 + 32);
          goto LABEL_22;
        }

LABEL_13:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      v13 = *(a1 + 32) | 1;
      *(a1 + 32) = v13;
    }

    while (v12 >= v9 || *v12 != 18);
    *(this + 1) = v12 + 1;
LABEL_22:
    *(a1 + 32) = v13 | 2;
    v15 = *(a1 + 16);
    if (!v15)
    {
      operator new();
    }

    v25 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v16;
      *(this + 1) = v16 + 1;
    }

    v17 = *(this + 14);
    v18 = *(this + 15);
    *(this + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_10013B0C8(v15, this, v20, v21) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10013C1C0(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9E70 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013C25C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 32))
  {
    v4 = *(this + 6);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v4;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 32) & 2) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9E70 + 16);
    }

    *a2 = 18;
    v6 = v5[17];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = a2 + 2;
    }

    a2 = sub_10013B600(v5, v7, a3);
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_10013C344(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 32) & 2) == 0)
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
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9E70 + 16);
    }

    v7 = sub_10013B8C0(v6, a2);
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
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_10013C41C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013BC54(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013C4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013C508(uint64_t result, uint64_t a2)
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

uint64_t sub_10013C59C()
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

  return qword_1009EE0E0;
}

void sub_10013C630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013C644(uint64_t a1)
{
  *a1 = off_100995900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 39) = 0;
  return a1;
}

uint64_t sub_10013C6AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v7;
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

  v8 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 48);
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
  v9 = *(a2 + 32);
  *(a1 + 48) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 41);
    *(a1 + 48) |= 0x10u;
    *(a1 + 41) = v11;
    if ((*(a2 + 48) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 48) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 42);
    *(a1 + 48) |= 0x20u;
    *(a1 + 42) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013C7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013C804(uint64_t a1)
{
  *a1 = off_100995900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013C858(uint64_t a1)
{
  *a1 = off_100995900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013C92C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 39) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013C954(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_42;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_50;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_58;
          }

          goto LABEL_33;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_33;
        }

        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v26;
        *(a1 + 48) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_25;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_33;
      }

LABEL_25:
      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = *v26;
      *(a1 + 48) |= 2u;
      v15 = *(this + 1);
      v10 = *(this + 2);
      if (v15 < v10 && *v15 == 24)
      {
        v11 = v15 + 1;
        *(this + 1) = v11;
LABEL_29:
        if (v11 >= v10 || (v16 = *v11, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v16;
          v17 = v11 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 48) |= 4u;
        if (v17 < v10 && *v17 == 32)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_42:
          v26[0] = 0;
          if (v14 >= v10 || (v20 = *v14, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
            if (!result)
            {
              return result;
            }

            v20 = v26[0];
            v21 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v21 = v14 + 1;
            *(this + 1) = v21;
          }

          *(a1 + 40) = v20 != 0;
          *(a1 + 48) |= 8u;
          if (v21 < v10 && *v21 == 40)
          {
            v18 = v21 + 1;
            *(this + 1) = v18;
LABEL_50:
            v26[0] = 0;
            if (v18 >= v10 || (v22 = *v18, (v22 & 0x80000000) != 0))
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
              v23 = v18 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 41) = v22 != 0;
            *(a1 + 48) |= 0x10u;
            if (v23 < v10 && *v23 == 48)
            {
              v12 = v23 + 1;
              *(this + 1) = v12;
LABEL_58:
              v26[0] = 0;
              if (v12 >= v10 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                if (!result)
                {
                  return result;
                }

                v24 = v26[0];
                v25 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 42) = v24 != 0;
              *(a1 + 48) |= 0x20u;
              if (v25 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_29;
    }

LABEL_33:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10013CCAC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 41), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 42), a2, a4);
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

uint64_t sub_10013CDB0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 12);
  if (v4)
  {
    v10 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v10;
    a2 += 9;
    v4 = *(this + 12);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v11;
  a2 += 9;
  v4 = *(this + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(this + 4);
  *a2 = 24;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  v4 = *(this + 12);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v14 = *(this + 41);
    *a2 = 40;
    *(a2 + 1) = v14;
    a2 += 2;
    if ((*(this + 12) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  v13 = *(this + 40);
  *a2 = 32;
  *(a2 + 1) = v13;
  a2 += 2;
  v4 = *(this + 12);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v5 = *(this + 42);
    *a2 = 48;
    *(a2 + 1) = v5;
    a2 += 2;
  }

LABEL_8:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8 || *v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}

uint64_t sub_10013CF38(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
      v3 = *(a1 + 48);
    }

    v5 = ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + ((v3 >> 4) & 2) + v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  if (v6 && *v6 != v6[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 44) = v5;
  return v5;
}

uint64_t sub_10013CFE8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013C6AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013D0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013D0D4(uint64_t result, uint64_t a2)
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

uint64_t sub_10013D168()
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

  return qword_1009EE0F0;
}

void sub_10013D1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013D210(uint64_t a1)
{
  *a1 = off_1009959B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10013D274(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      *(a1 + 40) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 40);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        *(a1 + 40) |= 4u;
        v7 = *(a1 + 24);
        if (!v7)
        {
          operator new();
        }

        v8 = *(a2 + 24);
        if (!v8)
        {
          v8 = *(qword_1009F9E80 + 24);
        }

        sub_10013C6AC(v7, v8);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) |= 2u;
    *(a1 + 32) = v6;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013D3CC(void *a1)
{
  *a1 = off_1009959B0;
  if (qword_1009F9E80 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013D464(void *a1)
{
  sub_10013D3CC(a1);

  operator delete();
}

uint64_t sub_10013D4A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E80;
  if (!qword_1009F9E80)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E80;
  }

  return result;
}

uint64_t sub_10013D538(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 16) = 0;
    *(this + 32) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 39) = 0;
          *(this + 32) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 8) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10013D5C4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

          if (v9 == 2)
          {
            v15 = *(a1 + 40);
            goto LABEL_33;
          }

LABEL_16:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        if (v8 == 2)
        {
          break;
        }

        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 40) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(this + 1) = v14;
          goto LABEL_25;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
LABEL_25:
      if (v14 >= v10 || (v17 = *v14, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v17;
        v18 = v14 + 1;
        *(this + 1) = v18;
      }

      v15 = *(a1 + 40) | 2;
      *(a1 + 40) = v15;
    }

    while (v18 >= v10 || *v18 != 26);
    *(this + 1) = v18 + 1;
LABEL_33:
    *(a1 + 40) = v15 | 4;
    v19 = *(a1 + 24);
    if (!v19)
    {
      operator new();
    }

    v29 = 0;
    v20 = *(this + 1);
    if (v20 >= *(this + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v20;
      *(this + 1) = v20 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29);
    if (!sub_10013C954(v19, this, v24, v25) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
    v26 = *(this + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(this + 14) = v28;
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

uint64_t sub_10013D878(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_1009F9E80 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2, a4);
LABEL_10:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013D938(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
    v4 = *(this + 10);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 8);
    *a2 = 16;
    if (v6 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 40) & 4) != 0)
  {
    v7 = *(this + 3);
    if (!v7)
    {
      v7 = *(qword_1009F9E80 + 24);
    }

    *a2 = 26;
    v8 = v7[11];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v8;
      v9 = a2 + 2;
    }

    a2 = sub_10013CDB0(v7, v9, a3);
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_10013DA3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (*(a1 + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      v7 = *(qword_1009F9E80 + 24);
    }

    v8 = sub_10013CF38(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

LABEL_18:
  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_10013DB28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013D274(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013DC14(uint64_t result, uint64_t a2)
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

uint64_t sub_10013DCA8()
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

  return qword_1009EE100;
}

void sub_10013DD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013DD50(uint64_t a1)
{
  *a1 = off_100995A60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10013DDB4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      *(a1 + 48) |= 4u;
      *(a1 + 24) = v9;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 40);
  *(a1 + 48) |= 2u;
  *(a1 + 40) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013DECC(uint64_t a1)
{
  *a1 = off_100995A60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013DF20(uint64_t a1)
{
  *a1 = off_100995A60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10013DF90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E88;
  if (!qword_1009F9E88)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E88;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013E024(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013E04C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v19;
          *(a1 + 48) |= 4u;
          v18 = *(this + 1);
          if (v18 < *(this + 2) && *v18 == 33)
          {
            *(this + 1) = v18 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v8 != 4 || v9 != 1)
          {
            goto LABEL_20;
          }

LABEL_40:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v19;
          *(a1 + 48) |= 8u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 >= v10 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 48) |= 1u;
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(this + 1) = v11;
LABEL_28:
        if (v11 >= v10 || (v16 = *v11, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v16;
          v17 = v11 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 48) |= 2u;
        if (v17 < v10 && *v17 == 25)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_36;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_28;
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

uint64_t sub_10013E290(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 48) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
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

_BYTE *sub_10013E35C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, (a2 + 1), a3);
    v4 = *(this + 12);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 10);
    *a2 = 16;
    if (v6 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v7 = *(this + 12);
  if ((v7 & 4) != 0)
  {
    v8 = *(this + 3);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
    v7 = *(this + 12);
  }

  if ((v7 & 8) != 0)
  {
    v9 = *(this + 4);
    *a2 = 33;
    *(a2 + 1) = v9;
    a2 += 9;
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_10013E4B0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(a1 + 40);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_11;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v8 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v8 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v8 + 9;
  }

  else
  {
    v5 = v8;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 44) = v5;
  return v5;
}

uint64_t sub_10013E568(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013DDB4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013E63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013E654(uint64_t result, uint64_t a2)
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

uint64_t sub_10013E6E8()
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

  return qword_1009EE110;
}

void sub_10013E77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013E790(uint64_t a1)
{
  *a1 = off_100995B10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10013E7F8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    v7 = *(a2 + 16);
    *(a1 + 64) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 64);
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

  else if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 64) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 64);
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
  v9 = *(a2 + 28);
  *(a1 + 64) |= 4u;
  *(a1 + 28) = v9;
  v4 = *(a2 + 64);
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
  v10 = *(a2 + 40);
  *(a1 + 64) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 64);
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
  *(a1 + 64) |= 0x10u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v13 = *(a2 + 56);
    *(a1 + 64) |= 0x40u;
    *(a1 + 56) = v13;
    if ((*(a2 + 64) & 0x80) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

LABEL_19:
  v12 = *(a2 + 44);
  *(a1 + 64) |= 0x20u;
  *(a1 + 44) = v12;
  v4 = *(a2 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 64) |= 0x80u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013E990(uint64_t a1)
{
  *a1 = off_100995B10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013E9E4(uint64_t a1)
{
  *a1 = off_100995B10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10013EA54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E90;
  if (!qword_1009F9E90)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E90;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013EAE8(uint64_t a1)
{
  if (*(a1 + 64))
  {
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 14) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013EB10(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v9 == 1)
            {
              goto LABEL_67;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        if (v8 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_79;
          }

          goto LABEL_34;
        }

        if (v8 != 8 || v9 != 1)
        {
          goto LABEL_34;
        }

LABEL_87:
        v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v32;
        *(a1 + 64) |= 0x80u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_51;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v15 = *(this + 1);
      v10 = *(this + 2);
      if (v15 >= v10 || (v16 = *v15, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v17 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v16;
        v17 = v15 + 1;
        *(this + 1) = v17;
      }

      *(a1 + 64) |= 1u;
      if (v17 < v10 && *v17 == 16)
      {
        v11 = v17 + 1;
        *(this + 1) = v11;
LABEL_43:
        if (v11 >= v10 || (v21 = *v11, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v21;
          v22 = v11 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 64) |= 2u;
        if (v22 < v10 && *v22 == 24)
        {
          v18 = v22 + 1;
          *(this + 1) = v18;
LABEL_51:
          if (v18 >= v10 || (v23 = *v18, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v24 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v23;
            v24 = v18 + 1;
            *(this + 1) = v24;
          }

          *(a1 + 64) |= 4u;
          if (v24 < v10 && *v24 == 32)
          {
            v14 = v24 + 1;
            *(this + 1) = v14;
LABEL_59:
            if (v14 >= v10 || (v25 = *v14, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v26 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v25;
              v26 = v14 + 1;
              *(this + 1) = v26;
            }

            *(a1 + 64) |= 8u;
            if (v26 < v10 && *v26 == 41)
            {
              *(this + 1) = v26 + 1;
LABEL_67:
              v32 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v32) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 32) = v32;
              *(a1 + 64) |= 0x10u;
              v27 = *(this + 1);
              v12 = *(this + 2);
              if (v27 < v12 && *v27 == 48)
              {
                v13 = v27 + 1;
                *(this + 1) = v13;
LABEL_71:
                if (v13 >= v12 || (v28 = *v13, v28 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                  if (!result)
                  {
                    return result;
                  }

                  v29 = *(this + 1);
                  v12 = *(this + 2);
                }

                else
                {
                  *(a1 + 44) = v28;
                  v29 = v13 + 1;
                  *(this + 1) = v29;
                }

                *(a1 + 64) |= 0x20u;
                if (v29 < v12 && *v29 == 56)
                {
                  v19 = v29 + 1;
                  *(this + 1) = v19;
LABEL_79:
                  if (v19 >= v12 || (v30 = *v19, v30 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                    if (!result)
                    {
                      return result;
                    }

                    v31 = *(this + 1);
                    v12 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 56) = v30;
                    v31 = v19 + 1;
                    *(this + 1) = v31;
                  }

                  *(a1 + 64) |= 0x40u;
                  if (v31 < v12 && *v31 == 65)
                  {
                    *(this + 1) = v31 + 1;
                    goto LABEL_87;
                  }
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
      goto LABEL_43;
    }

LABEL_34:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10013EF28(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_18;
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

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
    if ((*(v5 + 64) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013F064(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
    v9 = *(this + 10);
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
    *v3 = 41;
    *(v3 + 1) = v11;
    v3 = (v3 + 9);
    v10 = *(this + 16);
  }

  if ((v10 & 0x20) != 0)
  {
    v12 = *(this + 11);
    *v3 = 48;
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 64) & 0x40) != 0)
  {
    v13 = *(this + 14);
    *v3 = 56;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 64) & 0x80) != 0)
  {
    v14 = *(this + 6);
    *v3 = 65;
    *(v3 + 1) = v14;
    v3 = (v3 + 9);
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v3, a3);
}

uint64_t sub_10013F290(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if (*(a1 + 64))
  {
    LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v4) = 0;
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

  LODWORD(v4) = v6 + v4;
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

    LODWORD(v4) = v8 + v4;
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if ((v3 & 8) != 0)
  {
LABEL_18:
    v9 = *(a1 + 40);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v10 = 2;
    }

    LODWORD(v4) = v10 + v4;
  }

LABEL_22:
  if ((v3 & 0x10) != 0)
  {
    LODWORD(v4) = v4 + 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v11 = *(a1 + 44);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v12 = 2;
    }

    LODWORD(v4) = v12 + v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 = *(a1 + 56);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v14 = 2;
    }

    LODWORD(v4) = v14 + v4;
  }

  if ((v3 & 0x80) != 0)
  {
    v4 = (v4 + 9);
  }

  else
  {
    v4 = v4;
  }

LABEL_37:
  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 60) = v4;
  return v4;
}

uint64_t sub_10013F3F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013E7F8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013F4DC(uint64_t result, uint64_t a2)
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

uint64_t sub_10013F570()
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

  return qword_1009EE120;
}

void sub_10013F604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013F618(uint64_t a1)
{
  *a1 = off_100995BC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10013F684(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 104);
    *(a1 + 112) |= 1u;
    *(a1 + 104) = v8;
    v4 = *(a2 + 112);
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

  v9 = *(a2 + 16);
  *(a1 + 112) |= 2u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 112);
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
  *(a1 + 112) |= 4u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 112);
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
  v11 = *(a2 + 32);
  *(a1 + 112) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 48);
    *(a1 + 112) |= 0x20u;
    *(a1 + 48) = v13;
    v4 = *(a2 + 112);
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
  v12 = *(a2 + 40);
  *(a1 + 112) |= 0x10u;
  *(a1 + 40) = v12;
  v4 = *(a2 + 112);
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
  v14 = *(a2 + 56);
  *(a1 + 112) |= 0x40u;
  *(a1 + 56) = v14;
  v4 = *(a2 + 112);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 112) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 112);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 72);
    *(a1 + 112) |= 0x100u;
    *(a1 + 72) = v15;
    v4 = *(a2 + 112);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 88);
      *(a1 + 112) |= 0x400u;
      *(a1 + 88) = v17;
      if ((*(a2 + 112) & 0x800) == 0)
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

  v16 = *(a2 + 80);
  *(a1 + 112) |= 0x200u;
  *(a1 + 80) = v16;
  v4 = *(a2 + 112);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 96);
    *(a1 + 112) |= 0x800u;
    *(a1 + 96) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10013F890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013F8A8(uint64_t a1)
{
  *a1 = off_100995BC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013F8FC(uint64_t a1)
{
  *a1 = off_100995BC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013F9D0(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    *(a1 + 104) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 26) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013FA18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 <= 9)
          {
            if (v8 == 7)
            {
              if (v9 == 1)
              {
                goto LABEL_74;
              }
            }

            else if (v8 == 8)
            {
              if (v9 == 1)
              {
                goto LABEL_78;
              }
            }

            else if (v8 == 9 && v9 == 1)
            {
              goto LABEL_82;
            }

            goto LABEL_46;
          }

          if (v8 == 10)
          {
            if (v9 == 1)
            {
              goto LABEL_86;
            }

            goto LABEL_46;
          }

          if (v8 == 11)
          {
            if (v9 != 1)
            {
              goto LABEL_46;
            }

LABEL_90:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 88) = v25;
            *(a1 + 112) |= 0x400u;
            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 97)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_94;
            }
          }

          else
          {
            if (v8 != 12 || v9 != 1)
            {
              goto LABEL_46;
            }

LABEL_94:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 96) = v25;
            *(a1 + 112) |= 0x800u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_62;
            }
          }

          else if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_66;
            }
          }

          else if (v8 == 6 && v9 == 1)
          {
            goto LABEL_70;
          }

          goto LABEL_46;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 104));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 104) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 112) |= 1u;
        if (v13 < v10 && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_54;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_46;
      }

LABEL_54:
      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v25;
      *(a1 + 112) |= 2u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 25)
      {
        *(this + 1) = v15 + 1;
LABEL_58:
        v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v25;
        *(a1 + 112) |= 4u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 33)
        {
          *(this + 1) = v16 + 1;
LABEL_62:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v25;
          *(a1 + 112) |= 8u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 41)
          {
            *(this + 1) = v17 + 1;
LABEL_66:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v25;
            *(a1 + 112) |= 0x10u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 49)
            {
              *(this + 1) = v18 + 1;
LABEL_70:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = v25;
              *(a1 + 112) |= 0x20u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 57)
              {
                *(this + 1) = v19 + 1;
LABEL_74:
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = v25;
                *(a1 + 112) |= 0x40u;
                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 65)
                {
                  *(this + 1) = v20 + 1;
LABEL_78:
                  v25 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = v25;
                  *(a1 + 112) |= 0x80u;
                  v21 = *(this + 1);
                  if (v21 < *(this + 2) && *v21 == 73)
                  {
                    *(this + 1) = v21 + 1;
LABEL_82:
                    v25 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 72) = v25;
                    *(a1 + 112) |= 0x100u;
                    v22 = *(this + 1);
                    if (v22 < *(this + 2) && *v22 == 81)
                    {
                      *(this + 1) = v22 + 1;
LABEL_86:
                      v25 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v25) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 80) = v25;
                      *(a1 + 112) |= 0x200u;
                      v23 = *(this + 1);
                      if (v23 < *(this + 2) && *v23 == 89)
                      {
                        *(this + 1) = v23 + 1;
                        goto LABEL_90;
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

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_58;
    }

LABEL_46:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10013FF38(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 104), a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
    if ((*(v5 + 112) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v6 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  }

LABEL_14:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_1001400E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 112))
  {
    v4 = *(this + 26);
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

  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    v11 = *(this + 2);
    *a2 = 17;
    *(a2 + 1) = v11;
    a2 += 9;
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(this + 3);
  *a2 = 25;
  *(a2 + 1) = v12;
  a2 += 9;
  v5 = *(this + 28);
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
  v13 = *(this + 4);
  *a2 = 33;
  *(a2 + 1) = v13;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(this + 5);
  *a2 = 41;
  *(a2 + 1) = v14;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = *(this + 6);
  *a2 = 49;
  *(a2 + 1) = v15;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(this + 7);
  *a2 = 57;
  *(a2 + 1) = v16;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = *(this + 8);
  *a2 = 65;
  *(a2 + 1) = v17;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = *(this + 9);
  *a2 = 73;
  *(a2 + 1) = v18;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    v20 = *(this + 11);
    *a2 = 89;
    *(a2 + 1) = v20;
    a2 += 9;
    if ((*(this + 28) & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_31:
  v19 = *(this + 10);
  *a2 = 81;
  *(a2 + 1) = v19;
  a2 += 9;
  v5 = *(this + 28);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v5 & 0x800) != 0)
  {
LABEL_16:
    v6 = *(this + 12);
    *a2 = 97;
    *(a2 + 1) = v6;
    a2 += 9;
  }

LABEL_17:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_10014053C(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[28];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[26];
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[28];
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
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
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

  if ((v3 & 0xFF00) != 0)
  {
    v7 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v7 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v5 = v7 + 9;
    }

    else
    {
      v5 = v7;
    }
  }

  v8 = *(a1 + 1);
  if (v8 && *v8 != v8[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[27] = v5;
  return v5;
}

uint64_t sub_100140650(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013F684(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100140724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014073C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001407D0()
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

  return qword_1009EE130;
}

void sub_100140864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100140878(uint64_t a1)
{
  *a1 = off_100995C70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 176) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  return a1;
}

uint64_t sub_1001408F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  sub_10014233C((a1 + 152), a2 + 152);
  v4 = *(a2 + 180);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 24);
    *(a1 + 180) |= 1u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 180);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  *(a1 + 180) |= 2u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 180);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a2 + 28);
  *(a1 + 180) |= 4u;
  *(a1 + 28) = v11;
  v4 = *(a2 + 180);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 64);
  *(a1 + 180) |= 8u;
  *(a1 + 64) = v12;
  v4 = *(a2 + 180);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v14 = *(a2 + 40);
    *(a1 + 180) |= 0x20u;
    *(a1 + 40) = v14;
    v4 = *(a2 + 180);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_33:
  v13 = *(a2 + 32);
  *(a1 + 180) |= 0x10u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 180);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  v15 = *(a2 + 48);
  *(a1 + 180) |= 0x40u;
  *(a1 + 48) = v15;
  v4 = *(a2 + 180);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 180) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 180);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 72);
    *(a1 + 180) |= 0x100u;
    *(a1 + 72) = v16;
    v4 = *(a2 + 180);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 80);
  *(a1 + 180) |= 0x200u;
  *(a1 + 80) = v17;
  v4 = *(a2 + 180);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 88);
  *(a1 + 180) |= 0x400u;
  *(a1 + 88) = v18;
  v4 = *(a2 + 180);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 96);
  *(a1 + 180) |= 0x800u;
  *(a1 + 96) = v19;
  v4 = *(a2 + 180);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 68);
  *(a1 + 180) |= 0x1000u;
  *(a1 + 68) = v20;
  v4 = *(a2 + 180);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 104);
  *(a1 + 180) |= 0x2000u;
  *(a1 + 104) = v21;
  v4 = *(a2 + 180);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  v22 = *(a2 + 112);
  *(a1 + 180) |= 0x4000u;
  *(a1 + 112) = v22;
  v4 = *(a2 + 180);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 120);
    *(a1 + 180) |= 0x8000u;
    *(a1 + 120) = v6;
    v4 = *(a2 + 180);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x10000) == 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

LABEL_46:
    v24 = *(a2 + 136);
    *(a1 + 180) |= 0x20000u;
    *(a1 + 136) = v24;
    if ((*(a2 + 180) & 0x40000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_27;
  }

  v23 = *(a2 + 128);
  *(a1 + 180) |= 0x10000u;
  *(a1 + 128) = v23;
  v4 = *(a2 + 180);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_46;
  }

LABEL_26:
  if ((v4 & 0x40000) != 0)
  {
LABEL_27:
    v7 = *(a2 + 144);
    *(a1 + 180) |= 0x40000u;
    *(a1 + 144) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100140BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100140C08(uint64_t *a1)
{
  *a1 = off_100995C70;
  sub_100077C08(a1 + 19);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100140C6C(uint64_t *a1)
{
  sub_100140C08(a1);

  operator delete();
}

uint64_t sub_100140D10(uint64_t a1)
{
  v2 = *(a1 + 180);
  if (v2)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 112) = 0u;
    *(a1 + 100) = 0u;
    *(a1 + 84) = 0u;
    *(a1 + 68) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  result = sub_100077B98(a1 + 152);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 43) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_100140DAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_48;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 180) |= 1u;
        if (v12 < v9 && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_56;
        }

        continue;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_48;
        }

LABEL_56:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v54;
        *(a1 + 180) |= 2u;
        v19 = *(this + 1);
        v15 = *(this + 2);
        if (v19 >= v15 || *v19 != 24)
        {
          continue;
        }

        v16 = v19 + 1;
        *(this + 1) = v16;
LABEL_60:
        if (v16 >= v15 || (v20 = *v16, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v21 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v20;
          v21 = v16 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 180) |= 4u;
        if (v21 >= v15 || *v21 != 32)
        {
          continue;
        }

        v17 = v21 + 1;
        *(this + 1) = v17;
LABEL_68:
        if (v17 >= v15 || (v22 = *v17, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v23 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v22;
          v23 = v17 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 180) |= 8u;
        if (v23 >= v15 || *v23 != 41)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_76:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v54;
        *(a1 + 180) |= 0x10u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 49)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_80:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v54;
        *(a1 + 180) |= 0x20u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 57)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_84:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v54;
        *(a1 + 180) |= 0x40u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 65)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_88:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v54;
        *(a1 + 180) |= 0x80u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 73)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_92:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v54;
        *(a1 + 180) |= 0x100u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 81)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_96:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v54;
        *(a1 + 180) |= 0x200u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 89)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_100:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v54;
        *(a1 + 180) |= 0x400u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 97)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_104:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v54;
        *(a1 + 180) |= 0x800u;
        v31 = *(this + 1);
        v13 = *(this + 2);
        if (v31 >= v13 || *v31 != 104)
        {
          continue;
        }

        v14 = v31 + 1;
        *(this + 1) = v14;
LABEL_108:
        if (v14 >= v13 || (v32 = *v14, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v32;
          v33 = v14 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 180) |= 0x1000u;
        if (v33 >= v13 || *v33 != 113)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_116:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v54;
        *(a1 + 180) |= 0x2000u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 121)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_120:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v54;
        *(a1 + 180) |= 0x4000u;
        v35 = *(this + 1);
        if (*(this + 4) - v35 < 2 || *v35 != 129 || v35[1] != 1)
        {
          continue;
        }

        *(this + 1) = v35 + 2;
LABEL_125:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 120) = *v54;
        *(a1 + 180) |= 0x8000u;
        v36 = *(this + 1);
        if (*(this + 4) - v36 < 2 || *v36 != 137 || v36[1] != 1)
        {
          continue;
        }

        *(this + 1) = v36 + 2;
LABEL_130:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v54;
        *(a1 + 180) |= 0x10000u;
        v37 = *(this + 1);
        if (*(this + 4) - v37 < 2 || *v37 != 145 || v37[1] != 1)
        {
          continue;
        }

        *(this + 1) = v37 + 2;
LABEL_135:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 136) = *v54;
        *(a1 + 180) |= 0x20000u;
        v38 = *(this + 1);
        if (*(this + 4) - v38 < 2 || *v38 != 153 || v38[1] != 1)
        {
          continue;
        }

        *(this + 1) = v38 + 2;
LABEL_140:
        *v54 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v54))
        {
          *(a1 + 144) = *v54;
          *(a1 + 180) |= 0x40000u;
          v39 = *(this + 1);
          if (*(this + 4) - v39 >= 2 && *v39 == 162 && v39[1] == 1)
          {
            do
            {
              *(this + 1) = v39 + 2;
LABEL_145:
              v40 = *(a1 + 164);
              v41 = *(a1 + 160);
              if (v41 >= v40)
              {
                if (v40 == *(a1 + 168))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 152), v40 + 1);
                  v40 = *(a1 + 164);
                }

                *(a1 + 164) = v40 + 1;
                sub_1001498AC();
              }

              v42 = *(a1 + 152);
              *(a1 + 160) = v41 + 1;
              v43 = *(v42 + 8 * v41);
              v54[0] = 0;
              v44 = *(this + 1);
              if (v44 >= *(this + 2) || *v44 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v54))
                {
                  return 0;
                }
              }

              else
              {
                v54[0] = *v44;
                *(this + 1) = v44 + 1;
              }

              v45 = *(this + 14);
              v46 = *(this + 15);
              *(this + 14) = v45 + 1;
              if (v45 >= v46)
              {
                return 0;
              }

              v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v54[0]);
              if (!sub_10013FA18(v43, this, v48, v49) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
              v50 = *(this + 14);
              v51 = __OFSUB__(v50, 1);
              v52 = v50 - 1;
              if (v52 < 0 == v51)
              {
                *(this + 14) = v52;
              }

              v39 = *(this + 1);
              v53 = *(this + 2);
            }

            while (v53 - v39 > 1 && *v39 == 162 && v39[1] == 1);
            if (v39 == v53 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_60;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v17 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_68;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_80;
        }

        goto LABEL_48;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_48;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_48;
      case 9u:
        if (v8 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_48;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_48;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_100;
        }

        goto LABEL_48;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_48;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_108;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_116;
        }

        goto LABEL_48;
      case 0xFu:
        if (v8 == 1)
        {
          goto LABEL_120;
        }

        goto LABEL_48;
      case 0x10u:
        if (v8 == 1)
        {
          goto LABEL_125;
        }

        goto LABEL_48;
      case 0x11u:
        if (v8 == 1)
        {
          goto LABEL_130;
        }

        goto LABEL_48;
      case 0x12u:
        if (v8 == 1)
        {
          goto LABEL_135;
        }

        goto LABEL_48;
      case 0x13u:
        if (v8 == 1)
        {
          goto LABEL_140;
        }

        goto LABEL_48;
      case 0x14u:
        if (v8 != 2)
        {
          goto LABEL_48;
        }

        goto LABEL_145;
      default:
LABEL_48:
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