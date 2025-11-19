int *proto::gnss::Emergency::GpsAcqElement::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[16];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[16];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], v4, a4);
    if ((v5[16] & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], v4, a4);
  v6 = v5[16];
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::GpsAcqElement::ByteSize(proto::gnss::Emergency::GpsAcqElement *this, unsigned int a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 16);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 16);
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
      v3 = *(this + 16);
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

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_64;
  }

LABEL_60:
  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

LABEL_64:
  v26 = *(this + 13);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x1000) != 0)
  {
LABEL_68:
    v28 = *(this + 14);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 11;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    }

    else
    {
      v29 = 2;
    }

    v4 = (v29 + v4);
  }

LABEL_74:
  *(this + 15) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsAcqElement::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsAcqElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsAcqElement::CopyFrom(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsAcqElement *proto::gnss::Emergency::GpsAcqElement::Swap(proto::gnss::Emergency::GpsAcqElement *this, proto::gnss::Emergency::GpsAcqElement *a2)
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
    v15 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v15;
    v16 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v16;
  }

  return this;
}

void *proto::gnss::Emergency::GpsAcqAssistance::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsAcqAssistance *proto::gnss::Emergency::GpsAcqAssistance::GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  *this = off_100176B20;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, a2);
  return this;
}

void sub_1000C1794(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), *(a2 + 8) + *(this + 8));
  LODWORD(v4) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      proto::gnss::Emergency::GpsAcqElement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 68);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v12 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v12;
    v10 = *(a2 + 17);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_16;
  }

  v13 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v13;
  v10 = *(a2 + 17);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(this + 17) |= 4u;
  v14 = *(this + 2);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 2);
  if (!v15)
  {
    v15 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
  }

  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(v14, v15);
  v10 = *(a2 + 17);
  if ((v10 & 0x10) == 0)
  {
LABEL_18:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    v17 = *(a2 + 13);
    if (v17 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 25317, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    *(this + 17) |= 0x20u;
    *(this + 13) = v17;
    v10 = *(a2 + 17);
    if ((v10 & 0x40) == 0)
    {
LABEL_20:
      if ((v10 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_30:
  v16 = *(a2 + 12);
  *(this + 17) |= 0x10u;
  *(this + 12) = v16;
  v10 = *(a2 + 17);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_33:
  v18 = *(a2 + 14);
  if (v18 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 25340, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x40u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x80) != 0)
  {
LABEL_21:
    v11 = *(a2 + 15);
    *(this + 17) |= 0x80u;
    *(this + 15) = v11;
  }
}

void sub_1000C1B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqAssistance::~GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  *this = off_100176B20;
  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsAcqAssistance::~GpsAcqAssistance(this);

  operator delete();
}

void *proto::gnss::Emergency::GpsAcqAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::default_instance(proto::gnss::Emergency::GpsAcqAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::Clear(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        proto::gnss::Emergency::CellTimeAssistance::Clear(v3);
      }
    }

    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 17) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::GpsAcqAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 > 4)
        {
          if (TagFallback >> 3 > 6)
          {
            if (v7 == 7)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v20 = *(a2 + 2);
                goto LABEL_101;
              }
            }

            else if (v7 == 8 && (TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_111;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_91;
          }

          goto LABEL_34;
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

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v15 >= v9 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v15 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 17) |= 1u;
          if (v17 < v9 && *v17 == 16)
          {
            v10 = v17 + 1;
            *(a2 + 1) = v10;
LABEL_43:
            if (v10 >= v9 || (v23 = *v10, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v23;
              v24 = v10 + 1;
              *(a2 + 1) = v24;
            }

            v19 = *(this + 17) | 2;
            *(this + 17) = v19;
            if (v24 < v9 && *v24 == 26)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v7 == 2 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_43;
          }

LABEL_34:
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
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_34;
      }

      v19 = *(this + 17);
LABEL_51:
      *(this + 17) = v19 | 4;
      v25 = *(this + 2);
      if (!v25)
      {
        operator new();
      }

      v55 = 0;
      v26 = *(a2 + 1);
      if (v26 >= *(a2 + 2) || *v26 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v26;
        *(a2 + 1) = v26 + 1;
      }

      v27 = *(a2 + 14);
      v28 = *(a2 + 15);
      *(a2 + 14) = v27 + 1;
      if (v27 >= v28)
      {
        return 0;
      }

      v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
      if (!proto::gnss::Emergency::CellTimeAssistance::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
      v31 = *(a2 + 14);
      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v32)
      {
        *(a2 + 14) = v33;
      }

      v34 = *(a2 + 1);
      if (v34 < *(a2 + 2) && *v34 == 34)
      {
LABEL_64:
        *(a2 + 1) = v34 + 1;
        goto LABEL_65;
      }
    }

    if (v7 != 4 || v8 != 2)
    {
      goto LABEL_34;
    }

