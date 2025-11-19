int *proto::gnss::Emergency::HorizWithUncertaintyVelocity::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::ByteSize(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, unsigned int a2)
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

void proto::gnss::Emergency::HorizWithUncertaintyVelocity::CheckTypeAndMergeFrom(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::HorizWithUncertaintyVelocity::CopyFrom(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithUncertaintyVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::HorizWithUncertaintyVelocity *proto::gnss::Emergency::HorizWithUncertaintyVelocity::Swap(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, proto::gnss::Emergency::HorizWithUncertaintyVelocity *a2)
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

double proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::SharedCtor(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::HorizWithVertUncertaintyVelocity(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *a2)
{
  *this = off_100175A40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergeFrom(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *a2)
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
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 9);
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
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 5);
    *(this + 9) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 9);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 6);
    *(this + 9) |= 0x10u;
    *(this + 6) = v10;
    if ((*(a2 + 9) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x20u;
    *(this + 7) = v5;
  }
}

void sub_1000A3FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::~HorizWithVertUncertaintyVelocity(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this)
{
  *this = off_100175A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergePartialFromCodedStream(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 >= v8 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 9) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_35;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_35:
      if (v15 >= v8 || (v17 = *v15, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 9) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v19 = *v9, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v19;
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 9) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          if (v14 >= v8 || (v21 = *v14, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 9) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_59:
            if (v16 >= v8 || (v23 = *v16, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v23;
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 9) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v25;
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 9) |= 0x20u;
              if (v26 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
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

int *proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[9];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[9];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::ByteSize(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if (*(this + 36))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 9);
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
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 9);
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
      v3 = *(this + 9);
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

      goto LABEL_27;
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
    v3 = *(this + 9);
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
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_31:
    v14 = *(this + 7);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_35:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::CheckTypeAndMergeFrom(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::CopyFrom(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::Swap(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this, proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *a2)
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
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
  }

  return this;
}

double proto::gnss::Emergency::VelocityInfo::SharedCtor(proto::gnss::Emergency::VelocityInfo *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::VelocityInfo *proto::gnss::Emergency::VelocityInfo::VelocityInfo(proto::gnss::Emergency::VelocityInfo *this, const proto::gnss::Emergency::VelocityInfo *a2)
{
  *this = off_100175AB8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gnss::Emergency::VelocityInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::VelocityInfo::MergeFrom(proto::gnss::Emergency::VelocityInfo *this, const proto::gnss::Emergency::VelocityInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    *(this + 11) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 16);
    }

    proto::gnss::Emergency::HorizWithVertVelocity::MergeFrom(v7, v8);
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  *(this + 11) |= 1u;
  v5 = *(this + 1);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 8);
  }

  proto::gnss::Emergency::HorizontalVelocity::MergeFrom(v5, v6);
  v4 = *(a2 + 11);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  *(this + 11) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 24);
  }

  proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_24:
    *(this + 11) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 32);
    }

    proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergeFrom(v11, v12);
  }
}

void sub_1000A4B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::VelocityInfo::~VelocityInfo(proto::gnss::Emergency::VelocityInfo *this)
{
  *this = off_100175AB8;
  proto::gnss::Emergency::VelocityInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175AB8;
  proto::gnss::Emergency::VelocityInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175AB8;
  proto::gnss::Emergency::VelocityInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::VelocityInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::VelocityInfo::default_instance_ != this)
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

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[4];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::VelocityInfo::default_instance(proto::gnss::Emergency::VelocityInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::VelocityInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::VelocityInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    if (*(this + 44))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::VelocityInfo::MergePartialFromCodedStream(proto::gnss::Emergency::VelocityInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_48:
          *(this + 11) |= 4u;
          v28 = *(this + 3);
          if (!v28)
          {
            operator new();
          }

          v46 = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v46);
          if (!proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
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

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 34)
          {
            *(a2 + 1) = v36 + 1;
            goto LABEL_62;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_62:
          *(this + 11) |= 8u;
          v37 = *(this + 4);
          if (!v37)
          {
            operator new();
          }

          v46 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v39 = *(a2 + 14);
          v40 = *(a2 + 15);
          *(a2 + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v46);
          if (!proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::MergePartialFromCodedStream(v37, a2, v42) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v41);
          v43 = *(a2 + 14);
          v16 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v16)
          {
            *(a2 + 14) = v44;
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

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      *(this + 11) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v46 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
        {
          return 0;
        }
      }

      else
      {
        v46 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v46);
      if (!proto::gnss::Emergency::HorizontalVelocity::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
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
LABEL_34:
        *(this + 11) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v46 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v46);
        if (!proto::gnss::Emergency::HorizWithVertVelocity::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
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
          goto LABEL_48;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_34;
    }

LABEL_22:
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

uint64_t proto::gnss::Emergency::VelocityInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_15:
    v10 = *(v5 + 32);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::VelocityInfo::ByteSize(proto::gnss::Emergency::VelocityInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(this + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::HorizontalVelocity::ByteSize(v5, a2);
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
  v3 = *(this + 11);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 16);
    }

    v10 = proto::gnss::Emergency::HorizWithVertVelocity::ByteSize(v9, a2);
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
    v3 = *(this + 11);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 24);
  }

  v14 = proto::gnss::Emergency::HorizWithUncertaintyVelocity::ByteSize(v13, a2);
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
  if ((*(this + 11) & 8) != 0)
  {
LABEL_27:
    v17 = *(this + 4);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 32);
    }

    v18 = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::ByteSize(v17, a2);
    v20 = v18;
    if (v18 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, v19);
    }

    else
    {
      v21 = 1;
    }

    v4 = (v4 + v20 + v21 + 1);
  }

LABEL_33:
  *(this + 10) = v4;
  return v4;
}

