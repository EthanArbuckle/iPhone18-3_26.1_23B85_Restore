uint64_t sub_100164D34(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9FC0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9FC0 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100164DE0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9FC0 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 40);
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = v3 + 2;
    }

    v3 = sub_1001638A0(v6, v9, a3);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(qword_1009F9FC0 + 24);
    }

    *v3 = 18;
    v11 = *(v10 + 64);
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = v3 + 2;
    }

    v3 = sub_100164350(v10, v12, a3);
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

uint64_t sub_100164EE8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 36))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_1009F9FC0 + 16);
  }

  v5 = sub_1001639C8(v4, a2);
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
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9FC0 + 24);
    }

    v9 = sub_100164580(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_100164FDC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015F420(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001650B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001650C8(uint64_t result, uint64_t a2)
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

uint64_t sub_10016515C()
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

  return qword_1009EE498;
}

void sub_1001651F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100165204(void *a1)
{
  *a1 = off_100997EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100165264(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F48 + 16);
      }

      sub_1001562F4(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 36) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9F48 + 24);
      }

      sub_1001575F8(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001653DC(void *a1)
{
  *a1 = off_100997EF8;
  v2 = (a1 + 1);
  sub_10016543C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10016543C(void *result)
{
  if (qword_1009F9F48 != result)
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

void sub_1001654E0(void *a1)
{
  sub_1001653DC(a1);

  operator delete();
}

uint64_t sub_100165584(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10015662C(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1001579C0(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 7) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1001655FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      *(a1 + 36) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
      if (!sub_100156728(v9, this, v14, v15) || *(this + 36) != 1)
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
        *(this + 1) = v19 + 1;
LABEL_27:
        *(a1 + 36) |= 2u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        v31 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
        if (!sub_100157B64(v20, this, v25, v26) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        v27 = *(this + 14);
        v17 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v17)
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

uint64_t sub_1001658E0(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9F48 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9F48 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10016598C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 9);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9F48 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[14];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_100156C40(v7, v10, a3, a4);
    v6 = *(this + 9);
  }

  if ((v6 & 2) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      v11 = *(qword_1009F9F48 + 24);
    }

    *v4 = 18;
    v12 = v11[16];
    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v12;
      v13 = (v4 + 2);
    }

    v4 = sub_1001581B4(v11, v13, a3, a4);
  }

  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v4, a3);
}

uint64_t sub_100165A94(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 36))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_1009F9F48 + 16);
  }

  v5 = sub_100156DB4(v4, a2);
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
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9F48 + 24);
    }

    v9 = sub_10015837C(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_100165B88(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100165264(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100165C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100165C74(uint64_t result, uint64_t a2)
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

uint64_t sub_100165D08()
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

  return qword_1009EE3A0;
}

void sub_100165D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100165DB0(void *a1)
{
  *a1 = off_100997FA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100165E0C(uint64_t a1, uint64_t a2)
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
      v5 = *(qword_1009F9F40 + 16);
    }

    sub_100165264(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100165F1C(void *a1)
{
  *a1 = off_100997FA8;
  if (qword_1009F9F40 != a1)
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

void sub_100165FB4(void *a1)
{
  sub_100165F1C(a1);

  operator delete();
}

uint64_t sub_100165FF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9F40;
  if (!qword_1009F9F40)
  {
    sub_10015515C(0, a2, a3, a4);
    return qword_1009F9F40;
  }

  return result;
}

uint64_t sub_100166088(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 16);
    if (this)
    {
      this = sub_100165584(this);
    }
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_1001660E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (!sub_1001655FC(v8, this, v13, v14) || *(this + 36) != 1)
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

uint64_t sub_1001662AC(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9F40 + 16);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100166330(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9F40 + 16);
    }

    *a2 = 10;
    v6 = v5[8];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_10016598C(v5, v7, a3, a4);
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

uint64_t sub_1001663E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9F40 + 16);
    }

    v5 = sub_100165A94(v4, a2);
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

uint64_t sub_100166474(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100165E0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100166548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100166560(uint64_t result, uint64_t a2)
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

uint64_t sub_1001665F4()
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

  return qword_1009EE390;
}

void sub_100166688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void ***sub_100166864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = 0;
  v36 = 2147450879;
  sub_100167248(&__p, 0x25uLL);
  sub_1001672CC(v35, 0x25uLL);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  *a3 = 0;
  a3[1] = 0;
  v6 = 3;
  a3[2] = 0;
  do
  {
    sub_100166BCC(a3, v35);
    --v6;
  }

  while (v6);
  v7 = 0;
  __p = 0;
  v33 = 0;
  v8 = -180;
  v34 = 0;
  do
  {
    if (v7 >= v34)
    {
      v9 = __p;
      v10 = v7 - __p;
      v11 = (v7 - __p) >> 1;
      if (v11 <= -2)
      {
        sub_100019B38();
      }

      if (v34 - __p <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v34 - __p;
      }

      if (v34 - __p >= 0x7FFFFFFFFFFFFFFELL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1001679B0(&__p, v13);
      }

      v14 = (v7 - __p) >> 1;
      v15 = (2 * v11);
      v16 = (2 * v11 - 2 * v14);
      *v15 = v8;
      v7 = v15 + 1;
      memcpy(v16, v9, v10);
      v17 = __p;
      __p = v16;
      v33 = v7;
      v34 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7++ = v8;
    }

    v33 = v7;
    v18 = v8;
    v8 += 10;
  }

  while (v18 < 171);
  v19 = __p;
  if (v7 != __p)
  {
    v20 = 0;
    do
    {
      if (v7 == v19)
      {
        break;
      }

      v21 = 0;
      do
      {
        v22 = v19[v21];
        v31[0] = v19[v20];
        v31[1] = v22;
        sub_100166C0C(v31, a1, a2, v30);
        v29 = 0;
        LODWORD(v38) = sub_100166D48(v30);
        v23 = sub_100166DE8(a1, a2, &v38, v31, &v29);
        v24 = v29;
        *(*(**a3 + 24 * v20) + 4 * v21) = v29;
        v25 = v23 + 25.0;
        for (i = 24; i != 72; i += 24)
        {
          sub_100166F50(v30, v24, v24 >> 16);
          LODWORD(v38) = sub_100166D48(v30);
          if (v25 < sub_100166DE8(a1, a2, &v38, v31, &v29))
          {
            break;
          }

          v24 = v29;
          *(*(*(*a3 + i) + 24 * v20) + 4 * v21) = v29;
        }

        v38 = v30;
        sub_1001674A8(&v38);
        ++v21;
        v19 = __p;
        v7 = v33;
        v27 = (v33 - __p) >> 1;
      }

      while (v27 > v21);
      ++v20;
    }

    while (v27 > v20);
  }

  if (v19)
  {
    v33 = v19;
    operator delete(v19);
  }

  __p = v35;
  sub_1001674A8(&__p);
  return sub_100167040(&v37);
}

void sub_100166B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100167040(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100166BCC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100167628(a1, a2);
  }

  else
  {
    sub_1001675C8(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100166C0C(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v13 = 0;
  sub_1001679F4(__p, 0x25uLL);
  sub_100167B08(a4, 0x25uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  for (i = 0; i != 37; ++i)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      LOWORD(__p[0]) = 5 * i;
      WORD1(__p[0]) = v10;
      v11 = sub_1001F37B8(a2, v10, 5 * i);
      v12 = sub_1001F37B8(a3, v10, 5 * i);
      LOWORD(v13) = v11;
      HIWORD(v13) = v12;
      *(*(*a4 + 24 * i) + v9) = sub_10016709C(__p, &v13, a1);
      v10 += 5;
      v9 += 4;
    }

    while (v9 != 148);
  }
}

void sub_100166D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100166D48(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 != 888 || v1[1] - *v1 != 148)
  {
    sub_10049E544();
  }

  v2 = 0;
  v3 = -1;
  v4 = INFINITY;
  v5 = -1;
  do
  {
    for (i = 0; i != 37; ++i)
    {
      v7 = v1[3 * v2];
      if (*(v7 + 4 * i) < v4)
      {
        v4 = *(v7 + 4 * i);
        v5 = i;
        v3 = v2;
      }
    }

    ++v2;
  }

  while (v2 != 37);
  if (v3 < 0 || v5 < 0)
  {
    sub_10049E570();
  }

  return (5 * v3) | ((5 * v5) << 16);
}

float sub_100166DE8(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4, __int16 *a5)
{
  v5 = *a3;
  if (v5 <= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = *a3;
  }

  v7 = v6 - 5;
  if (v5 >= 175)
  {
    v5 = 175;
  }

  v8 = v5 + 5;
  v9 = a3[1];
  if (v9 <= 5)
  {
    v10 = 5;
  }

  else
  {
    v10 = a3[1];
  }

  if (v9 >= 175)
  {
    v11 = 175;
  }

  else
  {
    v11 = a3[1];
  }

  v29 = v8;
  if (v7 <= v8)
  {
    v18 = v11 + 5;
    v27 = v10 - 6;
    v28 = v10 - 5;
    v14 = -1;
    v13 = INFINITY;
    v12 = -1;
    do
    {
      v19 = v27;
      if (v28 <= v18)
      {
        do
        {
          v20 = v19 + 1;
          v31[0] = v7;
          v31[1] = v19 + 1;
          v21 = sub_1001F37B8(a1, v19 + 1, v7);
          v22 = sub_1001F37B8(a2, v19 + 1, v7);
          v30[0] = v21;
          v30[1] = v22;
          v23 = sub_10016709C(v31, v30, a4);
          if (v23 < v13)
          {
            v12 = v7;
            v14 = v19 + 1;
            v13 = v23;
          }

          ++v19;
        }

        while (v20 < v18);
      }
    }

    while (v7++ < v29);
  }

  else
  {
    v12 = -1;
    v13 = INFINITY;
    v14 = -1;
  }

  a5[1] = v14;
  *a5 = v12;
  return v13;
}

void sub_100166F50(void *a1, int a2, int a3)
{
  if (a1[1] - *a1 != 888 || *(*a1 + 8) - **a1 != 148)
  {
    sub_10049E59C();
  }

  v4 = 0;
  v5 = a2;
  v6 = a3;
  do
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (sub_100167130(v5, v6, (5 * v4), v8) <= 35.0)
      {
        *(*(*a1 + 24 * v4) + v7) = 2139095040;
      }

      v8 += 5;
      v7 += 4;
    }

    while (v7 != 148);
    ++v4;
  }

  while (v4 != 37);
}

void ***sub_100167040(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_100167554(&v2);
    operator delete();
  }

  return result;
}

float sub_10016709C(__int16 *a1, unsigned __int16 *a2, __int16 *a3)
{
  v3 = a2[1];
  v4 = *a2;
  if (v3 == 0x7FFF || v4 == 0x7FFF)
  {
    return INFINITY;
  }

  v6 = a1[1];
  if ((v6 - 178) < 0xFFFFFF51 || *a1 <= 12 && (v6 - 136) < 0xFFFFFFA5)
  {
    return INFINITY;
  }

  v8 = fabsf((*a3 - v4));
  v9 = fabsf((a3[1] - v3));
  if ((360.0 - v8) < v8)
  {
    v8 = 360.0 - v8;
  }

  if ((360.0 - v9) < v9)
  {
    v9 = 360.0 - v9;
  }

  return hypotf(v8, v9);
}

double sub_100167130(double a1, double a2, double a3, double a4)
{
  v8 = sub_1000422B8(a1);
  v9 = sin(v8);
  v10 = sub_1000422B8(a2);
  v11 = v9 * cos(v10);
  v12 = sub_1000422B8(a3);
  v13 = v11 * sin(v12);
  v14 = sub_1000422B8(a4);
  v15 = cos(v14);
  v16 = sub_1000422B8(a1);
  v17 = sin(v16);
  v18 = sub_1000422B8(a2);
  v19 = v17 * sin(v18);
  v20 = sub_1000422B8(a3);
  v21 = v19 * sin(v20);
  v22 = sub_1000422B8(a4);
  v23 = v21 * sin(v22) + v13 * v15;
  v24 = sub_1000422B8(a1);
  v25 = cos(v24);
  v26 = sub_1000422B8(a3);
  v27 = v23 + v25 * cos(v26);
  v28 = 1.0;
  if (v27 <= 1.0)
  {
    v28 = v27;
    if (v27 < -1.0)
    {
      v28 = -1.0;
    }
  }

  v29 = acos(v28);

  return sub_1000422D4(v29);
}

void *sub_100167248(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10004F5E0(result, a2);
  }

  return result;
}

void sub_1001672B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001672CC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100167388(result, a2);
  }

  return result;
}

void sub_100167388(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001673D4(a1, a2);
  }

  sub_100019B38();
}

void sub_1001673D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10016742C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10016748C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001674A8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001674FC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001674FC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_100167554(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1001674A8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_1001675C8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100167764(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100167628(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1001673D4(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100167764(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100167928(&v14);
  return v8;
}

void sub_100167750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100167928(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100167764(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100167388(result, a4);
  }

  return result;
}

void sub_1001677CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001674A8(&a9);
  _Unwind_Resume(a1);
}

void *sub_1001677EC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_10016742C(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1001678A0(v8);
  return v4;
}

uint64_t sub_1001678A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001678D8(a1);
  }

  return a1;
}

void sub_1001678D8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_100167928(void **a1)
{
  sub_10016795C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10016795C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1001674A8(&v5);
  }
}

void sub_1001679B0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_1001679F4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10004F5E0(result, a2);
  }

  return result;
}

void sub_100167AEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100167B08(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100167BC4(result, a2);
  }

  return result;
}

void sub_100167BC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100167C10(a1, a2);
  }

  sub_100019B38();
}

void sub_100167C10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100167C68()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EE4F8 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EE4E8 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE4E8, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EE510 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EE500 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE500, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EE528 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EE518 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE518, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EE540 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EE530 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE530, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EE558 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EE548 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE548, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EE570 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EE560 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE560, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EE588 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EE578 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE578, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EE5A0 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EE590 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE590, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EE5B8 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EE5A8 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EE5A8, &_mh_execute_header);
}

void sub_100168298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016835C(uint64_t a1, uint64_t a2)
{
  *a1 = *(sub_1000054A8() + 144);
  *(a1 + 4) = 0;
  *(a1 + 8) = 850045863;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1018212795;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  sub_100169D10(a1 + 120, a2);
  *(a1 + 152) = dispatch_queue_create("com.apple.nearbyd.AoaCalculation", 0);
  *(a1 + 160) = dispatch_queue_create("com.apple.nearbyd.AoAFileOperation", 0);
  *(a1 + 168) = 0;
  v4 = 0;
  operator new();
}

