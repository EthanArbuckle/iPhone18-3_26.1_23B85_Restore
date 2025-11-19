void sub_1000B8298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellTimeAssistance::~CellTimeAssistance(proto::gnss::Emergency::CellTimeAssistance *this)
{
  *this = off_100176670;
  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_ != this)
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
  proto::gnss::Emergency::CellTimeAssistance::~CellTimeAssistance(this);

  operator delete();
}

void *proto::gnss::Emergency::CellTimeAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::default_instance(proto::gnss::Emergency::CellTimeAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::CellTimeData::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::CellTimeAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CellTimeAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::ByteSize(proto::gnss::Emergency::CellTimeAssistance *this, unsigned int a2)
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
      v6 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::CellTimeData::ByteSize(v6, a2);
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

void proto::gnss::Emergency::CellTimeAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellTimeAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellTimeAssistance::CopyFrom(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::Swap(uint64_t this, proto::gnss::Emergency::CellTimeAssistance *a2)
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

uint64_t proto::gnss::Emergency::TowAssist::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::TowAssist *proto::gnss::Emergency::TowAssist::TowAssist(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
{
  *this = off_1001766E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::TowAssist::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::TowAssist::MergeFrom(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
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
      v6 = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 6);
    *(this + 8) |= 0x10u;
    *(this + 6) = v5;
  }
}

void sub_1000B8B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::TowAssist::~TowAssist(proto::gnss::Emergency::TowAssist *this)
{
  *this = off_1001766E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001766E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001766E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::TowAssist::default_instance(proto::gnss::Emergency::TowAssist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::TowAssist::default_instance_;
  if (!proto::gnss::Emergency::TowAssist::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::TowAssist::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::TowAssist::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::TowAssist::MergePartialFromCodedStream(proto::gnss::Emergency::TowAssist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 8) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 8) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        if (v9 >= v8 || (v22 = *v9, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v22;
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 8) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

int *proto::gnss::Emergency::TowAssist::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[8];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::TowAssist::ByteSize(proto::gnss::Emergency::TowAssist *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
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
    v8 = *(this + 4);
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
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
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
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_26:
    v12 = *(this + 6);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_30:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::Emergency::TowAssist::CheckTypeAndMergeFrom(proto::gnss::Emergency::TowAssist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::TowAssist::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::TowAssist::CopyFrom(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::TowAssist::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::TowAssist *proto::gnss::Emergency::TowAssist::Swap(proto::gnss::Emergency::TowAssist *this, proto::gnss::Emergency::TowAssist *a2)
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
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return this;
}

void *proto::gnss::Emergency::GpsReferenceTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsReferenceTime *proto::gnss::Emergency::GpsReferenceTime::GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
{
  *this = off_100176760;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, a2);
  return this;
}

void sub_1000B9380(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsReferenceTime::MergeFrom(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
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
      proto::gnss::Emergency::TowAssist::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 17);
  if (!v10)
  {
    goto LABEL_21;
  }

  if (v10)
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

      goto LABEL_26;
    }
  }

  else if ((v10 & 2) == 0)
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
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v14;
  v10 = *(a2 + 17);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = *(a2 + 5);
  *(this + 17) |= 8u;
  *(this + 5) = v15;
  v10 = *(a2 + 17);
  if ((v10 & 0x20) == 0)
  {
LABEL_19:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a2 + 12);
  *(this + 17) |= 0x20u;
  *(this + 12) = v16;
  v10 = *(a2 + 17);
  if ((v10 & 0x40) != 0)
  {
LABEL_29:
    v17 = *(a2 + 13);
    if (v17 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23342, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    *(this + 17) |= 0x40u;
    *(this + 13) = v17;
    v10 = *(a2 + 17);
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_21:
    if ((v10 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_31:
  v18 = *(a2 + 14);
  if (v18 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23365, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x80u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x100) != 0)
  {
LABEL_22:
    v11 = *(a2 + 15);
    *(this + 17) |= 0x100u;
    *(this + 15) = v11;
  }
}

void sub_1000B96AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsReferenceTime::~GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this)
{
  *this = off_100176760;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsReferenceTime::~GpsReferenceTime(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::default_instance(proto::gnss::Emergency::GpsReferenceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::Clear(proto::gnss::Emergency::GpsReferenceTime *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 15) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 17) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::MergePartialFromCodedStream(proto::gnss::Emergency::GpsReferenceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v19 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v7 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_62:
            if (v13 >= v11 || (v28 = *v13, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v28;
              v29 = v13 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 17) |= 8u;
            if (v29 < v11 && *v29 == 42)
            {
              while (1)
              {
                *(a2 + 1) = v29 + 1;
LABEL_70:
                v30 = *(this + 9);
                v31 = *(this + 8);
                if (v31 >= v30)
                {
                  if (v30 == *(this + 10))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v30 + 1);
                    v30 = *(this + 9);
                  }

                  *(this + 9) = v30 + 1;
                  operator new();
                }

                v32 = *(this + 3);
                *(this + 8) = v31 + 1;
                v33 = *(v32 + 8 * v31);
                v53 = 0;
                v34 = *(a2 + 1);
                if (v34 >= *(a2 + 2) || *v34 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                  {
                    return 0;
                  }
                }

                else
                {
                  v53 = *v34;
                  *(a2 + 1) = v34 + 1;
                }

                v35 = *(a2 + 14);
                v36 = *(a2 + 15);
                *(a2 + 14) = v35 + 1;
                if (v35 >= v36)
                {
                  return 0;
                }

                v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
                if (!proto::gnss::Emergency::TowAssist::MergePartialFromCodedStream(v33, a2, v38) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v37);
                v39 = *(a2 + 14);
                v40 = __OFSUB__(v39, 1);
                v41 = v39 - 1;
                if (v41 < 0 == v40)
                {
                  *(a2 + 14) = v41;
                }

                v29 = *(a2 + 1);
                v14 = *(a2 + 2);
                if (v29 >= v14)
                {
                  break;
                }

                v42 = *v29;
                if (v42 != 42)
                {
                  if (v42 != 48)
                  {
                    goto LABEL_1;
                  }

                  v15 = v29 + 1;
                  *(a2 + 1) = v15;
                  goto LABEL_88;
                }
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v16 >= v11 || (v17 = *v16, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v17;
              v18 = v16 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 17) |= 1u;
            if (v18 < v11 && *v18 == 16)
            {
              v12 = v18 + 1;
              *(a2 + 1) = v12;
LABEL_46:
              if (v12 >= v11 || (v24 = *v12, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v24;
                v25 = v12 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 17) |= 2u;
              if (v25 < v11 && *v25 == 24)
              {
                v19 = v25 + 1;
                *(a2 + 1) = v19;
LABEL_54:
                if (v19 >= v11 || (v26 = *v19, v26 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v27 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v26;
                  v27 = v19 + 1;
                  *(a2 + 1) = v27;
                }

                *(this + 17) |= 4u;
                if (v27 < v11 && *v27 == 32)
                {
                  v13 = v27 + 1;
                  *(a2 + 1) = v13;
                  goto LABEL_62;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v20 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_96;
        }

        if (v7 != 8)
        {
          if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_116;
          }

          goto LABEL_37;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
LABEL_106:
        v51 = 0;
        if (v22 >= v21 || (v47 = *v22, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
          if (!result)
          {
            return result;
          }

          v47 = v51;
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v47 <= 6)
        {
          *(this + 17) |= 0x80u;
          *(this + 14) = v47;
        }

        v48 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v48 < v9 && *v48 == 72)
        {
          v10 = v48 + 1;
          *(a2 + 1) = v10;
LABEL_116:
          if (v10 >= v9 || (v49 = *v10, v49 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
            if (!result)
            {
              return result;
            }

            v50 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 15) = v49;
            v50 = v10 + 1;
            *(a2 + 1) = v50;
          }

          *(this + 17) |= 0x100u;
          if (v50 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 5)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v7 != 6 || (TagFallback & 7) != 0)
      {
        break;
      }

      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
LABEL_88:
      if (v15 >= v14 || (v43 = *v15, v43 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
        if (!result)
        {
          return result;
        }

        v44 = *(a2 + 1);
        v14 = *(a2 + 2);
      }

      else
      {
        *(this + 12) = v43;
        v44 = v15 + 1;
        *(a2 + 1) = v44;
      }

      *(this + 17) |= 0x20u;
      if (v44 < v14 && *v44 == 56)
      {
        v20 = v44 + 1;
        *(a2 + 1) = v20;
LABEL_96:
        v52 = 0;
        if (v20 >= v14 || (v45 = *v20, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v45 = v52;
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v45 <= 5)
        {
          *(this + 17) |= 0x40u;
          *(this + 13) = v45;
        }

        v46 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v46 < v21 && *v46 == 64)
        {
          v22 = v46 + 1;
          *(a2 + 1) = v22;
          goto LABEL_106;
        }
      }
    }

LABEL_37:
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

uint64_t proto::gnss::Emergency::GpsReferenceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 68);
  if ((v8 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
    v8 = *(v5 + 68);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x100) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 52), a2, a4);
  v8 = *(v5 + 68);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return this;
  }

LABEL_21:
  v9 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v9, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::ByteSize(proto::gnss::Emergency::GpsReferenceTime *this, unsigned int a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 17);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
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
LABEL_15:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_17:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_30:
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
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
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
  if ((v3 & 0x80) == 0)
  {
LABEL_20:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_40:
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
  if ((v3 & 0x100) != 0)
  {
LABEL_46:
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

LABEL_50:
  v20 = *(this + 8);
  v21 = (v20 + v4);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = proto::gnss::Emergency::TowAssist::ByteSize(*(*(this + 3) + 8 * v22), a2);
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

void proto::gnss::Emergency::GpsReferenceTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsReferenceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsReferenceTime::CopyFrom(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsReferenceTime *proto::gnss::Emergency::GpsReferenceTime::Swap(proto::gnss::Emergency::GpsReferenceTime *this, proto::gnss::Emergency::GpsReferenceTime *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 24), (a2 + 24));
    v8 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    v9 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v9;
    v10 = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v10;
    v11 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v11;
    v12 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v12;
    v13 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v13;
  }

  return this;
}

double proto::gnss::Emergency::ReferenceLocation::SharedCtor(proto::gnss::Emergency::ReferenceLocation *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ReferenceLocation *proto::gnss::Emergency::ReferenceLocation::ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  *this = off_1001767D8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ReferenceLocation::MergeFrom(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 17);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 5);
  *(this + 17) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v12 = *(a2 + 7);
    *(this + 17) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 6);
  *(this + 17) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v13 = *(a2 + 8);
  *(this + 17) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 17) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 17);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 10);
    *(this + 17) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(a2 + 17);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 11);
  *(this + 17) |= 0x200u;
  *(this + 11) = v15;
  v4 = *(a2 + 17);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 12);
  *(this + 17) |= 0x400u;
  *(this + 12) = v16;
  v4 = *(a2 + 17);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = *(a2 + 13);
  if (v17 >= 6)
  {
    __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23656, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x800u;
  *(this + 13) = v17;
  v4 = *(a2 + 17);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_35:
  v18 = *(a2 + 14);
  if (v18 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23679, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x1000u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x2000) != 0)
  {
LABEL_20:
    v6 = *(a2 + 15);
    *(this + 17) |= 0x2000u;
    *(this + 15) = v6;
  }
}

void sub_1000BA6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ReferenceLocation::~ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this)
{
  *this = off_1001767D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001767D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001767D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::ReferenceLocation::default_instance(proto::gnss::Emergency::ReferenceLocation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ReferenceLocation::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ReferenceLocation::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ReferenceLocation::MergePartialFromCodedStream(proto::gnss::Emergency::ReferenceLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_36;
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
LABEL_42:
            *(this + 17) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v19 = v10 + 1;
              *(a2 + 1) = v19;
              goto LABEL_45;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_42;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_45:
        if (v19 >= v7 || (v26 = *v19, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v26;
          v27 = v19 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 17) |= 2u;
        if (v27 >= v7 || *v27 != 24)
        {
          continue;
        }

        v16 = v27 + 1;
        *(a2 + 1) = v16;
LABEL_53:
        if (v16 >= v7 || (v28 = *v16, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v28;
          v29 = v16 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 17) |= 4u;
        if (v29 >= v7 || *v29 != 32)
        {
          continue;
        }

        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_61:
        if (v17 >= v7 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v30;
          v31 = v17 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 17) |= 8u;
        if (v31 >= v7 || *v31 != 40)
        {
          continue;
        }

        v12 = v31 + 1;
        *(a2 + 1) = v12;
LABEL_69:
        v53 = 0;
        if (v12 >= v7 || (v32 = *v12, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v32 = v53;
          v33 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v33 = v12 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 6) = v32;
        *(this + 17) |= 0x10u;
        if (v33 >= v7 || *v33 != 48)
        {
          continue;
        }

        v20 = v33 + 1;
        *(a2 + 1) = v20;
LABEL_77:
        if (v20 >= v7 || (v34 = *v20, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v34;
          v35 = v20 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 17) |= 0x20u;
        if (v35 >= v7 || *v35 != 56)
        {
          continue;
        }

        v23 = v35 + 1;
        *(a2 + 1) = v23;
LABEL_85:
        if (v23 >= v7 || (v36 = *v23, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v36;
          v37 = v23 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 17) |= 0x40u;
        if (v37 >= v7 || *v37 != 64)
        {
          continue;
        }

        v18 = v37 + 1;
        *(a2 + 1) = v18;
LABEL_93:
        if (v18 >= v7 || (v38 = *v18, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v38;
          v39 = v18 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 17) |= 0x80u;
        if (v39 >= v7 || *v39 != 72)
        {
          continue;
        }

        v25 = v39 + 1;
        *(a2 + 1) = v25;
LABEL_101:
        if (v25 >= v7 || (v40 = *v25, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v40;
          v41 = v25 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 17) |= 0x100u;
        if (v41 >= v7 || *v41 != 80)
        {
          continue;
        }

        v15 = v41 + 1;
        *(a2 + 1) = v15;
LABEL_109:
        if (v15 >= v7 || (v42 = *v15, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v42;
          v43 = v15 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 17) |= 0x200u;
        if (v43 >= v7 || *v43 != 88)
        {
          continue;
        }

        v24 = v43 + 1;
        *(a2 + 1) = v24;
LABEL_117:
        if (v24 >= v7 || (v44 = *v24, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v44;
          v45 = v24 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 17) |= 0x400u;
        if (v45 >= v7 || *v45 != 96)
        {
          continue;
        }

        v11 = v45 + 1;
        *(a2 + 1) = v11;
LABEL_125:
        v55 = 0;
        if (v11 >= v7 || (v46 = *v11, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
          if (!result)
          {
            return result;
          }

          v46 = v55;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v46 <= 5)
        {
          *(this + 17) |= 0x800u;
          *(this + 13) = v46;
        }

        v47 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v47 >= v13 || *v47 != 104)
        {
          continue;
        }

        v14 = v47 + 1;
        *(a2 + 1) = v14;
LABEL_135:
        v54 = 0;
        if (v14 >= v13 || (v48 = *v14, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v48 = v54;
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v48 <= 6)
        {
          *(this + 17) |= 0x1000u;
          *(this + 14) = v48;
        }

        v49 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v49 >= v21 || *v49 != 112)
        {
          continue;
        }

        v22 = v49 + 1;
        *(a2 + 1) = v22;
LABEL_145:
        if (v22 >= v21 || (v50 = *v22, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v50;
          v51 = v22 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 17) |= 0x2000u;
        if (v51 != v21 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_117;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_125;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_145;
      default:
LABEL_36:
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

int *proto::gnss::Emergency::ReferenceLocation::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[17];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[17];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[17];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[17];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[17];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
  v6 = v5[17];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v5[14], v4, a4);
    if ((v5[17] & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v5[13], v4, a4);
  v6 = v5[17];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = v5[15];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::ReferenceLocation::ByteSize(proto::gnss::Emergency::ReferenceLocation *this, unsigned int a2)
{
  v3 = *(this + 17);
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
    if ((v3 & 2) == 0)
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

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 17);
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
    v3 = *(this + 17);
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

    goto LABEL_35;
  }

LABEL_29:
  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 17);
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

    goto LABEL_39;
  }

LABEL_35:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 17);
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
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 17);
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
      v3 = *(this + 17);
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
    goto LABEL_83;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 17);
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

      goto LABEL_63;
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
    v3 = *(this + 17);
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

    goto LABEL_67;
  }

LABEL_63:
  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(this + 17);
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

    goto LABEL_73;
  }

LABEL_67:
  v26 = *(this + 13);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(this + 17);
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
      goto LABEL_83;
    }

    goto LABEL_79;
  }

LABEL_73:
  v28 = *(this + 14);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x2000) != 0)
  {
LABEL_79:
    v30 = *(this + 15);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    }

    else
    {
      v31 = 2;
    }

    v4 = (v31 + v4);
  }

LABEL_83:
  *(this + 16) = v4;
  return v4;
}

void proto::gnss::Emergency::ReferenceLocation::CheckTypeAndMergeFrom(proto::gnss::Emergency::ReferenceLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ReferenceLocation::CopyFrom(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::ReferenceLocation *proto::gnss::Emergency::ReferenceLocation::Swap(proto::gnss::Emergency::ReferenceLocation *this, proto::gnss::Emergency::ReferenceLocation *a2)
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
    v16 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v16;
    v17 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v17;
  }

  return this;
}

double proto::gnss::Emergency::GpsEphemeris::SharedCtor(proto::gnss::Emergency::GpsEphemeris *this)
{
  *(this + 38) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsEphemeris *proto::gnss::Emergency::GpsEphemeris::GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  *this = off_100176850;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsEphemeris::MergeFrom(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  v4 = *(a2 + 37);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = *(a2 + 2);
    *(this + 37) |= 1u;
    *(this + 2) = v11;
    v4 = *(a2 + 37);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 3);
  *(this + 37) |= 2u;
  *(this + 3) = v12;
  v4 = *(a2 + 37);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a2 + 4);
  *(this + 37) |= 4u;
  *(this + 4) = v13;
  v4 = *(a2 + 37);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v14 = *(a2 + 5);
  *(this + 37) |= 8u;
  *(this + 5) = v14;
  v4 = *(a2 + 37);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    v16 = *(a2 + 7);
    *(this + 37) |= 0x20u;
    *(this + 7) = v16;
    v4 = *(a2 + 37);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_52:
  v15 = *(a2 + 6);
  *(this + 37) |= 0x10u;
  *(this + 6) = v15;
  v4 = *(a2 + 37);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  v17 = *(a2 + 8);
  *(this + 37) |= 0x40u;
  *(this + 8) = v17;
  v4 = *(a2 + 37);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 37) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 37);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 10);
    *(this + 37) |= 0x100u;
    *(this + 10) = v18;
    v4 = *(a2 + 37);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 11);
  *(this + 37) |= 0x200u;
  *(this + 11) = v19;
  v4 = *(a2 + 37);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(a2 + 12);
  *(this + 37) |= 0x400u;
  *(this + 12) = v20;
  v4 = *(a2 + 37);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = *(a2 + 13);
  *(this + 37) |= 0x800u;
  *(this + 13) = v21;
  v4 = *(a2 + 37);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a2 + 14);
  *(this + 37) |= 0x1000u;
  *(this + 14) = v22;
  v4 = *(a2 + 37);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a2 + 15);
  *(this + 37) |= 0x2000u;
  *(this + 15) = v23;
  v4 = *(a2 + 37);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_62:
  v24 = *(a2 + 16);
  *(this + 37) |= 0x4000u;
  *(this + 16) = v24;
  v4 = *(a2 + 37);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 17);
    *(this + 37) |= 0x8000u;
    *(this + 17) = v6;
    v4 = *(a2 + 37);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v25 = *(a2 + 18);
    *(this + 37) |= 0x10000u;
    *(this + 18) = v25;
    v4 = *(a2 + 37);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v26 = *(a2 + 19);
  *(this + 37) |= 0x20000u;
  *(this + 19) = v26;
  v4 = *(a2 + 37);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 20);
  *(this + 37) |= 0x40000u;
  *(this + 20) = v27;
  v4 = *(a2 + 37);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 21);
  *(this + 37) |= 0x80000u;
  *(this + 21) = v28;
  v4 = *(a2 + 37);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 22);
  *(this + 37) |= 0x100000u;
  *(this + 22) = v29;
  v4 = *(a2 + 37);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 23);
  *(this + 37) |= 0x200000u;
  *(this + 23) = v30;
  v4 = *(a2 + 37);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  v31 = *(a2 + 24);
  *(this + 37) |= 0x400000u;
  *(this + 24) = v31;
  v4 = *(a2 + 37);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 25);
    *(this + 37) |= 0x800000u;
    *(this + 25) = v7;
    v4 = *(a2 + 37);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v32 = *(a2 + 26);
    *(this + 37) |= 0x1000000u;
    *(this + 26) = v32;
    v4 = *(a2 + 37);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v33 = *(a2 + 27);
  *(this + 37) |= 0x2000000u;
  *(this + 27) = v33;
  v4 = *(a2 + 37);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v34 = *(a2 + 28);
  *(this + 37) |= 0x4000000u;
  *(this + 28) = v34;
  v4 = *(a2 + 37);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v35 = *(a2 + 29);
  *(this + 37) |= 0x8000000u;
  *(this + 29) = v35;
  v4 = *(a2 + 37);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v36 = *(a2 + 30);
  *(this + 37) |= 0x10000000u;
  *(this + 30) = v36;
  v4 = *(a2 + 37);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_78:
    v38 = *(a2 + 32);
    *(this + 37) |= 0x40000000u;
    *(this + 32) = v38;
    if ((*(a2 + 37) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_77:
  v37 = *(a2 + 31);
  *(this + 37) |= 0x20000000u;
  *(this + 31) = v37;
  v4 = *(a2 + 37);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_79:
  v39 = *(a2 + 33);
  *(this + 37) |= 0x80000000;
  *(this + 33) = v39;
LABEL_42:
  LOBYTE(v8) = *(a2 + 152);
  if (v8)
  {
    if (*(a2 + 152))
    {
      v9 = *(a2 + 34);
      *(this + 38) |= 1u;
      *(this + 34) = v9;
      v8 = *(a2 + 38);
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a2 + 35);
      *(this + 38) |= 2u;
      *(this + 35) = v10;
    }
  }
}

