uint64_t sub_1000E5070(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9B78 + 16);
    }

    v5 = sub_1000E4630(v4, a2);
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

uint64_t sub_1000E5104(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E4A9C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000E51D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E51F0(uint64_t result, uint64_t a2)
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

uint64_t sub_1000E5284()
{
  v0 = qword_1009EDB40;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000DEE24;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDAB8;
}

void sub_1000E5318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000E5370()
{
  v0 = sub_1000E5520();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000E5520(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EDB58 & 1) == 0)
  {
    byte_1009EDB58 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPMoCapSystemLogEntry.pb.cc", a4);
    sub_1000D2BC0(v4, v5, v6, v7);
    sub_1000E6BB0(v8, v9, v10, v11);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1CCLPMoCapSystemLogEntry.proto\x12\x12CLP.LogEntry.MoCap\x1A\x1ACLPOptiTrackLogEntry.proto\x1ACLPOptiTrackStreamedLogEntry.proto\xB6\x01\n\x13MoCapSystemLogEntry\x12F\n\x13optitrack_log_entry\x18\x01 \x01(\v2).CLP.LogEntry.OptiTrack.OptiTrackLogEntry\x12W\n\x1Coptitrack_streamed_log_entry\x18\x02 \x01(\v21.CLP.LogEntry.OptiTrack.OptiTrackStreamedLogEntry", 0x12B, v12);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000E562C()
{
  if (qword_1009F9BB8)
  {
    (*(*qword_1009F9BB8 + 8))(qword_1009F9BB8);
  }

  result = qword_1009EDB50;
  if (qword_1009EDB50)
  {
    v1 = *(*qword_1009EDB50 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000E56B4()
{
  v0 = qword_1009EDB60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E5370;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_1009F9BB8)
  {
    sub_1000E5520();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000E575C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000E5774(void *a1)
{
  *a1 = off_100991A98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000E57D4(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_1009F9BB8 + 16);
      }

      sub_1000DC910(v5, v6);
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
        v8 = *(qword_1009F9BB8 + 24);
      }

      sub_1000E7964(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000E594C(void *a1)
{
  *a1 = off_100991A98;
  v2 = (a1 + 1);
  sub_1000E59AC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000E59AC(void *result)
{
  if (qword_1009F9BB8 != result)
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

void sub_1000E5A50(void *a1)
{
  sub_1000E594C(a1);

  operator delete();
}

uint64_t sub_1000E5A90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9BB8;
  if (!qword_1009F9BB8)
  {
    sub_1000E5520(0, a2, a3, a4);
    return qword_1009F9BB8;
  }

  return result;
}

uint64_t sub_1000E5B24(uint64_t this)
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
        this = sub_1000DCC60(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1000E7D60(this);
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

uint64_t sub_1000E5B9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (!sub_1000DCCD8(v9, this, v14, v15) || *(this + 36) != 1)
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
        if (!sub_1000E7F6C(v20, this, v25, v26) || *(this + 36) != 1)
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

uint64_t sub_1000E5E80(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9BB8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9BB8 + 24);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000E5F2C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9BB8 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[8];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_1000DD068(v6, v9, a3);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(qword_1009F9BB8 + 24);
    }

    *v3 = 18;
    v11 = v10[11];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v12 = (v3 + 2);
    }

    v3 = sub_1000E84E0(v10, v12, a3);
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

uint64_t sub_1000E6034(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
    v4 = *(qword_1009F9BB8 + 16);
  }

  v5 = sub_1000DD170(v4, a2);
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
      v8 = *(qword_1009F9BB8 + 24);
    }

    v9 = sub_1000E867C(v8, a2);
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

uint64_t sub_1000E6128(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E57D4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000E61FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6214(uint64_t result, uint64_t a2)
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

uint64_t sub_1000E62A8()
{
  v0 = qword_1009EDB60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E5370;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDB48;
}

void sub_1000E633C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000E635C()
{
  v0 = sub_1000E6BB0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000E6BB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EDC58 & 1) == 0)
  {
    byte_1009EDC58 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPOptiTrackStreamedLogEntry.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(aClpoptitrackst_0, 0xAF0, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000E7080()
{
  if (qword_1009F9BC0)
  {
    (*(*qword_1009F9BC0 + 8))(qword_1009F9BC0);
  }

  if (qword_1009EDB70)
  {
    (*(*qword_1009EDB70 + 8))(qword_1009EDB70);
  }

  if (qword_1009F9BC8)
  {
    (*(*qword_1009F9BC8 + 8))(qword_1009F9BC8);
  }

  if (qword_1009EDB80)
  {
    (*(*qword_1009EDB80 + 8))(qword_1009EDB80);
  }

  if (qword_1009F9BD0)
  {
    (*(*qword_1009F9BD0 + 8))(qword_1009F9BD0);
  }

  if (qword_1009EDB90)
  {
    (*(*qword_1009EDB90 + 8))(qword_1009EDB90);
  }

  if (qword_1009F9BD8)
  {
    (*(*qword_1009F9BD8 + 8))(qword_1009F9BD8);
  }

  if (qword_1009EDBA0)
  {
    (*(*qword_1009EDBA0 + 8))(qword_1009EDBA0);
  }

  if (qword_1009F9BE0)
  {
    (*(*qword_1009F9BE0 + 8))(qword_1009F9BE0);
  }

  if (qword_1009EDBB0)
  {
    (*(*qword_1009EDBB0 + 8))(qword_1009EDBB0);
  }

  if (qword_1009F9BE8)
  {
    (*(*qword_1009F9BE8 + 8))(qword_1009F9BE8);
  }

  if (qword_1009EDBC0)
  {
    (*(*qword_1009EDBC0 + 8))(qword_1009EDBC0);
  }

  if (qword_1009F9BF0)
  {
    (*(*qword_1009F9BF0 + 8))(qword_1009F9BF0);
  }

  if (qword_1009EDBD0)
  {
    (*(*qword_1009EDBD0 + 8))(qword_1009EDBD0);
  }

  if (qword_1009F9BF8)
  {
    (*(*qword_1009F9BF8 + 8))(qword_1009F9BF8);
  }

  if (qword_1009EDBE0)
  {
    (*(*qword_1009EDBE0 + 8))(qword_1009EDBE0);
  }

  if (qword_1009F9C00)
  {
    (*(*qword_1009F9C00 + 8))(qword_1009F9C00);
  }

  if (qword_1009EDBF0)
  {
    (*(*qword_1009EDBF0 + 8))(qword_1009EDBF0);
  }

  if (qword_1009F9C08)
  {
    (*(*qword_1009F9C08 + 8))(qword_1009F9C08);
  }

  if (qword_1009EDC00)
  {
    (*(*qword_1009EDC00 + 8))(qword_1009EDC00);
  }

  if (qword_1009F9C10)
  {
    (*(*qword_1009F9C10 + 8))(qword_1009F9C10);
  }

  if (qword_1009EDC10)
  {
    (*(*qword_1009EDC10 + 8))(qword_1009EDC10);
  }

  if (qword_1009F9C18)
  {
    (*(*qword_1009F9C18 + 8))(qword_1009F9C18);
  }

  if (qword_1009EDC20)
  {
    (*(*qword_1009EDC20 + 8))(qword_1009EDC20);
  }

  if (qword_1009F9C20)
  {
    (*(*qword_1009F9C20 + 8))(qword_1009F9C20);
  }

  if (qword_1009EDC30)
  {
    (*(*qword_1009EDC30 + 8))(qword_1009EDC30);
  }

  if (qword_1009F9C28)
  {
    (*(*qword_1009F9C28 + 8))(qword_1009F9C28);
  }

  if (qword_1009EDC40)
  {
    (*(*qword_1009EDC40 + 8))(qword_1009EDC40);
  }

  if (qword_1009F9C30)
  {
    (*(*qword_1009F9C30 + 8))(qword_1009F9C30);
  }

  result = qword_1009EDC50;
  if (qword_1009EDC50)
  {
    v1 = *(*qword_1009EDC50 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000E7648()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v16[1] = sub_1000E635C;
    v17 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v16);
  }

  if (!qword_1009F9BC0)
  {
    (sub_1000E6BB0)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BC8)
  {
    sub_1000E6BB0(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BD0)
  {
    sub_1000E6BB0(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BD8)
  {
    sub_1000E6BB0(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BE0)
  {
    sub_1000E6BB0(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BE8)
  {
    sub_1000E6BB0(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BF0)
  {
    sub_1000E6BB0(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9BF8)
  {
    sub_1000E6BB0(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C00)
  {
    sub_1000E6BB0(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C08)
  {
    sub_1000E6BB0(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C10)
  {
    sub_1000E6BB0(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C18)
  {
    sub_1000E6BB0(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C20)
  {
    sub_1000E6BB0(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C28)
  {
    sub_1000E6BB0(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C30)
  {
    sub_1000E6BB0(v14);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000E78E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7900(uint64_t a1)
{
  *a1 = off_100991B60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000E7964(uint64_t a1, uint64_t a2)
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
        v7 = *(qword_1009F9BC0 + 16);
      }

      sub_1000E88D8(v6, v7);
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
        v9 = *(qword_1009F9BC0 + 24);
      }

      sub_1000E8A00(v8, v9);
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
        v11 = *(qword_1009F9BC0 + 32);
      }

      sub_1000E8B80(v10, v11);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000E7B5C(void *a1)
{
  *a1 = off_100991B60;
  v2 = (a1 + 1);
  sub_1000E7BBC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000E7BBC(void *result)
{
  if (qword_1009F9BC0 != result)
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

void sub_1000E7C8C(void *a1)
{
  sub_1000E7B5C(a1);

  operator delete();
}

uint64_t sub_1000E7CCC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9BC0;
  if (!qword_1009F9BC0)
  {
    sub_1000E6BB0(0, a2, a3, a4);
    return qword_1009F9BC0;
  }

  return result;
}

uint64_t sub_1000E7D60(uint64_t this)
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
        this = sub_1000E7DF0(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1000E7E4C(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_1000E7EE4(this);
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

uint64_t sub_1000E7DF0(_DWORD *a1)
{
  a1[6] = 0;
  a1[10] = 0;
  result = sub_100077B98((a1 + 12));
  v4 = *(a1 + 1);
  v3 = (a1 + 2);
  *(v3 + 17) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_1000E7E4C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 16) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 16) = 0u;
          *(v3 + 32) = 0u;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 11) = 0;
        if (v5)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
        }
      }
    }

    *(a1 + 80) = 0;
  }

  sub_100077B98(a1 + 24);
  result = sub_100077B98(a1 + 56);
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  *(v7 + 20) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000E7EE4(uint64_t a1)
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

    if ((*(a1 + 36) & 2) != 0)
    {
      v2 = *(a1 + 24);
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

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000E7F6C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (!sub_1000F2D08(v16, this, v21, v22) || *(this + 36) != 1)
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
        if (!sub_1000EAB18(v27, this, v32, v33) || *(this + 36) != 1)
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
      if (!sub_1000F3AE0(v37, this, v42, v43) || *(this + 36) != 1)
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

uint64_t sub_1000E83E4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_1009F9BC0 + 16);
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
    v8 = *(qword_1009F9BC0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
  if ((*(v5 + 48) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_1009F9BC0 + 32);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000E84E0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
      v8 = *(qword_1009F9BC0 + 16);
    }

    *v3 = 18;
    v9 = v8[18];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v10 = (v3 + 2);
    }

    v3 = sub_1000F334C(v8, v10, a3);
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
    v11 = *(qword_1009F9BC0 + 24);
  }

  *v3 = 26;
  v12 = v11[21];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v12;
    v13 = (v3 + 2);
  }

  v3 = sub_1000EB224(v11, v13, a3);
  if ((*(this + 12) & 8) != 0)
  {
LABEL_21:
    v14 = *(this + 4);
    if (!v14)
    {
      v14 = *(qword_1009F9BC0 + 32);
    }

    *v3 = 34;
    v15 = v14[8];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v16 = (v3 + 2);
    }

    v3 = sub_1000F3D74(v14, v16, a3);
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

uint64_t sub_1000E867C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
    v6 = *(qword_1009F9BC0 + 16);
  }

  v7 = sub_1000F34B8(v6, a2);
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
    v10 = *(qword_1009F9BC0 + 24);
  }

  v11 = sub_1000EB408(v10, a2);
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
      v14 = *(qword_1009F9BC0 + 32);
    }

    v15 = sub_1000F3ED8(v14, a2);
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

uint64_t sub_1000E87EC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E7964(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000E88C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E88D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_100077844((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    sub_100077844((a1 + 32), *(a1 + 40) + v5);
    memcpy((*(a1 + 32) + 4 * *(a1 + 40)), *(a2 + 32), 4 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  sub_1000F36F4((a1 + 48), a2 + 48);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000E89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E8A00(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  sub_1000EB680((a1 + 24), a2 + 24);
  sub_1000EB7C0((a1 + 56), a2 + 56);
  LOBYTE(v4) = *(a2 + 88);
  if (v4)
  {
    if (*(a2 + 88))
    {
      v5 = *(a2 + 16);
      *(a1 + 88) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 88);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 88) |= 4u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 48);
      if (!v7)
      {
        v7 = *(qword_1009F9BC8 + 48);
      }

      sub_1000E8E68(v6, v7);
      v4 = *(a2 + 88);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 80);
      *(a1 + 88) |= 8u;
      *(a1 + 80) = v8;
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 81);
      *(a1 + 88) |= 0x10u;
      *(a1 + 81) = v9;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_1000E8B80(uint64_t a1, uint64_t a2)
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
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000E8CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E8CC8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000E8D5C()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDB68;
}

void sub_1000E8DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E8E04(uint64_t a1)
{
  *a1 = off_100991C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000E8E68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

void sub_1000E8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000E8F80(uint64_t a1)
{
  *a1 = off_100991C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000E8FD4(uint64_t a1)
{
  *a1 = off_100991C10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000E90A8(uint64_t a1)
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

uint64_t sub_1000E90CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_33;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_24;
      }

      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v22) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v22;
      *(a1 + 52) |= 1u;
      v13 = *(this + 1);
      v10 = *(this + 2);
      if (v13 < v10 && *v13 == 16)
      {
        v11 = v13 + 1;
        *(this + 1) = v11;
LABEL_20:
        if (v11 >= v10 || (v14 = *v11, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v14;
          v15 = v11 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 52) |= 2u;
        if (v15 < v10 && *v15 == 24)
        {
          v16 = v15 + 1;
          *(this + 1) = v16;
LABEL_33:
          if (v16 >= v10 || (v18 = *v16, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v18;
            v19 = v16 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 52) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v12 = v19 + 1;
            *(this + 1) = v12;
LABEL_41:
            if (v12 >= v10 || (v20 = *v12, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v20;
              v21 = v12 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 52) |= 8u;
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

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_20;
    }

LABEL_24:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000E9328(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 40), a2, a4);
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

uint64_t sub_1000E93F4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 13);
  if (v4)
  {
    v10 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v10;
    a2 += 9;
    v4 = *(this + 13);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v12 = *(this + 4);
      *a2 = 24;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
      if ((*(this + 13) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, a2 + 1, a3);
  v4 = *(this + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v5 = *(this + 5);
    *a2 = 32;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
  }

LABEL_6:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8 || *v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}

uint64_t sub_1000E9504(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 52);
      if ((v3 & 4) == 0)
      {
LABEL_4:
        if ((v3 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 52) & 8) != 0)
    {
LABEL_9:
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  v5 = *(a1 + 8);
  if (v5 && *v5 != v5[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1000E95B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E8E68(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000E968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E96A4(uint64_t result, uint64_t a2)
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

uint64_t sub_1000E9738()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDB88;
}

void sub_1000E97CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E97E0(uint64_t a1)
{
  *a1 = off_100991CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000E984C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 100);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 100) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 100);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 100) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 32);
  *(a1 + 100) |= 4u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 40);
  *(a1 + 100) |= 8u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 56);
    *(a1 + 100) |= 0x20u;
    *(a1 + 56) = v13;
    v4 = *(a2 + 100);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 48);
  *(a1 + 100) |= 0x10u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 100);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 60);
  *(a1 + 100) |= 0x40u;
  *(a1 + 60) = v14;
  v4 = *(a2 + 100);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 100) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 100);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v16 = *(a2 + 80);
    *(a1 + 100) |= 0x200u;
    *(a1 + 80) = v16;
    if ((*(a2 + 100) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_17;
  }

  v15 = *(a2 + 72);
  *(a1 + 100) |= 0x100u;
  *(a1 + 72) = v15;
  v4 = *(a2 + 100);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v4 & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 88);
    *(a1 + 100) |= 0x400u;
    *(a1 + 88) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000E9A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000E9A50(uint64_t a1)
{
  *a1 = off_100991CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000E9AA4(uint64_t a1)
{
  *a1 = off_100991CC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000E9B78(uint64_t a1)
{
  v1 = *(a1 + 100);
  if (v1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 23) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000E9BB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 1)
              {
                goto LABEL_62;
              }

              goto LABEL_33;
            }

            if (v9 != 1)
            {
              goto LABEL_62;
            }

            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v26;
            *(a1 + 100) |= 1u;
            v10 = *(this + 1);
            if (v10 < *(this + 2) && *v10 == 17)
            {
              *(this + 1) = v10 + 1;
LABEL_33:
              v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v26;
              *(a1 + 100) |= 2u;
              v11 = *(this + 1);
              if (v11 < *(this + 2) && *v11 == 25)
              {
                *(this + 1) = v11 + 1;
LABEL_44:
                v26 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = v26;
                *(a1 + 100) |= 4u;
                v14 = *(this + 1);
                if (v14 < *(this + 2) && *v14 == 33)
                {
                  *(this + 1) = v14 + 1;
                  goto LABEL_48;
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if (v9 != 1)
              {
                goto LABEL_62;
              }

              goto LABEL_44;
            }

            if (v8 != 4)
            {
              if (v8 != 5 || v9 != 1)
              {
                goto LABEL_62;
              }

              goto LABEL_52;
            }

            if (v9 != 1)
            {
              goto LABEL_62;
            }

LABEL_48:
            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v26;
            *(a1 + 100) |= 8u;
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 41)
            {
              *(this + 1) = v15 + 1;
LABEL_52:
              v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = v26;
              *(a1 + 100) |= 0x10u;
              v16 = *(this + 1);
              v12 = *(this + 2);
              if (v16 < v12 && *v16 == 48)
              {
                v17 = v16 + 1;
                *(this + 1) = v17;
LABEL_58:
                if (v17 >= v12 || (v18 = *v17, v18 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                  if (!result)
                  {
                    return result;
                  }

                  v19 = *(this + 1);
                  v12 = *(this + 2);
                }

                else
                {
                  *(a1 + 56) = v18;
                  v19 = v17 + 1;
                  *(this + 1) = v19;
                }

                *(a1 + 100) |= 0x20u;
                if (v19 < v12 && *v19 == 56)
                {
                  v13 = v19 + 1;
                  *(this + 1) = v13;
                  goto LABEL_70;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v8 == 9)
        {
          if (v9 != 1)
          {
            goto LABEL_62;
          }

LABEL_82:
          v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = v26;
          *(a1 + 100) |= 0x100u;
          v24 = *(this + 1);
          if (v24 < *(this + 2) && *v24 == 81)
          {
            *(this + 1) = v24 + 1;
LABEL_86:
            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 80) = v26;
            *(a1 + 100) |= 0x200u;
            v25 = *(this + 1);
            if (v25 < *(this + 2) && *v25 == 89)
            {
              *(this + 1) = v25 + 1;
              goto LABEL_90;
            }
          }
        }

        else
        {
          if (v8 == 10)
          {
            if (v9 == 1)
            {
              goto LABEL_86;
            }

            goto LABEL_62;
          }

          if (v8 != 11 || v9 != 1)
          {
            goto LABEL_62;
          }

LABEL_90:
          v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 88) = v26;
          *(a1 + 100) |= 0x400u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v8 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_58;
      }

      if (v8 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_62;
      }

      v13 = *(this + 1);
      v12 = *(this + 2);
LABEL_70:
      if (v13 >= v12 || (v21 = *v13, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        *(a1 + 60) = v21;
        v22 = v13 + 1;
        *(this + 1) = v22;
      }

      *(a1 + 100) |= 0x40u;
      if (v22 < v12 && *v22 == 65)
      {
        *(this + 1) = v22 + 1;
LABEL_78:
        v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = v26;
        *(a1 + 100) |= 0x80u;
        v23 = *(this + 1);
        if (v23 < *(this + 2) && *v23 == 73)
        {
          *(this + 1) = v23 + 1;
          goto LABEL_82;
        }
      }
    }

    if (v8 == 8 && v9 == 1)
    {
      goto LABEL_78;
    }

LABEL_62:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000EA090(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 100);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
    if ((*(v5 + 100) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v6 & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  }

LABEL_13:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_1000EA220(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 25);
  if (v4)
  {
    v5 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v5;
    a2 += 9;
    v4 = *(this + 25);
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
  v4 = *(this + 25);
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
  v4 = *(this + 25);
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
  v4 = *(this + 25);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(this + 6);
  *a2 = 41;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(this + 25) & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = *(this + 14);
  *a2 = 48;
  if (v10 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v10;
    a2 += 2;
  }

LABEL_16:
  if ((*(this + 100) & 0x40) != 0)
  {
    v11 = *(this + 15);
    *a2 = 56;
    if (v11 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v11;
      a2 += 2;
    }
  }

  v12 = *(this + 25);
  if ((v12 & 0x80) != 0)
  {
    v18 = *(this + 8);
    *a2 = 65;
    *(a2 + 1) = v18;
    a2 += 9;
    v12 = *(this + 25);
    if ((v12 & 0x100) == 0)
    {
LABEL_22:
      if ((v12 & 0x200) == 0)
      {
        goto LABEL_23;
      }

LABEL_33:
      v20 = *(this + 10);
      *a2 = 81;
      *(a2 + 1) = v20;
      a2 += 9;
      if ((*(this + 25) & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v12 & 0x100) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(this + 9);
  *a2 = 73;
  *(a2 + 1) = v19;
  a2 += 9;
  v12 = *(this + 25);
  if ((v12 & 0x200) != 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  if ((v12 & 0x400) != 0)
  {
LABEL_24:
    v13 = *(this + 11);
    *a2 = 89;
    *(a2 + 1) = v13;
    a2 += 9;
  }

LABEL_25:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
}

uint64_t sub_1000EA604(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[25];
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
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[25];
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
      if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = a1[25];
      }

      else
      {
        v10 = 2;
      }

      v5 += v10;
    }

    v8 = v5 + 9;
    if ((v3 & 0x80) == 0)
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v8 + 9;
  if ((v3 & 0x100) == 0)
  {
    v11 = v8;
  }

  if ((v3 & 0x200) != 0)
  {
    v11 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v11 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = *(a1 + 1);
  if (v13 && *v13 != v13[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v12;
  }

  a1[24] = v12;
  return v12;
}

uint64_t sub_1000EA724(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E984C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000EA7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA810(uint64_t result, uint64_t a2)
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

uint64_t sub_1000EA8A4()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDB98;
}

void sub_1000EA938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA94C(uint64_t a1)
{
  *a1 = off_100991D70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 84) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_1000EA9C4(uint64_t *a1)
{
  *a1 = off_100991D70;
  if (qword_1009F9BC8 != a1)
  {
    v2 = a1[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 7);
  sub_100077C08(a1 + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000EAA74(uint64_t *a1)
{
  sub_1000EA9C4(a1);

  operator delete();
}

uint64_t sub_1000EAB18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v8 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_75;
          }

          goto LABEL_26;
        }

        if (v8 != 6 || v9 != 2)
        {
          goto LABEL_26;
        }

        while (2)
        {
          v46 = *(a1 + 68);
          v47 = *(a1 + 64);
          if (v47 >= v46)
          {
            if (v46 == *(a1 + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v46 + 1);
              v46 = *(a1 + 68);
            }

            *(a1 + 68) = v46 + 1;
            sub_1000F5350();
          }

          v48 = *(a1 + 56);
          *(a1 + 64) = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v59 = 0;
          v50 = *(this + 1);
          if (v50 >= *(this + 2) || *v50 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59))
            {
              return 0;
            }
          }

          else
          {
            v59 = *v50;
            *(this + 1) = v50 + 1;
          }

          v51 = *(this + 14);
          v52 = *(this + 15);
          *(this + 14) = v51 + 1;
          if (v51 >= v52)
          {
            return 0;
          }

          v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59);
          if (!sub_1000E9BB8(v49, this, v54, v55) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
          v56 = *(this + 14);
          v29 = __OFSUB__(v56, 1);
          v57 = v56 - 1;
          if (v57 < 0 == v29)
          {
            *(this + 14) = v57;
          }

          v45 = *(this + 1);
          v58 = *(this + 2);
          if (v45 < v58 && *v45 == 50)
          {
LABEL_82:
            *(this + 1) = v45 + 1;
            continue;
          }

          break;
        }

        if (v45 == v58 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
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

      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v10 >= v11 || (v12 = *v10, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v12;
        v13 = v10 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 88) |= 1u;
      if (v13 < v11 && *v13 == 18)
      {
        while (1)
        {
          *(this + 1) = v13 + 1;
LABEL_35:
          v18 = *(a1 + 36);
          v19 = *(a1 + 32);
          if (v19 >= v18)
          {
            if (v18 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v18 = *(a1 + 36);
            }

            *(a1 + 36) = v18 + 1;
            sub_1000F52EC();
          }

          v20 = *(a1 + 24);
          *(a1 + 32) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v59 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59))
            {
              return 0;
            }
          }

          else
          {
            v59 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59);
          if (!sub_1000EDFAC(v21, this, v26, v27) || *(this + 36) != 1)
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

          v13 = *(this + 1);
          if (v13 >= *(this + 2))
          {
            break;
          }

          v31 = *v13;
          if (v31 != 18)
          {
            if (v31 == 26)
            {
              *(this + 1) = v13 + 1;
LABEL_53:
              *(a1 + 88) |= 4u;
              v32 = *(a1 + 48);
              if (!v32)
              {
                operator new();
              }

              v59 = 0;
              v33 = *(this + 1);
              if (v33 >= *(this + 2) || *v33 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59))
                {
                  return 0;
                }
              }

              else
              {
                v59 = *v33;
                *(this + 1) = v33 + 1;
              }

              v34 = *(this + 14);
              v35 = *(this + 15);
              *(this + 14) = v34 + 1;
              if (v34 >= v35)
              {
                return 0;
              }

              v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59);
              if (!sub_1000E90CC(v32, this, v37, v38) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
              v39 = *(this + 14);
              v29 = __OFSUB__(v39, 1);
              v40 = v39 - 1;
              if (v40 < 0 == v29)
              {
                *(this + 14) = v40;
              }

              v41 = *(this + 1);
              v14 = *(this + 2);
              if (v41 < v14 && *v41 == 32)
              {
                v15 = v41 + 1;
                *(this + 1) = v15;
LABEL_67:
                v59 = 0;
                if (v15 >= v14 || (v42 = *v15, (v42 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
                  if (!result)
                  {
                    return result;
                  }

                  v42 = v59;
                  v43 = *(this + 1);
                  v14 = *(this + 2);
                }

                else
                {
                  v43 = v15 + 1;
                  *(this + 1) = v43;
                }

                *(a1 + 80) = v42 != 0;
                *(a1 + 88) |= 8u;
                if (v43 < v14 && *v43 == 40)
                {
                  v16 = v43 + 1;
                  *(this + 1) = v16;
LABEL_75:
                  v59 = 0;
                  if (v16 >= v14 || (v44 = *v16, (v44 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
                    if (!result)
                    {
                      return result;
                    }

                    v44 = v59;
                    v45 = *(this + 1);
                    v14 = *(this + 2);
                  }

                  else
                  {
                    v45 = v16 + 1;
                    *(this + 1) = v45;
                  }

                  *(a1 + 81) = v44 != 0;
                  *(a1 + 88) |= 0x10u;
                  if (v45 < v14 && *v45 == 50)
                  {
                    goto LABEL_82;
                  }
                }
              }
            }

            goto LABEL_1;
          }
        }
      }
    }

    if (v8 == 2)
    {
      if (v9 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    if (v8 == 3 && v9 == 2)
    {
      goto LABEL_53;
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

uint64_t sub_1000EB0D8(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 88))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 32));
  }

  v7 = *(v5 + 88);
  if ((v7 & 4) != 0)
  {
    v12 = *(v5 + 48);
    if (!v12)
    {
      v12 = *(qword_1009F9BC8 + 48);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v7 = *(v5 + 88);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 80), a2, a4);
  if ((*(v5 + 88) & 0x10) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 81), a2, a4);
  }

LABEL_10:
  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EB224(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 88))
  {
    v5 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
  }

  if (*(this + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 8 * v6);
      *v3 = 18;
      v8 = v7[24];
      if (v8 > 0x7F)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v8;
        v9 = (v3 + 2);
      }

      v3 = sub_1000EE7E0(v7, v9, a3);
      ++v6;
    }

    while (v6 < *(this + 8));
  }

  v10 = *(this + 22);
  if ((v10 & 4) != 0)
  {
    v20 = *(this + 6);
    if (!v20)
    {
      v20 = *(qword_1009F9BC8 + 48);
    }

    *v3 = 26;
    v21 = v20[12];
    if (v21 > 0x7F)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v22 = v3 + 2;
    }

    v3 = sub_1000E93F4(v20, v22, a3);
    v10 = *(this + 22);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(this + 80);
  *v3 = 32;
  *(v3 + 1) = v23;
  v3 = (v3 + 2);
  if ((*(this + 22) & 0x10) != 0)
  {
LABEL_12:
    v11 = *(this + 81);
    *v3 = 40;
    *(v3 + 1) = v11;
    v3 = (v3 + 2);
  }

LABEL_13:
  if (*(this + 16) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(this + 7) + 8 * v12);
      *v3 = 50;
      v14 = v13[24];
      if (v14 > 0x7F)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v14;
        v15 = v3 + 2;
      }

      v3 = sub_1000EA220(v13, v15, a3);
      ++v12;
    }

    while (v12 < *(this + 16));
  }

  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, v3, a3);
}

uint64_t sub_1000EB408(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = *(qword_1009F9BC8 + 48);
    }

    v7 = sub_1000E9504(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 += v8 + v9 + 1;
    v3 = *(a1 + 88);
    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
  v3 = *(a1 + 88);
  if ((v3 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  v5 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
LABEL_14:
  v10 = *(a1 + 32);
  v11 = v10 + v5;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = sub_1000EEA68(*(*(a1 + 24) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(a1 + 32));
  }

  v16 = *(a1 + 64);
  v17 = (v16 + v11);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = sub_1000EA604(*(*(a1 + 56) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(a1 + 64));
  }

  v22 = *(a1 + 8);
  if (v22 && *v22 != v22[1])
  {
    v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v17;
  }

  *(a1 + 84) = v17;
  return v17;
}

uint64_t sub_1000EB594(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E8A00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000EB668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB680(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F52EC();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000EDB04(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000EB7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB7C0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F5350();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000E984C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000EB8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB900(uint64_t result, uint64_t a2)
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

uint64_t sub_1000EB994()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDB78;
}

void sub_1000EBA28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EBA3C(uint64_t a1)
{
  *a1 = off_100991E20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 46) = 0;
  return a1;
}

uint64_t sub_1000EBAA4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 20);
  *(a1 + 60) |= 2u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(a1 + 60) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_1009F9BE8 + 24);
  }

  sub_1000ECC1C(v10, v11);
  v4 = *(a2 + 60);
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
  v12 = *(a2 + 32);
  *(a1 + 60) |= 8u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v14 = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = v14;
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

    goto LABEL_29;
  }

LABEL_27:
  v13 = *(a2 + 40);
  *(a1 + 60) |= 0x10u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 60);
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
  v15 = *(a2 + 49);
  *(a1 + 60) |= 0x40u;
  *(a1 + 49) = v15;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 50);
    *(a1 + 60) |= 0x80u;
    *(a1 + 50) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v17 = *(a2 + 52);
    *(a1 + 60) |= 0x200u;
    *(a1 + 52) = v17;
    if ((*(a2 + 60) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_17;
  }

  v16 = *(a2 + 51);
  *(a1 + 60) |= 0x100u;
  *(a1 + 51) = v16;
  v4 = *(a2 + 60);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x400) != 0)
  {
LABEL_17:
    v6 = *(a2 + 53);
    *(a1 + 60) |= 0x400u;
    *(a1 + 53) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000EBD08(void *a1)
{
  *a1 = off_100991E20;
  if (qword_1009F9BE8 != a1)
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

void sub_1000EBDA0(void *a1)
{
  sub_1000EBD08(a1);

  operator delete();
}

uint64_t sub_1000EBE44(uint64_t this)
{
  v1 = this;
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 24);
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

    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 47) = 0;
    v2 = *(v1 + 60);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 51) = 0;
    *(v1 + 53) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 13) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EBEE8(uint64_t a1)
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