void sub_100168574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000197C8(va);
  v8 = *(v4 + 288);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  sub_100169CC0(v4 + 176);

  sub_100169FAC(v4 + 120);
  std::condition_variable::~condition_variable(v6);
  std::mutex::~mutex(v5);
  _Unwind_Resume(a1);
}

void sub_100168604(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    v7 = v15 >= 0 ? &__p : __p;
    *buf = 136315138;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#lut,scheduleAccessoryTask, accessory %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1001695AC;
  block[3] = &unk_100998240;
  v10 = *a3;
  v9 = a3[1];
  block[4] = a1;
  block[5] = v10;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2;
  dispatch_async(v8, block);
  if (v12)
  {
    sub_10000AD84(v12);
  }
}

void sub_10016878C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#lut,blockLUTCalculation()", buf, 2u);
  }

  v3 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100169C54;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10016884C(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lut,unblockLUTCalculation", v6, 2u);
  }

  v5 = sub_1000054A8();
  if (a2)
  {
    if (v5[568] == 1)
    {
      *(a1 + 168) = v5 + 272;
      std::mutex::lock((a1 + 8));
      atomic_store(1u, (a1 + 4));
      std::condition_variable::notify_one((a1 + 72));
      std::mutex::unlock((a1 + 8));
    }
  }
}

uint64_t sub_100168908(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_100169FAC(a1 + 232);
  sub_100169F2C(a1 + 200);

  sub_100169FAC(a1 + 120);
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100168990(unsigned int *a1, int a2, uint64_t a3)
{
  v6 = sub_1000054A8();
  if (sub_100014670(v6))
  {
    v7 = *a1;
    sub_100181060(a2, v20);
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10041C9CC();
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v10 = v20;
      if (v21 < 0)
      {
        v10 = *v20;
      }

      *buf = 136315394;
      v23 = p_p;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#lut,load lut file for accessory %s,lut file %s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    v11 = *(a1 + 20);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_100168BEC;
    block[3] = &unk_100998210;
    block[4] = a1;
    if (SHIBYTE(v21) < 0)
    {
      sub_1000056BC(&v14, *v20, *&v20[8]);
    }

    else
    {
      v14 = *v20;
      v15 = v21;
    }

    v16 = a3;
    v17 = a2;
    dispatch_async(v11, block);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*v20);
    }
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#lut,skip loading lut file", v20, 2u);
    }
  }
}

void sub_100168BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168BEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0;
  v23 = 0uLL;
  v24 = 0;
  v21 = 0uLL;
  v22 = 0;
  v3 = (a1 + 40);
  if (sub_10017FF28(&unk_1009E9F10, (a1 + 40), &v23, &v21, &v25))
  {
    *v28 = 0;
    v20 = 0;
    if (v23 != *(&v23 + 1))
    {
      v4 = v25;
      if ((v4 >> sub_10042838C(5, 1)))
      {
        operator new();
      }
    }

    if (v21 != *(&v21 + 1))
    {
      v5 = v25;
      if ((v5 >> sub_10042838C(9, 1)))
      {
        operator new();
      }
    }

    v6 = *(a1 + 64);
    v7 = *v28;
    *v28 = 0;
    v8 = v20;
    v19 = v7;
    v20 = 0;
    v18 = v8;
    v9 = sub_10017D5D0(v6, &v19, &v18);
    sub_10016A158(&v18, 0);
    sub_10016A158(&v19, 0);
    v10 = qword_1009F9820;
    if (v9)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 63) < 0)
        {
          v3 = *v3;
        }

        *buf = 136315138;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#lut,setting AoACalculator LUT using file %s is done", buf, 0xCu);
      }

      atomic_store(*(a1 + 72), (*(a1 + 64) + 780));
      v11 = *(v2 + 280);
      if (v11)
      {
        sub_1002E006C(v11, (*(a1 + 64) + 776));
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 72);
          *buf = 67109120;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#lut,logCalReverseLUTs for accessory: %d is done", buf, 8u);
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049E5C8(a1, v3, v10);
    }

    sub_10016A158(&v20, 0);
    sub_10016A158(v28, 0);
  }

  else
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 72);
      sub_10041C9CC();
      v16 = v27 >= 0 ? buf : *buf;
      *v28 = 136315138;
      *&v28[4] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#lut,setting LUT for accessory %s failed, lut file may not exist or be corrupted", v28, 0xCu);
      if (v27 < 0)
      {
        operator delete(*buf);
      }
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      sub_1001753B0(v2 + 176, v17);
    }

    else
    {
      sub_10016900C(v2);
    }
  }

  *buf = &v21;
  sub_100167554(buf);
  *&v21 = &v23;
  sub_100167554(&v21);
}

void sub_100168F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void ***a21)
{
  sub_10016A158(&a12, 0);
  sub_10016A158((v21 - 80), 0);
  a21 = &a13;
  sub_100167554(&a21);
  a13 = &a17;
  sub_100167554(&a13);
  _Unwind_Resume(a1);
}

void sub_10016900C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#lut,scheduleNoneAccessoryTask", buf, 2u);
  }

  v3 = *(a1 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016910C;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

char *sub_1001690CC(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_1000056BC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1001690F8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_10016910C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(&__p, "calculating lut");
  sub_100005C80(__dst);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  sub_1001691AC(v1, *(v1 + 168), 0);
  return sub_10000650C(__dst, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1001691AC(dispatch_queue_t *a1, unsigned __int8 *a2, int a3)
{
  dispatch_assert_queue_V2(a1[19]);
  if (a2)
  {
    if (sub_1001F41D4(a2))
    {
      if ((sub_1001F41A0(a2) & 1) == 0)
      {
        sub_10049E678();
      }

      if ((a2[192] & 1) == 0 || (a2[256] & 1) == 0)
      {
        sub_1000195BC();
      }

      sub_100166864((a2 + 136), (a2 + 200), &v38);
      v36 = 0uLL;
      v37 = 0;
      if (sub_1001F416C(a2))
      {
        if ((a2[64] & 1) == 0)
        {
          sub_1000195BC();
        }

        if ((a2[128] & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_100166864((a2 + 8), (a2 + 72), __p);
        sub_10016A1AC(&v36);
        v36 = *__p;
        v37 = v35;
        __p[1] = 0;
        v35 = 0;
        __p[0] = 0;
        *buf = __p;
        sub_100167554(buf);
      }

      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_10041C9CC();
        v7 = v35 >= 0 ? __p : __p[0];
        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#lut,reverse LUT is generated for accessory %s", buf, 0xCu);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v8 = *a1;
      sub_100181060(a3, __p);
      v9 = sub_1001F4164(a2);
      v10 = a1[20];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_100169898;
      block[3] = &unk_100998270;
      block[4] = a1;
      if (SHIBYTE(v35) < 0)
      {
        sub_1000056BC(&v28, __p[0], __p[1]);
      }

      else
      {
        v28 = *__p;
        v29 = v35;
      }

      memset(v30, 0, sizeof(v30));
      sub_10016A220(v30, v36, *(&v36 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v36) >> 3));
      memset(v31, 0, sizeof(v31));
      sub_10016A220(v31, v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3));
      v33 = v9;
      v32 = a3;
      dispatch_async(v10, block);
      *buf = v31;
      sub_100167554(buf);
      *buf = v30;
      sub_100167554(buf);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = &v36;
      sub_100167554(__p);
      *&v36 = &v38;
      sub_100167554(&v36);
    }

    else
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049E640(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  else
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049E6A4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_100169518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a28 = (v33 - 144);
  sub_100167554(&a28);
  *(v33 - 144) = v33 - 120;
  sub_100167554((v33 - 144));
  _Unwind_Resume(a1);
}

void sub_1001695AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 21) && (v3 = *(a1 + 40)) != 0)
  {
    if (sub_1001F41D4(v3) && sub_1001F41D4(*(v1 + 21)))
    {
      sub_100004A08(&__p, "calculating accessory lut");
      sub_100005C80(__dst);
      if (v21 < 0)
      {
        operator delete(__p);
      }

      sub_1001F42C4(*(a1 + 40), *(v1 + 21));
      if (!sub_1001F41D4(*(a1 + 40)))
      {
        __assert_rtn("scheduleAccessoryTask_block_invoke", "AoALUTManager.mm", 117, "deltaCalBlobPtr->checkCalBlobIntegrity()");
      }

      sub_1001691AC(v1, *(a1 + 40), *(a1 + 56));
      v11 = *(v1 + 35);
      if (v11)
      {
        sub_1002E0600(v11, *v1, *(a1 + 56), *(a1 + 40));
      }

      sub_10000650C(__dst, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049E6DC(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void sub_1001696C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001696F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100169710(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

uint64_t sub_100169720(uint64_t a1, uint64_t a2)
{
  sub_100169D10(v4, a2);
  sub_100175334(a1 + 176, v4);
  return sub_100169FAC(v4);
}

void sub_100169790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100169FAC(va);
  _Unwind_Resume(a1);
}

void sub_1001697AC(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = sub_1000054A8();
  if (sub_100014670(v6))
  {
    if (!*a3)
    {
      sub_10049E714();
    }

    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100174E90(a1 + 176, a2, &v9);
    if (v10)
    {
      sub_10000AD84(v10);
    }
  }

  else
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#lut,skip loading nn file", buf, 2u);
    }
  }
}

void sub_100169878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169898(void *a1)
{
  v1 = a1[4];
  if (a1[8] != a1[9])
  {
    operator new();
  }

  *buf = 0;
  operator new();
}

uint64_t sub_100169AD0(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100169B24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_1000056BC((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_10016A220(a1 + 64, *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return sub_10016A220(a1 + 88, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
}

void sub_100169BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100167554(va);
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  _Unwind_Resume(a1);
}

void sub_100169BFC(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = (a1 + 88);
  sub_100167554(&v3);
  v3 = v2;
  sub_100167554(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_100169C54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.__m_ = (v1 + 8);
  v3.__owns_ = 1;
  std::mutex::lock((v1 + 8));
  while (1)
  {
    v2 = atomic_load((v1 + 4));
    if (v2)
    {
      break;
    }

    std::condition_variable::wait((v1 + 72), &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

uint64_t sub_100169CC0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  sub_100169FAC(a1 + 56);
  sub_100169F2C(a1 + 24);

  return a1;
}

uint64_t sub_100169D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 sub_100169E24(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009982B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100169E5C(void *a1, unsigned int *a2, __int128 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v4(v5, v6, &v7);
  if (*(&v7 + 1))
  {
    sub_10000AD84(*(&v7 + 1));
  }
}

void sub_100169EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100169EE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100169F2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100169FAC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_10016A0A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100998358;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10016A0E0(void *a1, unsigned __int8 *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10016A10C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ***sub_10016A158(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_100167554(&v3);
    operator delete();
  }

  return result;
}

void sub_10016A1AC(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        sub_1001674A8(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10016A220(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100167388(result, a4);
  }

  return result;
}

void sub_10016A288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100167554(&a9);
  _Unwind_Resume(a1);
}

void *sub_10016A2A8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100167764(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10016A368(v8);
  return v4;
}

uint64_t sub_10016A368(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10016A3A0(a1);
  }

  return a1;
}

void sub_10016A3A0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_1001674A8(&v3);
  }
}

void sub_10016A3EC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10016A40C()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10016A4BC()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10016A56C()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10016A61C()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10016A6CC()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10016A77C()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10016A82C()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10016A8DC()
{
  if ((atomic_load_explicit(&qword_1009E9F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9F08))
  {
    sub_100004A08(&xmmword_1009E9EF0, "");
    __cxa_atexit(&std::string::~string, &xmmword_1009E9EF0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9F08);
  }
}

void sub_10016A98C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100561610;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10016AA80()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009EE5D0 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EE5C0 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE5C0, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009EE5E8 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EE5D8 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE5D8, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009EE600 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EE5F0 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE5F0, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009EE618 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EE608 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE608, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009EE630 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EE620 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE620, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009EE648 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EE638 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE638, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009EE660 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EE650 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE650, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009EE678 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EE668 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE668, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009EE690 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EE680 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE680, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10016B0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016B184(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 16) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_100012F38(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 128) = v11;
  *(a1 + 112) = v10;
  *(a1 + 96) = v9;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100020574(a1 + 136, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  memcpy((a1 + 160), (a2 + 160), 0x181uLL);
  memcpy((a1 + 552), (a2 + 552), 0x259uLL);
  sub_10016D798(a1 + 1160, a2 + 1160);
  *(a1 + 1776) = *(a2 + 1776);
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 1784) = _Q0;
  *(a1 + 1800) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = *a3;
  return a1;
}

uint64_t sub_10016B2C0(uint64_t a1)
{
  if (*(a1 + 2416) != 1)
  {
    return 1;
  }

  if (*(a1 + 96))
  {
    if (*(a1 + 264) & 1) != 0 && (*(a1 + 280))
    {
      v1 = *(a1 + 256);
      v2 = *(a1 + 272);
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218240;
        v16 = v1;
        v17 = 2048;
        v18 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#me,checkFPSNRsOkForSensorFusion: rose measurement errorcode is not success, the PDOAs are %f and %f", &v15, 0x16u);
      }

      return 2;
    }

    v5 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    LOWORD(v15) = 0;
    v4 = 2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#me,checkFPSNRsOkForSensorFusion: rose measurement errorcode is not success, the PDOAs are invalid", &v15, 2u);
  }

  else if (*(a1 + 200) & 1) != 0 && (*(a1 + 232) & 1) != 0 && (*(a1 + 216))
  {
    v6 = *(a1 + 192);
    v7 = *(a1 + 224);
    v8 = *(a1 + 208);
    v9 = qword_1009F9820;
    v10 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6 < 15.0 || v7 < 15.0 || v8 < 15.0)
    {
      if (v10)
      {
        v15 = 134218496;
        v16 = v6;
        v17 = 2048;
        v18 = v7;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#me,checkFPSNRsOkForSensorFusion: FP_SNR is below threshold - center %f dB, horizontal %f dB, vertical %f dB", &v15, 0x20u);
      }

      return 4;
    }

    else
    {
      if (v10)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#me,checkFPSNRsOkForSensorFusion: PDOA FP_SNR check passes", &v15, 2u);
      }

      return 5;
    }
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#me,checkFPSNRsOkForSensorFusion: first path SNRs invalid", &v15, 2u);
    }

    return 3;
  }

  return v4;
}

uint64_t sub_10016B540(uint64_t a1)
{
  if (*(a1 + 2417) != 1)
  {
    return 1;
  }

  if (*(a1 + 264) & 1) != 0 && (*(a1 + 280))
  {
    v2 = *(a1 + 256);
    v3 = *(a1 + 272);
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134218240;
      *&__p[4] = v2;
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkPDOA: azPDOA %.3f elPDOA %.3f", __p, 0x16u);
    }

    if (fabs(v2) <= 180.0 && fabs(v3) <= 180.0)
    {
      if (v2 >= -90.0)
      {
        v6 = 1.0;
        if (v2 <= 90.0)
        {
          goto LABEL_22;
        }

        v5 = (v2 + -90.0) / -90.0;
      }

      else
      {
        v5 = (-90.0 - v2) / -90.0;
        v6 = 1.0;
      }

      v6 = v5 + v6;
LABEL_22:
      v9 = v6 * *(a1 + 1784);
      *(a1 + 1784) = v9;
      v10 = v6 * *(a1 + 1792);
      *(a1 + 1792) = v10;
      if (v3 >= -90.0)
      {
        v12 = 1.0;
        if (v3 <= 90.0)
        {
LABEL_27:
          v13 = v12 * v9;
          *(a1 + 1784) = v13;
          v14 = v12 * *(a1 + 1796);
          *(a1 + 1796) = v14;
          sub_100004A08(__p, "MeasEngMetricsCalculator::checkPDOA");
          sub_10016DD3C((a1 + 1784), __p);
          if (v18 < 0)
          {
            operator delete(*__p);
          }

          return 4;
        }

        v11 = v3 + -90.0;
      }

      else
      {
        v11 = -90.0 - v3;
      }

      v12 = v11 / -90.0 + 1.0;
      goto LABEL_27;
    }

    *(a1 + 1784) = 0;
    *(a1 + 1792) = 0;
    sub_100004A08(__p, "MeasEngMetricsCalculator::checkPDOA");
    sub_10016DD3C((a1 + 1784), __p);
    if (v18 < 0)
    {
      operator delete(*__p);
    }

    return 3;
  }

  else
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#me,checkPDOA: invalid PDOA", __p, 2u);
    }

    *(a1 + 1784) = 0;
    *(a1 + 1792) = 0;
    sub_100004A08(__p, "MeasEngMetricsCalculator::checkPDOA");
    sub_10016DD3C((a1 + 1784), __p);
    if (v18 < 0)
    {
      operator delete(*__p);
    }

    return 2;
  }
}

void sub_10016B804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016B830(uint64_t a1)
{
  if (*(a1 + 2418) != 1)
  {
    return 1;
  }

  if ((*(a1 + 200) & 1) == 0 || (*(a1 + 216) & 1) == 0 || (*(a1 + 232) & 1) == 0)
  {
    return 2;
  }

  v1 = *(a1 + 192);
  v2 = *(a1 + 208);
  v3 = *(a1 + 224);
  v11[0] = v1;
  v11[1] = v2;
  v11[2] = v3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v14 = v1;
    v15 = 2048;
    v16 = *&v2;
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPSNRs: %5.1f, %5.1f, %5.1f", buf, 0x20u);
  }

  HIBYTE(v12) = 0;
  v5 = sub_10016D8D4(v11, &v12);
  v7 = *v6 - *v5;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = 0x4062200000000000;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPSNRs: FPSNR_DIFF_CHECK fpsnrDiff(%5.1f) >= kFpsnrDiffMaxDb(%5.3f)", buf, 0x16u);
  }

  if (v7 < 145.0)
  {
    return 4;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = 0x4062200000000000;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPSNRs: TRIGGERED FPSNR_DIFF_CHECK fpsnrDiff(%5.1f) >= kFpsnrDiffMaxDb(%5.3f)", buf, 0x16u);
  }

  return 3;
}