LABEL_65:
    v35 = *(this + 9);
    v36 = *(this + 8);
    if (v36 >= v35)
    {
      if (v35 == *(this + 10))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v35 + 1);
        v35 = *(this + 9);
      }

      *(this + 9) = v35 + 1;
      operator new();
    }

    v37 = *(this + 3);
    *(this + 8) = v36 + 1;
    v38 = *(v37 + 8 * v36);
    v55 = 0;
    v39 = *(a2 + 1);
    if (v39 >= *(a2 + 2) || *v39 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
      {
        return 0;
      }
    }

    else
    {
      v55 = *v39;
      *(a2 + 1) = v39 + 1;
    }

    v40 = *(a2 + 14);
    v41 = *(a2 + 15);
    *(a2 + 14) = v40 + 1;
    if (v40 >= v41)
    {
      return 0;
    }

    v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
    if (!proto::gnss::Emergency::GpsAcqElement::MergePartialFromCodedStream(v38, a2, v43) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v42);
    v44 = *(a2 + 14);
    v32 = __OFSUB__(v44, 1);
    v45 = v44 - 1;
    if (v45 < 0 == v32)
    {
      *(a2 + 14) = v45;
    }

    v34 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v34 < v11)
    {
      v46 = *v34;
      if (v46 == 34)
      {
        goto LABEL_64;
      }

      if (v46 == 40)
      {
        v18 = v34 + 1;
        *(a2 + 1) = v18;
LABEL_83:
        if (v18 >= v11 || (v47 = *v18, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v47;
          v48 = v18 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 17) |= 0x10u;
        if (v48 < v11 && *v48 == 48)
        {
          v12 = v48 + 1;
          *(a2 + 1) = v12;
LABEL_91:
          v55 = 0;
          if (v12 >= v11 || (v49 = *v12, (v49 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
            if (!result)
            {
              return result;
            }

            v49 = v55;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v49 <= 5)
          {
            *(this + 17) |= 0x20u;
            *(this + 13) = v49;
          }

          v50 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v50 < v20 && *v50 == 56)
          {
            v21 = v50 + 1;
            *(a2 + 1) = v21;
LABEL_101:
            v55 = 0;
            if (v21 >= v20 || (v51 = *v21, (v51 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
              if (!result)
              {
                return result;
              }

              v51 = v55;
            }

            else
            {
              *(a2 + 1) = v21 + 1;
            }

            if (v51 <= 6)
            {
              *(this + 17) |= 0x40u;
              *(this + 14) = v51;
            }

            v52 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v52 < v13 && *v52 == 64)
            {
              v14 = v52 + 1;
              *(a2 + 1) = v14;
LABEL_111:
              if (v14 >= v13 || (v53 = *v14, v53 < 0))
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
                v54 = v14 + 1;
                *(a2 + 1) = v54;
              }

              *(this + 17) |= 0x80u;
              if (v54 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 68) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  v9 = *(v5 + 68);
  if ((v9 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
    v9 = *(v5 + 68);
    if ((v9 & 0x20) == 0)
    {
LABEL_15:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x80) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 52), a2, a4);
  v9 = *(v5 + 68);
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v9 & 0x80) == 0)
  {
    return this;
  }

LABEL_21:
  v10 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v10, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::ByteSize(proto::gnss::Emergency::GpsAcqAssistance *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  if (*(this + 68))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 17);
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
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::CellTimeAssistance::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
    v3 = *(this + 17);
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(this + 12);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_30:
  v14 = *(this + 13);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(this + 14);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_42:
    v18 = *(this + 15);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_46:
  v20 = *(this + 8);
  v21 = (v20 + v4);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = proto::gnss::Emergency::GpsAcqElement::ByteSize(*(*(this + 3) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 8));
  }

  *(this + 16) = v21;
  return v21;
}

void proto::gnss::Emergency::GpsAcqAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsAcqAssistance::CopyFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::Swap(uint64_t this, proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 24), (a2 + 24));
    v7 = v3[12];
    v3[12] = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = v3[13];
    v3[13] = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = v3[14];
    v3[14] = *(a2 + 14);
    *(a2 + 14) = v9;
    v10 = v3[15];
    v3[15] = *(a2 + 15);
    *(a2 + 15) = v10;
    v11 = v3[17];
    v3[17] = *(a2 + 17);
    *(a2 + 17) = v11;
    v12 = v3[16];
    v3[16] = *(a2 + 16);
    *(a2 + 16) = v12;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::CellFTAssistanceRequest *proto::gnss::Emergency::CellFTAssistanceRequest::CellFTAssistanceRequest(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  *this = off_100176B98;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 6)
    {
      __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25389, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_1000C29C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellFTAssistanceRequest::~CellFTAssistanceRequest(proto::gnss::Emergency::CellFTAssistanceRequest *this)
{
  *this = off_100176B98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176B98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176B98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::default_instance(proto::gnss::Emergency::CellFTAssistanceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::MergePartialFromCodedStream(proto::gnss::Emergency::CellFTAssistanceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v10 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v10);
        if (!result)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 5)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v8;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::ByteSize(proto::gnss::Emergency::CellFTAssistanceRequest *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
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

  *(this + 3) = result;
  return result;
}

void proto::gnss::Emergency::CellFTAssistanceRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellFTAssistanceRequest::CopyFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::CellFTAssistanceRequest *proto::gnss::Emergency::CellFTAssistanceRequest::Swap(proto::gnss::Emergency::CellFTAssistanceRequest *this, proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

void *proto::gnss::Emergency::CellFTAssistance::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CellFTAssistance *proto::gnss::Emergency::CellFTAssistance::CellFTAssistance(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
{
  *this = off_100176C10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellFTAssistance::MergeFrom(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
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
      if (v5 >= 0xA)
      {
        __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 25416, "::proto::gnss::Result_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 6)
      {
        __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25439, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      *(this + 7) |= 4u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
      }

      proto::gnss::Emergency::CellTimeData::MergeFrom(v7, v8);
    }
  }
}

void sub_1000C3000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellFTAssistance::~CellFTAssistance(proto::gnss::Emergency::CellFTAssistance *this)
{
  *this = off_100176C10;
  if (proto::gnss::Emergency::CellFTAssistance::default_instance_ != this)
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
  proto::gnss::Emergency::CellFTAssistance::~CellFTAssistance(this);

  operator delete();
}

void *proto::gnss::Emergency::CellFTAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellFTAssistance::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::default_instance(proto::gnss::Emergency::CellFTAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellFTAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::CellTimeData::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::CellFTAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_36;
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

        v27 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v10 = v27;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v10 <= 9)
        {
          *(this + 7) |= 1u;
          *(this + 2) = v10;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v14 < v11 && *v14 == 16)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
          goto LABEL_26;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
LABEL_26:
      v26 = 0;
      if (v12 >= v11 || (v15 = *v12, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v15 = v26;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v15 <= 5)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v15;
      }

      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_36:
    *(this + 7) |= 4u;
    v17 = *(this + 2);
    if (!v17)
    {
      operator new();
    }

    v28 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v28);
    if (!proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(v17, a2, v22) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v23 = *(a2 + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
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

uint64_t proto::gnss::Emergency::CellFTAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
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
    v7 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::CellFTAssistance::ByteSize(proto::gnss::Emergency::CellFTAssistance *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(this + 28))
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
      v3 = *(this + 7);
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
    if ((*(this + 28) & 2) == 0)
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
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::CellTimeData::ByteSize(v8, a2);
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

LABEL_26:
  *(this + 6) = v4;
  return v4;
}

void proto::gnss::Emergency::CellFTAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellFTAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellFTAssistance::CopyFrom(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellFTAssistance::Swap(uint64_t this, proto::gnss::Emergency::CellFTAssistance *a2)
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

double proto::gnss::Emergency::NetworkReferenceLocation::SharedCtor(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::NetworkReferenceLocation *proto::gnss::Emergency::NetworkReferenceLocation::NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this, const proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  *this = off_100176C88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::NetworkReferenceLocation::~NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *this = off_100176C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::MergePartialFromCodedStream(proto::gnss::Emergency::NetworkReferenceLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = v22;
          *(this + 15) |= 1u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 17)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_34;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 1)
            {
              goto LABEL_31;
            }

            goto LABEL_38;
          }

          if (v8 != 1)
          {
            goto LABEL_31;
          }

LABEL_34:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = v22;
          *(this + 15) |= 2u;
          v13 = *(a2 + 1);
          if (v13 < *(a2 + 2) && *v13 == 25)
          {
            *(a2 + 1) = v13 + 1;
LABEL_38:
            v22 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v22) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = v22;
            *(this + 15) |= 4u;
            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 33)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_42;
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
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_50;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_58;
        }

        goto LABEL_31;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v22) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v22;
      *(this + 15) |= 8u;
      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 41)
      {
        *(a2 + 1) = v15 + 1;
LABEL_46:
        v22 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v22) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v22;
        *(this + 15) |= 0x10u;
        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v16 < v9 && *v16 == 48)
        {
          v12 = v16 + 1;
          *(a2 + 1) = v12;
LABEL_50:
          if (v12 >= v9 || (v17 = *v12, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 12) = v17;
            v18 = v12 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 15) |= 0x20u;
          if (v18 < v9 && *v18 == 56)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_58:
            if (v10 >= v9 || (v20 = *v10, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 13) = v20;
              v21 = v10 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 15) |= 0x40u;
            if (v21 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 1)
    {
      goto LABEL_46;
    }

LABEL_31:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), v4, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v4, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::ByteSize(proto::gnss::Emergency::NetworkReferenceLocation *this, unsigned int a2)
{
  v3 = *(this + 60);
  if (*(this + 60))
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v6 = *(this + 12);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 15);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }

    if ((v3 & 0x40) != 0)
    {
      v8 = *(this + 13);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      }

      else
      {
        v9 = 2;
      }

      v5 = (v9 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 14) = v5;
  return v5;
}