void proto::gnss::Emergency::VelocityInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::VelocityInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::VelocityInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::VelocityInfo::CopyFrom(proto::gnss::Emergency::VelocityInfo *this, const proto::gnss::Emergency::VelocityInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::VelocityInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::VelocityInfo::Swap(uint64_t this, proto::gnss::Emergency::VelocityInfo *a2)
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
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return this;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::VelocityEstimate *proto::gnss::Emergency::VelocityEstimate::VelocityEstimate(proto::gnss::Emergency::VelocityEstimate *this, const proto::gnss::Emergency::VelocityEstimate *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175B30;
  *(this + 6) = 0;
  proto::gnss::Emergency::VelocityEstimate::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::VelocityEstimate::MergeFrom(proto::gnss::Emergency::VelocityEstimate *this, const proto::gnss::Emergency::VelocityEstimate *a2)
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
        __assert_rtn("set_velocity_type", "GnssEmergencyTypes.pb.h", 19743, "::proto::gnss::Emergency::VelocityType_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8);
      }

      proto::gnss::Emergency::VelocityInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_1000A59AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::VelocityEstimate::~VelocityEstimate(proto::gnss::Emergency::VelocityEstimate *this)
{
  *this = off_100175B30;
  if (proto::gnss::Emergency::VelocityEstimate::default_instance_ != this)
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
  proto::gnss::Emergency::VelocityEstimate::~VelocityEstimate(this);

  operator delete();
}

void *proto::gnss::Emergency::VelocityEstimate::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::VelocityEstimate::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::default_instance(proto::gnss::Emergency::VelocityEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::VelocityEstimate::default_instance_;
  if (!proto::gnss::Emergency::VelocityEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::VelocityEstimate::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::VelocityInfo::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::MergePartialFromCodedStream(proto::gnss::Emergency::VelocityEstimate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!proto::gnss::Emergency::VelocityInfo::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::VelocityEstimate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::ByteSize(proto::gnss::Emergency::VelocityEstimate *this, unsigned int a2)
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
      v6 = *(proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::VelocityInfo::ByteSize(v6, a2);
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

void proto::gnss::Emergency::VelocityEstimate::CheckTypeAndMergeFrom(proto::gnss::Emergency::VelocityEstimate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::VelocityEstimate::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::VelocityEstimate::CopyFrom(proto::gnss::Emergency::VelocityEstimate *this, const proto::gnss::Emergency::VelocityEstimate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::VelocityEstimate::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::VelocityEstimate::Swap(uint64_t this, proto::gnss::Emergency::VelocityEstimate *a2)
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

double proto::gnss::Emergency::PositionReport::SharedCtor(proto::gnss::Emergency::PositionReport *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::PositionReport *proto::gnss::Emergency::PositionReport::PositionReport(proto::gnss::Emergency::PositionReport *this, const proto::gnss::Emergency::PositionReport *a2)
{
  *this = off_100175BA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  proto::gnss::Emergency::PositionReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PositionReport::MergeFrom(proto::gnss::Emergency::PositionReport *this, const proto::gnss::Emergency::PositionReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 2);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 19812, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(this + 16) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    *(this + 16) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 16) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 16);
  }

  proto::gnss::Emergency::SessionInfo::MergeFrom(v8, v9);
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_22:
  *(this + 16) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 24);
  }

  proto::gnss::Emergency::LocationInfo::MergeFrom(v10, v11);
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    *(this + 16) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 40);
    }

    proto::gnss::Emergency::LocEstimate::MergeFrom(v14, v15);
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_27:
  *(this + 16) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 32);
  }

  proto::gnss::Emergency::GanssLocationInfo::MergeFrom(v12, v13);
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_37:
  *(this + 16) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 48);
  }

  proto::gnss::Emergency::VelocityEstimate::MergeFrom(v16, v17);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 14);
    *(this + 16) |= 0x80u;
    *(this + 14) = v6;
  }
}

void sub_1000A64C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PositionReport::~PositionReport(proto::gnss::Emergency::PositionReport *this)
{
  *this = off_100175BA8;
  proto::gnss::Emergency::PositionReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175BA8;
  proto::gnss::Emergency::PositionReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175BA8;
  proto::gnss::Emergency::PositionReport::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::PositionReport::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::PositionReport::default_instance_ != this)
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

    this = v1[6];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::PositionReport::default_instance(proto::gnss::Emergency::PositionReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PositionReport::default_instance_;
  if (!proto::gnss::Emergency::PositionReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PositionReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PositionReport::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 64);
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
        v2 = *(this + 64);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::LocationInfo::Clear(this);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = proto::gnss::Emergency::LocEstimate::Clear(this);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = proto::gnss::Emergency::VelocityEstimate::Clear(this);
      }
    }

    *(v1 + 56) = 0;
  }

  *(v1 + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PositionReport::MergePartialFromCodedStream(proto::gnss::Emergency::PositionReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
                goto LABEL_80;
              }
            }

            else if (v7 == 6 && v8 == 2)
            {
              goto LABEL_94;
            }

            goto LABEL_34;
          }

          if (v7 != 7)
          {
            if (v7 == 8 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_122;
            }

            goto LABEL_34;
          }

          if (v8 != 2)
          {
            goto LABEL_34;
          }

LABEL_108:
          *(this + 16) |= 0x40u;
          v57 = *(this + 6);
          if (!v57)
          {
            operator new();
          }

          v68 = 0;
          v58 = *(a2 + 1);
          if (v58 >= *(a2 + 2) || *v58 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68))
            {
              return 0;
            }
          }

          else
          {
            v68 = *v58;
            *(a2 + 1) = v58 + 1;
          }

          v59 = *(a2 + 14);
          v60 = *(a2 + 15);
          *(a2 + 14) = v59 + 1;
          if (v59 >= v60)
          {
            return 0;
          }

          v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v68);
          if (!proto::gnss::Emergency::VelocityEstimate::MergePartialFromCodedStream(v57, a2, v62) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v61);
          v63 = *(a2 + 14);
          v27 = __OFSUB__(v63, 1);
          v64 = v63 - 1;
          if (v64 < 0 == v27)
          {
            *(a2 + 14) = v64;
          }

          v65 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v65 < v11 && *v65 == 64)
          {
            v12 = v65 + 1;
            *(a2 + 1) = v12;
LABEL_122:
            v68 = 0;
            if (v12 >= v11 || (v66 = *v12, (v66 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68);
              if (!result)
              {
                return result;
              }

              v66 = v68;
              v67 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v67 = v12 + 1;
              *(a2 + 1) = v67;
            }

            *(this + 14) = v66;
            *(this + 16) |= 0x80u;
            if (v67 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
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
            goto LABEL_66;
          }

          goto LABEL_34;
        }

        if (v8 != 2)
        {
          goto LABEL_34;
        }

        v15 = *(this + 16);
LABEL_52:
        *(this + 16) = v15 | 4;
        v20 = *(this + 2);
        if (!v20)
        {
          operator new();
        }

        v68 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68))
          {
            return 0;
          }
        }

        else
        {
          v68 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v68);
        if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
        v26 = *(a2 + 14);
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 < *(a2 + 2) && *v29 == 34)
        {
          *(a2 + 1) = v29 + 1;
LABEL_66:
          *(this + 16) |= 8u;
          v30 = *(this + 3);
          if (!v30)
          {
            operator new();
          }

          v68 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68))
            {
              return 0;
            }
          }

          else
          {
            v68 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v32 = *(a2 + 14);
          v33 = *(a2 + 15);
          *(a2 + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v68);
          if (!proto::gnss::Emergency::LocationInfo::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
          v36 = *(a2 + 14);
          v27 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v37 < 0 == v27)
          {
            *(a2 + 14) = v37;
          }

          v38 = *(a2 + 1);
          if (v38 < *(a2 + 2) && *v38 == 42)
          {
            *(a2 + 1) = v38 + 1;
LABEL_80:
            *(this + 16) |= 0x10u;
            v39 = *(this + 4);
            if (!v39)
            {
              operator new();
            }

            v68 = 0;
            v40 = *(a2 + 1);
            if (v40 >= *(a2 + 2) || *v40 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68))
              {
                return 0;
              }
            }

            else
            {
              v68 = *v40;
              *(a2 + 1) = v40 + 1;
            }

            v41 = *(a2 + 14);
            v42 = *(a2 + 15);
            *(a2 + 14) = v41 + 1;
            if (v41 >= v42)
            {
              return 0;
            }

            v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v68);
            if (!proto::gnss::Emergency::GanssLocationInfo::MergePartialFromCodedStream(v39, a2, v44) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v43);
            v45 = *(a2 + 14);
            v27 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v27)
            {
              *(a2 + 14) = v46;
            }

            v47 = *(a2 + 1);
            if (v47 < *(a2 + 2) && *v47 == 50)
            {
              *(a2 + 1) = v47 + 1;
LABEL_94:
              *(this + 16) |= 0x20u;
              v48 = *(this + 5);
              if (!v48)
              {
                operator new();
              }

              v68 = 0;
              v49 = *(a2 + 1);
              if (v49 >= *(a2 + 2) || *v49 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68))
                {
                  return 0;
                }
              }

              else
              {
                v68 = *v49;
                *(a2 + 1) = v49 + 1;
              }

              v50 = *(a2 + 14);
              v51 = *(a2 + 15);
              *(a2 + 14) = v50 + 1;
              if (v50 >= v51)
              {
                return 0;
              }

              v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v68);
              if (!proto::gnss::Emergency::LocEstimate::MergePartialFromCodedStream(v48, a2, v53) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v52);
              v54 = *(a2 + 14);
              v27 = __OFSUB__(v54, 1);
              v55 = v54 - 1;
              if (v55 < 0 == v27)
              {
                *(a2 + 14) = v55;
              }

              v56 = *(a2 + 1);
              if (v56 < *(a2 + 2) && *v56 == 58)
              {
                *(a2 + 1) = v56 + 1;
                goto LABEL_108;
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

      v68 = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68);
        if (!result)
        {
          return result;
        }

        v14 = v68;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v14 <= 8)
      {
        *(this + 16) |= 1u;
        *(this + 2) = v14;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 16)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        v68 = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v68);
          if (!result)
          {
            return result;
          }

          v18 = v68;
          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v19 = v10 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 3) = v18;
        v15 = *(this + 16) | 2;
        *(this + 16) = v15;
        if (v19 < v9 && *v19 == 26)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
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