uint64_t sub_1000EBF0C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 > 8)
          {
            if (v8 == 9)
            {
              if ((TagFallback & 7) == 0)
              {
                v22 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_106;
              }
            }

            else if (v8 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_114;
              }
            }

            else if (v8 == 11 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_122;
            }

            goto LABEL_43;
          }

          if (v8 == 6)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v21 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_82;
          }

          if (v8 == 7)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v18 = *(this + 1);
            v10 = *(this + 2);
LABEL_90:
            v51[0] = 0;
            if (v18 >= v10 || (v41 = *v18, (v41 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
              if (!result)
              {
                return result;
              }

              v41 = v51[0];
              v42 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v42 = v18 + 1;
              *(this + 1) = v42;
            }

            *(a1 + 49) = v41 != 0;
            *(a1 + 60) |= 0x40u;
            if (v42 < v10 && *v42 == 64)
            {
              v11 = v42 + 1;
              *(this + 1) = v11;
LABEL_98:
              v51[0] = 0;
              if (v11 >= v10 || (v43 = *v11, (v43 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
                if (!result)
                {
                  return result;
                }

                v43 = v51[0];
                v44 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v44 = v11 + 1;
                *(this + 1) = v44;
              }

              *(a1 + 50) = v43 != 0;
              *(a1 + 60) |= 0x80u;
              if (v44 < v10 && *v44 == 72)
              {
                v22 = v44 + 1;
                *(this + 1) = v22;
LABEL_106:
                v51[0] = 0;
                if (v22 >= v10 || (v45 = *v22, (v45 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
                  if (!result)
                  {
                    return result;
                  }

                  v45 = v51[0];
                  v46 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v46 = v22 + 1;
                  *(this + 1) = v46;
                }

                *(a1 + 51) = v45 != 0;
                *(a1 + 60) |= 0x100u;
                if (v46 < v10 && *v46 == 80)
                {
                  v19 = v46 + 1;
                  *(this + 1) = v19;
LABEL_114:
                  v51[0] = 0;
                  if (v19 >= v10 || (v47 = *v19, (v47 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
                    if (!result)
                    {
                      return result;
                    }

                    v47 = v51[0];
                    v48 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    v48 = v19 + 1;
                    *(this + 1) = v48;
                  }

                  *(a1 + 52) = v47 != 0;
                  *(a1 + 60) |= 0x200u;
                  if (v48 < v10 && *v48 == 88)
                  {
                    v12 = v48 + 1;
                    *(this + 1) = v12;
LABEL_122:
                    v51[0] = 0;
                    if (v12 >= v10 || (v49 = *v12, (v49 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
                      if (!result)
                      {
                        return result;
                      }

                      v49 = v51[0];
                      v50 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      v50 = v12 + 1;
                      *(this + 1) = v50;
                    }

                    *(a1 + 53) = v49 != 0;
                    *(a1 + 60) |= 0x400u;
                    if (v50 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

          else
          {
            if (v8 == 8 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_98;
            }

LABEL_43:
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v14 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_52;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
        if (v15 >= v13 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 60) |= 1u;
        if (v17 < v13 && *v17 == 16)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_52:
          if (v14 >= v13 || (v24 = *v14, v24 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v25 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v24;
            v25 = v14 + 1;
            *(this + 1) = v25;
          }

          v20 = *(a1 + 60) | 2;
          *(a1 + 60) = v20;
          if (v25 < v13 && *v25 == 26)
          {
            *(this + 1) = v25 + 1;
            goto LABEL_60;
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 != 4)
      {
        if (v8 != 5 || v9 != 1)
        {
          goto LABEL_43;
        }

        goto LABEL_78;
      }

      if (v9 != 1)
      {
        goto LABEL_43;
      }

LABEL_74:
      *v51 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v51;
      *(a1 + 60) |= 8u;
      v37 = *(this + 1);
      if (v37 < *(this + 2) && *v37 == 41)
      {
        *(this + 1) = v37 + 1;
LABEL_78:
        *v51 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v51) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v51;
        *(a1 + 60) |= 0x10u;
        v38 = *(this + 1);
        v10 = *(this + 2);
        if (v38 < v10 && *v38 == 48)
        {
          v21 = v38 + 1;
          *(this + 1) = v21;
LABEL_82:
          v51[0] = 0;
          if (v21 >= v10 || (v39 = *v21, (v39 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51);
            if (!result)
            {
              return result;
            }

            v39 = v51[0];
            v40 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v40 = v21 + 1;
            *(this + 1) = v40;
          }

          *(a1 + 48) = v39 != 0;
          *(a1 + 60) |= 0x20u;
          if (v40 < v10 && *v40 == 56)
          {
            v18 = v40 + 1;
            *(this + 1) = v18;
            goto LABEL_90;
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_43;
    }

    v20 = *(a1 + 60);
LABEL_60:
    *(a1 + 60) = v20 | 4;
    v26 = *(a1 + 24);
    if (!v26)
    {
      operator new();
    }

    v51[0] = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v51))
      {
        return 0;
      }
    }

    else
    {
      v51[0] = *v27;
      *(this + 1) = v27 + 1;
    }

    v28 = *(this + 14);
    v29 = *(this + 15);
    *(this + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51[0]);
    if (!sub_1000F4C44(v26, this, v31, v32) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
    v33 = *(this + 14);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v35 < 0 == v34)
    {
      *(this + 14) = v35;
    }

    v36 = *(this + 1);
    if (v36 < *(this + 2) && *v36 == 33)
    {
      *(this + 1) = v36 + 1;
      goto LABEL_74;
    }
  }
}

uint64_t sub_1000EC590(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 24);
  if (!v10)
  {
    v10 = *(qword_1009F9BE8 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
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

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 48), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 49), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 50), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 52), a2, a4);
    if ((*(v5 + 60) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 51), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v6 & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 53), a2, a4);
  }

LABEL_13:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EC730(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 60))
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

  if ((*(this + 60) & 2) != 0)
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

  v8 = *(this + 15);
  if ((v8 & 4) != 0)
  {
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(qword_1009F9BE8 + 24);
    }

    *v3 = 26;
    v15 = *(v14 + 40);
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v16 = v3 + 2;
    }

    v3 = sub_1000F4EB0(v14, v16, a3);
    v8 = *(this + 15);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_11;
  }

  v17 = *(this + 4);
  *v3 = 33;
  *(v3 + 1) = v17;
  v3 = (v3 + 9);
  v8 = *(this + 15);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(this + 5);
  *v3 = 41;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v8 = *(this + 15);
  if ((v8 & 0x20) == 0)
  {
LABEL_13:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(this + 48);
  *v3 = 48;
  *(v3 + 1) = v19;
  v3 = (v3 + 2);
  v8 = *(this + 15);
  if ((v8 & 0x40) == 0)
  {
LABEL_14:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(this + 49);
  *v3 = 56;
  *(v3 + 1) = v20;
  v3 = (v3 + 2);
  v8 = *(this + 15);
  if ((v8 & 0x80) == 0)
  {
LABEL_15:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(this + 50);
  *v3 = 64;
  *(v3 + 1) = v21;
  v3 = (v3 + 2);
  v8 = *(this + 15);
  if ((v8 & 0x100) == 0)
  {
LABEL_16:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    v23 = *(this + 52);
    *v3 = 80;
    *(v3 + 1) = v23;
    v3 = (v3 + 2);
    if ((*(this + 15) & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_36:
  v22 = *(this + 51);
  *v3 = 72;
  *(v3 + 1) = v22;
  v3 = (v3 + 2);
  v8 = *(this + 15);
  if ((v8 & 0x200) != 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  if ((v8 & 0x400) != 0)
  {
LABEL_18:
    v9 = *(this + 53);
    *v3 = 88;
    *(v3 + 1) = v9;
    v3 = (v3 + 2);
  }

LABEL_19:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, v3, a3);
}

uint64_t sub_1000EC9C0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_26;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v7 = *(a1 + 20);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_14;
  }

  v6 = *(a1 + 16);
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
  v3 = *(a1 + 60);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9BE8 + 24);
    }

    v10 = sub_1000F4FD8(v9, a2);
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
    v3 = *(a1 + 60);
  }

  v13 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v13 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v13 += 9;
  }

  v5 = ((v3 >> 5) & 2) + ((v3 >> 4) & 2) + ((v3 >> 6) & 2) + v13;
LABEL_26:
  v14 = (v3 & 0xFF00) == 0;
  v15 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2) + ((v3 >> 9) & 2);
  if (v14)
  {
    v16 = v5;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v16;
  }

  *(a1 + 56) = v16;
  return v16;
}

uint64_t sub_1000ECB30(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000EBAA4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000ECC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ECC1C(uint64_t a1, uint64_t a2)
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

void sub_1000ECCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ECD14(uint64_t result, uint64_t a2)
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

uint64_t sub_1000ECDA8()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBB8;
}

void sub_1000ECE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ECE50(uint64_t a1)
{
  *a1 = off_100991ED0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000ECEB0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      *(a1 + 44) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        v10 = *(qword_1009F9BF0 + 24);
      }

      sub_1000ECC1C(v9, v10);
      if ((*(a2 + 44) & 8) != 0)
      {
        goto LABEL_8;
      }

      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000ED028(void *a1)
{
  *a1 = off_100991ED0;
  if (qword_1009F9BF0 != a1)
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

void sub_1000ED0C0(void *a1)
{
  sub_1000ED028(a1);

  operator delete();
}

uint64_t sub_1000ED164(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 24);
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

    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_1000ED1EC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v8 == 3)
          {
            if (v9 == 2)
            {
              v15 = *(a1 + 44);
              goto LABEL_37;
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

          else
          {
            if (v8 != 4 || v9 != 1)
            {
              goto LABEL_20;
            }

LABEL_51:
            v30 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v30;
            *(a1 + 44) |= 8u;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
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

        *(a1 + 44) |= 1u;
        if (v14 < v10 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(this + 1) = v11;
          goto LABEL_29;
        }
      }

      if (v8 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
LABEL_29:
      if (v11 >= v10 || (v17 = *v11, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v17;
        v18 = v11 + 1;
        *(this + 1) = v18;
      }

      v15 = *(a1 + 44) | 2;
      *(a1 + 44) = v15;
    }

    while (v18 >= v10 || *v18 != 26);
    *(this + 1) = v18 + 1;
LABEL_37:
    *(a1 + 44) = v15 | 4;
    v19 = *(a1 + 24);
    if (!v19)
    {
      operator new();
    }

    v31 = 0;
    v20 = *(this + 1);
    if (v20 >= *(this + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
      {
        return 0;
      }
    }

    else
    {
      v31 = *v20;
      *(this + 1) = v20 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
    if (!sub_1000F4C44(v19, this, v24, v25) || *(this + 36) != 1)
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

    v29 = *(this + 1);
    if (v29 < *(this + 2) && *v29 == 33)
    {
      *(this + 1) = v29 + 1;
      goto LABEL_51;
    }
  }
}

uint64_t sub_1000ED504(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v10 = *(v5 + 24);
      if (!v10)
      {
        v10 = *(qword_1009F9BF0 + 24);
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
      if ((*(v5 + 44) & 8) != 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000ED5E0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 44))
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

  if ((*(this + 44) & 2) != 0)
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

  v8 = *(this + 11);
  if ((v8 & 4) != 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      v9 = *(qword_1009F9BF0 + 24);
    }

    *v3 = 26;
    v10 = *(v9 + 40);
    if (v10 > 0x7F)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v11 = v3 + 2;
    }

    v3 = sub_1000F4EB0(v9, v11, a3);
    v8 = *(this + 11);
  }

  if ((v8 & 8) != 0)
  {
    v12 = *(this + 4);
    *v3 = 33;
    *(v3 + 1) = v12;
    v3 = (v3 + 9);
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

uint64_t sub_1000ED750(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v7 = *(a1 + 20);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_14;
  }

  v6 = *(a1 + 16);
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
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9BF0 + 24);
    }

    v10 = sub_1000F4FD8(v9, a2);
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
    v3 = *(a1 + 44);
  }

  if ((v3 & 8) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

LABEL_24:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_1000ED860(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000ECEB0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000ED934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED94C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000ED9E0()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBC8;
}

void sub_1000EDA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EDA88(uint64_t a1)
{
  *a1 = off_100991F80;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return a1;
}

uint64_t sub_1000EDB04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  sub_1000EED24((a1 + 48), a2 + 48);
  sub_1000EEE64((a1 + 72), a2 + 72);
  LOBYTE(v4) = *(a2 + 100);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 100))
  {
    v7 = *(a2 + 16);
    *(a1 + 100) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 100);
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

  else if ((*(a2 + 100) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 100) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(a1 + 100) |= 8u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(qword_1009F9BE0 + 32);
    }

    sub_1000EEFA4(v11, v12);
    if ((*(a2 + 100) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_13:
  *(a1 + 100) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    v10 = *(qword_1009F9BE0 + 24);
  }

  sub_1000ECC1C(v9, v10);
  v4 = *(a2 + 100);
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 40);
    *(a1 + 100) |= 0x10u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000EDCFC(uint64_t *a1)
{
  *a1 = off_100991F80;
  v2 = a1 + 9;
  sub_1000EDD74(a1);
  sub_100077C08(v2);
  sub_100077C08(a1 + 6);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000EDD74(void *result)
{
  if (qword_1009F9BE0 != result)
  {
    v1 = result;
    v2 = result[3];
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

void sub_1000EDE18(uint64_t *a1)
{
  sub_1000EDCFC(a1);

  operator delete();
}

uint64_t sub_1000EDEBC(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
          *(v3 + 32) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 9) = 0;
        if (v5)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
        }
      }
    }

    if ((*(a1 + 100) & 8) != 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        if (*(v6 + 52))
        {
          *(v6 + 16) = 0u;
          *(v6 + 32) = 0u;
        }

        v8 = *(v6 + 8);
        v7 = (v6 + 8);
        *(v7 + 11) = 0;
        if (v8)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
        }
      }
    }

    *(a1 + 40) = 0;
  }

  sub_100077B98(a1 + 48);
  result = sub_100077B98(a1 + 72);
  v11 = *(a1 + 8);
  v10 = (a1 + 8);
  *(v10 + 23) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EDF88(uint64_t a1)
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

