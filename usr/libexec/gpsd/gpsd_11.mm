uint64_t proto::gnss::Emergency::SessionStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 104);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 104);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 96), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 97), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 98), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_32:
  v7 = *(v5 + 80);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v7, a2, a4);
  if ((*(v5 + 104) & 0x8000) != 0)
  {
LABEL_35:
    v8 = *(v5 + 88);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 88);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::SessionStatus::ByteSize(proto::gnss::Emergency::SessionStatus *this, unsigned int a2)
{
  v3 = *(this + 26);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (v3)
  {
    v6 = *(this + 2);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 26);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 26);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 26);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if ((v3 & 8) != 0)
  {
LABEL_25:
    v11 = *(this + 5);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(this + 26);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

LABEL_31:
  v13 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v13 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v13 + 9;
  }

  else
  {
    v5 = v13;
  }

LABEL_40:
  if ((v3 & 0xFF00) != 0)
  {
    v14 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v14 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v14 += 9;
    }

    v5 = ((v3 >> 11) & 2) + ((v3 >> 10) & 2) + ((v3 >> 12) & 2) + v14;
    if ((v3 & 0x4000) != 0)
    {
      v15 = *(this + 10);
      if (!v15)
      {
        v15 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 80);
      }

      v16 = proto::gnss::Emergency::NetworkReferenceLocation::ByteSize(v15, a2);
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
      v3 = *(this + 26);
    }

    if ((v3 & 0x8000) != 0)
    {
      v19 = *(this + 11);
      if (!v19)
      {
        v19 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 88);
      }

      v20 = proto::gnss::Emergency::NetworkReferenceTime::ByteSize(v19, a2);
      v22 = v20;
      if (v20 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, v21);
      }

      else
      {
        v23 = 1;
      }

      v5 = (v5 + v22 + v23 + 2);
    }
  }

  *(this + 25) = v5;
  return v5;
}

void proto::gnss::Emergency::SessionStatus::CheckTypeAndMergeFrom(proto::gnss::Emergency::SessionStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SessionStatus::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(proto::gnss::Emergency::NetworkReferenceLocation *this, const proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      v6 = *(a2 + 1);
      *(this + 15) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 15);
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

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 15) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 15);
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
    v8 = *(a2 + 3);
    *(this + 15) |= 4u;
    *(this + 3) = v8;
    v4 = *(a2 + 15);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 4);
    *(this + 15) |= 8u;
    *(this + 4) = v9;
    v4 = *(a2 + 15);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 5);
    *(this + 15) |= 0x10u;
    *(this + 5) = v10;
    v4 = *(a2 + 15);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 12);
    *(this + 15) |= 0x20u;
    *(this + 12) = v11;
    if ((*(a2 + 15) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 13);
    *(this + 15) |= 0x40u;
    *(this + 13) = v5;
  }
}

void sub_10008F8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(proto::gnss::Emergency::NetworkReferenceTime *this, const proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  if (a2 == this)
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
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 2);
    *(this + 7) |= 4u;
    *(this + 2) = v5;
  }
}