uint64_t proto::gnss::Emergency::PositionReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
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
    v7 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
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

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
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

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 64);
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
    v10 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 64) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v12, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::PositionReport::ByteSize(proto::gnss::Emergency::PositionReport *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_62;
  }

  if (*(this + 64))
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
      v3 = *(this + 16);
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
    if ((*(this + 64) & 2) == 0)
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
    v3 = *(this + 16);
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
      v8 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::SessionInfo::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 1);
    v3 = *(this + 16);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 24);
  }

  v13 = proto::gnss::Emergency::LocationInfo::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
  }

  else
  {
    v15 = 1;
  }

  v4 = (v4 + v14 + v15 + 1);
  v3 = *(this + 16);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_38:
  v16 = *(this + 4);
  if (!v16)
  {
    v16 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 32);
  }

  v17 = proto::gnss::Emergency::GanssLocationInfo::ByteSize(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(this + 16);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_44:
  v20 = *(this + 5);
  if (!v20)
  {
    v20 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 40);
  }

  v21 = proto::gnss::Emergency::LocEstimate::ByteSize(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 = (v4 + v22 + v23 + 1);
  v3 = *(this + 16);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  v24 = *(this + 6);
  if (!v24)
  {
    v24 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 48);
  }

  v25 = proto::gnss::Emergency::VelocityEstimate::ByteSize(v24, a2);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
  }

  else
  {
    v27 = 1;
  }

  v4 = (v4 + v26 + v27 + 1);
  if ((*(this + 16) & 0x80) != 0)
  {
LABEL_56:
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

LABEL_62:
  *(this + 15) = v4;
  return v4;
}

void proto::gnss::Emergency::PositionReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::PositionReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PositionReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PositionReport::CopyFrom(proto::gnss::Emergency::PositionReport *this, const proto::gnss::Emergency::PositionReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PositionReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::PositionReport::Swap(uint64_t this, proto::gnss::Emergency::PositionReport *a2)
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
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    LODWORD(v8) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v8;
    LODWORD(v8) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v8;
  }

  return this;
}

double proto::gnss::Emergency::GanssMeasurementElement::SharedCtor(proto::gnss::Emergency::GanssMeasurementElement *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GanssMeasurementElement *proto::gnss::Emergency::GanssMeasurementElement::GanssMeasurementElement(proto::gnss::Emergency::GanssMeasurementElement *this, const proto::gnss::Emergency::GanssMeasurementElement *a2)
{
  *this = off_100175C20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Emergency::GanssMeasurementElement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssMeasurementElement::MergeFrom(proto::gnss::Emergency::GanssMeasurementElement *this, const proto::gnss::Emergency::GanssMeasurementElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 12);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 12) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 12) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 4);
  *(this + 12) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 5);
  *(this + 12) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 12);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v12 = *(a2 + 7);
    *(this + 12) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = *(a2 + 6);
  if (v11 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20181, "::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  *(this + 12) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 12);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_23:
  v13 = *(a2 + 8);
  *(this + 12) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(a2 + 12);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 12) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 12);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 10);
    *(this + 12) |= 0x100u;
    *(this + 10) = v6;
  }
}