void proto::gnss::Emergency::NetworkReferenceLocation::CheckTypeAndMergeFrom(proto::gnss::Emergency::NetworkReferenceLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::NetworkReferenceLocation::CopyFrom(proto::gnss::Emergency::NetworkReferenceLocation *this, const proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::NetworkReferenceLocation::Swap(proto::gnss::Emergency::NetworkReferenceLocation *this, proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v10;
  }

  return result;
}

void *proto::gnss::Emergency::NetworkReferenceTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::NetworkReferenceTime *proto::gnss::Emergency::NetworkReferenceTime::NetworkReferenceTime(proto::gnss::Emergency::NetworkReferenceTime *this, const proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  *this = off_100176D00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::NetworkReferenceTime::~NetworkReferenceTime(proto::gnss::Emergency::NetworkReferenceTime *this)
{
  *this = off_100176D00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176D00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176D00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::MergePartialFromCodedStream(proto::gnss::Emergency::NetworkReferenceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_32;
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
LABEL_24:
        if (v13 >= v9 || (v15 = *v13, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v13 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 7) |= 2u;
        if (v16 < v9 && *v16 == 25)
        {
          *(a2 + 1) = v16 + 1;
LABEL_32:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = v17;
          *(this + 7) |= 4u;
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

    if ((TagFallback & 7) == 0)
    {
      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), v4, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::ByteSize(proto::gnss::Emergency::NetworkReferenceTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v7 = *(this + 3);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_14;
  }

  v6 = *(this + 2);
  if (v6 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v3 & 4) != 0)
  {
    result = v4 + 9;
  }

  else
  {
    result = v4;
  }

LABEL_17:
  *(this + 6) = result;
  return result;
}

void proto::gnss::Emergency::NetworkReferenceTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::NetworkReferenceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::NetworkReferenceTime::CopyFrom(proto::gnss::Emergency::NetworkReferenceTime *this, const proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::NetworkReferenceTime::Swap(proto::gnss::Emergency::NetworkReferenceTime *this, proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::Is801VelocityInfo *proto::gnss::Emergency::Is801VelocityInfo::Is801VelocityInfo(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176D78;
  *(this + 6) = 0;
  proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
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

void sub_1000C47D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801VelocityInfo::~Is801VelocityInfo(proto::gnss::Emergency::Is801VelocityInfo *this)
{
  *this = off_100176D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::default_instance(proto::gnss::Emergency::Is801VelocityInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801VelocityInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

int *proto::gnss::Emergency::Is801VelocityInfo::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::Is801VelocityInfo::ByteSize(proto::gnss::Emergency::Is801VelocityInfo *this, unsigned int a2)
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

void proto::gnss::Emergency::Is801VelocityInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801VelocityInfo::CopyFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801VelocityInfo *proto::gnss::Emergency::Is801VelocityInfo::Swap(proto::gnss::Emergency::Is801VelocityInfo *this, proto::gnss::Emergency::Is801VelocityInfo *a2)
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

uint64_t proto::gnss::Emergency::Is801ClockInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::Is801ClockInfo *proto::gnss::Emergency::Is801ClockInfo::Is801ClockInfo(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176DF0;
  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801ClockInfo::MergeFrom(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
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

void sub_1000C4F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801ClockInfo::~Is801ClockInfo(proto::gnss::Emergency::Is801ClockInfo *this)
{
  *this = off_100176DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::default_instance(proto::gnss::Emergency::Is801ClockInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801ClockInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::Is801ClockInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::Is801ClockInfo::ByteSize(proto::gnss::Emergency::Is801ClockInfo *this, unsigned int a2)
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

void proto::gnss::Emergency::Is801ClockInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801ClockInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801ClockInfo::CopyFrom(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801ClockInfo *proto::gnss::Emergency::Is801ClockInfo::Swap(proto::gnss::Emergency::Is801ClockInfo *this, proto::gnss::Emergency::Is801ClockInfo *a2)
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

uint64_t proto::gnss::Emergency::Is801HeightInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::Is801HeightInfo *proto::gnss::Emergency::Is801HeightInfo::Is801HeightInfo(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176E68;
  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801HeightInfo::MergeFrom(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
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

void sub_1000C5580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801HeightInfo::~Is801HeightInfo(proto::gnss::Emergency::Is801HeightInfo *this)
{
  *this = off_100176E68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176E68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176E68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::default_instance(proto::gnss::Emergency::Is801HeightInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801HeightInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::Is801HeightInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::Is801HeightInfo::ByteSize(proto::gnss::Emergency::Is801HeightInfo *this, unsigned int a2)
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

void proto::gnss::Emergency::Is801HeightInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801HeightInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801HeightInfo::CopyFrom(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801HeightInfo *proto::gnss::Emergency::Is801HeightInfo::Swap(proto::gnss::Emergency::Is801HeightInfo *this, proto::gnss::Emergency::Is801HeightInfo *a2)
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

double proto::gnss::Emergency::Is801LocationInd::SharedCtor(proto::gnss::Emergency::Is801LocationInd *this)
{
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

proto::gnss::Emergency::Is801LocationInd *proto::gnss::Emergency::Is801LocationInd::Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  *this = off_100176EE0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801LocationInd::MergeFrom(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v8 = *(a2 + 2);
      *(this + 16) |= 1u;
      *(this + 2) = v8;
      v4 = *(a2 + 16);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 3);
    *(this + 16) |= 2u;
    *(this + 3) = v9;
    v4 = *(a2 + 16);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    v10 = *(a2 + 4);
    *(this + 16) |= 4u;
    *(this + 4) = v10;
    v4 = *(a2 + 16);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v11 = *(a2 + 5);
    *(this + 16) |= 8u;
    *(this + 5) = v11;
    v4 = *(a2 + 16);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = *(a2 + 6);
    *(this + 16) |= 0x10u;
    *(this + 6) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_29:
    v13 = *(a2 + 7);
    if (v13 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 26012, "::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(this + 16) |= 0x20u;
    *(this + 7) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = *(a2 + 56);
    *(this + 16) |= 0x40u;
    *(this + 56) = v5;
    v4 = *(a2 + 16);
LABEL_12:
    if ((v4 & 0x80) != 0)
    {
      *(this + 16) |= 0x80u;
      v6 = *(this + 4);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 4);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
      }

      proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(v6, v7);
      v4 = *(a2 + 16);
    }
  }

  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 57);
    *(this + 16) |= 0x100u;
    *(this + 57) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_38:
      v17 = *(a2 + 58);
      *(this + 16) |= 0x400u;
      *(this + 58) = v17;
      if ((*(a2 + 16) & 0x800) == 0)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(this + 16) |= 0x200u;
  v15 = *(this + 5);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 5);
  if (!v16)
  {
    v16 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
  }

  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(v15, v16);
  v4 = *(a2 + 16);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v4 & 0x800) == 0)
  {
    return;
  }

LABEL_39:
  *(this + 16) |= 0x800u;
  v18 = *(this + 6);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 6);
  if (!v19)
  {
    v19 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
  }

  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(v18, v19);
}

void sub_1000C5EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801LocationInd::~Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this)
{
  *this = off_100176EE0;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176EE0;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176EE0;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::Is801LocationInd::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::Is801LocationInd::default_instance_ != this)
  {
    v1 = this;
    v2 = this[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[6];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::default_instance(proto::gnss::Emergency::Is801LocationInd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  if (!proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801LocationInd::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v1 & 0x80) != 0)
    {
      v2 = *(this + 32);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 64);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 57) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 64);
      }
    }

    *(this + 58) = 0;
    if ((v1 & 0x800) != 0)
    {
      v4 = *(this + 48);
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

  *(this + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::MergePartialFromCodedStream(proto::gnss::Emergency::Is801LocationInd *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (TagFallback >> 3 > 6)
            {
              break;
            }

            if (TagFallback >> 3 > 3)
            {
              if (v7 == 4)
              {
                if ((TagFallback & 7) == 0)
                {
                  v20 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_71;
                }
              }

              else if (v7 == 5)
              {
                if ((TagFallback & 7) == 0)
                {
                  v24 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_79;
                }
              }

              else if (v7 == 6 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_87;
              }

              goto LABEL_46;
            }

            if (v7 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v15 >= v9 || (v16 = *v15, v16 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 2) = v16;
                v17 = v15 + 1;
                *(a2 + 1) = v17;
              }

              *(this + 16) |= 1u;
              if (v17 < v9 && *v17 == 16)
              {
                v22 = v17 + 1;
                *(a2 + 1) = v22;
                goto LABEL_55;
              }
            }

            else if (v7 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
LABEL_55:
              if (v22 >= v9 || (v28 = *v22, v28 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v29 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v28;
                v29 = v22 + 1;
                *(a2 + 1) = v29;
              }

              *(this + 16) |= 2u;
              if (v29 < v9 && *v29 == 24)
              {
                v10 = v29 + 1;
                *(a2 + 1) = v10;
LABEL_63:
                if (v10 >= v9 || (v30 = *v10, v30 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v31 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v30;
                  v31 = v10 + 1;
                  *(a2 + 1) = v31;
                }

                *(this + 16) |= 4u;
                if (v31 < v9 && *v31 == 32)
                {
                  v20 = v31 + 1;
                  *(a2 + 1) = v20;
LABEL_71:
                  if (v20 >= v9 || (v32 = *v20, v32 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                    if (!result)
                    {
                      return result;
                    }

                    v33 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 5) = v32;
                    v33 = v20 + 1;
                    *(a2 + 1) = v33;
                  }

                  *(this + 16) |= 8u;
                  if (v33 < v9 && *v33 == 40)
                  {
                    v24 = v33 + 1;
                    *(a2 + 1) = v24;
LABEL_79:
                    if (v24 >= v9 || (v34 = *v24, v34 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                      if (!result)
                      {
                        return result;
                      }

                      v35 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 6) = v34;
                      v35 = v24 + 1;
                      *(a2 + 1) = v35;
                    }

                    *(this + 16) |= 0x10u;
                    if (v35 < v9 && *v35 == 48)
                    {
                      v13 = v35 + 1;
                      *(a2 + 1) = v13;
LABEL_87:
                      v71 = 0;
                      if (v13 >= v9 || (v36 = *v13, (v36 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71);
                        if (!result)
                        {
                          return result;
                        }

                        v36 = v71;
                      }

                      else
                      {
                        *(a2 + 1) = v13 + 1;
                      }

                      if (v36 <= 3)
                      {
                        *(this + 16) |= 0x20u;
                        *(this + 7) = v36;
                      }

                      v37 = *(a2 + 1);
                      v18 = *(a2 + 2);
                      if (v37 < v18 && *v37 == 56)
                      {
                        v19 = v37 + 1;
                        *(a2 + 1) = v19;
LABEL_97:
                        v71 = 0;
                        if (v19 >= v18 || (v38 = *v19, (v38 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71);
                          if (!result)
                          {
                            return result;
                          }

                          v38 = v71;
                          v39 = *(a2 + 1);
                          v18 = *(a2 + 2);
                        }

                        else
                        {
                          v39 = v19 + 1;
                          *(a2 + 1) = v39;
                        }

                        *(this + 56) = v38 != 0;
                        v23 = *(this + 16) | 0x40;
                        *(this + 16) = v23;
                        if (v39 < v18 && *v39 == 66)
                        {
                          *(a2 + 1) = v39 + 1;
                          goto LABEL_105;
                        }
                      }
                    }
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
                goto LABEL_63;
              }

LABEL_46:
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

          if (TagFallback >> 3 > 9)
          {
            break;
          }

          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v18 = *(a2 + 2);
              goto LABEL_97;
            }

            goto LABEL_46;
          }

          if (v7 != 8)
          {
            if (v7 == 9 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_119;
            }

            goto LABEL_46;
          }

          if (v8 != 2)
          {
            goto LABEL_46;
          }

          v23 = *(this + 16);
LABEL_105:
          *(this + 16) = v23 | 0x80;
          v40 = *(this + 4);
          if (!v40)
          {
            operator new();
          }

          v71 = 0;
          v41 = *(a2 + 1);
          if (v41 >= *(a2 + 2) || *v41 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71))
            {
              return 0;
            }
          }

          else
          {
            v71 = *v41;
            *(a2 + 1) = v41 + 1;
          }

          v42 = *(a2 + 14);
          v43 = *(a2 + 15);
          *(a2 + 14) = v42 + 1;
          if (v42 >= v43)
          {
            return 0;
          }

          v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v71);
          if (!proto::gnss::Emergency::Is801VelocityInfo::MergePartialFromCodedStream(v40, a2, v45) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
          v46 = *(a2 + 14);
          v47 = __OFSUB__(v46, 1);
          v48 = v46 - 1;
          if (v48 < 0 == v47)
          {
            *(a2 + 14) = v48;
          }

          v49 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v49 < v11 && *v49 == 72)
          {
            v12 = v49 + 1;
            *(a2 + 1) = v12;
LABEL_119:
            v71 = 0;
            if (v12 >= v11 || (v50 = *v12, (v50 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71);
              if (!result)
              {
                return result;
              }

              v50 = v71;
              v51 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v51 = v12 + 1;
              *(a2 + 1) = v51;
            }

            *(this + 57) = v50 != 0;
            v21 = *(this + 16) | 0x100;
            *(this + 16) = v21;
            if (v51 < v11 && *v51 == 82)
            {
              *(a2 + 1) = v51 + 1;
              goto LABEL_127;
            }
          }
        }

        if (v7 != 10)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_46;
        }

        v21 = *(this + 16);
LABEL_127:
        *(this + 16) = v21 | 0x200;
        v52 = *(this + 5);
        if (!v52)
        {
          operator new();
        }

        v71 = 0;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71))
          {
            return 0;
          }
        }

        else
        {
          v71 = *v53;
          *(a2 + 1) = v53 + 1;
        }

        v54 = *(a2 + 14);
        v55 = *(a2 + 15);
        *(a2 + 14) = v54 + 1;
        if (v54 >= v55)
        {
          return 0;
        }

        v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v71);
        if (!proto::gnss::Emergency::Is801ClockInfo::MergePartialFromCodedStream(v52, a2, v57) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v56);
        v58 = *(a2 + 14);
        v47 = __OFSUB__(v58, 1);
        v59 = v58 - 1;
        if (v59 < 0 == v47)
        {
          *(a2 + 14) = v59;
        }

        v60 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v60 < v25 && *v60 == 88)
        {
          v26 = v60 + 1;
          *(a2 + 1) = v26;
          goto LABEL_141;
        }
      }

      if (v7 != 11)
      {
        if (v7 == 12 && v8 == 2)
        {
          v14 = *(this + 16);
          goto LABEL_149;
        }

        goto LABEL_46;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v26 = *(a2 + 1);
      v25 = *(a2 + 2);
LABEL_141:
      v71 = 0;
      if (v26 >= v25 || (v61 = *v26, (v61 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71);
        if (!result)
        {
          return result;
        }

        v61 = v71;
        v62 = *(a2 + 1);
        v25 = *(a2 + 2);
      }

      else
      {
        v62 = v26 + 1;
        *(a2 + 1) = v62;
      }

      *(this + 58) = v61 != 0;
      v14 = *(this + 16) | 0x400;
      *(this + 16) = v14;
    }

    while (v62 >= v25 || *v62 != 98);
    *(a2 + 1) = v62 + 1;
LABEL_149:
    *(this + 16) = v14 | 0x800;
    v63 = *(this + 6);
    if (!v63)
    {
      operator new();
    }

    v71 = 0;
    v64 = *(a2 + 1);
    if (v64 >= *(a2 + 2) || *v64 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71))
      {
        return 0;
      }
    }

    else
    {
      v71 = *v64;
      *(a2 + 1) = v64 + 1;
    }

    v65 = *(a2 + 14);
    v66 = *(a2 + 15);
    *(a2 + 14) = v65 + 1;
    if (v65 >= v66)
    {
      return 0;
    }

    v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v71);
    if (!proto::gnss::Emergency::Is801HeightInfo::MergePartialFromCodedStream(v63, a2, v68) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v67);
    v69 = *(a2 + 14);
    v47 = __OFSUB__(v69, 1);
    v70 = v69 - 1;
    if (v70 < 0 == v47)
    {
      *(a2 + 14) = v70;
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

uint64_t proto::gnss::Emergency::Is801LocationInd::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 57), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 58), a2, a4);
    if ((*(v5 + 64) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_25:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_29:
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v9, a2, a4);
}

uint64_t proto::gnss::Emergency::Is801LocationInd::ByteSize(proto::gnss::Emergency::Is801LocationInd *this, unsigned int a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if (v3)
  {
    v6 = *(this + 2);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 16);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = *(this + 3);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 4);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v11 = *(this + 5);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(this + 6);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 16);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_31:
    v15 = *(this + 7);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_37:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = *(this + 4);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
    }

    v18 = proto::gnss::Emergency::Is801VelocityInfo::ByteSize(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    }

    else
    {
      v20 = 1;
    }

    v5 = (v5 + v19 + v20 + 1);
    v3 = *(this + 16);
  }