void sub_10008F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SessionStatus::CopyFrom(proto::gnss::Emergency::SessionStatus *this, const proto::gnss::Emergency::SessionStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SessionStatus::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::SessionStatus::Swap(proto::gnss::Emergency::SessionStatus *this, proto::gnss::Emergency::SessionStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v9;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    LOBYTE(v5) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v5;
    LOBYTE(v5) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v5;
    LOBYTE(v5) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v5;
    v13 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v13;
    v14 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v14;
    LODWORD(v14) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v14;
    LODWORD(v14) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v14;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::ClsGpsCellTime *proto::gnss::Emergency::ClsGpsCellTime::ClsGpsCellTime(proto::gnss::Emergency::ClsGpsCellTime *this, const proto::gnss::Emergency::ClsGpsCellTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174BB8;
  proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(proto::gnss::Emergency::ClsGpsCellTime *this, const proto::gnss::Emergency::ClsGpsCellTime *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_10008FCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsGpsCellTime::~ClsGpsCellTime(proto::gnss::Emergency::ClsGpsCellTime *this)
{
  *this = off_100174BB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174BB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174BB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::default_instance(proto::gnss::Emergency::ClsGpsCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::ClsGpsCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::ClsGpsCellTime::ByteSize(proto::gnss::Emergency::ClsGpsCellTime *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
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

LABEL_14:
  *(this + 4) = v4;
  return v4;
}

void proto::gnss::Emergency::ClsGpsCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsGpsCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsGpsCellTime::CopyFrom(proto::gnss::Emergency::ClsGpsCellTime *this, const proto::gnss::Emergency::ClsGpsCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::ClsGpsCellTime *proto::gnss::Emergency::ClsGpsCellTime::Swap(proto::gnss::Emergency::ClsGpsCellTime *this, proto::gnss::Emergency::ClsGpsCellTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

double proto::gnss::Emergency::ClsUtranCellTime::SharedCtor(proto::gnss::Emergency::ClsUtranCellTime *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ClsUtranCellTime *proto::gnss::Emergency::ClsUtranCellTime::ClsUtranCellTime(proto::gnss::Emergency::ClsUtranCellTime *this, const proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  *this = off_100174C30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(proto::gnss::Emergency::ClsUtranCellTime *this, const proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8);
      }

      proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 9);
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
    v8 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_18:
      v10 = *(a2 + 7);
      if (v10 >= 5)
      {
        __assert_rtn("set_modem_state", "GnssEmergencyTypes.pb.h", 16057, "::proto::gnss::Emergency::ClsModemState_IsValid(value)");
      }

      *(this + 9) |= 0x10u;
      *(this + 7) = v10;
      return;
    }

LABEL_17:
    v9 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_10009040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsUtranCellTime::~ClsUtranCellTime(proto::gnss::Emergency::ClsUtranCellTime *this)
{
  *this = off_100174C30;
  if (proto::gnss::Emergency::ClsUtranCellTime::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::ClsUtranCellTime::~ClsUtranCellTime(this);

  operator delete();
}

void *proto::gnss::Emergency::ClsUtranCellTime::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::ClsUtranCellTime::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::default_instance(proto::gnss::Emergency::ClsUtranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsUtranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::ClsUtranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_46;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_54:
        if (v13 >= v9 || (v29 = *v13, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v29;
          v30 = v13 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 9) |= 8u;
        if (v30 < v9 && *v30 == 40)
        {
          v10 = v30 + 1;
          *(a2 + 1) = v10;
LABEL_62:
          v32 = 0;
          if (v10 >= v9 || (v31 = *v10, (v31 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
            if (!result)
            {
              return result;
            }

            v31 = v32;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v31 <= 4)
          {
            *(this + 9) |= 0x10u;
            *(this + 7) = v31;
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

      else
      {
        if (v7 == 5 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_62;
        }

LABEL_21:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_38;
    }

    if (v8 != 2)
    {
      goto LABEL_21;
    }

    *(this + 9) |= 1u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v33 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v33);
    if (!proto::gnss::Emergency::ClsGpsCellTime::MergePartialFromCodedStream(v14, a2, v19) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v18);
    v20 = *(a2 + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(a2 + 14) = v22;
    }

    v23 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v11 = v23 + 1;
      *(a2 + 1) = v11;
LABEL_38:
      if (v11 >= v9 || (v24 = *v11, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v24;
        v25 = v11 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 9) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v12 = v25 + 1;
        *(a2 + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v27 = *v12, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v27;
          v28 = v12 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 9) |= 4u;
        if (v28 < v9 && *v28 == 32)
        {
          v13 = v28 + 1;
          *(a2 + 1) = v13;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::ByteSize(proto::gnss::Emergency::ClsUtranCellTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::ClsGpsCellTime::ByteSize(v5, a2);
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
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 5);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 6);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v15 = *(this + 7);
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

    v4 = (v16 + v4);
  }

LABEL_34:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::ClsUtranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsUtranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsUtranCellTime::CopyFrom(proto::gnss::Emergency::ClsUtranCellTime *this, const proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::Swap(uint64_t this, proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Plmn::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::Plmn *proto::gnss::Emergency::Plmn::Plmn(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174CA8;
  *(this + 6) = 0;
  proto::gnss::Emergency::Plmn::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Plmn::MergeFrom(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_100090EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Plmn::~Plmn(proto::gnss::Emergency::Plmn *this)
{
  *this = off_100174CA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174CA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174CA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Plmn::default_instance(proto::gnss::Emergency::Plmn *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Plmn::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Plmn::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(proto::gnss::Emergency::Plmn *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 6) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *proto::gnss::Emergency::Plmn::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::Plmn::ByteSize(proto::gnss::Emergency::Plmn *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 6);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void proto::gnss::Emergency::Plmn::CheckTypeAndMergeFrom(proto::gnss::Emergency::Plmn *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Plmn::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Plmn::CopyFrom(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Plmn::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Plmn *proto::gnss::Emergency::Plmn::Swap(proto::gnss::Emergency::Plmn *this, proto::gnss::Emergency::Plmn *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::SessionInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::SessionInfo *proto::gnss::Emergency::SessionInfo::SessionInfo(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174D20;
  *(this + 6) = 0;
  proto::gnss::Emergency::SessionInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SessionInfo::MergeFrom(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 2);
      if (v5 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 16154, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      *(this + 6) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16177, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 4u;
      *(this + 4) = v7;
    }
  }
}

void sub_100091668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SessionInfo::~SessionInfo(proto::gnss::Emergency::SessionInfo *this)
{
  *this = off_100174D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174D20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::SessionInfo::default_instance(proto::gnss::Emergency::SessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SessionInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(proto::gnss::Emergency::SessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_37;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v21 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v9 = v21;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        *(this + 6) |= 1u;
        *(this + 2) = v9;
      }

      v14 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(a2 + 1) = v11;
LABEL_27:
        v20 = 0;
        if (v11 >= v10 || (v15 = *v11, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v15 = v20;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v15 <= 6)
        {
          *(this + 6) |= 2u;
          *(this + 3) = v15;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v16 < v12 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v12 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v17;
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 6) |= 4u;
          if (v18 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_27;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *proto::gnss::Emergency::SessionInfo::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], v4, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::SessionInfo::ByteSize(proto::gnss::Emergency::SessionInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(this + 24))
  {
    v5 = *(this + 2);
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
      v3 = *(this + 6);
      if ((v3 & 2) == 0)
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
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 6);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_24:
  *(this + 5) = v4;
  return v4;
}

void proto::gnss::Emergency::SessionInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::SessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SessionInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SessionInfo::CopyFrom(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SessionInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::SessionInfo *proto::gnss::Emergency::SessionInfo::Swap(proto::gnss::Emergency::SessionInfo *this, proto::gnss::Emergency::SessionInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

double proto::gnss::Emergency::PositionRequest::SharedCtor(proto::gnss::Emergency::PositionRequest *this)
{
  result = 0.0;
  *(this + 68) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::PositionRequest *proto::gnss::Emergency::PositionRequest::PositionRequest(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  *this = off_100174D98;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  proto::gnss::Emergency::PositionRequest::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PositionRequest::MergeFrom(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 20) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 3);
    if (v6 >= 5)
    {
      __assert_rtn("set_method", "GnssEmergencyTypes.pb.h", 16248, "::proto::gnss::Emergency::MethodType_IsValid(value)");
    }

    *(this + 20) |= 2u;
    *(this + 3) = v6;
    v4 = *(a2 + 20);
  }

  if ((v4 & 4) != 0)
  {
    v17 = *(a2 + 4);
    *(this + 20) |= 4u;
    *(this + 4) = v17;
    v4 = *(a2 + 20);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(a2 + 5);
  *(this + 20) |= 8u;
  *(this + 5) = v18;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_41:
    v20 = *(a2 + 7);
    *(this + 20) |= 0x20u;
    *(this + 7) = v20;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_40:
  v19 = *(a2 + 6);
  *(this + 20) |= 0x10u;
  *(this + 6) = v19;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  v21 = *(a2 + 8);
  *(this + 20) |= 0x40u;
  *(this + 8) = v21;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = *(a2 + 9);
    *(this + 20) |= 0x80u;
    *(this + 9) = v7;
    v4 = *(a2 + 20);
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 10);
    *(this + 20) |= 0x100u;
    *(this + 10) = v10;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v11 = *(a2 + 11);
  *(this + 20) |= 0x200u;
  *(this + 11) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(a2 + 12);
  *(this + 20) |= 0x400u;
  *(this + 12) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(a2 + 13);
  *(this + 20) |= 0x800u;
  *(this + 13) = v13;
  v4 = *(a2 + 20);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(a2 + 14);
  *(this + 20) |= 0x1000u;
  *(this + 14) = v14;
  v4 = *(a2 + 20);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 15);
  *(this + 20) |= 0x2000u;
  *(this + 15) = v15;
  v4 = *(a2 + 20);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_35:
  v16 = *(a2 + 16);
  if (v16 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16535, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 20) |= 0x4000u;
  *(this + 16) = v16;
  v4 = *(a2 + 20);
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v8 = *(a2 + 17);
    *(this + 20) |= 0x8000u;
    *(this + 17) = v8;
    v4 = *(a2 + 20);
  }

LABEL_26:
  if ((v4 & 0x10000) != 0)
  {
    v9 = *(a2 + 18);
    *(this + 20) |= 0x10000u;
    *(this + 18) = v9;
  }
}

void sub_10009205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PositionRequest::~PositionRequest(proto::gnss::Emergency::PositionRequest *this)
{
  *this = off_100174D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174D98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::PositionRequest::default_instance(proto::gnss::Emergency::PositionRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PositionRequest::default_instance_;
  if (!proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PositionRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PositionRequest::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PositionRequest::MergePartialFromCodedStream(proto::gnss::Emergency::PositionRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 2) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_48:
            *(this + 20) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v23 = v10 + 1;
              *(a2 + 1) = v23;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_48;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_51:
        v63 = 0;
        if (v23 >= v7 || (v29 = *v23, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v63);
          if (!result)
          {
            return result;
          }

          v29 = v63;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v29 <= 4)
        {
          *(this + 20) |= 2u;
          *(this + 3) = v29;
        }

        v30 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v30 >= v13 || *v30 != 24)
        {
          continue;
        }

        v19 = v30 + 1;
        *(a2 + 1) = v19;
LABEL_61:
        if (v19 >= v13 || (v31 = *v19, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v31;
          v32 = v19 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 20) |= 4u;
        if (v32 >= v13 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(a2 + 1) = v21;
LABEL_69:
        if (v21 >= v13 || (v33 = *v21, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v33;
          v34 = v21 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 20) |= 8u;
        if (v34 >= v13 || *v34 != 40)
        {
          continue;
        }

        v16 = v34 + 1;
        *(a2 + 1) = v16;
LABEL_77:
        if (v16 >= v13 || (v35 = *v16, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v35;
          v36 = v16 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 20) |= 0x10u;
        if (v36 >= v13 || *v36 != 48)
        {
          continue;
        }

        v24 = v36 + 1;
        *(a2 + 1) = v24;
LABEL_85:
        if (v24 >= v13 || (v37 = *v24, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v37;
          v38 = v24 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 20) |= 0x20u;
        if (v38 >= v13 || *v38 != 56)
        {
          continue;
        }

        v26 = v38 + 1;
        *(a2 + 1) = v26;
LABEL_93:
        if (v26 >= v13 || (v39 = *v26, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v39;
          v40 = v26 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 20) |= 0x40u;
        if (v40 >= v13 || *v40 != 64)
        {
          continue;
        }

        v22 = v40 + 1;
        *(a2 + 1) = v22;
LABEL_101:
        if (v22 >= v13 || (v41 = *v22, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v41;
          v42 = v22 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 20) |= 0x80u;
        if (v42 >= v13 || *v42 != 72)
        {
          continue;
        }

        v28 = v42 + 1;
        *(a2 + 1) = v28;
LABEL_109:
        if (v28 >= v13 || (v43 = *v28, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v43;
          v44 = v28 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 20) |= 0x100u;
        if (v44 >= v13 || *v44 != 80)
        {
          continue;
        }

        v18 = v44 + 1;
        *(a2 + 1) = v18;
LABEL_117:
        if (v18 >= v13 || (v45 = *v18, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v45;
          v46 = v18 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 20) |= 0x200u;
        if (v46 >= v13 || *v46 != 88)
        {
          continue;
        }

        v27 = v46 + 1;
        *(a2 + 1) = v27;
LABEL_125:
        if (v27 >= v13 || (v47 = *v27, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v47;
          v48 = v27 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 20) |= 0x400u;
        if (v48 >= v13 || *v48 != 96)
        {
          continue;
        }

        v15 = v48 + 1;
        *(a2 + 1) = v15;
LABEL_133:
        if (v15 >= v13 || (v49 = *v15, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v49;
          v50 = v15 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 20) |= 0x800u;
        if (v50 >= v13 || *v50 != 104)
        {
          continue;
        }

        v17 = v50 + 1;
        *(a2 + 1) = v17;
LABEL_141:
        if (v17 >= v13 || (v51 = *v17, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v51;
          v52 = v17 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 20) |= 0x1000u;
        if (v52 >= v13 || *v52 != 112)
        {
          continue;
        }

        v25 = v52 + 1;
        *(a2 + 1) = v25;
LABEL_149:
        if (v25 >= v13 || (v53 = *v25, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v53;
          v54 = v25 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 20) |= 0x2000u;
        if (v54 >= v13 || *v54 != 120)
        {
          continue;
        }

        v14 = v54 + 1;
        *(a2 + 1) = v14;
LABEL_157:
        v62 = 0;
        if (v14 >= v13 || (v55 = *v14, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v55 = v62;
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v55 <= 6)
        {
          *(this + 20) |= 0x4000u;
          *(this + 16) = v55;
        }

        v56 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v56 < 2 || *v56 != 128 || v56[1] != 1)
        {
          continue;
        }

        v20 = (v56 + 2);
        *(a2 + 1) = v20;
LABEL_168:
        if (v20 >= v11 || (v57 = *v20, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v57;
          v58 = (v20 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 20) |= 0x8000u;
        if (v11 - v58 < 2 || *v58 != 136 || v58[1] != 1)
        {
          continue;
        }

        v12 = (v58 + 2);
        *(a2 + 1) = v12;
LABEL_177:
        if (v12 >= v11 || (v59 = *v12, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v59;
          v60 = v12 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 20) |= 0x10000u;
        if (v60 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v28 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_177;
      default:
LABEL_42:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

int *proto::gnss::Emergency::PositionRequest::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[20];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[20];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], v4, a4);
  v6 = v5[20];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], v4, a4);
  v6 = v5[20];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[14], v4, a4);
  v6 = v5[20];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[15], v4, a4);
  v6 = v5[20];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], v4, a4);
    if ((v5[20] & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, v5[16], v4, a4);
  v6 = v5[20];
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v7 = v5[18];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::PositionRequest::ByteSize(proto::gnss::Emergency::PositionRequest *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 20);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 20);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_66;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

LABEL_66:
  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_74;
  }

LABEL_70:
  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_78;
  }

LABEL_74:
  v28 = *(this + 14);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_54:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_82;
  }

LABEL_78:
  v30 = *(this + 15);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_55:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

LABEL_82:
  v32 = *(this + 16);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 11;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(this + 20);
  }

  else
  {
    v33 = 2;
  }

  v4 = (v33 + v4);
  if ((v3 & 0x8000) == 0)
  {
LABEL_56:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

LABEL_88:
  v34 = *(this + 17);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 2;
    v3 = *(this + 20);
  }

  else
  {
    v35 = 3;
  }

  v4 = (v35 + v4);
  if ((v3 & 0x10000) != 0)
  {
LABEL_92:
    v36 = *(this + 18);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
    }

    else
    {
      v37 = 3;
    }

    v4 = (v37 + v4);
  }

LABEL_96:
  *(this + 19) = v4;
  return v4;
}

void proto::gnss::Emergency::PositionRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::PositionRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PositionRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PositionRequest::CopyFrom(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PositionRequest::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::PositionRequest *proto::gnss::Emergency::PositionRequest::Swap(proto::gnss::Emergency::PositionRequest *this, proto::gnss::Emergency::PositionRequest *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v19;
    v20 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v20;
  }

  return this;
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::UtranGpsTimeMeasured *proto::gnss::Emergency::UtranGpsTimeMeasured::UtranGpsTimeMeasured(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  *this = off_100174E10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      *(this + 7) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(v5, v6);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
      }

      proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(v7, v8);
    }
  }
}

void sub_100093388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::~UtranGpsTimeMeasured(proto::gnss::Emergency::UtranGpsTimeMeasured *this)
{
  *this = off_100174E10;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174E10;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174E10;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[2];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance(proto::gnss::Emergency::UtranGpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::ClsUtranCellTime::Clear(this);
        v2 = *(v1 + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::UtranGpsTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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

      *(this + 7) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v27 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
        {
          return 0;
        }
      }

      else
      {
        v27 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v27);
      if (!proto::gnss::Emergency::ClsUtranCellTime::MergePartialFromCodedStream(v8, a2, v13) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v12);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v28 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v28);
        if (!proto::gnss::Emergency::ClsGpsCellTime::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v22);
        v24 = *(a2 + 14);
        v15 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v15)
        {
          *(a2 + 14) = v25;
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

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::ByteSize(proto::gnss::Emergency::UtranGpsTimeMeasured *this, unsigned int a2)
{
  if (!*(this + 28))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
  }

  v5 = proto::gnss::Emergency::ClsUtranCellTime::ByteSize(v4, a2);
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
  if ((*(this + 7) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::ClsGpsCellTime::ByteSize(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 1);
  }

LABEL_18:
  *(this + 6) = v3;
  return v3;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::CopyFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GeranGpsTimeMeasuredBased *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::GeranGpsTimeMeasuredBased(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174E88;
  proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_100093D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::~GeranGpsTimeMeasuredBased(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this)
{
  *this = off_100174E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174E88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::ByteSize(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
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

LABEL_14:
  *(this + 4) = v4;
  return v4;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::CopyFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GeranGpsTimeMeasuredBased *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::Swap(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::GeranGpsTimeMeasuredAssisted(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174F00;
  proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1000943A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::~GeranGpsTimeMeasuredAssisted(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this)
{
  *this = off_100174F00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174F00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174F00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::ByteSize(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
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

LABEL_14:
  *(this + 4) = v4;
  return v4;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::CopyFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::Swap(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

double proto::gnss::Emergency::GpsTimeMeasured::SharedCtor(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsTimeMeasured *proto::gnss::Emergency::GpsTimeMeasured::GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  *this = off_100174F78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(v7, v8);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      *(this + 9) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
      }

      proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(v9, v10);
    }
  }
}

void sub_100094B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTimeMeasured::~GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  *this = off_100174F78;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174F78;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174F78;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsTimeMeasured::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::default_instance(proto::gnss::Emergency::GpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::UtranGpsTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
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
          goto LABEL_44;
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

      *(this + 9) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v37 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
        {
          return 0;
        }
      }

      else
      {
        v37 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v37);
      if (!proto::gnss::Emergency::UtranGpsTimeMeasured::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_30:
        *(this + 9) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v38 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
          {
            return 0;
          }
        }

        else
        {
          v38 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v38);
        if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v25 = *(a2 + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(a2 + 14) = v26;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2) && *v27 == 26)
        {
          *(a2 + 1) = v27 + 1;
LABEL_44:
          *(this + 9) |= 4u;
          v28 = *(this + 3);
          if (!v28)
          {
            operator new();
          }

          v39 = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v39);
          if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
          v34 = *(a2 + 14);
          v16 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v16)
          {
            *(a2 + 14) = v35;
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
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::ByteSize(proto::gnss::Emergency::GpsTimeMeasured *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(this + 36))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
    }

    v6 = proto::gnss::Emergency::UtranGpsTimeMeasured::ByteSize(v5, a2);
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
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
    }

    v10 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::ByteSize(v9, a2);
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
    v3 = *(this + 9);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
    }

    v14 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::ByteSize(v13, a2);
    v16 = v14;
    if (v14 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_25:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTimeMeasured::CopyFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GpsTimeMeasuredParams *proto::gnss::Emergency::GpsTimeMeasuredParams::GpsTimeMeasuredParams(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174FF0;
  *(this + 6) = 0;
  proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 6)
      {
        __assert_rtn("set_gps_time_measured_type", "GnssEmergencyTypes.pb.h", 16920, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
      }

      proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(v6, v7);
    }
  }
}

void sub_100095768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::~GpsTimeMeasuredParams(proto::gnss::Emergency::GpsTimeMeasuredParams *this)
{
  *this = off_100174FF0;
  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsTimeMeasuredParams::~GpsTimeMeasuredParams(this);

  operator delete();
}

void *proto::gnss::Emergency::GpsTimeMeasuredParams::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance(proto::gnss::Emergency::GpsTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::GpsTimeMeasured::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTimeMeasuredParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
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

        if (v7 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v21 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v9 = v21;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v9;
      }

      v11 = *(a2 + 1);
    }

    while (v11 >= *(a2 + 2) || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_23:
    *(this + 6) |= 2u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v22 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v14 = *(a2 + 14);
    v15 = *(a2 + 15);
    *(a2 + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
    if (!proto::gnss::Emergency::GpsTimeMeasured::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
    v18 = *(a2 + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(a2 + 14) = v20;
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

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::ByteSize(proto::gnss::Emergency::GpsTimeMeasuredParams *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
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
        if ((*(this + 6) & 2) == 0)
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
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::GpsTimeMeasured::ByteSize(v6, a2);
    v9 = v7;
    if (v7 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::CopyFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::Swap(uint64_t this, proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTOD::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GpsTOD *proto::gnss::Emergency::GpsTOD::GpsTOD(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175068;
  *(this + 6) = 0;
  proto::gnss::Emergency::GpsTOD::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTOD::MergeFrom(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_100095FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTOD::~GpsTOD(proto::gnss::Emergency::GpsTOD *this)
{
  *this = off_100175068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsTOD::default_instance(proto::gnss::Emergency::GpsTOD *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTOD::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTOD::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTOD *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 6) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *proto::gnss::Emergency::GpsTOD::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::GpsTOD::ByteSize(proto::gnss::Emergency::GpsTOD *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 6);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsTOD::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTOD *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTOD::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTOD::CopyFrom(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTOD::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsTOD *proto::gnss::Emergency::GpsTOD::Swap(proto::gnss::Emergency::GpsTOD *this, proto::gnss::Emergency::GpsTOD *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

double proto::gnss::Emergency::LocationInfo::SharedCtor(proto::gnss::Emergency::LocationInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::LocationInfo *proto::gnss::Emergency::LocationInfo::LocationInfo(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  *this = off_1001750E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::LocationInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::LocationInfo::MergeFrom(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v8 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v8;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 3);
    *(this + 10) |= 2u;
    *(this + 3) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 4);
    *(this + 10) |= 4u;
    *(this + 4) = v10;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_20:
    v11 = *(a2 + 5);
    if (v11 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 17125, "::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(this + 10) |= 8u;
    *(this + 5) = v11;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v5;
    v4 = *(a2 + 10);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      *(this + 10) |= 0x20u;
      v6 = *(this + 3);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 3);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
      }

      proto::gnss::Emergency::GpsTOD::MergeFrom(v6, v7);
    }
  }
}

void sub_100096830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LocationInfo::~LocationInfo(proto::gnss::Emergency::LocationInfo *this)
{
  *this = off_1001750E0;
  if (proto::gnss::Emergency::LocationInfo::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::LocationInfo::~LocationInfo(this);

  operator delete();
}

void *proto::gnss::Emergency::LocationInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::LocationInfo::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocationInfo::default_instance(proto::gnss::Emergency::LocationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LocationInfo::default_instance_;
  if (!proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LocationInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LocationInfo::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::LocationInfo::MergePartialFromCodedStream(proto::gnss::Emergency::LocationInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 10) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v16 = v14 + 1;
            *(a2 + 1) = v16;
            goto LABEL_35;
          }
        }

        else if (v7 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_35:
          if (v16 >= v9 || (v20 = *v16, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v20;
            v21 = v16 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 10) |= 2u;
          if (v21 < v9 && *v21 == 24)
          {
            v10 = v21 + 1;
            *(a2 + 1) = v10;
LABEL_43:
            if (v10 >= v9 || (v22 = *v10, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v22;
              v23 = v10 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 10) |= 4u;
            if (v23 < v9 && *v23 == 32)
            {
              v15 = v23 + 1;
              *(a2 + 1) = v15;
LABEL_51:
              v37 = 0;
              if (v15 >= v9 || (v24 = *v15, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
                if (!result)
                {
                  return result;
                }

                v24 = v37;
              }

              else
              {
                *(a2 + 1) = v15 + 1;
              }

              if (v24 <= 3)
              {
                *(this + 10) |= 8u;
                *(this + 5) = v24;
              }

              v25 = *(a2 + 1);
              v17 = *(a2 + 2);
              if (v25 < v17 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_61;
              }
            }
          }
        }

        else
        {
          if (v7 == 3 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_43;
          }

LABEL_26:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) == 0)
        {
          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v7 != 5)
      {
        if (v7 == 6 && v8 == 2)
        {
          v11 = *(this + 10);
          goto LABEL_69;
        }

        goto LABEL_26;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v18 = *(a2 + 1);
      v17 = *(a2 + 2);
LABEL_61:
      if (v18 >= v17 || (v26 = *v18, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v17 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v26;
        v27 = v18 + 1;
        *(a2 + 1) = v27;
      }

      v11 = *(this + 10) | 0x10;
      *(this + 10) = v11;
    }

    while (v27 >= v17 || *v27 != 50);
    *(a2 + 1) = v27 + 1;
LABEL_69:
    *(this + 10) = v11 | 0x20;
    v28 = *(this + 3);
    if (!v28)
    {
      operator new();
    }

    v38 = 0;
    v29 = *(a2 + 1);
    if (v29 >= *(a2 + 2) || *v29 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v29;
      *(a2 + 1) = v29 + 1;
    }

    v30 = *(a2 + 14);
    v31 = *(a2 + 15);
    *(a2 + 14) = v30 + 1;
    if (v30 >= v31)
    {
      return 0;
    }

    v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v38);
    if (!proto::gnss::Emergency::GpsTOD::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
    v34 = *(a2 + 14);
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      *(a2 + 14) = v36;
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

uint64_t proto::gnss::Emergency::LocationInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::LocationInfo::ByteSize(proto::gnss::Emergency::LocationInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (*(this + 40))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v12 = *(this + 8);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(this + 10);
      }

      else
      {
        v13 = 2;
      }

      v4 = (v13 + v4);
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
  }

  v15 = proto::gnss::Emergency::GpsTOD::ByteSize(v14, a2);
  v17 = v15;
  if (v15 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
LABEL_39:
  *(this + 9) = v4;
  return v4;
}

void proto::gnss::Emergency::LocationInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::LocationInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LocationInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LocationInfo::CopyFrom(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LocationInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::LocationInfo::Swap(uint64_t this, proto::gnss::Emergency::LocationInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    LODWORD(v7) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v7;
    LODWORD(v7) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v7;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CellInfo *proto::gnss::Emergency::CellInfo::CellInfo(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  *this = off_100175158;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::CellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellInfo::MergeFrom(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v6;
    v4 = *(a2 + 8);
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
    v7 = *(a2 + 6);
    *(this + 8) |= 4u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(this + 8) |= 8u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
    }

    proto::gnss::Emergency::Plmn::MergeFrom(v8, v9);
  }
}

void sub_100097438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellInfo::~CellInfo(proto::gnss::Emergency::CellInfo *this)
{
  *this = off_100175158;
  if (proto::gnss::Emergency::CellInfo::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::CellInfo::~CellInfo(this);

  operator delete();
}

void *proto::gnss::Emergency::CellInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellInfo::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::default_instance(proto::gnss::Emergency::CellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::CellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
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

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_20;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 8) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_29:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 8) |= 2u;
            if (v18 < v9 && *v18 == 24)
            {
              v15 = v18 + 1;
              *(a2 + 1) = v15;
              goto LABEL_37;
            }
          }
        }

        else
        {
          if (v7 == 2 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_29;
          }

LABEL_20:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(this + 8);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_37:
      if (v15 >= v9 || (v19 = *v15, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v19;
        v20 = v15 + 1;
        *(a2 + 1) = v20;
      }

      v11 = *(this + 8) | 4;
      *(this + 8) = v11;
    }

    while (v20 >= v9 || *v20 != 34);
    *(a2 + 1) = v20 + 1;
LABEL_45:
    *(this + 8) = v11 | 8;
    v21 = *(this + 2);
    if (!v21)
    {
      operator new();
    }

    v30 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
    if (!proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
    v27 = *(a2 + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(a2 + 14) = v29;
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

uint64_t proto::gnss::Emergency::CellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::CellInfo::ByteSize(proto::gnss::Emergency::CellInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (*(this + 32))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 8);
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
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 6);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 8);
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

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
  }

  v11 = proto::gnss::Emergency::Plmn::ByteSize(v10, a2);
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
LABEL_27:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::Emergency::CellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellInfo::CopyFrom(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellInfo::Swap(uint64_t this, proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v5;
  }

  return this;
}

double proto::gnss::Emergency::UtranGanssTimeMeasured::SharedCtor(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::UtranGanssTimeMeasured *proto::gnss::Emergency::UtranGanssTimeMeasured::UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  *this = off_1001751D0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v6;
    v4 = *(a2 + 9);
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
    v7 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(this + 9) |= 8u;
    v8 = *(this + 3);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 3);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
    }

    proto::gnss::Emergency::CellInfo::MergeFrom(v8, v9);
  }
}

void sub_100097E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::~UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  *this = off_1001751D0;
  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::UtranGanssTimeMeasured::~UtranGanssTimeMeasured(this);

  operator delete();
}

void *proto::gnss::Emergency::UtranGanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance(proto::gnss::Emergency::UtranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::CellInfo::Clear(this);
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::UtranGanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
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

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_20;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 9) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_29:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 9) |= 2u;
            if (v18 < v9 && *v18 == 24)
            {
              v15 = v18 + 1;
              *(a2 + 1) = v15;
              goto LABEL_37;
            }
          }
        }

        else
        {
          if (v7 == 2 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_29;
          }

LABEL_20:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(this + 9);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_37:
      if (v15 >= v9 || (v19 = *v15, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v19;
        v20 = v15 + 1;
        *(a2 + 1) = v20;
      }

      v11 = *(this + 9) | 4;
      *(this + 9) = v11;
    }

    while (v20 >= v9 || *v20 != 34);
    *(a2 + 1) = v20 + 1;
LABEL_45:
    *(this + 9) = v11 | 8;
    v21 = *(this + 3);
    if (!v21)
    {
      operator new();
    }

    v30 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
    if (!proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
    v27 = *(a2 + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(a2 + 14) = v29;
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

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::ByteSize(proto::gnss::Emergency::UtranGanssTimeMeasured *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_24;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
  }

  v10 = proto::gnss::Emergency::CellInfo::ByteSize(v9, a2);
  v12 = v10;
  if (v10 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
LABEL_24:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::CopyFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::GeranGanssTimeMeasured *proto::gnss::Emergency::GeranGanssTimeMeasured::GeranGanssTimeMeasured(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  *this = off_100175248;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v6;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_10:
    *(this + 7) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::CellInfo::MergeFrom(v7, v8);
  }
}

void sub_1000988B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::~GeranGanssTimeMeasured(proto::gnss::Emergency::GeranGanssTimeMeasured *this)
{
  *this = off_100175248;
  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GeranGanssTimeMeasured::~GeranGanssTimeMeasured(this);

  operator delete();
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance(proto::gnss::Emergency::GeranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = proto::gnss::Emergency::CellInfo::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(a2 + 1) = v5 + 1;
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

          if (v8 == 2)
          {
            v14 = *(this + 7);
            goto LABEL_33;
          }

LABEL_16:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 7) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_25;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_25:
      if (v13 >= v9 || (v16 = *v13, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v16;
        v17 = v13 + 1;
        *(a2 + 1) = v17;
      }

      v14 = *(this + 7) | 2;
      *(this + 7) = v14;
    }

    while (v17 >= v9 || *v17 != 26);
    *(a2 + 1) = v17 + 1;
LABEL_33:
    *(this + 7) = v14 | 4;
    v18 = *(this + 2);
    if (!v18)
    {
      operator new();
    }

    v27 = 0;
    v19 = *(a2 + 1);
    if (v19 >= *(a2 + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v19;
      *(a2 + 1) = v19 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v27);
    if (!proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v22);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
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

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::ByteSize(proto::gnss::Emergency::GeranGanssTimeMeasured *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 7);
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::CellInfo::ByteSize(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::CopyFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
  }

  return this;
}

double proto::gnss::Emergency::ClsEutranCell::SharedCtor(proto::gnss::Emergency::ClsEutranCell *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ClsEutranCell *proto::gnss::Emergency::ClsEutranCell::ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  *this = off_1001752C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsEutranCell::MergeFrom(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 15) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 15);
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

  v8 = *(a2 + 3);
  *(this + 15) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 15);
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
  v9 = *(a2 + 4);
  *(this + 15) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 15);
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
  v10 = *(a2 + 5);
  *(this + 15) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v13 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v13;
    v4 = *(a2 + 15);
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

LABEL_23:
  *(this + 15) |= 0x10u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  proto::gnss::Emergency::Plmn::MergeFrom(v11, v12);
  v4 = *(a2 + 15);
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
  v14 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v14;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 15) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 11);
    *(this + 15) |= 0x100u;
    *(this + 11) = v15;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 12);
  *(this + 15) |= 0x200u;
  *(this + 12) = v16;
  if ((*(a2 + 15) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 13);
  *(this + 15) |= 0x400u;
  *(this + 13) = v6;
}