uint64_t sub_10016BA38(uint64_t a1)
{
  if (*(a1 + 2419) != 1)
  {
    return 1;
  }

  if ((*(a1 + 328) & 1) == 0 || (*(a1 + 344) & 1) == 0 || (*(a1 + 360) & 1) == 0)
  {
    return 2;
  }

  v1 = *(a1 + 320);
  v2 = *(a1 + 336);
  v3 = *(a1 + 352);
  v11[0] = v1;
  v11[1] = v2;
  v11[2] = v3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v14 = v1;
    v15 = 2048;
    v16 = *&v2;
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPIndices: C %5.2f V %5.2f H %5.2f", buf, 0x20u);
  }

  HIBYTE(v12) = 0;
  v5 = sub_10016D8D4(v11, &v12);
  v7 = *v6 - *v5;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = 0x4060E00000000000;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPIndices: FPI_DIFF_CHECK fpIndicesDiff(%5.2f) >= %5.2f", buf, 0x16u);
  }

  if (v7 < 135.0)
  {
    return 4;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = 0x4060E00000000000;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkFPIndices: TRIGGERED FPI_DIFF_CHECK fpIndicesDiff(%5.2f) >= %5.2f", buf, 0x16u);
  }

  return 3;
}

uint64_t sub_10016BC40(uint64_t a1)
{
  if (*(a1 + 2420) != 1)
  {
    return 1;
  }

  if (*(a1 + 680) != 1)
  {
    return 2;
  }

  v1 = 0;
  v2 = (a1 + 650);
  do
  {
    *&v43[v1] = hypot(*(v2 - 33), *(v2 - 32));
    *&v37[v1] = hypot(*(v2 - 17), *(v2 - 16));
    *&v31[v1++] = hypot(*(v2 - 1), *v2);
    v2 += 2;
  }

  while (v1 != 8);
  v3 = v43[0];
  v4 = 1;
  v5 = *v43;
  v6 = v43;
  do
  {
    if (v5 < *&v43[v4])
    {
      v5 = *&v43[v4];
      v6 = &v43[v4];
    }

    ++v4;
  }

  while (v4 != 8);
  v7 = v6 - v43;
  v8 = *v37;
  v9 = 1;
  v10 = v37;
  do
  {
    if (v8 < *&v37[v9])
    {
      v8 = *&v37[v9];
      v10 = &v37[v9];
    }

    ++v9;
  }

  while (v9 != 8);
  v11 = v10 - v37;
  v12 = *v31;
  v13 = 1;
  v14 = v31;
  do
  {
    if (v12 < *&v31[v13])
    {
      v12 = *&v31[v13];
      v14 = &v31[v13];
    }

    ++v13;
  }

  while (v13 != 8);
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134220032;
    v50 = v7;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = *&v43[1];
    v55 = 2048;
    v56 = *&v43[2];
    v57 = 2048;
    v58 = v44;
    v59 = 2048;
    v60 = v45;
    v61 = 2048;
    v62 = v46;
    v63 = 2048;
    v64 = v47;
    v65 = 2048;
    v66 = v48;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: argmax_c, %zu, cirMag_c, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1ff, %5.1f", buf, 0x5Cu);
    v15 = qword_1009F9820;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134220032;
    v50 = v11;
    v51 = 2048;
    v52 = v37[0];
    v53 = 2048;
    v54 = *&v37[1];
    v55 = 2048;
    v56 = *&v37[2];
    v57 = 2048;
    v58 = v38;
    v59 = 2048;
    v60 = v39;
    v61 = 2048;
    v62 = v40;
    v63 = 2048;
    v64 = v41;
    v65 = 2048;
    v66 = v42;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: argmax_v, %zu, cirMag_v, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1ff, %5.1f", buf, 0x5Cu);
    v15 = qword_1009F9820;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134220032;
    v50 = v14 - v31;
    v51 = 2048;
    v52 = v31[0];
    v53 = 2048;
    v54 = *&v31[1];
    v55 = 2048;
    v56 = *&v31[2];
    v57 = 2048;
    v58 = v32;
    v59 = 2048;
    v60 = v33;
    v61 = 2048;
    v62 = v34;
    v63 = 2048;
    v64 = v35;
    v65 = 2048;
    v66 = v36;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: argmax_h, %zu, cirMag_h, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1ff, %5.1f", buf, 0x5Cu);
    v15 = qword_1009F9820;
  }

  if (v44 >= v45)
  {
    v16 = v44;
  }

  else
  {
    v16 = v45;
  }

  if (v38 >= v39)
  {
    v17 = v38;
  }

  else
  {
    v17 = v39;
  }

  if (v32 >= v33)
  {
    v18 = v32;
  }

  else
  {
    v18 = v33;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v50 = *&v16;
    v51 = 2048;
    v52 = *&v17;
    v53 = 2048;
    v54 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: fpamp C %.3f V %.3f H %.3f", buf, 0x20u);
    v15 = qword_1009F9820;
  }

  if (v46 >= v47)
  {
    v19 = v46;
  }

  else
  {
    v19 = v47;
  }

  if (v40 >= v41)
  {
    v20 = v40;
  }

  else
  {
    v20 = v41;
  }

  if (v34 >= v35)
  {
    v21 = v34;
  }

  else
  {
    v21 = v35;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v50 = *&v19;
    v51 = 2048;
    v52 = *&v20;
    v53 = 2048;
    v54 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: trailingAmp C %.3f V %.3f H %.3f", buf, 0x20u);
  }

  if (v16 <= 0.0 || v17 <= 0.0 || v18 <= 0.0)
  {
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v50 = *&v16;
      v51 = 2048;
      v52 = *&v17;
      v53 = 2048;
      v54 = v18;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: firstPathAmplitude <= 0: C %.3f V %.3f H %.3f", buf, 0x20u);
    }

    return 3;
  }

  else
  {
    v22 = v19 / v16;
    v23 = v20 / v17;
    v24 = v21 / v18;
    if (v22 >= v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    if (v25 >= v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21 / v18;
    }

    v27 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v50 = *&v26;
      v51 = 2048;
      v52 = 0x405E000000000000;
      v53 = 2048;
      v54 = v22;
      v55 = 2048;
      v56 = v23;
      v57 = 2048;
      v58 = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: AOA_TRAILING_RATIO_CHECK maxTrailingRatio(%.3f) > %.3f trailingRatio C %.3f V %.3f H %3f", buf, 0x34u);
    }

    if (v26 <= 120.0)
    {
      return 5;
    }

    else
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219008;
        v50 = *&v26;
        v51 = 2048;
        v52 = 0x405E000000000000;
        v53 = 2048;
        v54 = v22;
        v55 = 2048;
        v56 = v23;
        v57 = 2048;
        v58 = v24;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkAoaCirDataEvent: TRIGGERED AOA_TRAILING_RATIO_CHECK maxTrailingRatio(%.3f) > %.3f trailingRatio_c %.3f trailingRatio_v %.3f trailingRatio_h %3f", buf, 0x34u);
      }

      return 4;
    }
  }
}

uint64_t sub_10016C27C(uint64_t a1)
{
  if (*(a1 + 2421) != 1)
  {
    return 1;
  }

  if (*(a1 + 768) != 1)
  {
    return 2;
  }

  v1 = 0;
  v2 = (a1 + 738);
  do
  {
    *&v16[v1] = hypot(*(v2 - 1), *v2);
    v2 += 2;
    ++v1;
  }

  while (v1 != 8);
  v3 = v16[0];
  v4 = 1;
  v5 = *v16;
  v6 = v16;
  do
  {
    if (v5 < *&v16[v4])
    {
      v5 = *&v16[v4];
      v6 = &v16[v4];
    }

    ++v4;
  }

  while (v4 != 8);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v6;
    *buf = 134220288;
    v23 = v6 - v16;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v16[1];
    v30 = 2048;
    v31 = v16[2];
    v32 = 2048;
    v33 = v17;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = v19;
    v38 = 2048;
    v39 = v20;
    v40 = 2048;
    v41 = v21;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkTOACIRDataEvent: argmax, %ld, max_val, %5.1f, vals, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f, %5.1f", buf, 0x66u);
  }

  if (v17 >= v18)
  {
    v9 = v17;
  }

  else
  {
    v9 = v18;
  }

  if (v9 <= 0.0)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049E7B8(v14, v9);
    }

    return 3;
  }

  else
  {
    v10 = v19;
    if (v19 < v20)
    {
      v10 = v20;
    }

    v11 = v10 / v9;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v23 = *&v11;
      v24 = 2048;
      v25 = 0x405E000000000000;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkTOACIRDataEvent: TOA_TRAILING_RATIO_CHECK trailingRatio(%.3f) >= %.3f", buf, 0x16u);
    }

    if (v11 >= 120.0)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v23 = *&v11;
        v24 = 2048;
        v25 = 0x405E000000000000;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkTOACIRDataEvent: TRIGGERED TOA_TRAILING_RATIO_CHECK trailingRatio(%.3f) >= %.3f", buf, 0x16u);
      }

      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10016C548(uint64_t a1)
{
  if (*(a1 + 2424) != 1)
  {
    return 1;
  }

  v2 = *(a1 + 376);
  if (*(a1 + 376) && *(a1 + 378))
  {
    return 4;
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 378);
    v6[0] = 67109376;
    v6[1] = v2;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::checkCirMetrics: toaNoiseRms %d or toaPpwinRms %d are zero.", v6, 0xEu);
  }

  return 3;
}