LABEL_44:
  if ((v3 & 0xFF00) != 0)
  {
    v21 = ((v3 >> 7) & 2) + v5;
    if ((v3 & 0x200) != 0)
    {
      v22 = *(this + 5);
      if (!v22)
      {
        v22 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
      }

      v23 = proto::gnss::Emergency::Is801ClockInfo::ByteSize(v22, a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 += v24 + v25 + 1;
      v3 = *(this + 16);
    }

    v5 = ((v3 >> 9) & 2) + v21;
    if ((v3 & 0x800) != 0)
    {
      v26 = *(this + 6);
      if (!v26)
      {
        v26 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
      }

      v27 = proto::gnss::Emergency::Is801HeightInfo::ByteSize(v26, a2);
      v29 = v27;
      if (v27 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, v28);
      }

      else
      {
        v30 = 1;
      }

      v5 = (v5 + v29 + v30 + 1);
    }
  }

  *(this + 15) = v5;
  return v5;
}

void proto::gnss::Emergency::Is801LocationInd::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801LocationInd *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801LocationInd::CopyFrom(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Is801LocationInd::Swap(uint64_t this, proto::gnss::Emergency::Is801LocationInd *a2)
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
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    LOBYTE(v7) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    LOBYTE(v8) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LOBYTE(v9) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v10;
    LODWORD(v10) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v10;
    LODWORD(v10) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v10;
  }

  return this;
}