uint64_t sub_1000EDFAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

            v12 = *(this + 1);
            v11 = *(this + 2);
            if (v12 >= v11 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v14 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v13;
              v14 = v12 + 1;
              *(this + 1) = v14;
            }

            *(a1 + 100) |= 1u;
            if (v14 < v11 && *v14 == 16)
            {
              v15 = v14 + 1;
              *(this + 1) = v15;
              goto LABEL_39;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 2)
              {
                goto LABEL_30;
              }

              v10 = *(a1 + 100);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v15 = *(this + 1);
            v11 = *(this + 2);
LABEL_39:
            v67[0] = 0;
            if (v15 >= v11 || (v17 = *v15, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v67);
              if (!result)
              {
                return result;
              }

              v17 = v67[0];
              v18 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v18 = v15 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 20) = v17 != 0;
            v10 = *(a1 + 100) | 2;
            *(a1 + 100) = v10;
            if (v18 < v11 && *v18 == 26)
            {
              *(this + 1) = v18 + 1;
LABEL_47:
              *(a1 + 100) = v10 | 4;
              v19 = *(a1 + 24);
              if (!v19)
              {
                operator new();
              }

              v67[0] = 0;
              v20 = *(this + 1);
              if (v20 >= *(this + 2) || *v20 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v67))
                {
                  return 0;
                }
              }

              else
              {
                v67[0] = *v20;
                *(this + 1) = v20 + 1;
              }

              v21 = *(this + 14);
              v22 = *(this + 15);
              *(this + 14) = v21 + 1;
              if (v21 >= v22)
              {
                return 0;
              }

              v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67[0]);
              if (!sub_1000F4C44(v19, this, v24, v25) || *(this + 36) != 1)
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

              v29 = *(this + 1);
              if (v29 < *(this + 2) && *v29 == 34)
              {
                *(this + 1) = v29 + 1;
                goto LABEL_61;
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
          if (v9 != 2)
          {
            goto LABEL_30;
          }

LABEL_79:
          v41 = *(a1 + 60);
          v42 = *(a1 + 56);
          if (v42 >= v41)
          {
            if (v41 == *(a1 + 64))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v41 + 1);
              v41 = *(a1 + 60);
            }

            *(a1 + 60) = v41 + 1;
            sub_1000F53B4();
          }

          v43 = *(a1 + 48);
          *(a1 + 56) = v42 + 1;
          v44 = *(v43 + 8 * v42);
          v67[0] = 0;
          v45 = *(this + 1);
          if (v45 >= *(this + 2) || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v67))
            {
              return 0;
            }
          }

          else
          {
            v67[0] = *v45;
            *(this + 1) = v45 + 1;
          }

          v46 = *(this + 14);
          v47 = *(this + 15);
          *(this + 14) = v46 + 1;
          if (v46 >= v47)
          {
            return 0;
          }

          v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67[0]);
          if (!sub_1000EBF0C(v44, this, v49, v50) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
          v51 = *(this + 14);
          v27 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (v52 < 0 == v27)
          {
            *(this + 14) = v52;
          }

          v40 = *(this + 1);
          if (v40 < *(this + 2))
          {
            v53 = *v40;
            if (v53 == 50)
            {
              goto LABEL_78;
            }

            if (v53 == 58)
            {
              goto LABEL_96;
            }
          }
        }

        else
        {
          if (v8 != 7 || v9 != 2)
          {
            goto LABEL_30;
          }

          while (2)
          {
            v54 = *(a1 + 84);
            v55 = *(a1 + 80);
            if (v55 >= v54)
            {
              if (v54 == *(a1 + 88))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v54 + 1);
                v54 = *(a1 + 84);
              }

              *(a1 + 84) = v54 + 1;
              sub_1000F5418();
            }

            v56 = *(a1 + 72);
            *(a1 + 80) = v55 + 1;
            v57 = *(v56 + 8 * v55);
            v67[0] = 0;
            v58 = *(this + 1);
            if (v58 >= *(this + 2) || *v58 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v67))
              {
                return 0;
              }
            }

            else
            {
              v67[0] = *v58;
              *(this + 1) = v58 + 1;
            }

            v59 = *(this + 14);
            v60 = *(this + 15);
            *(this + 14) = v59 + 1;
            if (v59 >= v60)
            {
              return 0;
            }

            v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67[0]);
            if (!sub_1000ED1EC(v57, this, v62, v63) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
            v64 = *(this + 14);
            v27 = __OFSUB__(v64, 1);
            v65 = v64 - 1;
            if (v65 < 0 == v27)
            {
              *(this + 14) = v65;
            }

            v40 = *(this + 1);
            v66 = *(this + 2);
            if (v40 < v66 && *v40 == 58)
            {
LABEL_96:
              *(this + 1) = v40 + 1;
              continue;
            }

            break;
          }

          if (v40 == v66 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_30;
      }