double sub_10016C634(uint64_t a1)
{
  v1 = *(a1 + 376);
  v2 = *(a1 + 378);
  v3 = v2;
  if (*(a1 + 376))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v11 = log10(v3 / v1) * 20.0;
    v12 = *(a1 + 768);
    if (*(a1 + 680) == 1)
    {
      v13 = *(a1 + 112);
      if (*(a1 + 16))
      {
        v14 = *(a1 + 8);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 304);
      if ((*(a1 + 768) & 1) == 0)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: AOA CIR Data Event", v56, 2u);
        }

        if (*(a1 + 200) & 1) != 0 && (*(a1 + 216) & 1) != 0 && (*(a1 + 232))
        {
          v17 = *(a1 + 192);
          v18 = *(a1 + 208);
          v19 = *(a1 + 224);
          v20 = &v56[8];
          *v56 = v17;
          *&v56[8] = v18;
          *&v56[16] = v19;
          if (v17 >= v18)
          {
            v20 = v56;
          }

          else
          {
            v17 = v18;
          }

          if (v17 < v19)
          {
            v20 = &v56[16];
          }

          v21 = *v20;
          v22 = v20 - v56;
          if (v20 == v56)
          {
            if (*(a1 + 680))
            {
              v23 = 598;
              v24 = 596;
              v25 = 590;
              v26 = 588;
              goto LABEL_59;
            }
          }

          else if (v22 == 16)
          {
            if (*(a1 + 680))
            {
              v23 = 662;
              v24 = 660;
              v25 = 654;
              v26 = 652;
              goto LABEL_59;
            }
          }

          else
          {
            if (v22 != 8)
            {
              v55 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&v66 = v22 >> 3;
                v52 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: AOA fpsnrIndex %ld";
                v53 = v55;
                v54 = 12;
                goto LABEL_67;
              }

              return 0.2;
            }

            if (*(a1 + 680))
            {
              v23 = 630;
              v24 = 628;
              v25 = 622;
              v26 = 620;
LABEL_59:
              v43 = *(a1 + v23);
              v44 = *(a1 + v24);
              v45 = *(a1 + v25);
              v46 = *(a1 + v26);
              v47 = hypot(v44, v43);
              v48 = hypot(v46, v45);
              v49 = v48;
              if (v47 > 0.0 && v48 > 0.0)
              {
                v33 = log10(v47 / v48) * 20.0;
                v50 = v11 - v21 - v33;
                v6 = v50 * 0.03 + 1.75;
                v35 = qword_1009F9820;
                if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
LABEL_40:
                  if (v6 < 0.01)
                  {
                    v6 = 0.01;
                  }

                  v38 = qword_1009F9820;
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                  {
                    *v56 = 67110656;
                    *&v56[4] = v13;
                    *&v56[8] = 2048;
                    *&v56[10] = v14;
                    *&v56[18] = 2048;
                    *&v56[20] = v15;
                    v57 = 2048;
                    v58 = v11;
                    v59 = 2048;
                    v60 = v21;
                    v61 = 2048;
                    v62 = v33;
                    v63 = 2048;
                    v64 = v6;
                    v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: cycleIndex %d machContTime %.3f rm %.3f ppnr %.2f fpsnr %.2f ler %.2f ru %.2f";
                    v8 = v38;
                    v9 = 68;
                    goto LABEL_53;
                  }

                  return v6;
                }

                *buf = 134218240;
                v66 = v11 - v21 - v33;
                v67 = 2048;
                v68 = v50 * 0.03 + 1.75;
                v36 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: AOA cirMetric %.2f RangeUnc %.2f";
                v37 = buf;
LABEL_39:
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, v37, 0x16u);
                goto LABEL_40;
              }

              v51 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v66 = v47;
                v67 = 2048;
                v68 = v49;
                v52 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: firstPathPeak(%.2f) or leadingEdgeStartMag(%.2f) are zero";
                v53 = v51;
                v54 = 22;
LABEL_67:
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
                return 0.2;
              }

              return 0.2;
            }
          }

LABEL_69:
          sub_1000195BC();
        }

        v41 = qword_1009F9820;
        v6 = 0.2;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          return v6;
        }

        *v56 = 0;
        v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: AOA one or more FPSNRs not available";
LABEL_52:
        v8 = v41;
        v9 = 2;
        goto LABEL_53;
      }
    }

    else
    {
      if ((*(a1 + 768) & 1) == 0)
      {
        v39 = qword_1009F9820;
        v6 = 0.2;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v56 = 67109376;
          *&v56[8] = 1024;
          *&v56[10] = 0;
          v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: fail CIR has_value %d AOACIR has_value %d";
          v8 = v39;
          v9 = 14;
          goto LABEL_53;
        }

        return v6;
      }

      v13 = *(a1 + 112);
      v27 = *(a1 + 8);
      if (*(a1 + 16))
      {
        v14 = *(a1 + 8);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 304);
    }

    v28 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: TOA CIR", v56, 2u);
      if ((*(a1 + 768) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v29 = hypot(*(a1 + 748), *(a1 + 750));
    v30 = v29;
    if (v29 <= 0.0)
    {
      v40 = qword_1009F9820;
      v6 = 0.2;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 134217984;
        *&v56[4] = v30;
        v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: TOA fppk(%.2f) <= 0";
        v8 = v40;
        v9 = 12;
        goto LABEL_53;
      }

      return v6;
    }

    v31 = log10(v29 * 0.707 / v1);
    v32 = hypot(*(a1 + 740), *(a1 + 742));
    if (v32 > 0.0)
    {
      v21 = v31 * 20.0;
      v33 = log10(v30 / v32) * 20.0;
      v34 = v11 - v31 * 20.0 - v33;
      v6 = v34 * 0.02 + 1.25;
      v35 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *v56 = 134218240;
      *&v56[4] = v34;
      *&v56[12] = 2048;
      *&v56[14] = v34 * 0.02 + 1.25;
      v36 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: TOA cirMetric %.2f RangeUnc %.2f";
      v37 = v56;
      goto LABEL_39;
    }

    v41 = qword_1009F9820;
    v6 = 0.2;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    *v56 = 0;
    v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: leadingEdgeStartMag is not positive.";
    goto LABEL_52;
  }

  v5 = qword_1009F9820;
  v6 = 0.2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 134218240;
    *&v56[4] = v1;
    *&v56[12] = 2048;
    *&v56[14] = v3;
    v7 = "#me,MeasEngMetricsCalculator::computeRangeUncertaintyFromCirs: zero check fail toaNoiseRms %.2f toaPpwinRms %.2f";
    v8 = v5;
    v9 = 22;
LABEL_53:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v56, v9);
  }

  return v6;
}

void sub_10016CCC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 1800;
  if (*(a1 + 2408) == 1)
  {
    v5 = *(a1 + 1848);
    *(a2 + 32) = *(a1 + 1832);
    *(a2 + 48) = v5;
    *(a2 + 64) = *(a1 + 1864);
    v6 = *(a1 + 1816);
    *a2 = *v4;
    *(a2 + 16) = v6;
    *(a2 + 72) = 0;
    v7 = *(a1 + 1872);
    v8 = *(a1 + 1880);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    sub_100012F38(a2 + 72, v7, v8, (v8 - v7) >> 3);
    *(a2 + 136) = 0;
    v9 = *(a1 + 1912);
    *(a2 + 96) = *(a1 + 1896);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(a1 + 1928);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    sub_100020574(a2 + 136, *(a1 + 1936), *(a1 + 1944), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1944) - *(a1 + 1936)) >> 3));
    memcpy((a2 + 160), (a1 + 1960), 0x181uLL);
    v10 = *(a1 + 2368);
    *(a2 + 552) = *(a1 + 2352);
    *(a2 + 568) = v10;
    *(a2 + 584) = *(a1 + 2384);
    *(a2 + 597) = *(a1 + 2397);
  }

  else
  {
    v11 = sub_10016B540(a1);
    v12 = sub_10016B830(a1);
    v13 = sub_10016BA38(a1);
    v14 = sub_10016BC40(a1);
    v15 = sub_10016C27C(a1);
    v16 = sub_10016B2C0(a1);
    v59 = *(a1 + 2423) ^ 1;
    v60 = *(a1 + 2422) ^ 1;
    v17 = sub_10016C548(a1);
    v57 = v16;
    v58 = v15;
    if (sub_10016E9FC(v11) && sub_10016E9FC(v12) && sub_10016E9FC(v13) && sub_10016E9E0(v14) && sub_10016E9E0(v15) && sub_10016E9E0(v16) && sub_10016EA1C(v60) && sub_10016EA1C(v59))
    {
      v61 = sub_10016E9FC(v17);
    }

    else
    {
      v61 = 0;
    }

    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v61;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics: okForSensorFusion %d", buf, 8u);
      v18 = qword_1009F9820;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_10016EA28(v17, buf);
      v19 = buf[23] >= 0 ? buf : *buf;
      *v88 = 136315138;
      *&v88[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics: checkCirMetricResult %s", v88, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v20 = *(a1 + 48);
    v90 = *(a1 + 32);
    v91 = v20;
    v21 = *(a1 + 16);
    *v88 = *a1;
    v89 = v21;
    v22 = *(a1 + 72);
    v92 = *(a1 + 64);
    v93 = 0;
    v23 = *(a1 + 80);
    v95 = 0;
    v94 = 0;
    sub_100012F38(&v93, v22, v23, (v23 - v22) >> 3);
    v56 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = *(a1 + 112);
    v96 = *(a1 + 96);
    v97 = v27;
    v28 = *(a1 + 136);
    v98 = *(a1 + 128);
    v99 = 0;
    v101 = 0;
    v100 = 0;
    sub_100020574(&v99, v28, *(a1 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 144) - v28) >> 3));
    memcpy(v102, (a1 + 160), 0x181uLL);
    v29 = *(a1 + 1788);
    v30 = qword_1009F9820;
    v62 = (a1 + 1784);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 1784);
      *buf = 134218240;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics: confidence: range %f fov %f", buf, 0x16u);
      v30 = qword_1009F9820;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = (1.0 - v29) * 4.8 + 0.2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics: unc: range %f", buf, 0xCu);
    }

    v102[45] = (1.0 - v29) * 4.8 + 0.2;
    LOBYTE(v102[46]) = 1;
    v102[47] = *v62;
    LOBYTE(v102[48]) = 1;
    v55 = a2;
    if (sub_10016E9FC(v17))
    {
      v32 = sub_10016C634(a1);
      v33 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 304);
        *buf = 134218240;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics:  rangeMsmt %.3f  rangeUncertaintyFromCirs:   %.2f", buf, 0x16u);
      }

      v102[45] = v32;
      LOBYTE(v102[46]) = 1;
    }

    else
    {
      *(a1 + 1777) = 0;
      v35 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::getMetrics: checkCirMetrics is not ok. okToPublishToClient=false", buf, 2u);
      }
    }

    v36 = v99;
    v37 = v100;
    if (v99 != v100)
    {
      v38 = qword_1009F9820;
      v39 = 1;
      do
      {
        v40 = 1.0 - v36[2];
        v41 = v40 * *(a1 + 1792);
        *&v40 = v40 * *(a1 + 1796);
        v42 = v41;
        v43 = (1.0 - v41) * 350.0 + 10.0;
        v44 = *&v40;
        v45 = (1.0 - *&v40) * 350.0 + 10.0;
        v46 = fabs(*v36);
        if (v46 >= 60.0)
        {
          v47 = 90.0;
        }

        else
        {
          v47 = v45;
        }

        if (v46 >= 60.0)
        {
          v48 = 20.0;
        }

        else
        {
          v48 = v43;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v39;
          *&buf[8] = 2048;
          *&buf[10] = v42;
          *&buf[18] = 2048;
          *&buf[20] = v44;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::applyConfidenceMetrics: hypothesis %d confidence: az %f el %f", buf, 0x1Cu);
          v38 = qword_1009F9820;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v39;
          *&buf[8] = 2048;
          *&buf[10] = v48;
          *&buf[18] = 2048;
          *&buf[20] = v47;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#me,MeasEngMetricsCalculator::applyConfidenceMetrics: hypothesis %d unc: az %f el %f", buf, 0x1Cu);
          v38 = qword_1009F9820;
        }

        v36[3] = v48;
        *(v36 + 32) = 1;
        v36[5] = v47;
        *(v36 + 48) = 1;
        v36 += 7;
        ++v39;
      }

      while (v36 != v37);
    }

    v64 = v90;
    v65 = v91;
    *buf = *v88;
    *&buf[16] = v89;
    v66 = v92;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    sub_100012F38(&v67, v93, v94, (v94 - v93) >> 3);
    v70 = v96;
    v71 = v97;
    v72 = v98;
    __p = 0;
    v74 = 0;
    v75 = 0;
    sub_100020574(&__p, v99, v100, 0x6DB6DB6DB6DB6DB7 * ((v100 - v99) >> 3));
    memcpy(v76, v102, sizeof(v76));
    v77 = *v62;
    v78 = v56;
    v79 = v24;
    v80 = v25;
    v81 = v26;
    v82 = v58;
    v83 = v57;
    v84 = v60;
    v85 = v59;
    v86 = 0;
    v87 = v61;
    sub_10016D664(v4, buf);
    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if ((*(a1 + 2408) & 1) == 0)
    {
      sub_1000195BC();
    }

    v49 = *(v4 + 48);
    *(v55 + 32) = *(v4 + 32);
    *(v55 + 48) = v49;
    *(v55 + 64) = *(v4 + 64);
    v50 = *(v4 + 16);
    *v55 = *v4;
    *(v55 + 16) = v50;
    *(v55 + 72) = 0;
    v51 = *(a1 + 1872);
    v52 = *(a1 + 1880);
    *(v55 + 80) = 0;
    *(v55 + 88) = 0;
    sub_100012F38(v55 + 72, v51, v52, (v52 - v51) >> 3);
    *(v55 + 136) = 0;
    v53 = *(a1 + 1912);
    *(v55 + 96) = *(a1 + 1896);
    *(v55 + 128) = *(a1 + 1928);
    *(v55 + 112) = v53;
    *(v55 + 144) = 0;
    *(v55 + 152) = 0;
    sub_100020574(v55 + 136, *(a1 + 1936), *(a1 + 1944), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1944) - *(a1 + 1936)) >> 3));
    memcpy((v55 + 160), (a1 + 1960), 0x181uLL);
    v54 = *(a1 + 2368);
    *(v55 + 552) = *(a1 + 2352);
    *(v55 + 568) = v54;
    *(v55 + 584) = *(a1 + 2384);
    *(v55 + 597) = *(a1 + 2397);
    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }
}

uint64_t sub_10016D664(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 608);
  *a1 = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 16) = v7;
  if (v4 == 1)
  {
    sub_10016D9A8(a1 + 72, (a2 + 72));
    v8 = *(a2 + 96);
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v8;
    *(a1 + 112) = v9;
    sub_10016D9A8(a1 + 136, (a2 + 136));
    memcpy((a1 + 160), (a2 + 160), 0x181uLL);
    v11 = *(a2 + 568);
    v10 = *(a2 + 584);
    v12 = *(a2 + 552);
    *(a1 + 597) = *(a2 + 597);
    *(a1 + 568) = v11;
    *(a1 + 584) = v10;
    *(a1 + 552) = v12;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v13 = *(a2 + 112);
    v14 = *(a2 + 128);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v13;
    *(a1 + 128) = v14;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    memcpy((a1 + 160), (a2 + 160), 0x181uLL);
    v16 = *(a2 + 568);
    v15 = *(a2 + 584);
    v17 = *(a2 + 552);
    *(a1 + 597) = *(a2 + 597);
    *(a1 + 568) = v16;
    *(a1 + 584) = v15;
    *(a1 + 552) = v17;
    *(a1 + 608) = 1;
  }

  return a1;
}