void sub_1000A7854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssMeasurementElement::~GanssMeasurementElement(proto::gnss::Emergency::GanssMeasurementElement *this)
{
  *this = off_100175C20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175C20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175C20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssMeasurementElement::default_instance(proto::gnss::Emergency::GanssMeasurementElement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssMeasurementElement::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurementElement::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssMeasurementElement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssMeasurementElement::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementElement::MergePartialFromCodedStream(proto::gnss::Emergency::GanssMeasurementElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_54:
            if (v17 >= v10 || (v23 = *v17, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v23;
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 12) |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v12 = v24 + 1;
              *(a2 + 1) = v12;
LABEL_62:
              if (v12 >= v10 || (v25 = *v12, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v25;
                v26 = v12 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 12) |= 8u;
              if (v26 < v10 && *v26 == 40)
              {
                v19 = v26 + 1;
                *(a2 + 1) = v19;
                goto LABEL_70;
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

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v38 = 0;
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
              if (!result)
              {
                return result;
              }

              v15 = v38;
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 2) = v15;
            *(this + 12) |= 1u;
            if (v16 < v10 && *v16 == 16)
            {
              v11 = v16 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v11 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 12) |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v17 = v22 + 1;
                *(a2 + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_80;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_70:
        v39 = 0;
        if (v19 >= v10 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v27 = v39;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v27 <= 5)
        {
          *(this + 12) |= 0x10u;
          *(this + 6) = v27;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v28 < v8 && *v28 == 48)
        {
          v13 = v28 + 1;
          *(a2 + 1) = v13;
LABEL_80:
          if (v13 >= v8 || (v29 = *v13, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v29;
            v30 = v13 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 12) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v18 = v30 + 1;
            *(a2 + 1) = v18;
LABEL_88:
            if (v18 >= v8 || (v31 = *v18, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v31;
              v32 = v18 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 12) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(a2 + 1) = v20;
              goto LABEL_96;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_88;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v20 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_96:
      if (v20 >= v8 || (v33 = *v20, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v33;
        v34 = v20 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 12) |= 0x80u;
      if (v34 < v8 && *v34 == 72)
      {
        v9 = v34 + 1;
        *(a2 + 1) = v9;
LABEL_104:
        if (v9 >= v8 || (v35 = *v9, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v35;
          v36 = v9 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 12) |= 0x100u;
        if (v36 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_104;
    }

LABEL_37:
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

int *proto::gnss::Emergency::GanssMeasurementElement::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[12];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[6], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::GanssMeasurementElement::ByteSize(proto::gnss::Emergency::GanssMeasurementElement *this, unsigned int a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 12);
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
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
    v3 = *(this + 12);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_40:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_44:
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_24:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_56:
  *(this + 11) = v4;
  return v4;
}

void proto::gnss::Emergency::GanssMeasurementElement::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssMeasurementElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssMeasurementElement::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssMeasurementElement::CopyFrom(proto::gnss::Emergency::GanssMeasurementElement *this, const proto::gnss::Emergency::GanssMeasurementElement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssMeasurementElement::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssMeasurementElement *proto::gnss::Emergency::GanssMeasurementElement::Swap(proto::gnss::Emergency::GanssMeasurementElement *this, proto::gnss::Emergency::GanssMeasurementElement *a2)
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
    v11 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
  }

  return this;
}

double proto::gnss::Emergency::GanssSignalMeasurementInfo::SharedCtor(proto::gnss::Emergency::GanssSignalMeasurementInfo *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  return result;
}

proto::gnss::Emergency::GanssSignalMeasurementInfo *proto::gnss::Emergency::GanssSignalMeasurementInfo::GanssSignalMeasurementInfo(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, const proto::gnss::Emergency::GanssSignalMeasurementInfo *a2)
{
  *(this + 5) = 0;
  *(this + 12) = 0;
  *this = off_100175C98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::GanssSignalMeasurementInfo::MergeFrom(this, a2);
  return this;
}

void sub_1000A8420(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssSignalMeasurementInfo::MergeFrom(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, const proto::gnss::Emergency::GanssSignalMeasurementInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), *(a2 + 6) + *(this + 6));
  LODWORD(v4) = *(a2 + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v6 = *(*(a2 + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v7 + 1);
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        operator new();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      proto::gnss::Emergency::GanssMeasurementElement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 6);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 48);
  if (v10)
  {
    if (*(a2 + 48))
    {
      v12 = *(a2 + 2);
      *(this + 12) |= 1u;
      *(this + 2) = v12;
      v10 = *(a2 + 12);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 3);
    *(this + 12) |= 2u;
    *(this + 3) = v13;
    if ((*(a2 + 12) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v11 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v11;
  }
}

void sub_1000A8660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssSignalMeasurementInfo::~GanssSignalMeasurementInfo(proto::gnss::Emergency::GanssSignalMeasurementInfo *this)
{
  *this = off_100175C98;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssSignalMeasurementInfo::~GanssSignalMeasurementInfo(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::Clear(proto::gnss::Emergency::GanssSignalMeasurementInfo *this)
{
  if (*(this + 48))
  {
    *(this + 1) = 0;
    *(this + 10) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  *(this + 12) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::MergePartialFromCodedStream(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v20 = *(this + 7);
          v21 = *(this + 6);
          if (v21 >= v20)
          {
            if (v20 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v20 + 1);
              v20 = *(this + 7);
            }

            *(this + 7) = v20 + 1;
            operator new();
          }

          v22 = *(this + 2);
          *(this + 6) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v33 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v33);
          if (!proto::gnss::Emergency::GanssMeasurementElement::MergePartialFromCodedStream(v23, a2, v28) || *(a2 + 36) != 1)
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

          v19 = *(a2 + 1);
          v32 = *(a2 + 2);
          if (v19 < v32 && *v19 == 34)
          {
LABEL_44:
            *(a2 + 1) = v19 + 1;
            continue;
          }

          break;
        }

        if (v19 == v32 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 12) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_29:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
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
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 12) |= 2u;
        if (v17 < v9 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v9 || (v18 = *v14, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 12) |= 4u;
          if (v19 < v9 && *v19 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

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

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 48) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::ByteSize(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(this + 48))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 12);
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
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 10);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
  }

LABEL_19:
  v10 = *(this + 6);
  v11 = (v10 + v4);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = proto::gnss::Emergency::GanssMeasurementElement::ByteSize(*(*(this + 2) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      }

      else
      {
        v15 = 1;
      }

      v11 = (v14 + v11 + v15);
      ++v12;
    }

    while (v12 < *(this + 6));
  }

  *(this + 11) = v11;
  return v11;
}

void proto::gnss::Emergency::GanssSignalMeasurementInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssSignalMeasurementInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssSignalMeasurementInfo::CopyFrom(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, const proto::gnss::Emergency::GanssSignalMeasurementInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssSignalMeasurementInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssSignalMeasurementInfo *proto::gnss::Emergency::GanssSignalMeasurementInfo::Swap(proto::gnss::Emergency::GanssSignalMeasurementInfo *this, proto::gnss::Emergency::GanssSignalMeasurementInfo *a2)
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
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 16), (a2 + 16));
    v7 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GanssMeasurementsForSingleGanss *proto::gnss::Emergency::GanssMeasurementsForSingleGanss::GanssMeasurementsForSingleGanss(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, const proto::gnss::Emergency::GanssMeasurementsForSingleGanss *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175D10;
  *(this + 6) = 0;
  proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergeFrom(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, const proto::gnss::Emergency::GanssMeasurementsForSingleGanss *a2)
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
      if (v5 >= 7)
      {
        __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 20391, "::proto::gnss::Emergency::GanssId_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8);
      }

      proto::gnss::Emergency::GanssSignalMeasurementInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_1000A90BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::~GanssMeasurementsForSingleGanss(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this)
{
  *this = off_100175D10;
  if (proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ != this)
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
  proto::gnss::Emergency::GanssMeasurementsForSingleGanss::~GanssMeasurementsForSingleGanss(this);

  operator delete();
}

void *proto::gnss::Emergency::GanssMeasurementsForSingleGanss::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 8) = 0;
          *(v3 + 40) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v3 + 16);
        *(v3 + 48) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergePartialFromCodedStream(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (v9 <= 6)
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
    if (!proto::gnss::Emergency::GanssSignalMeasurementInfo::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::ByteSize(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, unsigned int a2)
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
      v6 = *(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::GanssSignalMeasurementInfo::ByteSize(v6, a2);
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

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::CopyFrom(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, const proto::gnss::Emergency::GanssMeasurementsForSingleGanss *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::Swap(uint64_t this, proto::gnss::Emergency::GanssMeasurementsForSingleGanss *a2)
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

double proto::gnss::Emergency::GanssMeasurements::SharedCtor(proto::gnss::Emergency::GanssMeasurements *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GanssMeasurements *proto::gnss::Emergency::GanssMeasurements::GanssMeasurements(proto::gnss::Emergency::GanssMeasurements *this, const proto::gnss::Emergency::GanssMeasurements *a2)
{
  *this = off_100175D88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gnss::Emergency::GanssMeasurements::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssMeasurements::MergeFrom(proto::gnss::Emergency::GanssMeasurements *this, const proto::gnss::Emergency::GanssMeasurements *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 2);
      if (v5 >= 6)
      {
        __assert_rtn("set_time_id", "GnssEmergencyTypes.pb.h", 20460, "::proto::gnss::Emergency::GnssTimeId_IsValid(value)");
      }

      *(this + 13) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 13) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 13);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 4);
    *(this + 13) |= 4u;
    *(this + 4) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8 = *(a2 + 5);
    *(this + 13) |= 8u;
    *(this + 5) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_11:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 8);
    *(this + 13) |= 0x10u;
    *(this + 8) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(this + 13) |= 0x20u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 24);
    }

    proto::gnss::Emergency::GanssTimeMeasuredParams::MergeFrom(v10, v11);
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

LABEL_25:
      *(this + 13) |= 0x80u;
      v13 = *(this + 5);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 5);
      if (!v14)
      {
        v14 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 40);
      }

      proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergeFrom(v13, v14);
      return;
    }

LABEL_24:
    v12 = *(a2 + 9);
    *(this + 13) |= 0x40u;
    *(this + 9) = v12;
    if ((*(a2 + 13) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_25;
  }
}

void sub_1000A9AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssMeasurements::~GanssMeasurements(proto::gnss::Emergency::GanssMeasurements *this)
{
  *this = off_100175D88;
  proto::gnss::Emergency::GanssMeasurements::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175D88;
  proto::gnss::Emergency::GanssMeasurements::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175D88;
  proto::gnss::Emergency::GanssMeasurements::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::GanssMeasurements::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssMeasurements::default_instance_ != this)
  {
    v1 = this;
    v2 = this[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[5];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurements::default_instance(proto::gnss::Emergency::GanssMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssMeasurements::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssMeasurements::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::GanssTimeMeasuredParams::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    *(v1 + 36) = 0;
    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurements::MergePartialFromCodedStream(proto::gnss::Emergency::GanssMeasurements *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_53;
              }
            }

            else if (v7 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_61;
            }

            goto LABEL_34;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_34;
            }

            v50 = 0;
            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v15 = v50;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v15 <= 5)
            {
              *(this + 13) |= 1u;
              *(this + 2) = v15;
            }

            v21 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v21 < v9 && *v21 == 16)
            {
              v10 = v21 + 1;
              *(a2 + 1) = v10;
LABEL_45:
              if (v10 >= v9 || (v22 = *v10, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v23 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v22;
                v23 = v10 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 13) |= 2u;
              if (v23 < v9 && *v23 == 24)
              {
                v17 = v23 + 1;
                *(a2 + 1) = v17;
LABEL_53:
                if (v17 >= v9 || (v24 = *v17, v24 < 0))
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
                  v25 = v17 + 1;
                  *(a2 + 1) = v25;
                }

                *(this + 13) |= 4u;
                if (v25 < v9 && *v25 == 32)
                {
                  v12 = v25 + 1;
                  *(a2 + 1) = v12;
LABEL_61:
                  if (v12 >= v9 || (v26 = *v12, v26 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                    if (!result)
                    {
                      return result;
                    }

                    v27 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 5) = v26;
                    v27 = v12 + 1;
                    *(a2 + 1) = v27;
                  }

                  *(this + 13) |= 8u;
                  if (v27 < v9 && *v27 == 40)
                  {
                    v16 = v27 + 1;
                    *(a2 + 1) = v16;
LABEL_69:
                    if (v16 >= v9 || (v28 = *v16, v28 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                      if (!result)
                      {
                        return result;
                      }

                      v29 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 8) = v28;
                      v29 = v16 + 1;
                      *(a2 + 1) = v29;
                    }

                    v11 = *(this + 13) | 0x10;
                    *(this + 13) = v11;
                    if (v29 < v9 && *v29 == 50)
                    {
                      *(a2 + 1) = v29 + 1;
                      goto LABEL_77;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v7 == 2 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_45;
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

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_69;
          }

          goto LABEL_34;
        }

        if (v7 != 6 || v8 != 2)
        {
          goto LABEL_34;
        }

        v11 = *(this + 13);
LABEL_77:
        *(this + 13) = v11 | 0x20;
        v30 = *(this + 3);
        if (!v30)
        {
          operator new();
        }

        v51 = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v31;
          *(a2 + 1) = v31 + 1;
        }

        v32 = *(a2 + 14);
        v33 = *(a2 + 15);
        *(a2 + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v51);
        if (!proto::gnss::Emergency::GanssTimeMeasuredParams::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
        v36 = *(a2 + 14);
        v37 = __OFSUB__(v36, 1);
        v38 = v36 - 1;
        if (v38 < 0 == v37)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v39 < v18 && *v39 == 56)
        {
          v19 = v39 + 1;
          *(a2 + 1) = v19;
          goto LABEL_91;
        }
      }

      if (v7 != 7)
      {
        if (v7 == 8 && v8 == 2)
        {
          v13 = *(this + 13);
          goto LABEL_99;
        }

        goto LABEL_34;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v19 = *(a2 + 1);
      v18 = *(a2 + 2);
LABEL_91:
      if (v19 >= v18 || (v40 = *v19, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v41 = *(a2 + 1);
        v18 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v40;
        v41 = v19 + 1;
        *(a2 + 1) = v41;
      }

      v13 = *(this + 13) | 0x40;
      *(this + 13) = v13;
    }

    while (v41 >= v18 || *v41 != 66);
    *(a2 + 1) = v41 + 1;
LABEL_99:
    *(this + 13) = v13 | 0x80;
    v42 = *(this + 5);
    if (!v42)
    {
      operator new();
    }

    v52 = 0;
    v43 = *(a2 + 1);
    if (v43 >= *(a2 + 2) || *v43 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
      {
        return 0;
      }
    }

    else
    {
      v52 = *v43;
      *(a2 + 1) = v43 + 1;
    }

    v44 = *(a2 + 14);
    v45 = *(a2 + 15);
    *(a2 + 14) = v44 + 1;
    if (v44 >= v45)
    {
      return 0;
    }

    v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v52);
    if (!proto::gnss::Emergency::GanssMeasurementsForSingleGanss::MergePartialFromCodedStream(v42, a2, v47) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v46);
    v48 = *(a2 + 14);
    v37 = __OFSUB__(v48, 1);
    v49 = v48 - 1;
    if (v49 < 0 == v37)
    {
      *(a2 + 14) = v49;
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

uint64_t proto::gnss::Emergency::GanssMeasurements::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
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

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_15:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 40);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::GanssMeasurements::ByteSize(proto::gnss::Emergency::GanssMeasurements *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (*(this + 52))
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
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
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_32:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_42:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_36:
  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 24);
  }

  v15 = proto::gnss::Emergency::GanssTimeMeasuredParams::ByteSize(v14, a2);
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
  v3 = *(this + 13);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  v20 = *(this + 5);
  if (!v20)
  {
    v20 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 40);
  }

  v21 = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::ByteSize(v20, a2);
  v23 = v21;
  if (v21 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
LABEL_52:
  *(this + 12) = v4;
  return v4;
}

void proto::gnss::Emergency::GanssMeasurements::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssMeasurements *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssMeasurements::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssMeasurements::CopyFrom(proto::gnss::Emergency::GanssMeasurements *this, const proto::gnss::Emergency::GanssMeasurements *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssMeasurements::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssMeasurements::Swap(uint64_t this, proto::gnss::Emergency::GanssMeasurements *a2)
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
    LODWORD(v7) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    LODWORD(v8) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v8;
    LODWORD(v8) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v8;
  }

  return this;
}