LABEL_61:
      *(a1 + 100) |= 8u;
      v30 = *(a1 + 32);
      if (!v30)
      {
        operator new();
      }

      v67[0] = 0;
      v31 = *(this + 1);
      if (v31 >= *(this + 2) || *v31 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v67))
        {
          return 0;
        }
      }

      else
      {
        v67[0] = *v31;
        *(this + 1) = v31 + 1;
      }

      v32 = *(this + 14);
      v33 = *(this + 15);
      *(this + 14) = v32 + 1;
      if (v32 >= v33)
      {
        return 0;
      }

      v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67[0]);
      if (!sub_1000F43A0(v30, this, v35, v36) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
      v37 = *(this + 14);
      v27 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v27)
      {
        *(this + 14) = v38;
      }

      v39 = *(this + 1);
      if (v39 < *(this + 2) && *v39 == 41)
      {
        *(this + 1) = v39 + 1;
LABEL_75:
        *v67 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v67) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v67;
        *(a1 + 100) |= 0x10u;
        v40 = *(this + 1);
        if (v40 < *(this + 2) && *v40 == 50)
        {
LABEL_78:
          *(this + 1) = v40 + 1;
          goto LABEL_79;
        }
      }
    }

    if (v8 == 5 && v9 == 1)
    {
      goto LABEL_75;
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

uint64_t sub_1000EE664(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 100);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  v12 = *(v5 + 24);
  if (!v12)
  {
    v12 = *(qword_1009F9BE0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
  v6 = *(v5 + 100);
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
  v13 = *(v5 + 32);
  if (!v13)
  {
    v13 = *(qword_1009F9BE0 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
  if ((*(v5 + 100) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  }

LABEL_7:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EE7E0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 100))
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

  v7 = *(this + 25);
  if ((v7 & 2) != 0)
  {
    v21 = *(this + 20);
    *v3 = 16;
    *(v3 + 1) = v21;
    v3 = (v3 + 2);
    v7 = *(this + 25);
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  v22 = *(this + 3);
  if (!v22)
  {
    v22 = *(qword_1009F9BE0 + 24);
  }

  *v3 = 26;
  v23 = *(v22 + 40);
  if (v23 > 0x7F)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v23;
    v24 = v3 + 2;
  }

  v3 = sub_1000F4EB0(v22, v24, a3);
  v7 = *(this + 25);
  if ((v7 & 8) == 0)
  {
LABEL_8:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_35:
  v25 = *(this + 4);
  if (!v25)
  {
    v25 = *(qword_1009F9BE0 + 32);
  }

  *v3 = 34;
  v26 = *(v25 + 48);
  if (v26 > 0x7F)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v26;
    v27 = v3 + 2;
  }

  v3 = sub_1000F468C(v25, v27, a3);
  if ((*(this + 25) & 0x10) != 0)
  {
LABEL_9:
    v8 = *(this + 5);
    *v3 = 41;
    *(v3 + 1) = v8;
    v3 = (v3 + 9);
  }

LABEL_10:
  if (*(this + 14) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 6) + 8 * v9);
      *v3 = 50;
      v11 = v10[14];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v11;
        v12 = (v3 + 2);
      }

      v3 = sub_1000EC730(v10, v12, a3);
      ++v9;
    }

    while (v9 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 9) + 8 * v13);
      *v3 = 58;
      v15 = v14[10];
      if (v15 > 0x7F)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v15;
        v16 = (v3 + 2);
      }

      v3 = sub_1000ED5E0(v14, v16, a3);
      ++v13;
    }

    while (v13 < *(this + 20));
  }

  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v3, a3);
}