double proto::gnss::Emergency::MeasurementReportWithEstimate::SharedCtor(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

proto::gnss::Emergency::MeasurementReportWithEstimate *proto::gnss::Emergency::MeasurementReportWithEstimate::MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  *this = off_100176F58;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 2);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 26231, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(this + 13) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 13);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 13) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
  }

  proto::gnss::Emergency::SessionInfo::MergeFrom(v8, v9);
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    *(this + 13) |= 0x10u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
    }

    proto::gnss::Emergency::Is801LocationInd::MergeFrom(v12, v13);
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(this + 13) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
  }

  proto::gnss::Emergency::GpsMeasurements::MergeFrom(v10, v11);
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v14 = *(a2 + 10);
  if (v14 >= 4)
  {
    __assert_rtn("set_aflt_action", "GnssEmergencyTypes.pb.h", 26402, "::proto::gnss::Emergency::AfltAction_IsValid(value)");
  }

  *(this + 13) |= 0x20u;
  *(this + 10) = v14;
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_13:
    v6 = *(a2 + 44);
    *(this + 13) |= 0x40u;
    *(this + 44) = v6;
  }
}

void sub_1000C73B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::~MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *this = off_100176F58;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176F58;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176F58;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[4];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance(proto::gnss::Emergency::MeasurementReportWithEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(this + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::GpsMeasurements::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = proto::gnss::Emergency::Is801LocationInd::Clear(this);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::MergePartialFromCodedStream(proto::gnss::Emergency::MeasurementReportWithEstimate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v54 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
            if (!result)
            {
              return result;
            }

            v13 = v54;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 <= 8)
          {
            *(this + 13) |= 1u;
            *(this + 2) = v13;
          }

          v19 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v19 < v16 && *v19 == 16)
          {
            v17 = v19 + 1;
            *(a2 + 1) = v17;
            goto LABEL_41;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_30;
            }

            v9 = *(this + 13);
            goto LABEL_49;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v16 = *(a2 + 2);
LABEL_41:
          if (v17 >= v16 || (v20 = *v17, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v16 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v20;
            v21 = v17 + 1;
            *(a2 + 1) = v21;
          }

          v9 = *(this + 13) | 2;
          *(this + 13) = v9;
          if (v21 < v16 && *v21 == 26)
          {
            *(a2 + 1) = v21 + 1;
LABEL_49:
            *(this + 13) = v9 | 4;
            v22 = *(this + 2);
            if (!v22)
            {
              operator new();
            }

            v54 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
              {
                return 0;
              }
            }

            else
            {
              v54 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            v24 = *(a2 + 14);
            v25 = *(a2 + 15);
            *(a2 + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
            if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
            v28 = *(a2 + 14);
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v30 < 0 == v29)
            {
              *(a2 + 14) = v30;
            }

            v31 = *(a2 + 1);
            if (v31 < *(a2 + 2) && *v31 == 34)
            {
              *(a2 + 1) = v31 + 1;
              goto LABEL_63;
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
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_101;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_63:
      *(this + 13) |= 8u;
      v32 = *(this + 3);
      if (!v32)
      {
        operator new();
      }

      v54 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
        {
          return 0;
        }
      }

      else
      {
        v54 = *v33;
        *(a2 + 1) = v33 + 1;
      }

      v34 = *(a2 + 14);
      v35 = *(a2 + 15);
      *(a2 + 14) = v34 + 1;
      if (v34 >= v35)
      {
        return 0;
      }

      v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
      if (!proto::gnss::Emergency::GpsMeasurements::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
      v38 = *(a2 + 14);
      v29 = __OFSUB__(v38, 1);
      v39 = v38 - 1;
      if (v39 < 0 == v29)
      {
        *(a2 + 14) = v39;
      }

      v40 = *(a2 + 1);
      if (v40 < *(a2 + 2) && *v40 == 42)
      {
        *(a2 + 1) = v40 + 1;
LABEL_77:
        *(this + 13) |= 0x10u;
        v41 = *(this + 4);
        if (!v41)
        {
          operator new();
        }

        v54 = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
          {
            return 0;
          }
        }

        else
        {
          v54 = *v42;
          *(a2 + 1) = v42 + 1;
        }

        v43 = *(a2 + 14);
        v44 = *(a2 + 15);
        *(a2 + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
        if (!proto::gnss::Emergency::Is801LocationInd::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
        v47 = *(a2 + 14);
        v29 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v29)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v49 < v14 && *v49 == 48)
        {
          v15 = v49 + 1;
          *(a2 + 1) = v15;
LABEL_91:
          v54 = 0;
          if (v15 >= v14 || (v50 = *v15, (v50 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
            if (!result)
            {
              return result;
            }

            v50 = v54;
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v50 <= 3)
          {
            *(this + 13) |= 0x20u;
            *(this + 10) = v50;
          }

          v51 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v51 < v10 && *v51 == 56)
          {
            v11 = v51 + 1;
            *(a2 + 1) = v11;
LABEL_101:
            v54 = 0;
            if (v11 >= v10 || (v52 = *v11, (v52 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
              if (!result)
              {
                return result;
              }

              v52 = v54;
              v53 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v53 = v11 + 1;
              *(a2 + 1) = v53;
            }

            *(this + 44) = v52 != 0;
            *(this + 13) |= 0x40u;
            if (v53 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_77;
    }

LABEL_30:
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

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_21:
  v10 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v10, a2, a4);
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::ByteSize(proto::gnss::Emergency::MeasurementReportWithEstimate *this, unsigned int a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 13);
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v7 = *(this + 3);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
LABEL_17:
    if ((v3 & 4) != 0)
    {
      v9 = *(this + 2);
      if (!v9)
      {
        v9 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
      }

      v10 = proto::gnss::Emergency::SessionInfo::ByteSize(v9, a2);
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
      v3 = *(this + 13);
      if ((v3 & 8) == 0)
      {
LABEL_19:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
    }

    v14 = proto::gnss::Emergency::GpsMeasurements::ByteSize(v13, a2);
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
    v3 = *(this + 13);
    if ((v3 & 0x10) == 0)
    {
LABEL_20:
      if ((v3 & 0x20) == 0)
      {
LABEL_46:
        result = ((v3 >> 5) & 2) + v4;
        goto LABEL_47;
      }

LABEL_40:
      v21 = *(this + 10);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v22 = 2;
      }

      v4 += v22;
      goto LABEL_46;
    }

LABEL_34:
    v17 = *(this + 4);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
    }

    v18 = proto::gnss::Emergency::Is801LocationInd::ByteSize(v17, a2);
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
    v3 = *(this + 13);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_47:
  *(this + 12) = result;
  return result;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::CheckTypeAndMergeFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::CopyFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::Swap(uint64_t this, proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
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
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LOBYTE(v6) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::Cdma1xContext *proto::gnss::Emergency::Cdma1xContext::Cdma1xContext(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
{
  *this = off_100176FD0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Cdma1xContext::~Cdma1xContext(proto::gnss::Emergency::Cdma1xContext *this)
{
  *this = off_100176FD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176FD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176FD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Cdma1xContext::MergePartialFromCodedStream(proto::gnss::Emergency::Cdma1xContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
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

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t proto::gnss::Emergency::Cdma1xContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), v4, a4);
      if ((*(v5 + 16) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), v4, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::Cdma1xContext::ByteSize(proto::gnss::Emergency::Cdma1xContext *this)
{
  LODWORD(v1) = 2 * (*(this + 4) & 1) + (*(this + 4) & 2) + ((*(this + 4) >> 1) & 2) + ((*(this + 4) >> 2) & 2);
  if (*(this + 4))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gnss::Emergency::Cdma1xContext::CheckTypeAndMergeFrom(proto::gnss::Emergency::Cdma1xContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Cdma1xContext::CopyFrom(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Swap(uint64_t this, proto::gnss::Emergency::Cdma1xContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v7;
  }

  return this;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::LteCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v4) = *(a2 + 8);
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

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      proto::gnss::Emergency::LteCellInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_1000C8CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GsmCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v4) = *(a2 + 8);
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

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      proto::gnss::Emergency::GsmCellInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_1000C8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::WcdmaCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v4) = *(a2 + 8);
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

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_1000C8FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GpsEphemeris>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v4) = *(a2 + 8);
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

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      proto::gnss::Emergency::GpsEphemeris::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_1000C919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CLPGnssMeasApi_2eproto(CLP::LogEntry::PrivateData *this)
{
  if (CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8))(CLP::LogEntry::PrivateData::ConstellationId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvId::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_ + 8))(CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_ + 8))(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::PhaseTracking::default_instance_ + 8))(CLP::LogEntry::PrivateData::PhaseTracking::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8))(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FullSvTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::FullSvTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 8))(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8))(CLP::LogEntry::PrivateData::Measurement::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Clock::default_instance_ + 8))(CLP::LogEntry::PrivateData::Clock::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8))(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_ + 8))(CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_ + 8))(CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_ + 8))(CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_ + 8))(CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SfcfXyz::default_instance_ + 8))(CLP::LogEntry::PrivateData::SfcfXyz::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8))(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_);
  }

  result = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    v2 = *(*CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(CLP::LogEntry::PrivateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(void)::already_here & 1) == 0)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/CLPGnssMeasApi.pb.cc", a4);
    operator new();
  }
}