void sub_1000BBB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsEphemeris::~GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this)
{
  *this = off_100176850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsEphemeris::default_instance(proto::gnss::Emergency::GpsEphemeris *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsEphemeris::default_instance_;
  if (!proto::gnss::Emergency::GpsEphemeris::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsEphemeris::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::Clear(uint64_t this)
{
  v1 = *(this + 148);
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
    *(this + 88) = 0u;
    *(this + 72) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0u;
    *(this + 104) = 0u;
  }

  if (*(this + 152))
  {
    *(this + 136) = 0;
  }

  *(this + 148) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::MergePartialFromCodedStream(proto::gnss::Emergency::GpsEphemeris *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_76;
        }

        v112 = 0;
        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_82:
            *(this + 2) = v9;
            *(this + 37) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v26 = v10 + 1;
              *(a2 + 1) = v26;
              goto LABEL_85;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
        if (result)
        {
          v9 = v112;
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_82;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_85:
        v112 = 0;
        if (v26 >= v7 || (v45 = *v26, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v45 = v112;
          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v46 = v26 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 3) = v45;
        *(this + 37) |= 2u;
        if (v46 >= v7 || *v46 != 24)
        {
          continue;
        }

        v22 = v46 + 1;
        *(a2 + 1) = v22;
LABEL_93:
        if (v22 >= v7 || (v47 = *v22, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v47;
          v48 = v22 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 37) |= 4u;
        if (v48 >= v7 || *v48 != 32)
        {
          continue;
        }

        v24 = v48 + 1;
        *(a2 + 1) = v24;
LABEL_101:
        if (v24 >= v7 || (v49 = *v24, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v49;
          v50 = v24 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 37) |= 8u;
        if (v50 >= v7 || *v50 != 40)
        {
          continue;
        }

        v17 = v50 + 1;
        *(a2 + 1) = v17;
LABEL_109:
        v112 = 0;
        if (v17 >= v7 || (v51 = *v17, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v51 = v112;
          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v52 = v17 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 6) = v51;
        *(this + 37) |= 0x10u;
        if (v52 >= v7 || *v52 != 48)
        {
          continue;
        }

        v30 = v52 + 1;
        *(a2 + 1) = v30;
LABEL_117:
        v112 = 0;
        if (v30 >= v7 || (v53 = *v30, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v53 = v112;
          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v54 = v30 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 7) = v53;
        *(this + 37) |= 0x20u;
        if (v54 >= v7 || *v54 != 56)
        {
          continue;
        }

        v33 = v54 + 1;
        *(a2 + 1) = v33;
LABEL_125:
        v112 = 0;
        if (v33 >= v7 || (v55 = *v33, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v55 = v112;
          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v56 = v33 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 8) = v55;
        *(this + 37) |= 0x40u;
        if (v56 >= v7 || *v56 != 64)
        {
          continue;
        }

        v25 = v56 + 1;
        *(a2 + 1) = v25;
LABEL_133:
        v112 = 0;
        if (v25 >= v7 || (v57 = *v25, (v57 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v57 = v112;
          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v58 = v25 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 9) = v57;
        *(this + 37) |= 0x80u;
        if (v58 >= v7 || *v58 != 72)
        {
          continue;
        }

        v36 = v58 + 1;
        *(a2 + 1) = v36;
LABEL_141:
        if (v36 >= v7 || (v59 = *v36, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v59;
          v60 = v36 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 37) |= 0x100u;
        if (v60 >= v7 || *v60 != 80)
        {
          continue;
        }

        v19 = v60 + 1;
        *(a2 + 1) = v19;
LABEL_149:
        if (v19 >= v7 || (v61 = *v19, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v61;
          v62 = v19 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 37) |= 0x200u;
        if (v62 >= v7 || *v62 != 88)
        {
          continue;
        }

        v35 = v62 + 1;
        *(a2 + 1) = v35;
LABEL_157:
        v112 = 0;
        if (v35 >= v7 || (v63 = *v35, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v63 = v112;
          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v64 = v35 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 12) = v63;
        *(this + 37) |= 0x400u;
        if (v64 >= v7 || *v64 != 96)
        {
          continue;
        }

        v16 = v64 + 1;
        *(a2 + 1) = v16;
LABEL_165:
        v112 = 0;
        if (v16 >= v7 || (v65 = *v16, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v65 = v112;
          v66 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v66 = v16 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 13) = v65;
        *(this + 37) |= 0x800u;
        if (v66 >= v7 || *v66 != 104)
        {
          continue;
        }

        v18 = v66 + 1;
        *(a2 + 1) = v18;
LABEL_173:
        v112 = 0;
        if (v18 >= v7 || (v67 = *v18, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v67 = v112;
          v68 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v68 = v18 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 14) = v67;
        *(this + 37) |= 0x1000u;
        if (v68 >= v7 || *v68 != 112)
        {
          continue;
        }

        v32 = v68 + 1;
        *(a2 + 1) = v32;
LABEL_181:
        v112 = 0;
        if (v32 >= v7 || (v69 = *v32, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v69 = v112;
          v70 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v70 = v32 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 15) = v69;
        *(this + 37) |= 0x2000u;
        if (v70 >= v7 || *v70 != 120)
        {
          continue;
        }

        v14 = v70 + 1;
        *(a2 + 1) = v14;
LABEL_189:
        v112 = 0;
        if (v14 >= v7 || (v71 = *v14, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v71 = v112;
          v72 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v72 = (v14 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 16) = v71;
        *(this + 37) |= 0x4000u;
        if (v7 - v72 < 2 || *v72 != 128 || v72[1] != 1)
        {
          continue;
        }

        v23 = (v72 + 2);
        *(a2 + 1) = v23;
LABEL_198:
        if (v23 >= v7 || (v73 = *v23, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v73;
          v74 = (v23 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 37) |= 0x8000u;
        if (v7 - v74 < 2 || *v74 != 136 || v74[1] != 1)
        {
          continue;
        }

        v13 = (v74 + 2);
        *(a2 + 1) = v13;
LABEL_207:
        v112 = 0;
        if (v13 >= v7 || (v75 = *v13, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v75 = v112;
          v76 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v76 = (v13 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 18) = v75;
        *(this + 37) |= 0x10000u;
        if (v7 - v76 < 2 || *v76 != 144 || v76[1] != 1)
        {
          continue;
        }

        v28 = (v76 + 2);
        *(a2 + 1) = v28;
LABEL_216:
        v112 = 0;
        if (v28 >= v7 || (v77 = *v28, (v77 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v77 = v112;
          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v78 = (v28 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 19) = v77;
        *(this + 37) |= 0x20000u;
        if (v7 - v78 < 2 || *v78 != 152 || v78[1] != 1)
        {
          continue;
        }

        v34 = (v78 + 2);
        *(a2 + 1) = v34;
LABEL_225:
        v112 = 0;
        if (v34 >= v7 || (v79 = *v34, (v79 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v79 = v112;
          v80 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v80 = (v34 + 1);
          *(a2 + 1) = v80;
        }

        *(this + 20) = v79;
        *(this + 37) |= 0x40000u;
        if (v7 - v80 < 2 || *v80 != 160 || v80[1] != 1)
        {
          continue;
        }

        v40 = (v80 + 2);
        *(a2 + 1) = v40;
LABEL_234:
        v112 = 0;
        if (v40 >= v7 || (v81 = *v40, (v81 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v81 = v112;
          v82 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v82 = (v40 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 21) = v81;
        *(this + 37) |= 0x80000u;
        if (v7 - v82 < 2 || *v82 != 168 || v82[1] != 1)
        {
          continue;
        }

        v29 = (v82 + 2);
        *(a2 + 1) = v29;
LABEL_243:
        if (v29 >= v7 || (v83 = *v29, v83 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v84 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v83;
          v84 = (v29 + 1);
          *(a2 + 1) = v84;
        }

        *(this + 37) |= 0x100000u;
        if (v7 - v84 < 2 || *v84 != 176 || v84[1] != 1)
        {
          continue;
        }

        v31 = (v84 + 2);
        *(a2 + 1) = v31;
LABEL_252:
        if (v31 >= v7 || (v85 = *v31, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v85;
          v86 = (v31 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 37) |= 0x200000u;
        if (v7 - v86 < 2 || *v86 != 184 || v86[1] != 1)
        {
          continue;
        }

        v39 = (v86 + 2);
        *(a2 + 1) = v39;
LABEL_261:
        if (v39 >= v7 || (v87 = *v39, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v87;
          v88 = (v39 + 1);
          *(a2 + 1) = v88;
        }

        *(this + 37) |= 0x400000u;
        if (v7 - v88 < 2 || *v88 != 192 || v88[1] != 1)
        {
          continue;
        }

        v41 = (v88 + 2);
        *(a2 + 1) = v41;
LABEL_270:
        v112 = 0;
        if (v41 >= v7 || (v89 = *v41, (v89 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v89 = v112;
          v90 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v90 = (v41 + 1);
          *(a2 + 1) = v90;
        }

        *(this + 25) = v89;
        *(this + 37) |= 0x800000u;
        if (v7 - v90 < 2 || *v90 != 200 || v90[1] != 1)
        {
          continue;
        }

        v21 = (v90 + 2);
        *(a2 + 1) = v21;
LABEL_279:
        v11 = *(a2 + 2);
        if (v21 >= v11 || (v91 = *v21, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v92 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v91;
          v92 = (v21 + 1);
          *(a2 + 1) = v92;
        }

        *(this + 37) |= 0x1000000u;
        if (v11 - v92 < 2 || *v92 != 208 || v92[1] != 1)
        {
          continue;
        }

        v20 = (v92 + 2);
        *(a2 + 1) = v20;
LABEL_288:
        if (v20 >= v11 || (v93 = *v20, v93 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v94 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v93;
          v94 = (v20 + 1);
          *(a2 + 1) = v94;
        }

        *(this + 37) |= 0x2000000u;
        if (v11 - v94 < 2 || *v94 != 216 || v94[1] != 1)
        {
          continue;
        }

        v44 = (v94 + 2);
        *(a2 + 1) = v44;
LABEL_297:
        if (v44 >= v11 || (v95 = *v44, v95 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v96 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v95;
          v96 = (v44 + 1);
          *(a2 + 1) = v96;
        }

        *(this + 37) |= 0x4000000u;
        if (v11 - v96 < 2 || *v96 != 224 || v96[1] != 1)
        {
          continue;
        }

        v12 = (v96 + 2);
        *(a2 + 1) = v12;
LABEL_306:
        v112 = 0;
        if (v12 >= v11 || (v97 = *v12, (v97 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112);
          if (!result)
          {
            return result;
          }

          v97 = v112;
          v98 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v98 = (v12 + 1);
          *(a2 + 1) = v98;
        }

        *(this + 29) = v97;
        *(this + 37) |= 0x8000000u;
        if (v11 - v98 < 2 || *v98 != 232 || v98[1] != 1)
        {
          continue;
        }

        v42 = (v98 + 2);
        *(a2 + 1) = v42;
LABEL_315:
        if (v42 >= v11 || (v99 = *v42, v99 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v100 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v99;
          v100 = (v42 + 1);
          *(a2 + 1) = v100;
        }

        *(this + 37) |= 0x10000000u;
        if (v11 - v100 < 2 || *v100 != 240 || v100[1] != 1)
        {
          continue;
        }

        v43 = (v100 + 2);
        *(a2 + 1) = v43;
LABEL_324:
        if (v43 >= v11 || (v101 = *v43, v101 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v102 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v101;
          v102 = (v43 + 1);
          *(a2 + 1) = v102;
        }

        *(this + 37) |= 0x20000000u;
        if (v11 - v102 < 2 || *v102 != 248 || v102[1] != 1)
        {
          continue;
        }

        v37 = (v102 + 2);
        *(a2 + 1) = v37;
LABEL_333:
        if (v37 >= v11 || (v103 = *v37, v103 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v104 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v103;
          v104 = (v37 + 1);
          *(a2 + 1) = v104;
        }

        *(this + 37) |= 0x40000000u;
        if (v11 - v104 < 2 || *v104 != 128 || v104[1] != 2)
        {
          continue;
        }

        v27 = (v104 + 2);
        *(a2 + 1) = v27;
LABEL_342:
        if (v27 >= v11 || (v105 = *v27, v105 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
          if (!result)
          {
            return result;
          }

          v106 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 33) = v105;
          v106 = (v27 + 1);
          *(a2 + 1) = v106;
        }

        *(this + 37) |= 0x80000000;
        if (v11 - v106 < 2 || *v106 != 136 || v106[1] != 2)
        {
          continue;
        }

        v38 = (v106 + 2);
        *(a2 + 1) = v38;
LABEL_351:
        if (v38 >= v11 || (v107 = *v38, v107 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v108 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v107;
          v108 = (v38 + 1);
          *(a2 + 1) = v108;
        }

        *(this + 38) |= 1u;
        if (v11 - v108 < 2 || *v108 != 144 || v108[1] != 2)
        {
          continue;
        }

        v15 = (v108 + 2);
        *(a2 + 1) = v15;
LABEL_360:
        if (v15 >= v11 || (v109 = *v15, v109 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v110 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v109;
          v110 = v15 + 1;
          *(a2 + 1) = v110;
        }

        *(this + 38) |= 2u;
        if (v110 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_76;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_93;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_101;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_109;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_117;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_125;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_133;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v36 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_141;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_149;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v35 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_157;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_165;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_173;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_181;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_189;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_198;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_207;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_216;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_225;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v40 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_234;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_243;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_252;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v39 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_261;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v41 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_270;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v21 = *(a2 + 1);
        goto LABEL_279;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_288;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v44 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_297;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_306;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v42 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_315;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v43 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_324;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v37 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_333;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v27 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_342;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_351;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_360;
      default:
LABEL_76:
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

int *proto::gnss::Emergency::GpsEphemeris::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[37];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[37];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], v4, a4);
  v6 = v5[37];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[37];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[7], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[8], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[9], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[12], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, v5[13], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v5[14], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[15], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, v5[16], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x11, v5[18], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x12, v5[19], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x13, v5[20], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, v5[21], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v5[22], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, v5[23], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[24], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x18, v5[25], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, v5[26], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[27], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[28], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1C, v5[29], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, v5[30], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_67:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, v5[32], v4, a4);
    if ((v5[37] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, v5[31], v4, a4);
  v6 = v5[37];
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, v5[33], v4, a4);
LABEL_33:
  v7 = v5[38];
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v5[34], v4, a4);
    v7 = v5[38];
  }

  if ((v7 & 2) != 0)
  {
    v8 = v5[35];

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v8, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::ByteSize(proto::gnss::Emergency::GpsEphemeris *this, unsigned int a2)
{
  v3 = *(this + 37);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_58;
  }

  if (v3)
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
      v3 = *(this + 37);
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
    if ((v3 & 2) == 0)
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
    v3 = *(this + 37);
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
      v3 = *(this + 37);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_34:
  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_40:
  v14 = *(this + 7);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_52:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 37);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_58:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_110;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 37);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_61:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_76;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_62:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_76:
  v24 = *(this + 12);
  if ((v24 & 0x80000000) != 0)
  {
    v25 = 11;
  }

  else if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_63:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_88;
  }

LABEL_82:
  v26 = *(this + 13);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_64:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_94;
  }

LABEL_88:
  v28 = *(this + 14);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_65:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

LABEL_94:
  v30 = *(this + 15);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 11;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_66:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_100:
  v32 = *(this + 16);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 11;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(this + 37);
  }

  else
  {
    v33 = 2;
  }

  v4 = (v33 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_106:
    v34 = *(this + 17);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 2;
      v3 = *(this + 37);
    }

    else
    {
      v35 = 3;
    }

    v4 = (v35 + v4);
  }

LABEL_110:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v3 & 0x10000) != 0)
  {
    v36 = *(this + 18);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 12;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
      v3 = *(this + 37);
    }

    else
    {
      v37 = 3;
    }

    v4 = (v37 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_113:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_132;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

  v38 = *(this + 19);
  if ((v38 & 0x80000000) != 0)
  {
    v39 = 12;
  }

  else if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v39 = 3;
  }

  v4 = (v39 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_114:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_138;
  }

LABEL_132:
  v40 = *(this + 20);
  if ((v40 & 0x80000000) != 0)
  {
    v41 = 12;
  }

  else if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v41 = 3;
  }

  v4 = (v41 + v4);
  if ((v3 & 0x80000) == 0)
  {
LABEL_115:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_144;
  }

LABEL_138:
  v42 = *(this + 21);
  if ((v42 & 0x80000000) != 0)
  {
    v43 = 12;
  }

  else if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v43 = 3;
  }

  v4 = (v43 + v4);
  if ((v3 & 0x100000) == 0)
  {
LABEL_116:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_148;
  }

LABEL_144:
  v44 = *(this + 22);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v45 = 3;
  }

  v4 = (v45 + v4);
  if ((v3 & 0x200000) == 0)
  {
LABEL_117:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_152;
  }

LABEL_148:
  v46 = *(this + 23);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v47 = 3;
  }

  v4 = (v47 + v4);
  if ((v3 & 0x400000) == 0)
  {
LABEL_118:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

LABEL_152:
  v48 = *(this + 24);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v49 = 3;
  }

  v4 = (v49 + v4);
  if ((v3 & 0x800000) != 0)
  {
LABEL_156:
    v50 = *(this + 25);
    if ((v50 & 0x80000000) != 0)
    {
      v51 = 12;
    }

    else if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2) + 2;
      v3 = *(this + 37);
    }

    else
    {
      v51 = 3;
    }

    v4 = (v51 + v4);
  }

LABEL_162:
  if (!HIBYTE(v3))
  {
    goto LABEL_206;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v52 = *(this + 26);
    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2) + 2;
      v3 = *(this + 37);
    }

    else
    {
      v53 = 3;
    }

    v4 = (v53 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_165:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_180;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_165;
  }

  v54 = *(this + 27);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v55 = 3;
  }

  v4 = (v55 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_166:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_184;
  }

LABEL_180:
  v56 = *(this + 28);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v57 = 3;
  }

  v4 = (v57 + v4);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_167:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_190;
  }

LABEL_184:
  v58 = *(this + 29);
  if ((v58 & 0x80000000) != 0)
  {
    v59 = 12;
  }

  else if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v59 = 3;
  }

  v4 = (v59 + v4);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_168:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_194;
  }

LABEL_190:
  v60 = *(this + 30);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v61 = 3;
  }

  v4 = (v61 + v4);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_169:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_198;
  }

LABEL_194:
  v62 = *(this + 31);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v63 = 3;
  }

  v4 = (v63 + v4);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_170:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_202;
  }

LABEL_198:
  v64 = *(this + 32);
  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2) + 2;
    v3 = *(this + 37);
  }

  else
  {
    v65 = 3;
  }

  v4 = (v65 + v4);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_202:
    v66 = *(this + 33);
    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2) + 2;
    }

    else
    {
      v67 = 3;
    }

    v4 = (v67 + v4);
  }

LABEL_206:
  LOBYTE(v68) = *(this + 152);
  if (v68)
  {
    if (*(this + 152))
    {
      v69 = *(this + 34);
      if (v69 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69, a2) + 2;
        v68 = *(this + 38);
      }

      else
      {
        v70 = 3;
      }

      v4 = (v70 + v4);
    }

    if ((v68 & 2) != 0)
    {
      v71 = *(this + 35);
      if (v71 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71, a2) + 2;
      }

      else
      {
        v72 = 3;
      }

      v4 = (v72 + v4);
    }
  }

  *(this + 36) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsEphemeris::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsEphemeris *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsEphemeris::CopyFrom(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsEphemeris *proto::gnss::Emergency::GpsEphemeris::Swap(proto::gnss::Emergency::GpsEphemeris *this, proto::gnss::Emergency::GpsEphemeris *a2)
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
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    v34 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v34;
    v35 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v35;
    v36 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v36;
    v37 = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v37;
    v38 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v38;
  }

  return this;
}

void *proto::gnss::Emergency::GpsNavigationModel::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsNavigationModel *proto::gnss::Emergency::GpsNavigationModel::GpsNavigationModel(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  *(this + 1) = 0;
  *this = off_1001768C8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, a2);
  return this;
}

void sub_1000BDCC0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsNavigationModel::MergeFrom(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GpsEphemeris>::TypeHandler>((this + 8), a2 + 8);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 8);
      *(this + 13) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 9);
      if (v6 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 24527, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      *(this + 13) |= 4u;
      *(this + 9) = v6;
      v4 = *(a2 + 13);
    }

    if ((v4 & 8) != 0)
    {
      v7 = *(a2 + 10);
      if (v7 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 24550, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      *(this + 13) |= 8u;
      *(this + 10) = v7;
      v4 = *(a2 + 13);
    }

    if ((v4 & 0x10) != 0)
    {
      v8 = *(a2 + 11);
      *(this + 13) |= 0x10u;
      *(this + 11) = v8;
    }
  }
}

void sub_1000BDE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsNavigationModel::~GpsNavigationModel(proto::gnss::Emergency::GpsNavigationModel *this)
{
  *this = off_1001768C8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsNavigationModel::~GpsNavigationModel(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::default_instance(proto::gnss::Emergency::GpsNavigationModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  if (!proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::Clear(proto::gnss::Emergency::GpsNavigationModel *this)
{
  if (*(this + 52))
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 13) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::MergePartialFromCodedStream(proto::gnss::Emergency::GpsNavigationModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_21;
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v15 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v15 >= v16 || (v17 = *v15, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v16 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v17;
            v18 = v15 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 13) |= 1u;
          if (v18 < v16 && *v18 == 18)
          {
            while (1)
            {
              *(a2 + 1) = v18 + 1;
LABEL_32:
              v20 = *(this + 5);
              v21 = *(this + 4);
              if (v21 >= v20)
              {
                if (v20 == *(this + 6))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v20 + 1);
                  v20 = *(this + 5);
                }

                *(this + 5) = v20 + 1;
                operator new();
              }

              v22 = *(this + 1);
              *(this + 4) = v21 + 1;
              v23 = *(v22 + 8 * v21);
              v41 = 0;
              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
                {
                  return 0;
                }
              }

              else
              {
                v41 = *v24;
                *(a2 + 1) = v24 + 1;
              }

              v25 = *(a2 + 14);
              v26 = *(a2 + 15);
              *(a2 + 14) = v25 + 1;
              if (v25 >= v26)
              {
                return 0;
              }

              v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v41);
              if (!proto::gnss::Emergency::GpsEphemeris::MergePartialFromCodedStream(v23, a2, v28) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v27);
              v29 = *(a2 + 14);
              v30 = __OFSUB__(v29, 1);
              v31 = v29 - 1;
              if (v31 < 0 == v30)
              {
                *(a2 + 14) = v31;
              }

              v18 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v18 >= v12)
              {
                break;
              }

              v32 = *v18;
              if (v32 != 18)
              {
                if (v32 != 24)
                {
                  goto LABEL_1;
                }

                v11 = v18 + 1;
                *(a2 + 1) = v11;
                goto LABEL_50;
              }
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v12 = *(a2 + 2);
LABEL_50:
        v40 = 0;
        if (v11 >= v12 || (v33 = *v11, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v33 = v40;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v33 <= 5)
        {
          *(this + 13) |= 4u;
          *(this + 9) = v33;
        }

        v34 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v34 < v13 && *v34 == 32)
        {
          v14 = v34 + 1;
          *(a2 + 1) = v14;
          goto LABEL_60;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
LABEL_60:
      v39 = 0;
      if (v14 >= v13 || (v35 = *v14, (v35 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
        if (!result)
        {
          return result;
        }

        v35 = v39;
      }

      else
      {
        *(a2 + 1) = v14 + 1;
      }

      if (v35 <= 6)
      {
        *(this + 13) |= 8u;
        *(this + 10) = v35;
      }

      v36 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v36 < v9 && *v36 == 40)
      {
        v10 = v36 + 1;
        *(a2 + 1) = v10;
LABEL_70:
        if (v10 >= v9 || (v37 = *v10, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v37;
          v38 = v10 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 13) |= 0x10u;
        if (v38 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_70;
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

uint64_t proto::gnss::Emergency::GpsNavigationModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 52);
  if ((v7 & 4) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_12;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::ByteSize(proto::gnss::Emergency::GpsNavigationModel *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if (*(this + 52))
  {
    v5 = *(this + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 13);
      if ((v3 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 9);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_16:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v8 = *(this + 10);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v9 = 2;
  }

  v4 += v9;
  if ((v3 & 0x10) != 0)
  {
LABEL_25:
    v10 = *(this + 11);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_29:
  v12 = *(this + 4);
  v13 = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = proto::gnss::Emergency::GpsEphemeris::ByteSize(*(*(this + 1) + 8 * v14), a2);
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

    while (v14 < *(this + 4));
  }

  *(this + 12) = v13;
  return v13;
}

void proto::gnss::Emergency::GpsNavigationModel::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsNavigationModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsNavigationModel::CopyFrom(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsNavigationModel *proto::gnss::Emergency::GpsNavigationModel::Swap(proto::gnss::Emergency::GpsNavigationModel *this, proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v5 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::CplaneConfig *proto::gnss::Emergency::CplaneConfig::CplaneConfig(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
{
  *this = off_100176940;
  *(this + 12) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::CplaneConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CplaneConfig::MergeFrom(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
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
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_1000BE8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneConfig::~CplaneConfig(proto::gnss::Emergency::CplaneConfig *this)
{
  *this = off_100176940;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176940;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176940;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::CplaneConfig::default_instance(proto::gnss::Emergency::CplaneConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CplaneConfig::default_instance_;
  if (!proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CplaneConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CplaneConfig::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::MergePartialFromCodedStream(proto::gnss::Emergency::CplaneConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::Emergency::CplaneConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::ByteSize(proto::gnss::Emergency::CplaneConfig *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gnss::Emergency::CplaneConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::CplaneConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CplaneConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CplaneConfig::CopyFrom(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CplaneConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CplaneConfig::Swap(uint64_t this, proto::gnss::Emergency::CplaneConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

void *proto::gnss::Emergency::CplaneContext::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::default_instance(proto::gnss::Emergency::Cdma1xContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (!proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Cdma1xContext::default_instance_;
  }

  return result;
}

proto::gnss::Emergency::CplaneContext *proto::gnss::Emergency::CplaneContext::CplaneContext(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
{
  *this = off_1001769B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CplaneContext::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CplaneContext::MergeFrom(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
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
        v6 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
      }

      proto::gnss::Emergency::Configuration::MergeFrom(v5, v6);
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
        v8 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
      }

      proto::gnss::Emergency::Cdma1xContext::MergeFrom(v7, v8);
    }
  }
}

void sub_1000BEF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneContext::~CplaneContext(proto::gnss::Emergency::CplaneContext *this)
{
  *this = off_1001769B8;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001769B8;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001769B8;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::CplaneContext::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CplaneContext::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::CplaneContext::default_instance(proto::gnss::Emergency::CplaneContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CplaneContext::default_instance_;
  if (!proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CplaneContext::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CplaneContext::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 28);
  if (v1)
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 16) = 0;
          *(v2 + 8) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneContext::MergePartialFromCodedStream(proto::gnss::Emergency::CplaneContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (!proto::gnss::Emergency::Configuration::MergePartialFromCodedStream(v8, a2, v13) || *(a2 + 36) != 1)
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
        if (!proto::gnss::Emergency::Cdma1xContext::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CplaneContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneContext::ByteSize(proto::gnss::Emergency::CplaneContext *this)
{
  if (!*(this + 28))
  {
    v1 = 0;
    goto LABEL_19;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    v2 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
  }

  v3 = 2 * (*(v2 + 24) & 1) + (*(v2 + 24) & 2);
  if ((*(v2 + 24) & 4) != 0)
  {
    v3 |= 9u;
  }

  if (*(v2 + 24))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 20) = v4;
  v1 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_14:
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
    }

    v6 = 2 * (*(v5 + 16) & 1) + (*(v5 + 16) & 2) + ((*(v5 + 16) >> 1) & 2) + ((*(v5 + 16) >> 2) & 2);
    if (!*(v5 + 16))
    {
      v6 = 0;
    }

    *(v5 + 12) = v6;
    v1 = (v1 + v6 + 2);
  }

LABEL_19:
  *(this + 6) = v1;
  return v1;
}

void proto::gnss::Emergency::CplaneContext::CheckTypeAndMergeFrom(proto::gnss::Emergency::CplaneContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CplaneContext::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Cdma1xContext::MergeFrom(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v6 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 4);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 16) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 4) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 4);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 10);
    *(this + 4) |= 4u;
    *(this + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 11);
    *(this + 4) |= 8u;
    *(this + 11) = v5;
  }
}

void sub_1000BF79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneContext::CopyFrom(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CplaneContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CplaneContext::Swap(uint64_t this, proto::gnss::Emergency::CplaneContext *a2)
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

uint64_t proto::gnss::Emergency::EmergConfig::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  return this;
}

proto::gnss::Emergency::EmergConfig *proto::gnss::Emergency::EmergConfig::EmergConfig(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  *this = off_100176A30;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::EmergConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::EmergConfig::MergeFrom(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = *(a2 + 1);
    *(this + 10) |= 2u;
    v7 = *(this + 1);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 32);
  *(this + 10) |= 1u;
  *(this + 32) = v5;
  v4 = *(a2 + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  *(this + 10) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  proto::gnss::Emergency::CplaneConfig::MergeFrom(v8, v9);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_18:
    *(this + 10) |= 8u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    proto::gnss::Emergency::SuplConfig::MergeFrom(v10, v11);
  }
}

void sub_1000BFB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EmergConfig::~EmergConfig(proto::gnss::Emergency::EmergConfig *this)
{
  *this = off_100176A30;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176A30;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176A30;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::EmergConfig::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (proto::gnss::Emergency::EmergConfig::default_instance_ != this)
  {
    v4 = this[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[3];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::default_instance(proto::gnss::Emergency::EmergConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EmergConfig::default_instance_;
  if (!proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EmergConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EmergConfig::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 32) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
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

    v4 = *(this + 40);
    if ((v4 & 4) != 0)
    {
      v5 = *(this + 16);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v4 = *(this + 40);
      }
    }

    if ((v4 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::SuplConfig::Clear(this);
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::MergePartialFromCodedStream(proto::gnss::Emergency::EmergConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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

            v34 = 0;
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
              if (!result)
              {
                return result;
              }

              v12 = v34;
              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            *(this + 32) = v12 != 0;
            v9 = *(this + 10) | 1;
            *(this + 10) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(this + 10);
LABEL_28:
            *(this + 10) = v9 | 2;
            if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 26)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_34;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_34:
        *(this + 10) |= 4u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v35 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v35);
        if (!proto::gnss::Emergency::CplaneConfig::MergePartialFromCodedStream(v16, a2, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v20);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 34)
        {
          *(a2 + 1) = v25 + 1;
          goto LABEL_48;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_48:
      *(this + 10) |= 8u;
      v26 = *(this + 3);
      if (!v26)
      {
        operator new();
      }

      v36 = 0;
      v27 = *(a2 + 1);
      if (v27 >= *(a2 + 2) || *v27 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
        {
          return 0;
        }
      }

      else
      {
        v36 = *v27;
        *(a2 + 1) = v27 + 1;
      }

      v28 = *(a2 + 14);
      v29 = *(a2 + 15);
      *(a2 + 14) = v28 + 1;
      if (v28 >= v29)
      {
        return 0;
      }

      v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
      if (!proto::gnss::Emergency::SuplConfig::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v30);
      v32 = *(a2 + 14);
      v23 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v33 < 0 == v23)
      {
        *(a2 + 14) = v33;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
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

uint64_t proto::gnss::Emergency::EmergConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_8:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::ByteSize(proto::gnss::Emergency::EmergConfig *this, unsigned int a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 1);
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
      v3 = *(this + 10);
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

    v4 = (v10 + v4 + v6 + 1);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v11 = *(this + 2);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  if (*(v11 + 16))
  {
    v12 = 2 * (*(v11 + 16) & 1);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 12) = v12;
  v4 = (v4 + v12 + 2);
  if ((*(this + 10) & 8) != 0)
  {
LABEL_22:
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    v14 = proto::gnss::Emergency::SuplConfig::ByteSize(v13, a2);
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

LABEL_28:
  *(this + 9) = v4;
  return v4;
}

void proto::gnss::Emergency::EmergConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::EmergConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EmergConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EmergConfig::CopyFrom(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EmergConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::EmergConfig::Swap(uint64_t this, proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
  }

  return this;
}

double proto::gnss::Emergency::GpsAcqElement::SharedCtor(proto::gnss::Emergency::GpsAcqElement *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsAcqElement *proto::gnss::Emergency::GpsAcqElement::GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  *this = off_100176AA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsAcqElement::MergeFrom(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = *(a2 + 2);
    *(this + 16) |= 1u;
    *(this + 2) = v6;
    v4 = *(a2 + 16);
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

  v7 = *(a2 + 3);
  *(this + 16) |= 2u;
  *(this + 3) = v7;
  v4 = *(a2 + 16);
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
  v8 = *(a2 + 4);
  *(this + 16) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
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
  v9 = *(a2 + 5);
  *(this + 16) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v11 = *(a2 + 7);
    *(this + 16) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 16);
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
  v10 = *(a2 + 6);
  *(this + 16) |= 0x10u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
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
  v12 = *(a2 + 8);
  *(this + 16) |= 0x40u;
  *(this + 8) = v12;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 16) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 10);
    *(this + 16) |= 0x100u;
    *(this + 10) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(a2 + 11);
  *(this + 16) |= 0x200u;
  *(this + 11) = v14;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v16 = *(a2 + 13);
    *(this + 16) |= 0x800u;
    *(this + 13) = v16;
    if ((*(a2 + 16) & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_30:
  v15 = *(a2 + 12);
  *(this + 16) |= 0x400u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x1000) == 0)
  {
    return;
  }

LABEL_32:
  v17 = *(a2 + 14);
  if (v17 >= 7)
  {
    __assert_rtn("set_doppler_uncer_ext", "GnssEmergencyTypes.pb.h", 25157, "::proto::gnss::Emergency::GpsDopplerUncMpsExt_IsValid(value)");
  }

  *(this + 16) |= 0x1000u;
  *(this + 14) = v17;
}

void sub_1000C08FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqElement::~GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this)
{
  *this = off_100176AA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176AA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176AA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsAcqElement::default_instance(proto::gnss::Emergency::GpsAcqElement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsAcqElement::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqElement::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsAcqElement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqElement::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsAcqElement::MergePartialFromCodedStream(proto::gnss::Emergency::GpsAcqElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_34;
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
LABEL_40:
            *(this + 16) |= 1u;
            if (v10 < v7 && *v10 == 16)
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
              goto LABEL_43;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_40;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_43:
        if (v18 >= v7 || (v23 = *v18, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v23;
          v24 = v18 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 16) |= 2u;
        if (v24 >= v7 || *v24 != 24)
        {
          continue;
        }

        v15 = v24 + 1;
        *(a2 + 1) = v15;
LABEL_51:
        if (v15 >= v7 || (v25 = *v15, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v25;
          v26 = v15 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 16) |= 4u;
        if (v26 >= v7 || *v26 != 32)
        {
          continue;
        }

        v16 = v26 + 1;
        *(a2 + 1) = v16;
LABEL_59:
        if (v16 >= v7 || (v27 = *v16, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v27;
          v28 = v16 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 16) |= 8u;
        if (v28 >= v7 || *v28 != 40)
        {
          continue;
        }

        v12 = v28 + 1;
        *(a2 + 1) = v12;
LABEL_67:
        if (v12 >= v7 || (v29 = *v12, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v29;
          v30 = v12 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 16) |= 0x10u;
        if (v30 >= v7 || *v30 != 48)
        {
          continue;
        }

        v19 = v30 + 1;
        *(a2 + 1) = v19;
LABEL_75:
        if (v19 >= v7 || (v31 = *v19, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v31;
          v32 = v19 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 16) |= 0x20u;
        if (v32 >= v7 || *v32 != 56)
        {
          continue;
        }

        v20 = v32 + 1;
        *(a2 + 1) = v20;
LABEL_83:
        if (v20 >= v7 || (v33 = *v20, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v33;
          v34 = v20 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 16) |= 0x40u;
        if (v34 >= v7 || *v34 != 64)
        {
          continue;
        }

        v17 = v34 + 1;
        *(a2 + 1) = v17;
LABEL_91:
        if (v17 >= v7 || (v35 = *v17, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v35;
          v36 = v17 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 16) |= 0x80u;
        if (v36 >= v7 || *v36 != 72)
        {
          continue;
        }

        v22 = v36 + 1;
        *(a2 + 1) = v22;
LABEL_99:
        if (v22 >= v7 || (v37 = *v22, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v37;
          v38 = v22 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 16) |= 0x100u;
        if (v38 >= v7 || *v38 != 80)
        {
          continue;
        }

        v14 = v38 + 1;
        *(a2 + 1) = v14;
LABEL_107:
        if (v14 >= v7 || (v39 = *v14, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v39;
          v40 = v14 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 16) |= 0x200u;
        if (v40 >= v7 || *v40 != 88)
        {
          continue;
        }

        v21 = v40 + 1;
        *(a2 + 1) = v21;
LABEL_115:
        if (v21 >= v7 || (v41 = *v21, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v41;
          v42 = v21 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 16) |= 0x400u;
        if (v42 >= v7 || *v42 != 96)
        {
          continue;
        }

        v11 = v42 + 1;
        *(a2 + 1) = v11;
LABEL_123:
        if (v11 >= v7 || (v43 = *v11, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v43;
          v44 = v11 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 16) |= 0x800u;
        if (v44 >= v7 || *v44 != 104)
        {
          continue;
        }

        v13 = v44 + 1;
        *(a2 + 1) = v13;
LABEL_131:
        v47 = 0;
        if (v13 >= v7 || (v45 = *v13, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
          if (!result)
          {
            return result;
          }

          v45 = v47;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v45 <= 6)
        {
          *(this + 16) |= 0x1000u;
          *(this + 14) = v45;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_51;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_59;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_67;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_75;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_83;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_91;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_99;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_107;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_115;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_131;
      default:
LABEL_34:
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