uint64_t sub_10016D798(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 608) = 0;
  if (*(a2 + 608) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    *(a1 + 16) = v4;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    sub_100012F38(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
    v7 = *(a2 + 96);
    v8 = *(a2 + 112);
    v9 = *(a2 + 128);
    *(a1 + 136) = 0;
    *(a1 + 128) = v9;
    *(a1 + 112) = v8;
    *(a1 + 96) = v7;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    sub_100020574(a1 + 136, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    memcpy((a1 + 160), (a2 + 160), 0x181uLL);
    v11 = *(a2 + 568);
    v10 = *(a2 + 584);
    v12 = *(a2 + 552);
    *(a1 + 597) = *(a2 + 597);
    *(a1 + 568) = v11;
    *(a1 + 584) = v10;
    *(a1 + 552) = v12;
    *(a1 + 608) = 1;
  }

  return a1;
}

void sub_10016D89C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  if (*(v1 + 608) == 1)
  {
    sub_10002069C(v1);
  }

  _Unwind_Resume(exception_object);
}

double *sub_10016D8D4(double *result, double *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 >= *result)
      {
        *v6;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

__n128 sub_10016D9A8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10016DA4C(uint64_t result, int a2)
{
  *result = a2;
  v2 = vdupq_n_s64(0xC069000000000000);
  *(result + 8) = v2;
  *(result + 24) = v2;
  if (a2 <= 99)
  {
    if (a2 > 2)
    {
      if ((a2 - 3) >= 0x19)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (a2)
    {
      if (a2 != 1 && a2 != 2)
      {
        return result;
      }

      v3 = xmmword_100561AB0;
    }

    else
    {
      v3 = xmmword_100561AA0;
    }

    *(result + 16) = v3;
    return result;
  }

  if (a2 <= 199)
  {
    if ((a2 - 100) >= 0x1B)
    {
      return result;
    }

    goto LABEL_7;
  }

  if ((a2 - 200) < 3 || a2 == 997 || a2 == 999)
  {
LABEL_7:
    *(result + 16) = 0xC069000000000000;
    *(result + 32) = 0xC069000000000000;
  }

  return result;
}

BOOL sub_10016DAF8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 1) != 1 || *a2 != 11)
  {
    return 0;
  }

  v6 = *(a2 + 368);
  if (v6 == 9)
  {
    v7 = a3 == 0;
    v8 = 24;
    v9 = 32;
    goto LABEL_10;
  }

  if (v6 == 5)
  {
    v7 = a3 == 0;
    v8 = 8;
    v9 = 16;
LABEL_10:
    if (!v7)
    {
      v8 = v9;
    }

    v10 = *(a1 + v8);
    goto LABEL_14;
  }

  v10 = -200.0;
LABEL_14:
  v11 = *(a2 + 304);
  v12 = 0.0;
  if (v11 > 0.0)
  {
    v12 = *(a2 + 168);
    if (v11 > 0.75)
    {
      v12 = v12 + log10(*(a2 + 304)) * 20.0;
    }
  }

  v14 = v11 > 0.0 && *(a2 + 96) == 0;
  return v12 < v10 && v14;
}

uint64_t sub_10016DBD4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_100012F38(a1, qword_1009E9530, qword_1009E9538, (qword_1009E9538 - qword_1009E9530) >> 3);
}

void sub_10016DBF8()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100561AE0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

double sub_10016DD3C(float *a1, uint64_t *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = 136316162;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,%s: ConfidenceMetrics: fieldOfView %.3f range %.3f azimuth %.3f elevation %.3f", &v11, 0x34u);
  }

  return result;
}

uint64_t sub_10016DE38(void *a1, __n128 *a2)
{
  v4 = a1[5];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = a1[1];
  v6 = (*(v5 + (((v4 + a1[4] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * (v4 + *(a1 + 32) - 1)];
  v7 = a2->n128_f64[0];
  if (a2->n128_f64[0] < v6)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v22 = v7;
      v23 = 2048;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#me,RangeMeasurementHistory::add: timestamp %.6f is older than most recent %.6f, purging queue", buf, 0x16u);
      v5 = a1[1];
    }

    v9 = a1[2];
    a1[5] = 0;
    v10 = (v9 - v5) >> 3;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v5);
        v11 = a1[2];
        v5 = (a1[1] + 8);
        a1[1] = v5;
        v10 = (v11 - v5) >> 3;
      }

      while (v10 > 2);
    }

    if (v10 == 1)
    {
      v12 = 128;
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_12;
      }

      v12 = 256;
    }

    a1[4] = v12;
  }