void *CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100177930;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100177930;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::GlonassId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001779A8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001779A8;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *this = off_100177A20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100177A20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvId::SvId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100177A98;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100177A98;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(uint64_t this)
{
  *this = off_100177B10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100177B10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(uint64_t this)
{
  *this = off_100177B88;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_100177B88;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(uint64_t this)
{
  *this = off_100177C00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100177C00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(uint64_t this)
{
  *this = off_100177C78;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_100177C78;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(uint64_t this)
{
  *this = off_100177CF0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100177CF0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(uint64_t this)
{
  *this = off_100177D68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100177D68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(uint64_t this)
{
  *this = off_100177DE0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100177DE0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = off_100177E58;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = off_100177E58;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(uint64_t this)
{
  *this = off_100177ED0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = off_100177ED0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::SyncState::SyncState(CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = off_100177F48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

{
  *this = off_100177F48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::SvTime(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100177FC0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100177FC0;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178038;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178038;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001780B0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001780B0;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = off_100178128;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = off_100178128;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(uint64_t this)
{
  *this = off_1001781A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_1001781A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(uint64_t this)
{
  *this = off_100178218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100178218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178290;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178290;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = off_100178308;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  return result;
}

{
  *this = off_100178308;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::Measurement::Measurement(CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = off_100178380;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

{
  *this = off_100178380;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001783F8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001783F8;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = off_100178470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100178470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = off_1001784E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_1001784E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::Clock::Clock(CLP::LogEntry::PrivateData::Clock *this)
{
  *this = off_100178560;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100178560;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(uint64_t this)
{
  *(this + 40) = 0;
  *this = off_1001785D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = off_1001785D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = off_100178650;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100178650;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = off_1001786C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_1001786C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(void *this)
{
  *this = off_100178740;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100178740;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = off_1001787B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = off_1001787B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::SvInfo::SvInfo(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = off_100178830;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

{
  *this = off_100178830;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(uint64_t this)
{
  *this = off_1001788A8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_1001788A8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178920;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178920;
  *(this + 24) = 0;
  return this;
}

void *CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(void *this)
{
  *this = off_100178998;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100178998;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = off_100178A10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100178A10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(uint64_t this)
{
  *this = off_100178A88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100178A88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(void *this)
{
  *this = off_100178B00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100178B00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *this = off_100178B78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100178B78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = off_100178BF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100178BF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = off_100178C68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = off_100178C68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = off_100178CE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100178CE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178D58;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100178D58;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = off_100178DD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100178DD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = off_100178E48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100178E48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = off_100178EC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100178EC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = off_100178F38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100178F38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = off_100178FB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100178FB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = off_100179028;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

{
  *this = off_100179028;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

void CLP::LogEntry::PrivateData::GlonassId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GlonassId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::ConstellationId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::ConstellationId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::SvId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  if (!CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  }

  *(this + 1) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::SyncState::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  }

  *(v1 + 5) = v6;
  v7 = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v7 = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  }

  *(v1 + 6) = v7;
  v8 = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v8 = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  }

  *(v1 + 7) = v8;
  v9 = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v9 = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  }

  *(v1 + 8) = v9;
  v10 = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v10 = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  }

  *(v1 + 9) = v10;
  v11 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v11 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  *(v1 + 10) = v11;
  return this;
}

void CLP::LogEntry::PrivateData::SignalCorrelationPeak::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(this + 2) = v6;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::MeasurementExtension::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    *(v1 + 3) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
LABEL_6:
    *(v1 + 4) = v3;
    goto LABEL_7;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  *(v1 + 3) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (v3)
  {
    goto LABEL_6;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  *(v1 + 4) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (!v3)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  }

LABEL_7:
  *(v1 + 5) = v3;
  return this;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::Measurement::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  *(v1 + 6) = v4;
  v5 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(v1 + 7) = v5;
  v6 = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  }

  *(v1 + 8) = v6;
  v7 = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v7 = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  }

  *(v1 + 9) = v7;
  v8 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v8 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(v1 + 11) = v8;
  v9 = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v9 = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  }

  *(v1 + 12) = v9;
  return this;
}

void CLP::LogEntry::PrivateData::Clock::InitAsDefaultInstance(CLP::LogEntry::PrivateData::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  }

  *(this + 2) = v5;
  v6 = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  }

  *(this + 3) = v6;
  v7 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v7 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  }

  *(this + 4) = v7;
}

void CLP::LogEntry::PrivateData::MeasurementReport::InitAsDefaultInstance(CLP::LogEntry::PrivateData::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::Clock::default_instance_;
  if (!CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::Clock::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::SvPositionAtTime::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvPositionAtTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  if (!CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  }

  *(this + 2) = v5;
}

void CLP::LogEntry::PrivateData::SvInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  if (!CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  }

  *(this + 16) = v6;
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::LeapSecondInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  }

  *(this + 2) = v5;
}

void CLP::LogEntry::PrivateData::GpsTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GpsTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  }

  *(this + 2) = v6;
}

void CLP::LogEntry::PrivateData::GlonassTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    *(this + 2) = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  }

  else
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    *(this + 2) = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    if (!v5)
    {
      CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v6, v7, v8, v9);
      v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    }
  }

  *(this + 3) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::BeidouTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    *(v1 + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
LABEL_6:
    *(v1 + 3) = v3;
LABEL_7:
    *(v1 + 4) = v3;
    goto LABEL_8;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (v3)
  {
    goto LABEL_6;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 3) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (v3)
  {
    goto LABEL_7;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 4) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!v3)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

LABEL_8:
  *(v1 + 5) = v3;
  return this;
}

void CLP::LogEntry::PrivateData::GalileoTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    *(this + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  else
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    *(this + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    if (!v6)
    {
      CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v7, v8, v9, v10);
      v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    }
  }

  *(this + 3) = v6;
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::NavicTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  *(this + 1) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::TimeConversionInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  }

  *(v1 + 5) = v6;
  return this;
}

void CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::InitAsDefaultInstance(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  if (!CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  }

  *(this + 3) = v6;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  }

  *(v1 + 9) = v4;
  v5 = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  }

  *(v1 + 12) = v5;
  return this;
}