double proto::gnss::Emergency::GpsMeasurementElement::SharedCtor(proto::gnss::Emergency::GpsMeasurementElement *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsMeasurementElement *proto::gnss::Emergency::GpsMeasurementElement::GpsMeasurementElement(proto::gnss::Emergency::GpsMeasurementElement *this, const proto::gnss::Emergency::GpsMeasurementElement *a2)
{
  *this = off_100175E00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Emergency::GpsMeasurementElement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsMeasurementElement::MergeFrom(proto::gnss::Emergency::GpsMeasurementElement *this, const proto::gnss::Emergency::GpsMeasurementElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 12);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 12) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 12) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 4);
  *(this + 12) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 5);
  *(this + 12) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 12);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 7);
    *(this + 12) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 6);
  *(this + 12) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 12);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 8);
  if (v13 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20813, "::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  *(this + 12) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(a2 + 12);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 12) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 12);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 10);
    *(this + 12) |= 0x100u;
    *(this + 10) = v6;
  }
}

void sub_1000AAA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsMeasurementElement::~GpsMeasurementElement(proto::gnss::Emergency::GpsMeasurementElement *this)
{
  *this = off_100175E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsMeasurementElement::default_instance(proto::gnss::Emergency::GpsMeasurementElement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsMeasurementElement::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurementElement::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsMeasurementElement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsMeasurementElement::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsMeasurementElement::MergePartialFromCodedStream(proto::gnss::Emergency::GpsMeasurementElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_54:
            if (v17 >= v10 || (v23 = *v17, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v23;
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 12) |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v12 = v24 + 1;
              *(a2 + 1) = v12;
LABEL_62:
              if (v12 >= v10 || (v25 = *v12, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v25;
                v26 = v12 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 12) |= 8u;
              if (v26 < v10 && *v26 == 40)
              {
                v19 = v26 + 1;
                *(a2 + 1) = v19;
                goto LABEL_70;
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

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v38 = 0;
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
              if (!result)
              {
                return result;
              }

              v15 = v38;
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 2) = v15;
            *(this + 12) |= 1u;
            if (v16 < v10 && *v16 == 16)
            {
              v11 = v16 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v11 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 12) |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v17 = v22 + 1;
                *(a2 + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_70:
        if (v19 >= v10 || (v27 = *v19, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v19 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 12) |= 0x10u;
        if (v28 < v10 && *v28 == 48)
        {
          v13 = v28 + 1;
          *(a2 + 1) = v13;
LABEL_78:
          if (v13 >= v10 || (v29 = *v13, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v29;
            v30 = v13 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 12) |= 0x20u;
          if (v30 < v10 && *v30 == 56)
          {
            v18 = v30 + 1;
            *(a2 + 1) = v18;
LABEL_86:
            v39 = 0;
            if (v18 >= v10 || (v31 = *v18, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v31 = v39;
            }

            else
            {
              *(a2 + 1) = v18 + 1;
            }

            if (v31 <= 5)
            {
              *(this + 12) |= 0x40u;
              *(this + 8) = v31;
            }

            v32 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v32 < v8 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(a2 + 1) = v20;
              goto LABEL_96;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v20 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_96:
      if (v20 >= v8 || (v33 = *v20, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v33;
        v34 = v20 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 12) |= 0x80u;
      if (v34 < v8 && *v34 == 72)
      {
        v9 = v34 + 1;
        *(a2 + 1) = v9;
LABEL_104:
        if (v9 >= v8 || (v35 = *v9, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v35;
          v36 = v9 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 12) |= 0x100u;
        if (v36 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_104;
    }

LABEL_37:
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

int *proto::gnss::Emergency::GpsMeasurementElement::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[12];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v5[8], v4, a4);
  v6 = v5[12];
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::GpsMeasurementElement::ByteSize(proto::gnss::Emergency::GpsMeasurementElement *this, unsigned int a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 12);
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_34:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_42:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_24:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_52:
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_56:
  *(this + 11) = v4;
  return v4;
}

void proto::gnss::Emergency::GpsMeasurementElement::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsMeasurementElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsMeasurementElement::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsMeasurementElement::CopyFrom(proto::gnss::Emergency::GpsMeasurementElement *this, const proto::gnss::Emergency::GpsMeasurementElement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsMeasurementElement::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsMeasurementElement *proto::gnss::Emergency::GpsMeasurementElement::Swap(proto::gnss::Emergency::GpsMeasurementElement *this, proto::gnss::Emergency::GpsMeasurementElement *a2)
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
    v11 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
  }

  return this;
}

double proto::gnss::Emergency::GpsMeasurements::SharedCtor(proto::gnss::Emergency::GpsMeasurements *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return result;
}

proto::gnss::Emergency::GpsMeasurements *proto::gnss::Emergency::GpsMeasurements::GpsMeasurements(proto::gnss::Emergency::GpsMeasurements *this, const proto::gnss::Emergency::GpsMeasurements *a2)
{
  *this = off_100175E78;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GpsMeasurements::MergeFrom(this, a2);
  return this;
}

void sub_1000AB668(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsMeasurements::MergeFrom(proto::gnss::Emergency::GpsMeasurements *this, const proto::gnss::Emergency::GpsMeasurements *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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
      proto::gnss::Emergency::GpsMeasurementElement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 19);
  if (!v10)
  {
    goto LABEL_22;
  }

  if (v10)
  {
    v14 = *(a2 + 2);
    *(this + 19) |= 1u;
    *(this + 2) = v14;
    v10 = *(a2 + 19);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 3);
  *(this + 19) |= 2u;
  *(this + 3) = v15;
  v10 = *(a2 + 19);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 4);
  *(this + 19) |= 4u;
  *(this + 4) = v16;
  v10 = *(a2 + 19);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    *(this + 19) |= 0x20u;
    v18 = *(this + 6);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 6);
    if (!v19)
    {
      v19 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 48);
    }

    proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(v18, v19);
    v10 = *(a2 + 19);
    if ((v10 & 0x40) == 0)
    {
LABEL_20:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_32:
  v17 = *(a2 + 5);
  *(this + 19) |= 8u;
  *(this + 5) = v17;
  v10 = *(a2 + 19);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_38:
  v20 = *(a2 + 14);
  *(this + 19) |= 0x40u;
  *(this + 14) = v20;
  v10 = *(a2 + 19);
  if ((v10 & 0x80) != 0)
  {
LABEL_21:
    v11 = *(a2 + 15);
    *(this + 19) |= 0x80u;
    *(this + 15) = v11;
    v10 = *(a2 + 19);
  }

LABEL_22:
  if ((v10 & 0x100) != 0)
  {
    *(this + 19) |= 0x100u;
    v12 = *(this + 8);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 64);
    }

    proto::gnss::Emergency::GpsTOD::MergeFrom(v12, v13);
  }
}

void sub_1000AB9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsMeasurements::~GpsMeasurements(proto::gnss::Emergency::GpsMeasurements *this)
{
  *this = off_100175E78;
  v2 = (this + 24);
  proto::gnss::Emergency::GpsMeasurements::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsMeasurements::~GpsMeasurements(this);

  operator delete();
}

void *proto::gnss::Emergency::GpsMeasurements::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsMeasurements::default_instance_ != this)
  {
    v1 = this;
    v2 = this[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[8];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsMeasurements::default_instance(proto::gnss::Emergency::GpsMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsMeasurements::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsMeasurements::Clear(proto::gnss::Emergency::GpsMeasurements *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 6);
      if (v3)
      {
        proto::gnss::Emergency::GpsTimeMeasuredParams::Clear(v3);
        v2 = *(this + 19);
      }
    }

    *(this + 7) = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    v4 = *(this + 8);
    if (v4)
    {
      if (*(v4 + 24))
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(v4 + 24) = 0;
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 19) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsMeasurements::MergePartialFromCodedStream(proto::gnss::Emergency::GpsMeasurements *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v7 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_62:
            if (v12 >= v10 || (v25 = *v12, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v25;
              v26 = v12 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 19) |= 8u;
            if (v26 < v10 && *v26 == 42)
            {
              while (1)
              {
                *(a2 + 1) = v26 + 1;
LABEL_70:
                v27 = *(this + 9);
                v28 = *(this + 8);
                if (v28 >= v27)
                {
                  if (v27 == *(this + 10))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v27 + 1);
                    v27 = *(this + 9);
                  }

                  *(this + 9) = v27 + 1;
                  operator new();
                }

                v29 = *(this + 3);
                *(this + 8) = v28 + 1;
                v30 = *(v29 + 8 * v28);
                v61 = 0;
                v31 = *(a2 + 1);
                if (v31 >= *(a2 + 2) || *v31 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61))
                  {
                    return 0;
                  }
                }

                else
                {
                  v61 = *v31;
                  *(a2 + 1) = v31 + 1;
                }

                v32 = *(a2 + 14);
                v33 = *(a2 + 15);
                *(a2 + 14) = v32 + 1;
                if (v32 >= v33)
                {
                  return 0;
                }

                v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v61);
                if (!proto::gnss::Emergency::GpsMeasurementElement::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
                v36 = *(a2 + 14);
                v37 = __OFSUB__(v36, 1);
                v38 = v36 - 1;
                if (v38 < 0 == v37)
                {
                  *(a2 + 14) = v38;
                }

                v26 = *(a2 + 1);
                if (v26 >= *(a2 + 2))
                {
                  break;
                }

                v39 = *v26;
                if (v39 != 42)
                {
                  if (v39 != 50)
                  {
                    goto LABEL_1;
                  }

                  *(a2 + 1) = v26 + 1;
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

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v15 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v14;
              v15 = v13 + 1;
              *(a2 + 1) = v15;
            }

            *(this + 19) |= 1u;
            if (v15 < v10 && *v15 == 16)
            {
              v11 = v15 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v11 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 19) |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v16 = v22 + 1;
                *(a2 + 1) = v16;
LABEL_54:
                if (v16 >= v10 || (v23 = *v16, v23 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v24 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v23;
                  v24 = v16 + 1;
                  *(a2 + 1) = v24;
                }

                *(this + 19) |= 4u;
                if (v24 < v10 && *v24 == 32)
                {
                  v12 = v24 + 1;
                  *(a2 + 1) = v12;
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

          v18 = *(a2 + 1);
          v17 = *(a2 + 2);
          goto LABEL_102;
        }

        if (v7 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v19 = *(a2 + 1);
          v17 = *(a2 + 2);
LABEL_110:
          if (v19 >= v17 || (v51 = *v19, v51 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
            if (!result)
            {
              return result;
            }

            v52 = *(a2 + 1);
            v17 = *(a2 + 2);
          }

          else
          {
            *(this + 15) = v51;
            v52 = v19 + 1;
            *(a2 + 1) = v52;
          }

          v9 = *(this + 19) | 0x80;
          *(this + 19) = v9;
          if (v52 < v17 && *v52 == 74)
          {
            *(a2 + 1) = v52 + 1;
            goto LABEL_118;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 2)
          {
            goto LABEL_37;
          }

          v9 = *(this + 19);
LABEL_118:
          *(this + 19) = v9 | 0x100;
          v53 = *(this + 8);
          if (!v53)
          {
            operator new();
          }

          v63 = 0;
          v54 = *(a2 + 1);
          if (v54 >= *(a2 + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v63))
            {
              return 0;
            }
          }

          else
          {
            v63 = *v54;
            *(a2 + 1) = v54 + 1;
          }

          v55 = *(a2 + 14);
          v56 = *(a2 + 15);
          *(a2 + 14) = v55 + 1;
          if (v55 >= v56)
          {
            return 0;
          }

          v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v63);
          if (!proto::gnss::Emergency::GpsTOD::MergePartialFromCodedStream(v53, a2, v58) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v57);
          v59 = *(a2 + 14);
          v37 = __OFSUB__(v59, 1);
          v60 = v59 - 1;
          if (v60 < 0 == v37)
          {
            *(a2 + 14) = v60;
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

      if (v7 == 5)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v7 != 6 || v8 != 2)
      {
        break;
      }

LABEL_88:
      *(this + 19) |= 0x20u;
      v40 = *(this + 6);
      if (!v40)
      {
        operator new();
      }

      v62 = 0;
      v41 = *(a2 + 1);
      if (v41 >= *(a2 + 2) || *v41 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
        {
          return 0;
        }
      }

      else
      {
        v62 = *v41;
        *(a2 + 1) = v41 + 1;
      }

      v42 = *(a2 + 14);
      v43 = *(a2 + 15);
      *(a2 + 14) = v42 + 1;
      if (v42 >= v43)
      {
        return 0;
      }

      v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
      if (!proto::gnss::Emergency::GpsTimeMeasuredParams::MergePartialFromCodedStream(v40, a2, v45) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
      v46 = *(a2 + 14);
      v37 = __OFSUB__(v46, 1);
      v47 = v46 - 1;
      if (v47 < 0 == v37)
      {
        *(a2 + 14) = v47;
      }

      v48 = *(a2 + 1);
      v17 = *(a2 + 2);
      if (v48 < v17 && *v48 == 56)
      {
        v18 = v48 + 1;
        *(a2 + 1) = v18;
LABEL_102:
        if (v18 >= v17 || (v49 = *v18, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v49;
          v50 = v18 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 19) |= 0x40u;
        if (v50 < v17 && *v50 == 64)
        {
          v19 = v50 + 1;
          *(a2 + 1) = v19;
          goto LABEL_110;
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

uint64_t proto::gnss::Emergency::GpsMeasurements::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 76);
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
  v6 = *(v5 + 76);
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
  if ((*(v5 + 76) & 8) != 0)
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

  v8 = *(v5 + 76);
  if ((v8 & 0x20) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 48);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 60), a2, a4);
      if ((*(v5 + 76) & 0x100) == 0)
      {
        return this;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return this;
  }

LABEL_23:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 64);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsMeasurements::ByteSize(proto::gnss::Emergency::GpsMeasurements *this, unsigned int a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    if (v3)
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(this + 19);
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
      v3 = *(this + 19);
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
        v3 = *(this + 19);
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
      v3 = *(this + 19);
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

      goto LABEL_36;
    }

LABEL_30:
    v12 = *(this + 6);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 48);
    }

    v13 = proto::gnss::Emergency::GpsTimeMeasuredParams::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(this + 19);
    if ((v3 & 0x40) == 0)
    {
LABEL_19:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_36:
    v16 = *(this + 14);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
    if ((v3 & 0x80) == 0)
    {
LABEL_20:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

LABEL_40:
    v18 = *(this + 15);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 19);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v4 = 0;
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v20 = *(this + 8);
  if (!v20)
  {
    v20 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 64);
  }

  v21 = proto::gnss::Emergency::GpsTOD::ByteSize(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 += v22 + v23 + 1;
LABEL_50:
  v24 = *(this + 8);
  v25 = (v24 + v4);
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = proto::gnss::Emergency::GpsMeasurementElement::ByteSize(*(*(this + 3) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      v25 = (v28 + v25 + v29);
      ++v26;
    }

    while (v26 < *(this + 8));
  }

  *(this + 18) = v25;
  return v25;
}

void proto::gnss::Emergency::GpsMeasurements::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsMeasurements *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsMeasurements::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsMeasurements::CopyFrom(proto::gnss::Emergency::GpsMeasurements *this, const proto::gnss::Emergency::GpsMeasurements *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsMeasurements::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsMeasurements *proto::gnss::Emergency::GpsMeasurements::Swap(proto::gnss::Emergency::GpsMeasurements *this, proto::gnss::Emergency::GpsMeasurements *a2)
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
    v8 = *(v3 + 6);
    *(v3 + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    LODWORD(v8) = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    LODWORD(v8) = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    v9 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    LODWORD(v9) = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v9;
    LODWORD(v9) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
  }

  return this;
}

double proto::gnss::Emergency::MeasurementReport::SharedCtor(proto::gnss::Emergency::MeasurementReport *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

proto::gnss::Emergency::MeasurementReport *proto::gnss::Emergency::MeasurementReport::MeasurementReport(proto::gnss::Emergency::MeasurementReport *this, const proto::gnss::Emergency::MeasurementReport *a2)
{
  *this = off_100175EF0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  proto::gnss::Emergency::MeasurementReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::MeasurementReport::MergeFrom(proto::gnss::Emergency::MeasurementReport *this, const proto::gnss::Emergency::MeasurementReport *a2)
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
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 21129, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
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
    v9 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 16);
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
      v13 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 32);
    }

    proto::gnss::Emergency::GanssMeasurements::MergeFrom(v12, v13);
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
    v11 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 24);
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

void sub_1000ACC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::MeasurementReport::~MeasurementReport(proto::gnss::Emergency::MeasurementReport *this)
{
  *this = off_100175EF0;
  proto::gnss::Emergency::MeasurementReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175EF0;
  proto::gnss::Emergency::MeasurementReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175EF0;
  proto::gnss::Emergency::MeasurementReport::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::MeasurementReport::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::MeasurementReport::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::MeasurementReport::default_instance(proto::gnss::Emergency::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::MeasurementReport::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::MeasurementReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::MeasurementReport::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::GanssMeasurements::Clear(this);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::MeasurementReport::MergePartialFromCodedStream(proto::gnss::Emergency::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          v53 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
            if (!result)
            {
              return result;
            }

            v13 = v53;
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

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
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

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_41:
          if (v16 >= v15 || (v19 = *v16, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v19;
            v20 = v16 + 1;
            *(a2 + 1) = v20;
          }

          v9 = *(this + 13) | 2;
          *(this + 13) = v9;
          if (v20 < v15 && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_49:
            *(this + 13) = v9 | 4;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v53 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
              {
                return 0;
              }
            }

            else
            {
              v53 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
            if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
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
            if (v30 < *(a2 + 2) && *v30 == 34)
            {
              *(a2 + 1) = v30 + 1;
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
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_99;
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
      v31 = *(this + 3);
      if (!v31)
      {
        operator new();
      }

      v53 = 0;
      v32 = *(a2 + 1);
      if (v32 >= *(a2 + 2) || *v32 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
        {
          return 0;
        }
      }

      else
      {
        v53 = *v32;
        *(a2 + 1) = v32 + 1;
      }

      v33 = *(a2 + 14);
      v34 = *(a2 + 15);
      *(a2 + 14) = v33 + 1;
      if (v33 >= v34)
      {
        return 0;
      }

      v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
      if (!proto::gnss::Emergency::GpsMeasurements::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
      v37 = *(a2 + 14);
      v28 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v28)
      {
        *(a2 + 14) = v38;
      }

      v39 = *(a2 + 1);
      if (v39 < *(a2 + 2) && *v39 == 42)
      {
        *(a2 + 1) = v39 + 1;
LABEL_77:
        *(this + 13) |= 0x10u;
        v40 = *(this + 4);
        if (!v40)
        {
          operator new();
        }

        v53 = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
          {
            return 0;
          }
        }

        else
        {
          v53 = *v41;
          *(a2 + 1) = v41 + 1;
        }

        v42 = *(a2 + 14);
        v43 = *(a2 + 15);
        *(a2 + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v53);
        if (!proto::gnss::Emergency::GanssMeasurements::MergePartialFromCodedStream(v40, a2, v45) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
        v46 = *(a2 + 14);
        v28 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v28)
        {
          *(a2 + 14) = v47;
        }

        v48 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v48 < v10 && *v48 == 48)
        {
          v14 = v48 + 1;
          *(a2 + 1) = v14;
LABEL_91:
          if (v14 >= v10 || (v49 = *v14, v49 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v50 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v49;
            v50 = v14 + 1;
            *(a2 + 1) = v50;
          }

          *(this + 13) |= 0x20u;
          if (v50 < v10 && *v50 == 56)
          {
            v11 = v50 + 1;
            *(a2 + 1) = v11;
LABEL_99:
            v53 = 0;
            if (v11 >= v10 || (v51 = *v11, (v51 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
              if (!result)
              {
                return result;
              }

              v51 = v53;
              v52 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v52 = v11 + 1;
              *(a2 + 1) = v52;
            }

            *(this + 44) = v51 != 0;
            *(this + 13) |= 0x40u;
            if (v52 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::Emergency::MeasurementReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 16);
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
    v8 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 24);
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
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
    v9 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 32);
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

uint64_t proto::gnss::Emergency::MeasurementReport::ByteSize(proto::gnss::Emergency::MeasurementReport *this, unint64_t a2)
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
        v9 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 16);
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
      v13 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 24);
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
LABEL_44:
        result = ((v3 >> 5) & 2) + v4;
        goto LABEL_45;
      }

LABEL_40:
      v21 = *(this + 10);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v22 = 2;
      }

      v4 += v22;
      goto LABEL_44;
    }

LABEL_34:
    v17 = *(this + 4);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::MeasurementReport::default_instance_ + 32);
    }

    v18 = proto::gnss::Emergency::GanssMeasurements::ByteSize(v17, a2);
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
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_45:
  *(this + 12) = result;
  return result;
}