LABEL_12:
  for (i = a1[5]; i; i = a1[5])
  {
    v14 = a1[4];
    v15 = *(*(a1[1] + ((v14 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v14);
    if (v15 > a2->n128_f64[0])
    {
      sub_10049E834();
    }

    if (a2->n128_f64[0] - v15 <= 3.0)
    {
      break;
    }

    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#me,RangeMeasurementHistory::addRangeMeasurement: removing old msmt witih timestamp %.3f", buf, 0xCu);
      v14 = a1[4];
      i = a1[5];
    }

    a1[5] = i - 1;
    a1[4] = v14 + 1;
    sub_10016EA3C(a1, 1);
  }

LABEL_18:
  v17 = sub_10016E0E4(a1, a2);
  v18 = a1[5];
  if (v18 >= 9)
  {
    do
    {
      v19 = a1[4];
      a1[5] = v18 - 1;
      a1[4] = v19 + 1;
      sub_10016EA3C(a1, 1);
      v18 = a1[5];
    }

    while (v18 > 8);
  }

  sub_10016E8F8(a1, a2);
  return v17;
}

uint64_t sub_10016E0E4(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 >= 0xA)
  {
    sub_10049E860();
  }

  if (v2 != 9)
  {
    return 0;
  }

  sub_10016F0E0(&v94, a1);
  v4 = v97;
  v5 = v95;
  v6 = (v95 + 8 * (v97 >> 8));
  v7 = *v6 + 16 * v97;
  if (v96 == v95)
  {
    v7 = 0;
  }

  v8 = (v7 - *v6) >> 4;
  if (v8 < -3)
  {
    v13 = 251 - v8;
    v10 = &v6[-(v13 >> 8)];
    v11 = *v10 + 16 * ~v13;
  }

  else
  {
    v9 = v8 + 4;
    v10 = &v6[v9 >> 8];
    v11 = *v10 + 16 * v9;
  }

  v14 = (v95 + 8 * ((v98 + v97) >> 8));
  if (v96 == v95)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 16 * (v98 + v97);
  }

  if (v15 != v11)
  {
    v99 = (v95 + 8 * (v97 >> 8));
    v100 = v7;
    while (1)
    {
      v16 = v100;
      if (v15 == v100 || (v17 = v99, v18 = *v14, v19 = *v99, v20 = ((v15 - *v14) >> 4) + 32 * (v14 - v99) - ((v100 - *v99) >> 4), v20 < 2))
      {
LABEL_154:
        v4 = v97;
        v5 = v95;
        goto LABEL_155;
      }

      if (v20 == 3)
      {
        v76 = v100 + 16;
        if (v100 + 16 - v19 == 4096)
        {
          v76 = v99[1];
        }

        if (v15 == v18)
        {
          v15 = *(v14 - 1) + 4096;
        }

        v77 = (v15 - 16);
        v78 = *(v76 + 8);
        v79 = *(v15 - 8);
        if (v78 >= *(v100 + 8))
        {
          if (v79 < v78)
          {
            v101 = *v76;
            v90 = v101;
            *v76 = *v77;
            *v77 = v90;
            if (*(v76 + 8) < *(v16 + 8))
            {
              v91 = *v16;
              *v16 = *v76;
              *v76 = v91;
            }
          }
        }

        else
        {
          if (v79 >= v78)
          {
            v92 = *v100;
            *v100 = *v76;
            *v76 = v92;
            if (*(v15 - 8) >= *(v76 + 8))
            {
              goto LABEL_154;
            }

            v80 = *v76;
            v101 = *v76;
            *v76 = *v77;
          }

          else
          {
            v80 = *v100;
            v101 = *v100;
            *v100 = *v77;
          }

          *v77 = v80;
        }

        goto LABEL_154;
      }

      if (v20 == 2)
      {
        if (v15 == v18)
        {
          v15 = *(v14 - 1) + 4096;
        }

        if (*(v15 - 8) < *(v100 + 8))
        {
          v101 = *v100;
          v81 = v101;
          *v100 = *(v15 - 16);
          *(v15 - 16) = v81;
        }

        goto LABEL_154;
      }

      if (v20 <= 7)
      {
        v82 = v15;
        if (v18 == v15)
        {
          v82 = *(v14 - 1) + 4096;
        }

        v83 = v82 - 16;
        if (v83 != v100)
        {
          do
          {
            if (v15 != v16)
            {
              v84 = v19;
              v85 = v16;
              v86 = v16;
              v87 = v17;
              while (1)
              {
                v86 += 16;
                if (v86 - v84 == 4096)
                {
                  v88 = v87[1];
                  ++v87;
                  v84 = v88;
                  v86 = v88;
                }

                if (v86 == v15)
                {
                  break;
                }

                if (*(v86 + 8) < *(v85 + 8))
                {
                  v85 = v86;
                }
              }

              if (v85 != v16)
              {
                v101 = *v16;
                *v16 = *v85;
                *v85 = v101;
                v19 = *v17;
              }
            }

            v16 += 16;
            if (v16 - v19 == 4096)
            {
              v89 = v17[1];
              ++v17;
              v19 = v89;
              v16 = v89;
            }
          }

          while (v16 != v83);
        }

        goto LABEL_154;
      }

      sub_10016E984(&v99, v20 >> 1);
      v22 = v14;
      v23 = v15;
      if (v15 == *v14)
      {
        v22 = v14 - 8;
        v23 = *(v14 - 1) + 4096;
      }

      v24 = v100;
      v25 = (v23 - 16);
      v26 = v21[1];
      v27 = *(v23 - 8);
      if (v26 < *(v100 + 8))
      {
        break;
      }

      if (v27 < v26)
      {
        v101 = *v21;
        v29 = v101;
        *v21 = *v25;
        *v25 = v29;
        if (v21[1] < *(v24 + 8))
        {
          v30 = *v24;
          *v24 = *v21;
          *v21 = v30;
        }

        goto LABEL_30;
      }

      v32 = 0;
LABEL_32:
      v33 = v99;
      v34 = v100;
      v35 = *(v100 + 8);
      v36 = v21[1];
      if (v35 >= v36)
      {
        v37 = *v22;
        while (1)
        {
          if (v25 == v37)
          {
            v39 = *(v22 - 1);
            v22 -= 8;
            v37 = v39;
            v38 = v39 + 512;
          }

          else
          {
            v38 = v25;
          }

          v25 = v38 - 2;
          if (v100 == v38 - 2)
          {
            break;
          }

          if (*(v38 - 1) < v36)
          {
            v101 = *v100;
            v40 = v101;
            *v100 = *v25;
            *v25 = v40;
            if (v32)
            {
              v32 = 2;
            }

            else
            {
              v32 = 1;
            }

            goto LABEL_42;
          }
        }

        v56 = v100 + 16;
        v57 = *v99;
        if (v100 + 16 - *v99 == 4096)
        {
          v33 = v99 + 1;
          v57 = v99[1];
          v56 = v57;
        }

        v58 = v14;
        v59 = v15;
        if (v15 == *v14)
        {
          v58 = v14 - 8;
          v59 = *(v14 - 1) + 4096;
        }

        v60 = (v59 - 16);
        if (v35 >= *(v59 - 8))
        {
          while (v56 != v60)
          {
            if (v35 < *(v56 + 8))
            {
              v101 = *v56;
              *v56 = *v60;
              v56 += 16;
              *v60 = v101;
              v57 = *v33;
              if (v56 - *v33 == 4096)
              {
                v75 = v33[1];
                ++v33;
                v57 = v75;
                v56 = v75;
              }

              goto LABEL_85;
            }

            v56 += 16;
            if (v56 - v57 == 4096)
            {
              v67 = v33[1];
              ++v33;
              v57 = v67;
              v56 = v67;
            }
          }

          goto LABEL_154;
        }

LABEL_85:
        if (v56 == v60)
        {
          goto LABEL_154;
        }

        while (1)
        {
          v61 = *(v100 + 8);
          while (v61 >= *(v56 + 8))
          {
            v56 += 16;
            if (v56 - v57 == 4096)
            {
              v62 = v33[1];
              ++v33;
              v57 = v62;
              v56 = v62;
            }
          }

          v63 = *v58;
          do
          {
            if (v60 == v63)
            {
              v64 = *(v58 - 1);
              v58 -= 8;
              v63 = v64;
              v60 = v64 + 512;
            }

            v65 = *(v60 - 1);
            v60 -= 2;
          }

          while (v61 < v65);
          if (v33 >= v58 && (v33 != v58 || v56 >= v60))
          {
            break;
          }

          v101 = *v56;
          *v56 = *v60;
          v56 += 16;
          *v60 = v101;
          v57 = *v33;
          if (v56 - *v33 == 4096)
          {
            v66 = v33[1];
            ++v33;
            v57 = v66;
            v56 = v66;
          }
        }

        if (v33 > v10 || v56 > v11 && v33 == v10)
        {
          goto LABEL_154;
        }

        goto LABEL_109;
      }

LABEL_42:
      v41 = v34 + 16;
      v42 = *v33;
      if (v41 - *v33 == 4096)
      {
        v43 = v33[1];
        ++v33;
        v42 = v43;
        v41 = v43;
      }

      if (v33 < v22 || v33 == v22 && v41 < v25)
      {
        while (1)
        {
          v44 = v21[1];
          while (*(v41 + 8) < v44)
          {
            v41 += 16;
            if (v41 - v42 == 4096)
            {
              v45 = v33[1];
              ++v33;
              v42 = v45;
              v41 = v45;
            }
          }

          v46 = *v22;
          do
          {
            if (v25 == v46)
            {
              v47 = *(v22 - 1);
              v22 -= 8;
              v46 = v47;
              v25 = v47 + 512;
            }

            v48 = *(v25 - 1);
            v25 -= 2;
          }

          while (v48 >= v44);
          if (v33 >= v22 && (v33 != v22 || v41 >= v25))
          {
            break;
          }

          v101 = *v41;
          *v41 = *v25;
          *v25 = v101;
          ++v32;
          if (v21 == v41)
          {
            v21 = v25;
          }

          v41 += 16;
          v42 = *v33;
          if (v41 - *v33 == 4096)
          {
            v49 = v33[1];
            ++v33;
            v42 = v49;
            v41 = v49;
          }
        }
      }

      if (v41 != v21 && v21[1] < *(v41 + 8))
      {
        v101 = *v41;
        *v41 = *v21;
        *v21 = v101;
        ++v32;
      }

      if (v41 == v11)
      {
        goto LABEL_154;
      }

      if (!v32)
      {
        if (v33 > v10 || v41 > v11 && v33 == v10)
        {
          v50 = v99;
          v51 = v100;
          v52 = *v99;
          while (1)
          {
            v53 = v51 + 16;
            if (v51 + 16 - v52 == 4096)
            {
              v54 = v50[1];
              ++v50;
              v52 = v54;
              v53 = v54;
            }

            if (v53 == v41)
            {
              break;
            }

            v55 = *(v51 + 8);
            v51 = v53;
            if (*(v53 + 8) < v55)
            {
              goto LABEL_67;
            }
          }
        }

        else
        {
          v69 = *v33;
          v70 = v41;
          v71 = v33;
          while (1)
          {
            v72 = v70 + 16;
            if (v70 + 16 - v69 == 4096)
            {
              v73 = v71[1];
              ++v71;
              v69 = v73;
              v72 = v73;
            }

            if (v72 == v15)
            {
              break;
            }

            v74 = *(v70 + 8);
            v70 = v72;
            if (*(v72 + 8) < v74)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_154;
      }

LABEL_67:
      if (v33 <= v10 && (v41 <= v11 || v33 != v10))
      {
        v56 = v41 + 16;
        if (v41 + 16 - *v33 == 4096)
        {
          v68 = v33[1];
          ++v33;
          v56 = v68;
        }

LABEL_109:
        v99 = v33;
        v100 = v56;
        goto LABEL_110;
      }

      v15 = v41;
      v14 = v33;
LABEL_110:
      if (v15 == v11)
      {
        goto LABEL_154;
      }
    }

    if (v27 >= v26)
    {
      v31 = *v100;
      *v100 = *v21;
      *v21 = v31;
      if (*(v23 - 8) >= v21[1])
      {
LABEL_30:
        v32 = 1;
        goto LABEL_32;
      }

      v28 = *v21;
      v101 = *v21;
      *v21 = *v25;
    }

    else
    {
      v28 = *v100;
      v101 = *v100;
      *v100 = *v25;
    }

    *v25 = v28;
    goto LABEL_30;
  }

LABEL_155:
  v93 = *(a2 + 8) - *(*(v5 + (((v4 + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + 4) + 8);
  sub_10016F608(&v94);
  return *&v93 & 0x7FFFFFFFFFFFFFFFLL;
}

__n128 sub_10016E8F8(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10016EA9C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

uint64_t *sub_10016E984(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
      v6 = *result;
    }

    else
    {
      result += v4 >> 8;
      v5 = *result;
    }
  }

  return result;
}

uint64_t sub_10016EA3C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void *sub_10016EA9C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10016EC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10016EC70(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10016F098(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10016ED78(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10016F098(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_10016EE84(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10016F098(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10016EF8C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10016F098(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_10016F098(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10016F0E0(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_10016F184(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t *sub_10016F184(void *a1, char *a2, __int128 *a3, char *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_10016F1B8(a1, a2, a3, v5);
}

uint64_t *sub_10016F1B8(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10016F2F0(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 8));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v11;
    v15 = v14;
  }

  v23[0] = v13;
  v23[1] = v15;
  result = sub_10016E984(v23, a4);
  while (v14 != v17)
  {
    v18 = (v13 == result ? v17 : *v13 + 4096);
    if (v14 == v18)
    {
      v18 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *a3++;
        *v19 = v20;
        if ((a3 - *a2) == 4096)
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        ++v19;
      }

      while (v19 != v18);
    }

    a1[5] += (v18 - v14) >> 4;
    if (v13 == result)
    {
      break;
    }

    v22 = v13[1];
    ++v13;
    v14 = v22;
  }

  return result;
}

void *sub_10016F2F0(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = result[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (result[4] = v6 - (v7 << 8); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10016EC70(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10016F098(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 8; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10016EC70(v2, v16);
    }
  }

  return result;
}

void sub_10016F594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F608(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

BOOL sub_10016F6B4(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    std::mutex::lock((a1 + 16));
    v5 = *a2;
    *a2 = 0;
    sub_10016A158((a1 + 8), v5);
    *a1 = 1;
    std::mutex::unlock((a1 + 16));
  }

  return v2 != 0;
}

void sub_10016F718(uint64_t a1@<X0>, double *a2@<X1>, const void **a3@<X8>)
{
  if (!*(a1 + 8))
  {
    sub_10049E88C();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = (*a2 + 180.0) / 10.0;
  v5 = vcvtmd_s64_f64(v4);
  v6 = (a2[1] + 180.0) / 10.0;
  v7 = vcvtmd_s64_f64(v6);
  v8 = v4 - v5;
  v9 = v6 - v7;
  v10 = v8 >= 0.5;
  if (v8 < 0.5)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v9 >= 0.5;
  if (v9 < 0.5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (1.0 - v8 >= v8)
  {
    v8 = 1.0 - v8;
  }

  v111 = v8;
  if (1.0 - v9 >= v9)
  {
    v14 = 1.0 - v9;
  }

  else
  {
    v14 = v9;
  }

  std::mutex::lock((a1 + 16));
  if (*(*(a1 + 8) + 8) - **(a1 + 8) != 72)
  {
    __assert_rtn("getAoaHypotheses", "AoACalculator.cpp", 100, "num_LUT == kNumOfLUT");
  }

  v15 = 0;
  v117 = v12 + v7;
  v118 = v10 + v5;
  v132 = (v10 + v5) % 37;
  v133 = (v7 + v13 + 1) % 37;
  v108 = v111 * v14 + (1.0 - v111) * v14;
  v109 = (1.0 - v111) * v14;
  v107 = v111 * (1.0 - v14);
  v114 = 1.0 - v14;
  v106 = (1.0 - v111) * (1.0 - v14);
  v115 = (v12 + v7) % 37;
  v116 = (v5 + v11 + 1) % 37;
  v112 = v111 * v14;
  do
  {
    v16 = 0;
    v17 = 0;
    __src = 0;
    v138 = 0;
    v139 = 0;
    do
    {
      v18 = (v15 + v17) % 3uLL;
      if (v16 >= v139)
      {
        v19 = __src;
        v20 = v16 - __src;
        v21 = (v16 - __src) >> 2;
        v22 = v21 + 1;
        if ((v21 + 1) >> 62)
        {
          sub_100019B38();
        }

        v23 = v139 - __src;
        if ((v139 - __src) >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
        v25 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          sub_10004F51C(&__src, v25);
        }

        v26 = (v16 - __src) >> 2;
        v27 = (4 * v21);
        v28 = (4 * v21 - 4 * v26);
        *v27 = v18;
        v16 = (v27 + 1);
        memcpy(v28, v19, v20);
        v29 = __src;
        __src = v28;
        v138 = v16;
        v139 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v16 = v18;
        v16 += 4;
      }

      v138 = v16;
      ++v17;
    }

    while (v17 != 3);
    v140 = v15;
    v141 = -1;
    v142 = -1;
    v135 = 0;
    v136 = 0;
    __p = 0;
    sub_10017041C(&__p, &v140, &v143, 4uLL);
    v30 = (*(*(**(a1 + 8) + 24 * v15) + 24 * v118) + 4 * v117);
    v31 = *v30;
    v32 = v30[1];
    if (v31 == 0x7FFF || v32 == 0x7FFF)
    {
      goto LABEL_92;
    }

    v34 = 0;
    v35 = v31;
    v36 = v32;
    while (1)
    {
      v37 = (*(*(**(a1 + 8) + 24 * *(__src + v34)) + 24 * v116) + 4 * v115);
      v38 = *v37;
      v39 = v37[1];
      if (v38 != 0x7FFF && v39 != 0x7FFF)
      {
        break;
      }

      v42 = NAN;
      v41 = NAN;
LABEL_40:
      if (++v34 == 3)
      {
        goto LABEL_43;
      }
    }

    v41 = v38;
    v42 = v39;
    if (sub_100167130(v35, v36, v38, v39) > 30.0)
    {
      goto LABEL_40;
    }

    *(__p + 1) = *(__src + v34);
LABEL_43:
    v43 = 0;
    while (2)
    {
      v44 = (*(*(**(a1 + 8) + 24 * *(__src + v43)) + 24 * v132) + 4 * v133);
      v45 = *v44;
      v46 = v44[1];
      if (v45 == 0x7FFF || v46 == 0x7FFF)
      {
        v49 = NAN;
        v48 = NAN;
        goto LABEL_51;
      }

      v48 = v45;
      v49 = v46;
      if (sub_100167130(v35, v36, v45, v46) > 30.0)
      {
LABEL_51:
        if (++v43 == 3)
        {
          goto LABEL_54;
        }

        continue;
      }

      break;
    }

    *(__p + 2) = *(__src + v43);
LABEL_54:
    v50 = 0;
    while (2)
    {
      v51 = (*(*(**(a1 + 8) + 24 * *(__src + v50)) + 24 * v116) + 4 * v133);
      v52 = *v51;
      v53 = v51[1];
      if (v52 == 0x7FFF || v53 == 0x7FFF)
      {
        v56 = NAN;
        v55 = NAN;
        goto LABEL_62;
      }

      v55 = v52;
      v56 = v53;
      if (sub_100167130(v35, v36, v52, v53) > 30.0)
      {
LABEL_62:
        if (++v50 == 3)
        {
          goto LABEL_65;
        }

        continue;
      }

      break;
    }

    *(__p + 3) = *(__src + v50);
LABEL_65:
    __xa = sub_1000422B8(v35);
    v126 = sub_1000422B8(v36);
    v123 = sin(__xa);
    v127 = cos(v126);
    __xb = sub_1000422B8(v35);
    v57 = sub_1000422B8(v36);
    v119 = sin(__xb);
    v58 = sin(v57);
    v59 = sub_1000422B8(v35);
    v60 = v112;
    v61 = v112 * v123 * v127;
    v128 = v112 * v119 * v58;
    __x = v61;
    v62 = cos(v59);
    v63 = v112 * v62;
    v64 = __p;
    if (*(__p + 1) != -1)
    {
      v124 = v112 * v62;
      v65 = sub_1000422B8(v41);
      v66 = sub_1000422B8(v42);
      v120 = sin(v65);
      v113 = cos(v66);
      v67 = sub_1000422B8(v41);
      v68 = sub_1000422B8(v42);
      v69 = sub_1000422B8(v41);
      __x = __x + v109 * v120 * v113;
      v70 = v109 * sin(v67);
      v128 = v128 + v70 * sin(v68);
      v63 = v124 + v109 * cos(v69);
      v64 = __p;
      v60 = v108;
    }

    if (v64[2] == -1)
    {
      v79 = v128;
    }

    else
    {
      v121 = v60;
      v125 = v63;
      v71 = sub_1000422B8(v48);
      v72 = sub_1000422B8(v49);
      v73 = sin(v71);
      v74 = cos(v72);
      v75 = sub_1000422B8(v48);
      v76 = sub_1000422B8(v49);
      v77 = sub_1000422B8(v48);
      __x = __x + v107 * v73 * v74;
      v78 = v107 * sin(v75);
      v79 = v128 + v78 * sin(v76);
      v63 = v125 + v107 * cos(v77);
      v60 = v121 + v111 * v114;
      v64 = __p;
    }

    if (v64[3] == -1)
    {
      v88 = __x;
    }

    else
    {
      v122 = v60;
      v80 = v63;
      v81 = sub_1000422B8(v55);
      v82 = sub_1000422B8(v56);
      v83 = sin(v81);
      v84 = cos(v82);
      v85 = sub_1000422B8(v55);
      v86 = sub_1000422B8(v56);
      v87 = sub_1000422B8(v55);
      v88 = __x + v106 * v83 * v84;
      v89 = v106 * sin(v85);
      v79 = v79 + v89 * sin(v86);
      v63 = v80 + v106 * cos(v87);
      v60 = v122 + (1.0 - v111) * v114;
    }

    if (v60 != 0.0)
    {
      v90 = acos(v63 / v60);
      v91 = sub_1000422D4(v90);
      v92 = atan2(v79, v88);
      v93 = sub_1000422D4(v92);
      if (v93 <= 180.0 && v91 >= 0.0 && v91 <= 140.0 && v93 >= 0.0)
      {
        v94 = a3;
        v96 = a3[1];
        v95 = a3[2];
        if (v96 >= v95)
        {
          v98 = *a3;
          v99 = v96 - *a3;
          v100 = v99 >> 4;
          v101 = (v99 >> 4) + 1;
          if (v101 >> 60)
          {
            sub_100019B38();
          }

          v102 = v95 - v98;
          if (v102 >> 3 > v101)
          {
            v101 = v102 >> 3;
          }

          v24 = v102 >= 0x7FFFFFFFFFFFFFF0;
          v103 = 0xFFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v103 = v101;
          }

          if (v103)
          {
            sub_10004EF68(a3, v103);
          }

          v104 = (16 * v100);
          *v104 = v91;
          v104[1] = v93;
          v97 = 16 * v100 + 16;
          memcpy(0, v98, v99);
          v105 = *a3;
          *a3 = 0;
          a3[1] = v97;
          a3[2] = 0;
          if (v105)
          {
            operator delete(v105);
          }

          v94 = a3;
        }

        else
        {
          *v96 = v91;
          v96[1] = v93;
          v97 = (v96 + 2);
        }

        v94[1] = v97;
      }
    }

LABEL_92:
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v138 = __src;
      operator delete(__src);
    }

    ++v15;
  }

  while (v15 != 3);
  std::mutex::unlock((a1 + 16));
}

void sub_1001700CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  v36 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

double sub_100170160(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = 998;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 850045863;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

void sub_10017019C(uint64_t a1@<X0>, int a2@<W1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 5)
  {
    std::mutex::lock((a1 + 24));
    v7 = a1 + 8;
    v8 = *(a1 + 8);
    std::mutex::unlock((a1 + 24));
    if (v8 != 1)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v10 = "#me,AoACalculator: reverse LUT of Channel 5 is not initialized.";
        v11 = &v14;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    std::mutex::lock((a1 + 104));
    v7 = a1 + 88;
    v12 = *(a1 + 88);
    std::mutex::unlock((a1 + 104));
    if (v12 != 1)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v10 = "#me,AoACalculator: reverse LUT of Channel 9 is not initialized.";
        v11 = &v13;
        goto LABEL_11;
      }

LABEL_12:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }
  }

  sub_10016F718(v7, a3, a4);
}

BOOL sub_1001702DC(uint64_t a1, int a2, void ***a3)
{
  if (a2 == 9)
  {
    v7 = *a3;
    *a3 = 0;
    v9 = v7;
    v5 = &v9;
    v6 = sub_10016F6B4(a1 + 88, &v9);
    goto LABEL_5;
  }

  if (a2 == 5)
  {
    v4 = *a3;
    *a3 = 0;
    v10 = v4;
    v5 = &v10;
    v6 = sub_10016F6B4(a1 + 8, &v10);
LABEL_5:
    v3 = v6;
    sub_10016A158(v5, 0);
  }

  return v3;
}

uint64_t sub_100170384(uint64_t a1)
{
  sub_1001703BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001703BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_10017041C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_100170474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100170490()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EE6A8 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EE698 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE698, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EE6C0 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EE6B0 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE6B0, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EE6D8 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EE6C8 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE6C8, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EE6F0 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EE6E0 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE6E0, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EE708 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EE6F8 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE6F8, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EE720 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EE710 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE710, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EE738 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EE728 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE728, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EE750 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EE740 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE740, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EE768 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EE758 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EE758, &_mh_execute_header);
}

void sub_100170AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100170B34(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 80);
  *(a1 + 80) = v4;
  if (v5)
  {
    operator delete();
  }

  std::mutex::unlock(a1);
}

void sub_100170B98(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100170C60(a1, a2, __p, *(v6 + 16680), *(v6 + 16684));
    sub_100171128(a1, __p, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  std::mutex::unlock(a1);
}

void sub_100170C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v11);
  _Unwind_Resume(a1);
}

void sub_100170C60(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (!*(a1 + 80))
  {
    sub_10049E8E4();
  }

  if (a2[1] - *a2 != 72 || *(*a2 + 8) - **a2 != 80)
  {
    sub_10049E8B8();
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  sub_100172418(v72, 3uLL);
  for (i = 0; i != 5; ++i)
  {
    if (i > 2)
    {
      v11 = -3;
    }

    else
    {
      v11 = 2;
    }

    v12 = v11 + i;
    *__p = vmulq_n_f64(*(**a2 + 16 * v12), *(*(a1 + 88) + 8 * v12));
    sub_10017158C(v72[0], __p);
    *__p = vmulq_n_f64(*(*(*a2 + 24) + 16 * v12), *(*(a1 + 88) + 8 * v12));
    sub_10017158C((v72[0] + 3), __p);
    *__p = vmulq_n_f64(*(*(*a2 + 48) + 16 * v12), *(*(a1 + 88) + 8 * v12));
    sub_10017158C((v72[0] + 6), __p);
  }

  sub_100171664(v72[0], __p, v13);
  sub_100171664(v72[0] + 3, &v69, v14);
  sub_100171664(v72[0] + 6, &v67, v15);
  if ((__p[1] - __p[0]) != 112 || v70 - v69 != 112 || v68 - v67 != 112)
  {
    __assert_rtn("nn_preprocess", "NeuralNetworkClassifier.cpp", 199, "fftout0.size() == kNumOfFrequencyBins && fftout1.size() == kNumOfFrequencyBins && fftout2.size() == kNumOfFrequencyBins");
  }

  v65 = 0.0;
  sub_100172550(a3, 0x2AuLL);
  v58 = a5 * -0.0;
  v16 = -a5;
  v17 = a4 * -0.0;
  v18 = -a4;
  v19 = v69;
  v20 = __p[0];
  v21 = 280;
  for (j = 8; j != 120; j += 16)
  {
    v23 = -*&v20[j];
    v63 = *&v20[j - 8];
    v64 = v23;
    v65 = sub_10017190C(&v19[j - 8], &v63);
    v66 = v24;
    v59 = v58;
    v60 = v16;
    sub_100171968(&v59);
    v61 = v25;
    v62 = v26;
    v27 = sub_10017190C(&v65, &v61);
    v29 = v28;
    v30 = hypot(v27, v28);
    if (v30 > 0.0)
    {
      v27 = v27 / v30;
      v29 = v29 / v30;
    }

    v31 = (*a3 + j);
    *(v31 - 1) = v27;
    *v31 = v29;
    v32 = -*(__p[0] + j);
    v63 = *(__p[0] + j - 8);
    v64 = v32;
    v65 = sub_10017190C(&v67[j - 8], &v63);
    v66 = v33;
    v59 = v17;
    v60 = v18;
    sub_100171968(&v59);
    v61 = v34;
    v62 = v35;
    v36 = sub_10017190C(&v65, &v61);
    v38 = v37;
    v39 = hypot(v36, v37);
    if (v39 > 0.0)
    {
      v36 = v36 / v39;
      v38 = v38 / v39;
    }

    v40 = *a3;
    v41 = *a3 + j;
    *(v41 + 104) = v36;
    *(v41 + 112) = v38;
    v20 = __p[0];
    v42 = hypot(*(__p[0] + j - 8), *(__p[0] + j));
    v43 = v42 * v42;
    v19 = v69;
    v44 = hypot(*&v69[j - 8], *&v69[j]);
    v45 = v44 * v44;
    v46 = v67;
    v47 = hypot(*&v67[j - 8], *&v67[j]);
    v48 = v47 * v47;
    v49 = v43 + 1.0e-12;
    v50 = log10(v45 / v49) * 10.0;
    v51 = log10(v48 / v49);
    v52 = (v40 + v21);
    *(v52 - 7) = v50;
    *v52 = v51 * 10.0;
    v21 += 8;
  }

  v53 = 0;
  v54 = 0.0;
  do
  {
    v54 = v54 + *(v40 + v53) * *(v40 + v53);
    v53 += 8;
  }

  while (v53 != 224);
  v55 = 0;
  v56 = sqrt(v54 / 28.0);
  v57 = *a3;
  do
  {
    if (v56 != 0.0)
    {
      *(v57 + v55) = *(v57 + v55) / v56;
    }

    v55 += 8;
  }

  while (v55 != 224);
  if (v46)
  {
    v68 = v46;
    operator delete(v46);
    v19 = v69;
  }

  if (v19)
  {
    v70 = v19;
    operator delete(v19);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = v72;
  sub_1001674A8(__p);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_100171078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char *a25, char *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  a25 = &a29;
  sub_1001674A8(&a25);
  v31 = *(v29 - 152);
  if (v31)
  {
    *(v29 - 144) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_100171128(uint64_t a1@<X0>, uint64_t *a2@<X1>, double **a3@<X8>)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    sub_10049E93C();
  }

  if (a2[1] - *a2 != 336)
  {
    sub_10049E910();
  }

  sub_100171A38(a2, v3, v34);
  sub_100171AD0(v34, *(a1 + 80) + 15264, v33);
  sub_100171B70(v33, &v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_100012F38(&v28, v31, v32, (v32 - v31) >> 3);
  if (v29 - v28 != 400)
  {
    __assert_rtn("nn_core", "NeuralNetworkClassifier.cpp", 262, "input_layer1.size() == kNNLayer1InputDimension");
  }

  sub_100171BEC(&v28, *(a1 + 80) + 8600, v27);
  sub_100171C84(v27, *(a1 + 80) + 16072, v26);
  sub_100171B70(v26, &v24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_100012F38(&v21, v24, v25, (v25 - v24) >> 3);
  if (v22 - v21 != 200)
  {
    __assert_rtn("nn_core", "NeuralNetworkClassifier.cpp", 278, "input_layer2.size() == kNNLayer2InputDimension");
  }

  sub_100171D20(&v21, *(a1 + 80) + 13700, v20);
  sub_100171DB4(v20, *(a1 + 80) + 16480, v19);
  sub_100171B70(v19, &v17);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_100012F38(&__p, v17, v18, (v18 - v17) >> 3);
  if (v15 - __p != 96)
  {
    __assert_rtn("nn_core", "NeuralNetworkClassifier.cpp", 293, "input_layer3.size() == kNNLayer3InputDimension");
  }

  sub_100171E50(&__p, *(a1 + 80) + 14948, a3);
  v8 = a3;
  v6 = *a3;
  v7 = v8[1];
  if (v7 != v6)
  {
    v9 = 0;
    v10 = (v7 - v6) <= 1 ? 1 : v7 - v6;
    v11 = 0.0;
    do
    {
      v12 = exp(v6[v9]);
      v6[v9] = v12;
      v11 = v11 + v12;
      ++v9;
    }

    while (v10 != v9);
    if (v11 > 0.0 && v7 != v6)
    {
      do
      {
        *v6 = *v6 / v11;
        ++v6;
        --v10;
      }

      while (v10);
    }
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }
}

void sub_10017145C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 136);
  if (v34)
  {
    *(v31 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v31 - 112);
  if (v35)
  {
    *(v31 - 104) = v35;
    operator delete(v35);
  }

  v36 = *(v31 - 88);
  if (v36)
  {
    *(v31 - 80) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017158C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100019B38();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10004EF68(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_100171664(double **a1@<X0>, const void **a2@<X8>, int8x16_t a3@<Q2>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 13;
  v6 = 7;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v55 = vnegq_f64(v7);
  __asm
  {
    FMOV            V1.2D, #14.0
    FMOV            V0.2D, #15.0
  }

  v53 = _Q0;
  v54 = _Q1;
  do
  {
    v14 = *a1;
    *_Q1.i64 = -v5;
    a3.i64[0] = 0;
    *&v56 = vbslq_s8(v55, a3, _Q1).u64[0];
    v64[0] = v56;
    v64[1] = v5 * -0.392699082;
    sub_100171968(v64);
    v65[0] = v15;
    v65[1] = v16;
    v17 = sub_10017190C(v14 + 2, v65);
    v19 = v18;
    v21 = *v14;
    v20 = v14[1];
    v22 = *a1;
    v23.f64[0] = v56;
    v23.f64[1] = v5 * -0.392699082;
    v57 = v23;
    v62 = vaddq_f64(v23, v23);
    sub_100171968(v62.f64);
    v63[0] = v24;
    v63[1] = v25;
    v26 = sub_10017190C(v22 + 4, v63);
    v28 = v27;
    v29 = *a1;
    v60 = vmulq_f64(v57, v54);
    sub_100171968(v60.f64);
    v61[0] = v30;
    v61[1] = v31;
    v32 = sub_10017190C(v29 + 6, v61);
    v34 = v33;
    v35 = *a1;
    v58 = vmulq_f64(v57, v53);
    sub_100171968(v58.f64);
    v59[0] = v36;
    v59[1] = v37;
    v38 = sub_10017190C(v35 + 8, v59);
    v39 = v19 + v20 + v28 + v34;
    v40 = v17 + v21 + v26 + v32 + v38;
    v41 = v39 + *_Q1.i64;
    v43 = a2[1];
    v42 = a2[2];
    if (v43 >= v42)
    {
      v45 = *a2;
      v46 = v43 - *a2;
      v47 = v46 >> 4;
      v48 = (v46 >> 4) + 1;
      if (v48 >> 60)
      {
        sub_100019B38();
      }

      v49 = v42 - v45;
      if (v49 >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        sub_10004EF68(a2, v50);
      }

      v51 = (16 * v47);
      *v51 = v40;
      v51[1] = v41;
      v44 = 16 * v47 + 16;
      memcpy(0, v45, v46);
      v52 = *a2;
      *a2 = 0;
      a2[1] = v44;
      a2[2] = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v43 = v40;
      v43[1] = v41;
      v44 = (v43 + 2);
    }

    a2[1] = v44;
    if (v5 + 1 <= 0)
    {
      v5 = -(-(v5 + 1) & 0xF);
    }

    else
    {
      v5 = (v5 + 1) & 0xF;
    }

    --v6;
  }

  while (v6);
}

void sub_1001718DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100171968(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    exp(v1);
    return;
  }

  if (fabs(v1) != INFINITY)
  {
    goto LABEL_12;
  }

  if (v1 < 0.0)
  {
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v2 = 1.0;
    }

    goto LABEL_12;
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
LABEL_12:
    v4 = v2;
    exp(v1);
    __sincos_stret(v4);
    return;
  }

  if (fabs(v2) != INFINITY)
  {
    v3 = *(a1 + 1);
  }
}

double sub_100171A38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0x32uLL);
  v6 = 0;
  v7 = *a1;
  v8 = a2 + 8400;
  v9 = *v5;
  do
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(v7 + 8 * v10) * *(a2 + 4 * v10);
      ++v10;
    }

    while (v10 != 42);
    result = v11 + *(v8 + 4 * v6);
    *(v9 + 8 * v6++) = result;
    a2 += 168;
  }

  while (v6 != 50);
  return result;
}

double sub_100171AD0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0x32uLL);
  v6 = 0;
  v7 = *a1;
  v8 = *v5;
  v9 = a2;
  do
  {
    result = v9[100] + (*(v7 + v6) - *v9) / sqrt(*(a2 + 800) + v9[50]) * v9[150];
    *(v8 + v6) = result;
    v6 += 8;
    ++v9;
  }

  while (v6 != 400);
  return result;
}

void sub_100171B70(double **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = sub_100172550(a2, v5);
  if (v3 != v4)
  {
    v7 = *a1;
    v8 = *v6;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v9 = *v7++;
      *v8++ = tanh(v9);
      --v5;
    }

    while (v5);
  }
}

double sub_100171BEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0x19uLL);
  v6 = 0;
  v7 = *a1;
  v8 = a2 + 5000;
  v9 = *v5;
  do
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(v7 + 8 * v10) * *(a2 + 4 * v10);
      ++v10;
    }

    while (v10 != 50);
    result = v11 + *(v8 + 4 * v6);
    *(v9 + 8 * v6++) = result;
    a2 += 200;
  }

  while (v6 != 25);
  return result;
}