BOOL CLP::LogEntry::PrivateData::SatelliteSystem_IsValid(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  result = 1;
  if (v1 - 4 > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0)
  {
    return v1 < 3;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassSlotInfo *CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100177930;
  CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 4)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v12;
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

void CLP::LogEntry::PrivateData::GlonassSlotInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::CopyFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  }
}

CLP::LogEntry::PrivateData::GlonassSlotInfo *CLP::LogEntry::PrivateData::GlonassSlotInfo::Swap(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
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

uint64_t CLP::LogEntry::PrivateData::GlonassId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassId *CLP::LogEntry::PrivateData::GlonassId::GlonassId(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001779A8;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::GlonassId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::default_instance(CLP::LogEntry::PrivateData::GlonassId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v12 = *(this + 6);
          goto LABEL_22;
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

      v23 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 4) = v10;
      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_22:
    *(this + 6) = v12 | 2;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v24 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v24);
    if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(v14, a2, v19) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

void CLP::LogEntry::PrivateData::GlonassId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassId::CopyFrom(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassId *a2)
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

double CLP::LogEntry::PrivateData::ConstellationId::SharedCtor(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ConstellationId *CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  *this = off_100177A20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::ConstellationId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::default_instance(CLP::LogEntry::PrivateData::ConstellationId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  if (!CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GlonassId::Clear(this);
      }
    }

    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 0;
  }

  *(v1 + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ConstellationId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_61:
          if (v17 >= v9 || (v33 = *v17, v33 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v34 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v33;
            v34 = v17 + 1;
            *(a2 + 1) = v34;
          }

          *(this + 11) |= 8u;
          if (v34 < v9 && *v34 == 40)
          {
            v10 = v34 + 1;
            *(a2 + 1) = v10;
LABEL_69:
            if (v10 >= v9 || (v35 = *v10, v35 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v36 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v35;
              v36 = v10 + 1;
              *(a2 + 1) = v36;
            }

            *(this + 11) |= 0x10u;
            if (v36 < v9 && *v36 == 48)
            {
              v18 = v36 + 1;
              *(a2 + 1) = v18;
LABEL_77:
              if (v18 >= v9 || (v37 = *v18, v37 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v38 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v37;
                v38 = v18 + 1;
                *(a2 + 1) = v38;
              }

              *(this + 11) |= 0x20u;
              if (v38 < v9 && *v38 == 56)
              {
                v12 = v38 + 1;
                *(a2 + 1) = v12;
LABEL_85:
                if (v12 >= v9 || (v39 = *v12, v39 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v40 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v39;
                  v40 = v12 + 1;
                  *(a2 + 1) = v40;
                }

                *(this + 11) |= 0x40u;
                if (v40 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_69;
          }

LABEL_30:
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
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v14 >= v13 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
      }

      v19 = *(this + 11) | 1;
      *(this + 11) = v19;
      if (v16 < v13 && *v16 == 18)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_39;
      }
    }

    if (v7 != 2)
    {
      if (v7 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_53;
    }

    if (v8 != 2)
    {
      goto LABEL_30;
    }

    v19 = *(this + 11);
LABEL_39:
    *(this + 11) = v19 | 2;
    v21 = *(this + 1);
    if (!v21)
    {
      operator new();
    }

    v41 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v41);
    if (!CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
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

    v30 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v30 < v9 && *v30 == 24)
    {
      v11 = v30 + 1;
      *(a2 + 1) = v11;
LABEL_53:
      if (v11 >= v9 || (v31 = *v11, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v31;
        v32 = v11 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 11) |= 4u;
      if (v32 < v9 && *v32 == 32)
      {
        v17 = v32 + 1;
        *(a2 + 1) = v17;
        goto LABEL_61;
      }
    }
  }
}