uint64_t sub_1000EEA68(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 100);
  if (*(a1 + 100))
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 100);
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

    v6 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 24);
      if (!v7)
      {
        v7 = *(qword_1009F9BE0 + 24);
      }

      v8 = sub_1000F4FD8(v7, a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 += v9 + v10 + 1;
      v3 = *(a1 + 100);
    }

    if ((v3 & 8) != 0)
    {
      v11 = *(a1 + 32);
      if (!v11)
      {
        v11 = *(qword_1009F9BE0 + 32);
      }

      v12 = sub_1000F480C(v11, a2);
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v14 = 1;
      }

      v6 += v13 + v14 + 1;
      v3 = *(a1 + 100);
    }

    if ((v3 & 0x10) != 0)
    {
      v3 = v6 + 9;
    }

    else
    {
      v3 = v6;
    }
  }

  v15 = *(a1 + 56);
  v16 = v15 + v3;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = sub_1000EC9C0(*(*(a1 + 48) + 8 * v17), a2);
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      }

      else
      {
        v20 = 1;
      }

      v16 += v19 + v20;
      ++v17;
    }

    while (v17 < *(a1 + 56));
  }

  v21 = *(a1 + 80);
  v22 = (v21 + v16);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = sub_1000ED750(*(*(a1 + 72) + 8 * v23), a2);
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
      }

      else
      {
        v26 = 1;
      }

      v22 = (v25 + v22 + v26);
      ++v23;
    }

    while (v23 < *(a1 + 80));
  }

  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v22 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v22;
  }

  *(a1 + 96) = v22;
  return v22;
}