double sub_100171C84@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0x19uLL);
  v6 = 0;
  v7 = *a1;
  v8 = (a2 + 200);
  v9 = *v5;
  do
  {
    v10 = (*(v7 + v6) - *(v8 - 50)) / sqrt(*(a2 + 400) + *(v8 - 25));
    v11 = v8[25];
    v12 = *v8++;
    result = v12 + v10 * v11;
    *(v9 + v6) = result;
    v6 += 8;
  }

  while (v6 != 200);
  return result;
}

double sub_100171D20@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0xCuLL);
  v6 = 0;
  v7 = *a1;
  v8 = a2 + 1200;
  v9 = *v5;
  do
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(v7 + 8 * v10) * *(a2 + 4 * v10);
      ++v10;
    }

    while (v10 != 25);
    result = v11 + *(v8 + 4 * v6);
    *(v9 + 8 * v6++) = result;
    a2 += 100;
  }

  while (v6 != 12);
  return result;
}

double sub_100171DB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 0xCuLL);
  v6 = 0;
  v7 = *a1;
  v8 = (a2 + 96);
  v9 = *v5;
  do
  {
    v10 = (*(v7 + v6) - *(v8 - 24)) / sqrt(*(a2 + 192) + *(v8 - 12));
    v11 = v8[12];
    v12 = *v8++;
    result = v12 + v10 * v11;
    *(v9 + v6) = result;
    v6 += 8;
  }

  while (v6 != 96);
  return result;
}

double sub_100171E50@<D0>(float64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100172550(a3, 6uLL);
  v6 = 0;
  v7 = *a1;
  v8 = a2 + 288;
  v9 = *v5;
  do
  {
    v10 = 0;
    v11 = 0.0;
    v12 = v7;
    do
    {
      v13 = *v12;
      v14 = v12[1];
      v12 += 2;
      v15 = *(a2 + v10);
      v16 = vmulq_f64(v14, vcvt_hight_f64_f32(v15));
      v17 = vmulq_f64(v13, vcvtq_f64_f32(*v15.f32));
      v11 = v11 + v17.f64[0] + v17.f64[1] + v16.f64[0] + v16.f64[1];
      v10 += 16;
    }

    while (v10 != 48);
    result = v11 + *(v8 + 4 * v6);
    *(v9 + 8 * v6++) = result;
    a2 += 48;
  }

  while (v6 != 6);
  return result;
}

uint64_t sub_100171F08(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = 998;
  *(a1 + 8) = 0;
  sub_1001722D4(a1 + 16);
  sub_1001722D4(a1 + 128);
  v3 = *a1;
  if (*a1 <= 199)
  {
    if (v3 - 100 >= 0x1B)
    {
      if (v3 <= 0x1B)
      {
        if (((1 << v3) & 0xFFFF800) != 0)
        {
          goto LABEL_9;
        }

        if (((1 << v3) & 0x78) != 0)
        {
          v4 = &unk_100561C10;
          goto LABEL_10;
        }

        if (((1 << v3) & 0x780) != 0)
        {
          v4 = &unk_100561D10;
          goto LABEL_10;
        }
      }

      if (v3 >= 3)
      {
        return a1;
      }

      v4 = &unk_100561B10;
      goto LABEL_10;
    }

LABEL_9:
    v4 = 0;
LABEL_10:
    *(a1 + 8) = v4;
    return a1;
  }

  if (v3 - 200 < 3 || v3 == 997 || v3 == 999)
  {
    goto LABEL_9;
  }

  return a1;
}

void sub_100171FFC(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 128;
  if (a3 == 5)
  {
    v4 = 16;
  }

  sub_100170B98(a1 + v4, a2, a4);
}

unint64_t sub_100172014(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*&v3->magic <= a3 && *&v3->cpusubtype >= a3 && *&v3->ncmds <= a2 && *&v3->flags >= a2 || *&v3[1].magic <= a3 && *&v3[1].cpusubtype >= a3 && *&v3[1].ncmds <= a2 && *&v3[1].flags >= a2 || *&v3[2].magic <= a3 && *&v3[2].cpusubtype >= a3 && *&v3[2].ncmds <= a2 && *&v3[2].flags >= a2)
    {
      v3 = &_mh_execute_header;
      v4 = 1;
    }

    else if (*&v3[3].magic > a3 || *&v3[3].cpusubtype < a3 || *&v3[3].ncmds > a2 || *&v3[3].flags < a2)
    {
      if (*&v3[4].magic > a3 || *&v3[4].cpusubtype < a3 || *&v3[4].ncmds > a2 || *&v3[4].flags < a2)
      {
        if (*&v3[5].magic > a3 || *&v3[5].cpusubtype < a3 || *&v3[5].ncmds > a2 || *&v3[5].flags < a2)
        {
          if (*&v3[6].magic > a3 || *&v3[6].cpusubtype < a3 || *&v3[6].ncmds > a2 || *&v3[6].flags < a2)
          {
            if (*&v3[7].magic > a3 || *&v3[7].cpusubtype < a3 || *&v3[7].ncmds > a2 || *&v3[7].flags < a2)
            {
              sub_10049E968();
            }

            v3 = &_mh_execute_header;
            v4 = 6;
          }

          else
          {
            v3 = &_mh_execute_header;
            v4 = 5;
          }
        }

        else
        {
          v3 = &_mh_execute_header;
          v4 = 4;
        }
      }

      else
      {
        v3 = &_mh_execute_header;
        v4 = 3;
      }
    }

    else
    {
      v3 = &_mh_execute_header;
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_1001721EC(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  atomic_store(a4, (a1 + 4));
  v6 = *a2;
  *a2 = 0;
  v10 = v6;
  sub_100170B34(a1 + 16, &v10);
  if (v10)
  {
    operator delete();
  }

  v7 = *a3;
  *a3 = 0;
  v9 = v7;
  sub_100170B34(a1 + 128, &v9);
  result = v9;
  if (v9)
  {

    operator delete();
  }

  return result;
}

void sub_1001722A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001722D4(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v4[0] = xmmword_100561E10;
  v4[1] = unk_100561E20;
  v5 = 0;
  *(a1 + 88) = 0;
  v2 = a1 + 88;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  sub_100019AC4(v2, v4, &v6, 5uLL);
  return a1;
}

void sub_100172380(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v3)
  {
    operator delete();
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void sub_1001723B4(std::mutex *this)
{
  v2 = *&this[1].__m_.__opaque[16];
  if (v2)
  {
    *&this[1].__m_.__opaque[24] = v2;
    operator delete(v2);
  }

  v3 = *&this[1].__m_.__opaque[8];
  *&this[1].__m_.__opaque[8] = 0;
  if (v3)
  {
    operator delete();
  }

  std::mutex::~mutex(this);
}

void *sub_100172418(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100167388(result, a2);
  }

  return result;
}

uint64_t sub_1001724D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004EF2C(result, a4);
  }

  return result;
}

void sub_100172534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100172550(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100013050(result, a2);
  }

  return result;
}

void sub_10017260C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100172628()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EE780 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EE770 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE770, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EE798 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EE788 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE788, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EE7B0 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EE7A0 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE7A0, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EE7C8 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EE7B8 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE7B8, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EE7E0 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EE7D0 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE7D0, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EE7F8 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EE7E8 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE7E8, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EE810 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EE800 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE800, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EE828 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EE818 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE818, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EE840 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EE830 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EE830, &_mh_execute_header);
}

void sub_100172C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100172CCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = *(sub_1000054A8() + 144);
  if (byte_1009E9467 >= 0)
  {
    v6 = &qword_1009E9450;
  }

  else
  {
    v6 = qword_1009E9450;
  }

  *(a1 + 8) = dispatch_queue_create(v6, 0);
  if (byte_1009E9487 >= 0)
  {
    v7 = &qword_1009E9470;
  }

  else
  {
    v7 = qword_1009E9470;
  }

  *(a1 + 16) = dispatch_queue_create(v7, 0);
  sub_100175788(a1 + 24, a2);
  v9 = *a3;
  v8 = a3[1];
  *(a1 + 80) = 0;
  *(a1 + 88) = v9;
  *(a1 + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100172DA0(a1);
  return a1;
}

void sub_100172DA0(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#accessory,download,startup or file access allowed", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100172E64;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_100172E6C(dispatch_queue_t *a1)
{
  dispatch_assert_queue_V2(a1[1]);
  sub_1001732A8(a1, byte_1009E9510);
  sub_100173424(*a1, 0, 1, &v18);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    if (v17 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v4 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v18.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#accessory,to download,accessory %s,decompressed nn coef file %s", &buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  dispatch_assert_queue_V2(a1[1]);
  if ((sub_100173AA0(a1, 0, 1) & 1) == 0)
  {
    sub_100173784(a1, 0, 1);
  }

  sub_10041CB84(*a1, &__p);
  v5 = __p;
  v6 = v16;
  if (__p != v16)
  {
    do
    {
      v7 = *v5;
      sub_100173424(*a1, *v5, 0, &buf);
      v8 = qword_1009F9820;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_10041C9CC();
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v14;
        }

        else
        {
          v9 = v14.__r_.__value_.__r.__words[0];
        }

        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v19 = 136315394;
        *&v19[4] = v9;
        v20 = 2080;
        v21 = p_buf;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#accessory,to download,accessory %s,decompressed pdoa correction file %s", v19, 0x16u);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }
      }

      dispatch_assert_queue_V2(a1[1]);
      if ((sub_100173AA0(a1, v7, 0) & 1) == 0)
      {
        sub_100173784(a1, v7, 0);
      }

      sub_100173424(*a1, v7, 1, &v14);
      v11 = qword_1009F9820;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_10041C9CC();
        v12 = v19;
        if (v22 < 0)
        {
          v12 = *v19;
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v14;
        }

        else
        {
          v13 = v14.__r_.__value_.__r.__words[0];
        }

        *v23 = 136315394;
        v24 = v12;
        v25 = 2080;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#accessory,to download,accessory %s,decompressed nn coef file %s", v23, 0x16u);
        if (v22 < 0)
        {
          operator delete(*v19);
        }
      }

      dispatch_assert_queue_V2(a1[1]);
      if ((sub_100173AA0(a1, v7, 1) & 1) == 0)
      {
        sub_100173784(a1, v7, 1);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = __p;
  }

  if (v5)
  {
    v16 = v5;
    operator delete(v5);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_100173210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001732A8(uint64_t a1, const char *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v3, +[NSString defaultCStringEncoding]);
  v5 = CLCopyNearbyAssetSettingsOfAccessoryFile();
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      value = 0;
      if (a2[23] >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
      if (CFDictionaryGetValueIfPresent(v6, v9, &value))
      {
        v10 = value == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = CFGetTypeID(value);
        if (v11 == CFDataGetTypeID())
        {
          v12 = value;
          if ([v12 length] >= 0xC)
          {
            v13 = [v12 bytes];
            v14 = *v13;
            v15 = v13[2];
            sub_100173954(v13, &v14);
          }
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    CFRelease(v6);
  }
}

void sub_100173424(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  if (a3)
  {
    sub_100175684(byte_1009E94B0, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v7 = &v31;
    }

    else
    {
      v7 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v8 = v33;
    }

    else
    {
      v8 = v32;
    }

    v9 = std::string::append(&v34, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v11 = &qword_1009E94F0;
    }

    else
    {
      v11 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v12 = byte_1009E9507;
    }

    else
    {
      v12 = unk_1009E94F8;
    }

    v13 = std::string::append(&v35, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  else
  {
    sub_100175684(byte_1009E9490, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v17 = &v31;
    }

    else
    {
      v17 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v18 = v33;
    }

    else
    {
      v18 = v32;
    }

    v19 = std::string::append(&v34, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v21 = &qword_1009E94F0;
    }

    else
    {
      v21 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v22 = byte_1009E9507;
    }

    else
    {
      v22 = unk_1009E94F8;
    }

    v23 = std::string::append(&v35, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  v25 = std::string::append(&v36, p_p, v16);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v37, ".bin");
  *a4 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_1001736D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100173784(uint64_t a1, int a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v16 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#accessory,download,triggerUpdate,retry,accessory:%s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = dispatch_time(0, 60000000000);
  v9 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173904;
  block[3] = &unk_100998810;
  block[4] = a1;
  v11 = a2;
  v12 = a3;
  dispatch_after(v8, v9, block);
}

uint64_t sub_100173904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  dispatch_assert_queue_V2(*(v1 + 8));

  return sub_100173AA0(v1, v2, v3);
}

void sub_100173954(uint64_t a1, _DWORD *a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#accessory,AccessoryFileManager::handleFeatureFlag is called", buf, 2u);
  }

  if (*a2)
  {
    if (a2[1] == 1)
    {
      v4 = a2[2];
      v5 = qword_1009F9820;
      v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v4 == 1)
      {
        if (v6)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#accessory,AccessoryFileManager::handleFeatureFlag DISABLE AOA", v10, 2u);
        }

        v7 = 1;
      }

      else
      {
        if (v6)
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#accessory,AccessoryFileManager::handleFeatureFlag ENABLE AOA", v9, 2u);
        }

        v7 = 0;
      }

      sub_100174DF8(v7);
    }
  }

  else
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#accessory,AccessoryFileManager::handleFeatureFlag feature flag version is outdated, return", v11, 2u);
    }
  }
}

uint64_t sub_100173AA0(uint64_t a1, unsigned int a2, int a3)
{
  sub_100173FF0(*a1, a2, a3, &v40);
  v6 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
  v7 = v40.__r_.__value_.__r.__words[0];
  v8 = +[NSString defaultCStringEncoding];
  if (v6 >= 0)
  {
    v9 = &v40;
  }

  else
  {
    v9 = v7;
  }

  v10 = [NSString stringWithCString:v9 encoding:v8];
  v11 = CLCopyNearbyAssetSettingsOfAccessoryFile();
  v12 = v11;
  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFDictionaryGetTypeID())
    {
      sub_1000054A8();
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v40;
      }

      else
      {
        v14 = v40.__r_.__value_.__r.__words[0];
      }

      sub_100005544(v14, &v39);
      sub_100174350(*a1, a2, a3, &v38);
      sub_1000054A8();
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v38;
      }

      else
      {
        v15 = v38.__r_.__value_.__r.__words[0];
      }

      sub_100005544(v15, &v37);
      sub_100173424(*a1, a2, a3, &v36);
      sub_1000054A8();
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v36;
      }

      else
      {
        v16 = v36.__r_.__value_.__r.__words[0];
      }

      sub_100005544(v16, &__p);
      value = 0;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v40;
      }

      else
      {
        v17 = v40.__r_.__value_.__r.__words[0];
      }

      v18 = CFStringCreateWithCString(kCFAllocatorDefault, v17, 0x8000100u);
      if (CFDictionaryGetValueIfPresent(v12, v18, &value) && value && (v19 = CFGetTypeID(value), v19 == CFDataGetTypeID()))
      {
        v20 = value;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v39;
        }

        else
        {
          v21 = v39.__r_.__value_.__r.__words[0];
        }

        v22 = [NSString stringWithUTF8String:v21];
        if ([v20 writeToFile:v22 atomically:0]&& sub_100316B8C(&v39, &v37) && sub_100303DFC(&v37))
        {
          v23 = *(a1 + 16);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3321888768;
          block[2] = sub_1001746B0;
          block[3] = &unk_100998830;
          block[4] = a1;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1000056BC(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = __p;
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1000056BC(&v30, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
          }

          else
          {
            v30 = v36;
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1000056BC(&v31, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
          }

          else
          {
            v31 = v37;
          }

          v32 = a2;
          v33 = a3;
          dispatch_sync(v23, block);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          v24 = 1;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10041C9CC();
          sub_10049E994(v27, buf, v20);
        }

        v24 = 0;
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

LABEL_50:
      CFRelease(v12);
      v25 = v24;
      goto LABEL_51;
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049EA08();
  }

  v24 = 0;
  v25 = 0;
  if (v12)
  {
    goto LABEL_50;
  }

LABEL_51:

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  return v25;
}