uint64_t sub_1000EEC38(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000EDB04(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000EED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EED24(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F53B4();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000EBAA4(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000EEE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EEE64(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F5418();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000ECEB0(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000EEF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EEFA4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

void sub_1000EF0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF0BC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000EF150()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBA8;
}

void sub_1000EF1E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF1F8(uint64_t a1)
{
  *a1 = off_100992030;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_1000EF274(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_1000EFE78((a1 + 24), a2 + 24);
  LOBYTE(v4) = *(a2 + 56);
  if (v4)
  {
    if (*(a2 + 56))
    {
      v5 = *(a2 + 16);
      *(a1 + 56) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 56);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 48);
      *(a1 + 56) |= 2u;
      *(a1 + 48) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000EF37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000EF394(uint64_t a1)
{
  *a1 = off_100992030;
  v2 = (a1 + 24);
  sub_10009F464(a1);
  sub_1000F565C(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000EF404(uint64_t a1)
{
  sub_1000EF394(a1);

  operator delete();
}

uint64_t sub_1000EF4A8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 16);
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

  result = sub_1000F560C(a1 + 24);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 12) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_1000EF540(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_25;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
LABEL_21:
        if (v15 >= v13 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (v5 + 48));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(v5 + 48) = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        *(v5 + 56) |= 2u;
        if (v17 < v13 && *v17 == 26)
        {
          do
          {
            *(this + 1) = v17 + 1;
LABEL_33:
            v18 = *(v5 + 36);
            v19 = *(v5 + 32);
            if (v19 >= v18)
            {
              if (v18 == *(v5 + 40))
              {
                result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v18 + 1);
                v18 = *(v5 + 36);
              }

              *(v5 + 36) = v18 + 1;
              v22 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
              v23 = *(v5 + 24);
              v24 = *(v5 + 32);
              *(v5 + 32) = v24 + 1;
              *(v23 + 8 * v24) = v22;
            }

            else
            {
              v20 = *(v5 + 24);
              *(v5 + 32) = v19 + 1;
              v21 = *(v20 + 8 * v19);
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(v5 + 24) + 8 * *(v5 + 32);
            v26 = *(v25 - 8);
            if ((*(v26 + 23) & 0x8000000000000000) != 0)
            {
              v27 = *v26;
              v28 = *(*(v25 - 8) + 8);
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
            v17 = *(this + 1);
            v29 = *(this + 2);
          }

          while (v17 < v29 && *v17 == 26);
          if (v17 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_25;
        }

        *(v5 + 56) |= 1u;
        if (*(v5 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v10 = *(v5 + 16);
        if ((*(v10 + 23) & 0x8000000000000000) != 0)
        {
          v11 = *v10;
          v12 = *(*(v5 + 16) + 8);
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        v14 = *(this + 1);
        v13 = *(this + 2);
        if (v14 < v13 && *v14 == 16)
        {
          v15 = v14 + 1;
          *(this + 1) = v15;
          goto LABEL_21;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (v9 == 4)
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

uint64_t sub_1000EF7DC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 16);
    if ((*(v7 + 23) & 0x8000000000000000) != 0)
    {
      v8 = *v7;
      v9 = *(*(v5 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v10 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 56);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 48), a2, a4);
  }

  LODWORD(v11) = *(v5 + 32);
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*(v5 + 24) + 8 * v12);
      v14 = *(v13 + 23);
      if (v14 < 0)
      {
        v15 = *v13;
      }

      if (v12 >= v11)
      {
        break;
      }

      if ((v14 & 0x80) != 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      if (v12 >= *(v5 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
      }

      v17 = *(*(v5 + 24) + 8 * v12);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v12;
      v11 = *(v5 + 32);
      if (v12 >= v11)
      {
        goto LABEL_20;
      }
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
    v13 = *(*(v5 + 24) + 8 * v12);
    if ((*(v13 + 23) & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = v13[1];
    goto LABEL_14;
  }

LABEL_20:
  v20 = *(v5 + 8);
  v19 = (v5 + 8);
  v18 = v20;
  if (v20)
  {
    if (*v18 != v18[1])
    {
      return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v19, a2, a3);
    }
  }

  return this;
}

void sub_1000EF988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000EF9A8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *(this + 2);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v11 = *(this + 2);
    *a2 = 10;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, v9);
    }

    else
    {
      *(a2 + 1) = v12;
      v13 = a2 + 2;
    }

    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, v10);
    v5 = *(this + 14);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 12);
    *a2 = 16;
    if (v17 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v17;
      a2 = (a2 + 2);
    }
  }

  LODWORD(v18) = *(this + 8);
  if (v18 >= 1)
  {
    v19 = 0;
    while (1)
    {
      v20 = *(*(this + 3) + 8 * v19);
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        v22 = *v20;
      }

      if (v19 >= v18)
      {
        break;
      }

      if ((v21 & 0x80) != 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      if (v19 >= *(this + 8))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
      }

      v26 = *(*(this + 3) + 8 * v19);
      *a2 = 26;
      v27 = *(v26 + 23);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v27 = *(v26 + 8);
      }

      if (v27 > 0x7F)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, a2 + 1, v24);
      }

      else
      {
        *(a2 + 1) = v27;
        v28 = a2 + 2;
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

      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, v25);
      ++v19;
      v18 = *(this + 8);
      if (v19 >= v18)
      {
        goto LABEL_43;
      }
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
    v20 = *(*(this + 3) + 8 * v19);
    if ((*(v20 + 23) & 0x80) == 0)
    {
      goto LABEL_27;
    }

LABEL_26:
    v23 = v20[1];
    goto LABEL_27;
  }

LABEL_43:
  v34 = *(this + 1);
  v33 = (this + 8);
  v32 = v34;
  if (v34 && *v32 != v32[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v33, a2, a3);
  }

  return a2;
}

void sub_1000EFC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFC34(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 56) & 2) == 0)
    {
      goto LABEL_19;
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
    v3 = *(a1 + 56);
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

  v4 = v10 + v6;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 48);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_19:
  v14 = *(a1 + 32);
  v15 = (v14 + v4);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v17 = *(*(a1 + 24) + 8 * i);
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
        v14 = *(a1 + 32);
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

      v15 = (v22 + v15 + v18);
    }
  }

  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v15;
  }

  *(a1 + 52) = v15;
  return v15;
}

uint64_t sub_1000EFD8C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000EF274(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000EFE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *sub_1000EFE78(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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

void sub_1000EFFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFFB8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F004C()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBF8;
}

void sub_1000F00E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F00F4(uint64_t a1)
{
  *a1 = off_1009920E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_1000F0154(uint64_t a1, uint64_t a2)
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
        v7 = *(qword_1009F9C18 + 16);
      }

      sub_1000ECC1C(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000F0284(void *a1)
{
  *a1 = off_1009920E0;
  if (qword_1009F9C18 != a1)
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

void sub_1000F031C(void *a1)
{
  sub_1000F0284(a1);

  operator delete();
}

uint64_t sub_1000F03C0(uint64_t this)
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

uint64_t sub_1000F0444(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_1000F4C44(v15, this, v20, v21) || *(this + 36) != 1)
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

uint64_t sub_1000F0688(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_1009F9C18 + 16);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000F0724(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
      v5 = *(qword_1009F9C18 + 16);
    }

    *a2 = 18;
    v6 = *(v5 + 40);
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = a2 + 2;
    }

    a2 = sub_1000F4EB0(v5, v7, a3);
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

uint64_t sub_1000F080C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v6 = *(qword_1009F9C18 + 16);
    }

    v7 = sub_1000F4FD8(v6, a2);
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

uint64_t sub_1000F08E4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000F0154(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F09B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F09D0(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F0A64()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC18;
}

void sub_1000F0AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0B0C(uint64_t a1)
{
  *a1 = off_100992190;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1000F0B80(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  sub_1000F1A78((a1 + 40), a2 + 40);
  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      v5 = *(a2 + 16);
      *(a1 + 68) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 68);
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

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 68) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 68);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_14:
      *(a1 + 68) |= 8u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9C10 + 32);
      }

      sub_1000ECC1C(v9, v10);
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

LABEL_13:
    v8 = *(a2 + 28);
    *(a1 + 68) |= 4u;
    *(a1 + 28) = v8;
    if ((*(a2 + 68) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000F0D40(uint64_t *a1)
{
  *a1 = off_100992190;
  v2 = a1 + 5;
  sub_1000F0DAC(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000F0DAC(void *result)
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

  if (qword_1009F9C10 != result)
  {
    result = result[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000F0E64(uint64_t *a1)
{
  sub_1000F0D40(a1);

  operator delete();
}

uint64_t sub_1000F0F08(uint64_t a1)
{
  if (*(a1 + 68))
  {
    if (*(a1 + 68))
    {
      v2 = *(a1 + 16);
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

    *(a1 + 24) = 0;
    if ((*(a1 + 68) & 8) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
          *(v3 + 32) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 9) = 0;
        if (v5)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
        }
      }
    }
  }

  result = sub_100077B98(a1 + 40);
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  *(v7 + 15) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return result;
}

uint64_t sub_1000F0FD0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_40;
        }

        if (v8 == 4)
        {
          if (v9 != 2)
          {
            goto LABEL_21;
          }

          v13 = *(a1 + 68);
LABEL_48:
          *(a1 + 68) = v13 | 8;
          v23 = *(a1 + 32);
          if (!v23)
          {
            operator new();
          }

          v48 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v48))
            {
              return 0;
            }
          }

          else
          {
            v48 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v48);
          if (!sub_1000F4C44(v23, this, v28, v29) || *(this + 36) != 1)
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
          if (v33 < *(this + 2) && *v33 == 42)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
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
              sub_1000F547C();
            }

            v36 = *(a1 + 40);
            *(a1 + 48) = v35 + 1;
            v37 = *(v36 + 8 * v35);
            v49 = 0;
            v38 = *(this + 1);
            if (v38 >= *(this + 2) || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v38;
              *(this + 1) = v38 + 1;
            }

            v39 = *(this + 14);
            v40 = *(this + 15);
            *(this + 14) = v39 + 1;
            if (v39 >= v40)
            {
              return 0;
            }

            v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v49);
            if (!sub_1000F0444(v37, this, v42, v43) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
            v44 = *(this + 14);
            v31 = __OFSUB__(v44, 1);
            v45 = v44 - 1;
            if (v45 < 0 == v31)
            {
              *(this + 14) = v45;
            }

            v33 = *(this + 1);
            v46 = *(this + 2);
            if (v33 >= v46 || *v33 != 42)
            {
              break;
            }

LABEL_61:
            *(this + 1) = v33 + 1;
          }

          if (v33 == v46 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      *(a1 + 68) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 16);
      if ((*(v15 + 23) & 0x8000000000000000) != 0)
      {
        v16 = *v15;
        v17 = *(*(a1 + 16) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v18 = *(this + 1);
      v10 = *(this + 2);
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(this + 1) = v11;
LABEL_32:
        if (v11 >= v10 || (v19 = *v11, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v19;
          v20 = v11 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 68) |= 2u;
        if (v20 < v10 && *v20 == 24)
        {
          v12 = v20 + 1;
          *(this + 1) = v12;
LABEL_40:
          v47 = 0;
          if (v12 >= v10 || (v21 = *v12, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
            if (!result)
            {
              return result;
            }

            v21 = v47;
            v22 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v22 = v12 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 28) = v21;
          v13 = *(a1 + 68) | 4;
          *(a1 + 68) = v13;
          if (v22 < v10 && *v22 == 34)
          {
            *(this + 1) = v22 + 1;
            goto LABEL_48;
          }
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_32;
    }

LABEL_21:
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