void *proto::gpsd::RecoveryStatistics::SharedDtor(void *this)
{
  if (proto::gpsd::RecoveryStatistics::default_instance_ != this)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(this + 11) |= 2u;
      v22 = *(this + 4);
      if (!v22)
      {
        operator new();
      }

      v32 = 0;
      v23 = *(a2 + 1);
      if (v23 >= *(a2 + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v23;
        *(a2 + 1) = v23 + 1;
      }

      v24 = *(a2 + 14);
      v25 = *(a2 + 15);
      *(a2 + 14) = v24 + 1;
      if (v24 >= v25)
      {
        return 0;
      }

      v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v32);
      if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
      v28 = *(a2 + 14);
      v18 = __OFSUB__(v28, 1);
      v29 = v28 - 1;
      if (v29 < 0 == v18)
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

    if (TagFallback >> 3 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = *(this + 5);
        v9 = *(this + 4);
        if (v9 >= v8)
        {
          if (v8 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v8 + 1);
            v8 = *(this + 5);
          }

          *(this + 5) = v8 + 1;
          operator new();
        }

        v10 = *(this + 1);
        *(this + 4) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v31 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v31);
        if (!proto::gpsd::RecoveryStatistics_RecoveryPoint::MergePartialFromCodedStream(v11, a2, v16) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2))
        {
          goto LABEL_1;
        }

        v21 = *v20;
        if (v21 != 10)
        {
          if (v21 != 18)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v20 + 1;
          goto LABEL_33;
        }

        *(a2 + 1) = v20 + 1;
      }
    }

LABEL_30:
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

uint64_t proto::gpsd::RecoveryStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    v7 = *(v5 + 32);
    if (!v7)
    {
      v7 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::ByteSize(proto::gpsd::RecoveryStatistics *this, unsigned int a2)
{
  if ((*(this + 44) & 2) != 0)
  {
    v4 = *(this + 4);
    if (!v4)
    {
      v4 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::ByteSize(v4, a2);
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

  v8 = *(this + 4);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = proto::gpsd::RecoveryStatistics_RecoveryPoint::ByteSize(*(*(this + 1) + 8 * v10), a2);
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

    while (v10 < *(this + 4));
  }

  *(this + 10) = v9;
  return v9;
}

void proto::gpsd::RecoveryStatistics::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics::CopyFrom(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::RecoveryStatistics::Swap(uint64_t this, proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v4 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(v3 + 44);
    *(v3 + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(v3 + 40);
    *(v3 + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
  }

  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::LtlInfoRequest *proto::gpsd::LtlInfoRequest::LtlInfoRequest(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
{
  *this = off_10017AB88;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gpsd::LtlInfoRequest::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfoRequest::~LtlInfoRequest(proto::gpsd::LtlInfoRequest *this)
{
  *this = off_10017AB88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AB88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AB88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::LtlInfoRequest::MergePartialFromCodedStream(proto::gpsd::LtlInfoRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (v8 <= 4)
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

uint64_t proto::gpsd::LtlInfoRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::ByteSize(proto::gpsd::LtlInfoRequest *this, unsigned int a2)
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

void proto::gpsd::LtlInfoRequest::CheckTypeAndMergeFrom(proto::gpsd::LtlInfoRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfoRequest::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfoRequest::CopyFrom(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfoRequest::MergeFrom(this, a2);
  }
}

proto::gpsd::LtlInfoRequest *proto::gpsd::LtlInfoRequest::Swap(proto::gpsd::LtlInfoRequest *this, proto::gpsd::LtlInfoRequest *a2)
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

double proto::gpsd::LtlInfo_LtlLutParams::SharedCtor(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  return result;
}

proto::gpsd::LtlInfo_LtlLutParams *proto::gpsd::LtlInfo_LtlLutParams::LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  *this = off_10017AC00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, a2);
  return this;
}

void sub_1000FF088(_Unwind_Exception *a1)
{
  if (*(v1 + 4))
  {
    operator delete[]();
  }

  if (*(v1 + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  LOBYTE(v6) = *(a2 + 52);
  if (v6)
  {
    if (*(a2 + 52))
    {
      v7 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v7;
      v6 = *(a2 + 13);
    }

    if ((v6 & 2) != 0)
    {
      v8 = *(a2 + 3);
      *(this + 13) |= 2u;
      *(this + 3) = v8;
    }
  }
}

void sub_1000FF208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlLutParams::~LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  *this = off_10017AC00;
  if (*(this + 4))
  {
    operator delete[]();
  }

  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::LtlInfo_LtlLutParams::~LtlInfo_LtlLutParams(this);

  operator delete();
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::default_instance(proto::gpsd::LtlInfo_LtlLutParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlLutParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_66;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
              if (!result)
              {
                return result;
              }

              goto LABEL_83;
            }
          }

          goto LABEL_23;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_63;
          }

          goto LABEL_23;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v41[0] = 0;
          if (v16 >= v9 || (v20 = *v16, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
            if (!result)
            {
              return result;
            }

            v20 = v41[0];
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          v21 = *(this + 6);
          if (v21 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 2, v21 + 1);
            v21 = *(this + 6);
          }

          v22 = *(this + 2);
          *(this + 6) = v21 + 1;
          *(v22 + 4 * v21) = v20;
          v23 = *(this + 7) - *(this + 6);
          if (v23 >= 1)
          {
            v24 = v23 + 1;
            do
            {
              v25 = *(a2 + 1);
              v26 = *(a2 + 2);
              if (v25 >= v26 || *v25 != 24)
              {
                break;
              }

              *(a2 + 1) = v25 + 1;
              v41[0] = 0;
              if ((v25 + 1) >= v26 || (v27 = v25[1], (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                if (!result)
                {
                  return result;
                }

                v27 = v41[0];
              }

              else
              {
                *(a2 + 1) = v25 + 2;
              }

              v28 = *(this + 6);
              if (v28 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                v28 = *(this + 6);
              }

              v29 = *(this + 2);
              *(this + 6) = v28 + 1;
              *(v29 + 4 * v28) = v27;
              --v24;
            }

            while (v24 > 1);
          }

LABEL_63:
          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v18 >= v9)
          {
            break;
          }

          v19 = *v18;
          if (v19 == 32)
          {
            do
            {
              v15 = v18 + 1;
              *(a2 + 1) = v15;
LABEL_66:
              v40 = 0;
              if (v15 >= v9 || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
                {
                  return 0;
                }
              }

              else
              {
                v40 = *v15;
                *(a2 + 1) = v15 + 1;
              }

              v30 = *(this + 10);
              if (v30 == *(this + 11))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 4, v30 + 1);
                v30 = *(this + 10);
              }

              v31 = v40;
              v32 = *(this + 4);
              *(this + 10) = v30 + 1;
              *(v32 + 4 * v30) = v31;
              v33 = *(this + 11) - *(this + 10);
              if (v33 >= 1)
              {
                v34 = v33 + 1;
                do
                {
                  v35 = *(a2 + 1);
                  v36 = *(a2 + 2);
                  if (v35 >= v36 || *v35 != 32)
                  {
                    break;
                  }

                  *(a2 + 1) = v35 + 1;
                  if ((v35 + 1) >= v36 || v35[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v40 = v35[1];
                    *(a2 + 1) = v35 + 2;
                  }

                  v37 = *(this + 10);
                  if (v37 >= *(this + 11))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                    v37 = *(this + 10);
                  }

                  v38 = v40;
                  v39 = *(this + 4);
                  *(this + 10) = v37 + 1;
                  *(v39 + 4 * v37) = v38;
                  --v34;
                }

                while (v34 > 1);
              }

LABEL_83:
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            while (v18 < v9 && *v18 == 32);
            if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

LABEL_42:
          if (v19 != 24)
          {
            goto LABEL_1;
          }

          v16 = v18 + 1;
          *(a2 + 1) = v16;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_23;
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

      *(this + 13) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_35:
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

        *(this + 13) |= 2u;
        if (v18 < v9)
        {
          v19 = *v18;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_35;
    }

LABEL_23:
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

void sub_1000FF844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v12 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if (!result)
    {
      return result;
    }

    v5 = v12;
  }

  else
  {
    v12 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      v10 = *(a2 + 8);
      if (v10 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v10 + 1);
        v10 = *(a2 + 8);
      }

      v11 = *a2;
      *(a2 + 8) = v10 + 1;
      *(v11 + 4 * v10) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), v4, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(*(v5 + 16) + 4 * v7++), v4, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 32) + 4 * v8++), v4, a4);
    }

    while (v8 < *(v5 + 40));
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlLutParams::ByteSize(proto::gpsd::LtlInfo_LtlLutParams *this, unsigned int a2)
{
  v3 = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (*(this + 52))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      if ((*(this + 13) & 2) == 0)
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
    if ((*(this + 52) & 2) == 0)
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

  v4 += v7;
LABEL_14:
  v8 = *(this + 6);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 2) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(this + 6);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 10);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 4) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
        v13 = *(this + 10);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v10 + v4 + v8 + v15 + v13);
  *(this + 12) = result;
  return result;
}

void proto::gpsd::LtlInfo_LtlLutParams::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlLutParams::CopyFrom(proto::gpsd::LtlInfo_LtlLutParams *this, const proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(this, a2);
  }
}

double proto::gpsd::LtlInfo_LtlLutParams::Swap(proto::gpsd::LtlInfo_LtlLutParams *this, proto::gpsd::LtlInfo_LtlLutParams *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    v5 = *(a2 + 3);
    *(a2 + 2) = v4;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    result = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = result;
    *(a2 + 5) = v9;
    LODWORD(v7) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::SharedCtor(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  *this = off_10017AC78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, a2);
  return this;
}

void sub_1000FFDC4(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  v5 = *(a2 + 9);
  if ((v5 & 0x1FE) != 0)
  {
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 + 6);
      *(this + 9) |= 2u;
      *(this + 6) = v6;
      v5 = *(a2 + 9);
    }

    if ((v5 & 4) != 0)
    {
      v7 = *(a2 + 7);
      *(this + 9) |= 4u;
      *(this + 7) = v7;
    }
  }
}

void sub_1000FFEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::~LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this)
{
  *this = off_10017AC78;
  if (*(this + 1))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::~LtlInfo_LtlCurrentSrcCalibData(this);

  operator delete();
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::Clear(uint64_t this)
{
  if ((*(this + 36) & 0x1FE) != 0)
  {
    *(this + 24) = 0;
  }

  *(this + 16) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
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

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_45:
      if (v11 >= v10 || (v26 = *v11, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v26;
        v27 = v11 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 9) |= 2u;
      if (v27 < v10 && *v27 == 24)
      {
        v12 = v27 + 1;
        *(a2 + 1) = v12;
LABEL_53:
        if (v12 >= v10 || (v28 = *v12, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v12 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 9) |= 4u;
        if (v29 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_16;
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v13 = *(a2 + 1);
    v10 = *(a2 + 2);
    while (1)
    {
      v30[0] = 0;
      if (v13 >= v10 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
        if (!result)
        {
          return result;
        }

        v14 = v30[0];
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      v15 = *(this + 4);
      if (v15 == *(this + 5))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 1, v15 + 1);
        v15 = *(this + 4);
      }

      v16 = *(this + 1);
      *(this + 4) = v15 + 1;
      *(v16 + 4 * v15) = v14;
      v17 = *(this + 5) - *(this + 4);
      if (v17 >= 1)
      {
        v18 = v17 + 1;
        do
        {
          v19 = *(a2 + 1);
          v20 = *(a2 + 2);
          if (v19 >= v20 || *v19 != 8)
          {
            break;
          }

          *(a2 + 1) = v19 + 1;
          v30[0] = 0;
          if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
            if (!result)
            {
              return result;
            }

            v21 = v30[0];
          }

          else
          {
            *(a2 + 1) = v19 + 2;
          }

          v22 = *(this + 4);
          if (v22 >= *(this + 5))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
            v22 = *(this + 4);
          }

          v23 = *(this + 1);
          *(this + 4) = v22 + 1;
          *(v23 + 4 * v22) = v21;
          --v18;
        }

        while (v18 > 1);
      }

LABEL_40:
      v24 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v24 >= v10)
      {
        break;
      }

      v25 = *v24;
      if (v25 == 16)
      {
        v11 = (v24 + 1);
        *(a2 + 1) = v11;
        goto LABEL_45;
      }

      if (v25 != 8)
      {
        goto LABEL_1;
      }

      v13 = (v24 + 1);
      *(a2 + 1) = v13;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 8);
  if (result)
  {
    goto LABEL_40;
  }

  return result;
}

void sub_10010038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(*(v5 + 8) + 4 * v6++), v4, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 36);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), v4, a4);
    v7 = *(v5 + 36);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 28);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, v4, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::ByteSize(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, unsigned int a2)
{
  v3 = *(this + 9);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      if ((*(this + 9) & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 7);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  v8 = *(this + 4);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 1) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(this + 4);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  result = (v10 + v4 + v8);
  *(this + 8) = result;
  return result;
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::CopyFrom(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, const proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(this, a2);
  }
}

double proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::Swap(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this, proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::LtlInfo_LtlRacPmicAdcPreCalData(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017ACF0;
  proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
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

void sub_100100810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::~LtlInfo_LtlRacPmicAdcPreCalData(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this)
{
  *this = off_10017ACF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017ACF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017ACF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v15 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 2) = v9;
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

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::ByteSize(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
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
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
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

LABEL_17:
  *(this + 4) = v4;
  return v4;
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::CopyFrom(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, const proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(this, a2);
  }
}

proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::Swap(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *this, proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData *a2)
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

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

proto::gpsd::LtlInfo_LtlInitialParams *proto::gpsd::LtlInfo_LtlInitialParams::LtlInfo_LtlInitialParams(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  *this = off_10017AD68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 14) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 14);
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
  *(this + 14) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 14);
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
  *(this + 14) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 14);
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
  *(this + 14) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = *(a2 + 7);
    *(this + 14) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 14);
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
  v11 = *(a2 + 6);
  *(this + 14) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 14);
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
  v13 = *(a2 + 32);
  *(this + 14) |= 0x40u;
  *(this + 32) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 14) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 10);
    *(this + 14) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(a2 + 14);
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

  v15 = *(a2 + 11);
  *(this + 14) |= 0x200u;
  *(this + 11) = v15;
  if ((*(a2 + 14) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 12);
  *(this + 14) |= 0x400u;
  *(this + 12) = v6;
}

void sub_100101004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo_LtlInitialParams::~LtlInfo_LtlInitialParams(proto::gpsd::LtlInfo_LtlInitialParams *this)
{
  *this = off_10017AD68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AD68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AD68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::default_instance(proto::gpsd::LtlInfo_LtlInitialParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::MergePartialFromCodedStream(proto::gpsd::LtlInfo_LtlInitialParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v43 = 0;
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v14 = v43;
            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          *(this + 2) = v14;
          *(this + 14) |= 1u;
          if (v15 < v8 && *v15 == 16)
          {
            v12 = v15 + 1;
            *(a2 + 1) = v12;
LABEL_52:
            v43 = 0;
            if (v12 >= v8 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v22 = v43;
              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v23 = v12 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 3) = v22;
            *(this + 14) |= 2u;
            if (v23 < v8 && *v23 == 24)
            {
              v19 = v23 + 1;
              *(a2 + 1) = v19;
LABEL_60:
              v43 = 0;
              if (v19 >= v8 || (v24 = *v19, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
                if (!result)
                {
                  return result;
                }

                v24 = v43;
                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v25 = v19 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 4) = v24;
              *(this + 14) |= 4u;
              if (v25 < v8 && *v25 == 32)
              {
                v16 = v25 + 1;
                *(a2 + 1) = v16;
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_60;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_76;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_68:
          v43 = 0;
          if (v16 >= v8 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v26 = v43;
            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 5) = v26;
          *(this + 14) |= 8u;
          if (v27 < v8 && *v27 == 40)
          {
            v10 = v27 + 1;
            *(a2 + 1) = v10;
LABEL_76:
            v43 = 0;
            if (v10 >= v8 || (v28 = *v10, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v28 = v43;
              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v29 = v10 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 6) = v28;
            *(this + 14) |= 0x10u;
            if (v29 < v8 && *v29 == 48)
            {
              v20 = v29 + 1;
              *(a2 + 1) = v20;
LABEL_84:
              v43 = 0;
              if (v20 >= v8 || (v30 = *v20, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
                if (!result)
                {
                  return result;
                }

                v30 = v43;
                v31 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v31 = v20 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 7) = v30;
              *(this + 14) |= 0x20u;
              if (v31 < v8 && *v31 == 56)
              {
                v17 = v31 + 1;
                *(a2 + 1) = v17;
                goto LABEL_92;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v21 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_108;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_116;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_124;
        }

        goto LABEL_43;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_84;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_92:
      v43 = 0;
      if (v17 >= v8 || (v32 = *v17, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
        if (!result)
        {
          return result;
        }

        v32 = v43;
        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v33 = v17 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 32) = v32 != 0;
      *(this + 14) |= 0x40u;
      if (v33 < v8 && *v33 == 64)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_100:
        v43 = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
          if (!result)
          {
            return result;
          }

          v34 = v43;
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 9) = v34;
        *(this + 14) |= 0x80u;
        if (v35 < v8 && *v35 == 72)
        {
          v21 = v35 + 1;
          *(a2 + 1) = v21;
LABEL_108:
          if (v21 >= v8 || (v36 = *v21, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v36;
            v37 = v21 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 14) |= 0x100u;
          if (v37 < v8 && *v37 == 80)
          {
            v18 = v37 + 1;
            *(a2 + 1) = v18;
LABEL_116:
            if (v18 >= v8 || (v38 = *v18, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v38;
              v39 = v18 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 14) |= 0x200u;
            if (v39 < v8 && *v39 == 88)
            {
              v11 = v39 + 1;
              *(a2 + 1) = v11;
LABEL_124:
              if (v11 >= v8 || (v40 = *v11, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v41 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v40;
                v41 = v11 + 1;
                *(a2 + 1) = v41;
              }

              *(this + 14) |= 0x400u;
              if (v41 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_100;
    }

LABEL_43:
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

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 16), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 28), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), v4, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, v4, a4);
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::ByteSize(proto::gpsd::LtlInfo_LtlInitialParams *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_55;
  }

  if (v3)
  {
    v6 = *(this + 2);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 14);
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

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_19:
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
      v3 = *(this + 14);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(this + 5);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v13 = *(this + 6);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v15 = *(this + 7);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_48:
  v5 = ((v3 >> 5) & 2) + v4;
  if ((v3 & 0x80) != 0)
  {
    v17 = *(this + 9);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_55:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_72;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_58:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v22 = 2;
  }

  v5 = (v22 + v5);
  if ((v3 & 0x400) != 0)
  {
LABEL_68:
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    }

    else
    {
      v24 = 2;
    }

    v5 = (v24 + v5);
  }

LABEL_72:
  *(this + 13) = v5;
  return v5;
}

void proto::gpsd::LtlInfo_LtlInitialParams::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo_LtlInitialParams::CopyFrom(proto::gpsd::LtlInfo_LtlInitialParams *this, const proto::gpsd::LtlInfo_LtlInitialParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::Swap(uint64_t this, proto::gpsd::LtlInfo_LtlInitialParams *a2)
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
    LOBYTE(v7) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v7;
    v8 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v12;
    v13 = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v13;
  }

  return this;
}

double proto::gpsd::LtlInfo::SharedCtor(proto::gpsd::LtlInfo *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

proto::gpsd::LtlInfo *proto::gpsd::LtlInfo::LtlInfo(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  *this = off_10017ADE0;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  proto::gpsd::LtlInfo::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LtlInfo::~LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = off_10017ADE0;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017ADE0;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017ADE0;
  proto::gpsd::LtlInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gpsd::LtlInfo::SharedDtor(void *this)
{
  if (proto::gpsd::LtlInfo::default_instance_ != this)
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

    this = v1[5];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::MergePartialFromCodedStream(proto::gpsd::LtlInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

            v56 = 0;
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
              if (!result)
              {
                return result;
              }

              v12 = v56;
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            *(this + 8) = v12 != 0;
            *(this + 14) |= 1u;
            if (v13 < v9 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(a2 + 1) = v14;
              goto LABEL_39;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_30;
              }

              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_39:
            v56 = 0;
            if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
              if (!result)
              {
                return result;
              }

              v16 = v56;
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v17 = v14 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 3) = v16;
            *(this + 14) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v10 = v17 + 1;
              *(a2 + 1) = v10;
LABEL_47:
              v56 = 0;
              if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56);
                if (!result)
                {
                  return result;
                }

                v18 = v56;
              }

              else
              {
                *(a2 + 1) = v10 + 1;
              }

              if (v18 <= 4)
              {
                *(this + 14) |= 4u;
                *(this + 12) = v18;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 34)
              {
                *(a2 + 1) = v19 + 1;
                goto LABEL_57;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 2)
          {
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_30;
        }

LABEL_99:
        *(this + 14) |= 0x40u;
        v48 = *(this + 5);
        if (!v48)
        {
          operator new();
        }

        v56 = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
          {
            return 0;
          }
        }

        else
        {
          v56 = *v49;
          *(a2 + 1) = v49 + 1;
        }

        v50 = *(a2 + 14);
        v51 = *(a2 + 15);
        *(a2 + 14) = v50 + 1;
        if (v50 >= v51)
        {
          return 0;
        }

        v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56);
        if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergePartialFromCodedStream(v48, a2, v53) || *(a2 + 36) != 1)
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

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_57:
      *(this + 14) |= 8u;
      v20 = *(this + 2);
      if (!v20)
      {
        operator new();
      }

      v56 = 0;
      v21 = *(a2 + 1);
      if (v21 >= *(a2 + 2) || *v21 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
        {
          return 0;
        }
      }

      else
      {
        v56 = *v21;
        *(a2 + 1) = v21 + 1;
      }

      v22 = *(a2 + 14);
      v23 = *(a2 + 15);
      *(a2 + 14) = v22 + 1;
      if (v22 >= v23)
      {
        return 0;
      }

      v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56);
      if (!proto::gpsd::LtlInfo_LtlInitialParams::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
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
      if (v29 < *(a2 + 2) && *v29 == 42)
      {
        *(a2 + 1) = v29 + 1;
LABEL_71:
        *(this + 14) |= 0x10u;
        v30 = *(this + 3);
        if (!v30)
        {
          operator new();
        }

        v56 = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
          {
            return 0;
          }
        }

        else
        {
          v56 = *v31;
          *(a2 + 1) = v31 + 1;
        }

        v32 = *(a2 + 14);
        v33 = *(a2 + 15);
        *(a2 + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56);
        if (!proto::gpsd::LtlInfo_LtlLutParams::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
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
        if (v38 < *(a2 + 2) && *v38 == 50)
        {
          *(a2 + 1) = v38 + 1;
LABEL_85:
          *(this + 14) |= 0x20u;
          v39 = *(this + 4);
          if (!v39)
          {
            operator new();
          }

          v56 = 0;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2) || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v56))
            {
              return 0;
            }
          }

          else
          {
            v56 = *v40;
            *(a2 + 1) = v40 + 1;
          }

          v41 = *(a2 + 14);
          v42 = *(a2 + 15);
          *(a2 + 14) = v41 + 1;
          if (v41 >= v42)
          {
            return 0;
          }

          v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56);
          if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergePartialFromCodedStream(v39, a2, v44) || *(a2 + 36) != 1)
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
          if (v47 < *(a2 + 2) && *v47 == 58)
          {
            *(a2 + 1) = v47 + 1;
            goto LABEL_99;
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_71;
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

uint64_t proto::gpsd::LtlInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 56) & 0x40) != 0)
  {
LABEL_21:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::ByteSize(proto::gpsd::LtlInfo *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 14);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 12);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 14);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_22:
  v9 = *(this + 2);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  v10 = proto::gpsd::LtlInfo_LtlInitialParams::ByteSize(v9, a2);
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
  v3 = *(this + 14);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_28:
  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  v14 = proto::gpsd::LtlInfo_LtlLutParams::ByteSize(v13, a2);
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
  v3 = *(this + 14);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_34:
  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  v18 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  if ((*(this + 14) & 0x40) != 0)
  {
LABEL_40:
    v21 = *(this + 5);
    if (!v21)
    {
      v21 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    v22 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::ByteSize(v21, a2);
    v24 = v22;
    if (v22 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, v23);
    }

    else
    {
      v25 = 1;
    }

    v4 = (v4 + v24 + v25 + 1);
  }

LABEL_46:
  *(this + 13) = v4;
  return v4;
}

void proto::gpsd::LtlInfo::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo::CopyFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LtlInfo::Swap(uint64_t this, proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    LODWORD(v8) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v8;
    LODWORD(v8) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v8;
  }

  return this;
}

uint64_t proto::gpsd::Exception::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::Exception *proto::gpsd::Exception::Exception(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017AE58;
  *(this + 6) = 0;
  proto::gpsd::Exception::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Exception::~Exception(proto::gpsd::Exception *this)
{
  *this = off_10017AE58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AE58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AE58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::Exception::MergePartialFromCodedStream(proto::gpsd::Exception *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v21 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v10 = v21;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 2) = v10;
      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        v20 = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 3) = v14;
        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          v19 = 0;
          if (v13 >= v8 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
            if (!result)
            {
              return result;
            }

            v16 = v19;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 4) = v16;
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

int *proto::gpsd::Exception::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], v4, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v7, v4, a4);
}

uint64_t proto::gpsd::Exception::ByteSize(proto::gpsd::Exception *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
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
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_26:
  *(this + 5) = v4;
  return v4;
}

void proto::gpsd::Exception::CheckTypeAndMergeFrom(proto::gpsd::Exception *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Exception::MergeFrom(this, lpsrc);
}

void proto::gpsd::Exception::CopyFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Exception::MergeFrom(this, a2);
  }
}

proto::gpsd::Exception *proto::gpsd::Exception::Swap(proto::gpsd::Exception *this, proto::gpsd::Exception *a2)
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

double proto::gpsd::AskBasebandReset::SharedCtor(proto::gpsd::AskBasebandReset *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 4) = 0;
  return result;
}

proto::gpsd::AskBasebandReset *proto::gpsd::AskBasebandReset::AskBasebandReset(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  *this = off_10017AED0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 4) = 0;
  proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::AskBasebandReset::~AskBasebandReset(proto::gpsd::AskBasebandReset *this)
{
  *this = off_10017AED0;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AED0;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AED0;
  proto::gpsd::AskBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::AskBasebandReset::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return this;
}

uint64_t proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(proto::gpsd::AskBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_20;
          }

          v14 = *(this + 9);
LABEL_29:
          *(this + 9) = v14 | 4;
          if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_16:
        v16 = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 2) = v12;
        v14 = *(this + 9) | 2;
        *(this + 9) = v14;
        if (v13 < v9 && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_29;
        }
      }

      if (v7 != 1 || v8 != 1)
      {
        break;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v16;
      *(this + 9) |= 1u;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 < v9 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
        goto LABEL_16;
      }
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t proto::gpsd::AskBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t proto::gpsd::AskBasebandReset::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 36);
  if (*(this + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[2], a2) + 1;
      v3 = *(this + 9);
    }

    if ((v3 & 4) != 0)
    {
      v5 = this[3];
      v6 = *(v5 + 23);
      v7 = v6;
      v8 = *(v5 + 1);
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
        v8 = *(v5 + 1);
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

      v4 = (v4 + v10 + v6 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  return v4;
}

void proto::gpsd::AskBasebandReset::CheckTypeAndMergeFrom(proto::gpsd::AskBasebandReset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::AskBasebandReset::MergeFrom(this, lpsrc);
}

void proto::gpsd::AskBasebandReset::CopyFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  }
}

double proto::gpsd::AskBasebandReset::Swap(proto::gpsd::AskBasebandReset *this, proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    v4 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v4;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    *(a2 + 2) = v2;
    *(a2 + 3) = v3;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

void *proto::gpsd::LogEntry::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[5] = 0;
  this[6] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

proto::gpsd::LogEntry *proto::gpsd::LogEntry::LogEntry(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  *(this + 6) = 0;
  *this = off_10017AF48;
  *(this + 1) = 0;
  *(this + 2) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  proto::gpsd::LogEntry::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LogEntry::MergeFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(this + 13) |= 4u;
      v8 = *(this + 3);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        v9 = *(proto::gpsd::LogEntry::default_instance_ + 24);
      }

      proto::gpsd::Request::MergeFrom(v8, v9);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 2);
  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  *(this + 13) |= 8u;
  v10 = *(this + 4);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 4);
  if (!v11)
  {
    v11 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  proto::gpsd::Response::MergeFrom(v10, v11);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_24:
    *(this + 13) |= 0x10u;
    v12 = *(this + 5);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 5);
    if (!v13)
    {
      v13 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    proto::gpsd::Indication::MergeFrom(v12, v13);
  }
}

void sub_100103DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::LogEntry::default_instance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LogEntry::default_instance_;
  if (!proto::gpsd::LogEntry::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LogEntry::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 16);
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

    v4 = *(this + 52);
    if ((v4 & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::Request::Clear(this);
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 8) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = proto::gpsd::Indication::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gpsd::LogEntry::MergePartialFromCodedStream(proto::gpsd::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_21;
            }

            goto LABEL_38;
          }

          if (v7 == 6)
          {
            if (v8 != 2)
            {
              goto LABEL_21;
            }

LABEL_52:
            *(this + 13) |= 8u;
            v26 = *(this + 4);
            if (!v26)
            {
              operator new();
            }

            v44 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v44);
            if (!proto::gpsd::Response::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
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

            v34 = *(a2 + 1);
            if (v34 < *(a2 + 2) && *v34 == 58)
            {
              *(a2 + 1) = v34 + 1;
              goto LABEL_66;
            }
          }

          else
          {
            if (v7 != 7 || v8 != 2)
            {
              goto LABEL_21;
            }

LABEL_66:
            *(this + 13) |= 0x10u;
            v35 = *(this + 5);
            if (!v35)
            {
              operator new();
            }

            v45 = 0;
            v36 = *(a2 + 1);
            if (v36 >= *(a2 + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
              {
                return 0;
              }
            }

            else
            {
              v45 = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v37 = *(a2 + 14);
            v38 = *(a2 + 15);
            *(a2 + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v45);
            if (!proto::gpsd::Indication::MergePartialFromCodedStream(v35, a2, v40) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
            v41 = *(a2 + 14);
            v23 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v23)
            {
              *(a2 + 14) = v42;
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v9 = *(this + 13) | 1;
        *(this + 13) = v9;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_32;
        }
      }

      if (v7 != 2 || v8 != 2)
      {
        break;
      }

      v9 = *(this + 13);
LABEL_32:
      *(this + 13) = v9 | 2;
      if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 42)
      {
        *(a2 + 1) = v15 + 1;
LABEL_38:
        *(this + 13) |= 4u;
        v16 = *(this + 3);
        if (!v16)
        {
          operator new();
        }

        v43 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v43);
        if (!proto::gpsd::Request::MergePartialFromCodedStream(v16, a2, v21) || *(a2 + 36) != 1)
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
        if (v25 < *(a2 + 2) && *v25 == 50)
        {
          *(a2 + 1) = v25 + 1;
          goto LABEL_52;
        }
      }
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

void proto::gpsd::LogEntry::CheckTypeAndMergeFrom(proto::gpsd::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LogEntry::MergeFrom(this, lpsrc);
}

void proto::gpsd::LogEntry::CopyFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LogEntry::Swap(uint64_t this, proto::gpsd::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t proto::gpsd::StartContext::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::StartContext *proto::gpsd::StartContext::StartContext(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017AFC0;
  *(this + 6) = 0;
  proto::gpsd::StartContext::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::StartContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::StartContext::ByteSize(proto::gpsd::StartContext *this, unint64_t a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 6);
    }

    result = ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void proto::gpsd::StartContext::CheckTypeAndMergeFrom(proto::gpsd::StartContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::StartContext::MergeFrom(this, lpsrc);
}

void proto::gpsd::StartContext::CopyFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::StartContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::StartContext::Swap(uint64_t this, proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    v4 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v5;
    LOBYTE(v5) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v5;
    LODWORD(v5) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    LODWORD(v5) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return this;
}

void GpsdResourceWatcher::GpsdResourceWatcher(GpsdResourceWatcher *this)
{
  *(this + 3) = 0;
  *(this + 8) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0xBFF0000000000000;
  v1 = GpsdLogObjectGeneral;
  v2 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    LOWORD(v4) = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "GpsdResourceWatcher, created timer", &v4, 2u);
  }

  v3 = *(GpsdRuntime::instance(v2) + 16);
  operator new();
}

void GpsdResourceWatcher::tick(GpsdResourceWatcher *this)
{
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  if (getrusage(0, &v17) < 0)
  {
    v3 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(task_info_out[0]) = 0;
    v4 = "Resource,getrusage error";
    v5 = task_info_out;
    goto LABEL_7;
  }

  task_info_outCnt = 93;
  if (task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt))
  {
    v3 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "Resource,task_info error";
    v5 = buf;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return;
  }

  v6 = MachContinuousTimeNs * 0.000000001;
  v7 = *(this + 5);
  if (v7 > 0.0)
  {
    v8 = v6 - v7;
    if (v6 - v7 > 0.1)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v10 = ((v17.ru_stime.tv_sec - *(this + 1)) + (v17.ru_stime.tv_usec - *(this + 4)) * 0.000001) * 100.0;
        v11 = ((v17.ru_utime.tv_sec - *(this + 3)) + (v17.ru_utime.tv_usec - *(this + 8)) * 0.000001) * 100.0;
        *buf = 134350080;
        v19 = v11 / v8;
        v20 = 2050;
        v21 = v10 / v8;
        v22 = 2050;
        v23 = v15 * 0.000000953674316;
        v24 = 2050;
        v25 = v16 * 0.000000953674316;
        v26 = 2050;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Resource,user,%{public}.2f,sys,%{public}.2f,residentMB,%{public}.3f,footprintMB,%{public}.3f,interval,%{public}.2f", buf, 0x34u);
      }
    }
  }

  *(this + 5) = v6;
  ru_stime = v17.ru_stime;
  *(this + 24) = v17.ru_utime;
  *(this + 8) = ru_stime;
}

uint64_t std::__function::__func<GpsdResourceWatcher::GpsdResourceWatcher(void)::$_0,std::allocator<GpsdResourceWatcher::GpsdResourceWatcher(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017B440;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdResourceWatcher::GpsdResourceWatcher(void)::$_0,std::allocator<GpsdResourceWatcher::GpsdResourceWatcher(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t GnssSessionTicks::GnssSessionTicks(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = off_10017B5F8;
  v8 = GpsdSessionHandlerManager::instance(a1);
  GpsdSessionHandlerManager::addEventHandler(v8, a1);
  *a1 = off_10017B678;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 8, a3);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  return a1;
}

double GpsdPerformanceSummary::onStop(GpsdPerformanceSummary *this)
{
  v2 = *(this + 103);
  if (v2)
  {
    *(this + 103) = 0;
    (*(*v2 + 8))(v2);
    GpsdPerformanceSummary::printSummary(this);
  }

  *(this + 109) = 0;
  GpsdPerformanceSummary::Session::sendClockFrequencyToAnalytics(this);
  result = gpsd::util::getMachContinuousTimeNs(v3) * 0.000000001;
  *(this + 101) = result;
  return result;
}

void GpsdPerformanceSummary::Session::sendClockFrequencyToAnalytics(GpsdPerformanceSummary::Session *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 60) & 1) != 0 && (*(this + 176))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(GpsdPlatformInfo::instance(0) + 56);
    if ((v3 & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v4 = (Current + -5.0 + 662342413.0) / 604800;
    v5 = GpsdLogObjectGeneral;
    if (v4 <= v3)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67175169;
        v12 = v4 - v3;
        v13 = 1025;
        *v14 = (Current + -5.0 + 662342413.0) / 604800;
        *&v14[4] = 1025;
        *&v14[6] = v3;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#clk,invalidAge,week,%{private}d,now,%{private}d,born,%{private}d", buf, 0x14u);
      }
    }

    else
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(this + 20);
        v7 = *(this + 21);
        *buf = 67175169;
        v12 = v4 - v3;
        v13 = 2050;
        *v14 = v6;
        *&v14[8] = 2050;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#clk,ca,ageWeek,%{private}d,offsetPpb,%{public}.2f,uncPpb,%{public}.2f", buf, 0x1Cu);
      }

      AnalyticsSendEventLazy();
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(GpsdPlatformInfo::instance(0) + 60) & 1;
      v10 = *(this + 176);
      *buf = 67240448;
      v12 = v9;
      v13 = 1026;
      *v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#clk,ca,skip,bornWeekKnown,%{public}d,hasOffset,%{public}d", buf, 0xEu);
    }
  }
}

uint64_t GpsdPerformanceSummary::setEeAgeAndIntegrity(uint64_t this, char a2, double a3)
{
  *(this + 80) = a3;
  *(this + 96) = a2;
  return this;
}

uint64_t GpsdPerformanceSummary::setRtiAgeAndIntegrity(uint64_t this, char a2, double a3)
{
  *(this + 88) = a3;
  *(this + 97) = a2;
  return this;
}

id ___ZNK22GpsdPerformanceSummary7Session29sendClockFrequencyToAnalyticsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = @"deviceAgeInWeeks";
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = @"offsetPpb";
  v3 = [NSNumber numberWithDouble:*(v1 + 160)];
  v8[1] = v3;
  v7[2] = @"offsetPpbUnc";
  v4 = [NSNumber numberWithDouble:*(v1 + 168)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

float GpsdPerformanceSummary::analyzeTimeAssistance(GpsdPerformanceSummary *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (!*(this + 15))
  {
    v2 = *(a2 + 1);
    *(this + 14) = *(a2 + 3);
    *(this + 15) = v2;
    result = *(a2 + 2) * 0.000001;
    *(this + 32) = result;
  }

  return result;
}

float64_t GpsdPerformanceSummary::analyzePowerMeasurement(float64x2_t *this, float64x2_t *a2)
{
  v2 = a2[1];
  this[49] = vaddq_f64(v2, this[49]);
  result = this[50].f64[0] + v2.f64[0] * a2[2].f64[0];
  this[50].f64[0] = result;
  return result;
}

uint64_t GpsdPerformanceSummary::toSystem(uint64_t a1, int a2)
{
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      return 2;
    }

    if (a2 != 32)
    {
      if (a2 == 16)
      {
        return 1;
      }

      return 6;
    }

    return 5;
  }

  else
  {
    if (a2 == 1)
    {
      return 0;
    }

    if (a2 != 2)
    {
      if (a2 == 4)
      {
        return 4;
      }

      return 6;
    }

    return 3;
  }
}

id ___ZN22GpsdPerformanceSummary23analyzeTimeTransferDataERKN5proto4gnss22TimeTransferDataExtendE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = @"assistAgeSec";
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v11[0] = v3;
  v10[1] = @"assistMeasuredErrorMs";
  if ((*(v2 + 144) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v4 = [NSNumber numberWithDouble:*(v2 + 136)];
  v11[1] = v4;
  v10[2] = @"assistUncertaintyMs";
  LODWORD(v5) = *(v2 + 128);
  v6 = [NSNumber numberWithFloat:v5];
  v11[2] = v6;
  v10[3] = @"timeBetweenGnssSessionsSec";
  v7 = [NSNumber numberWithDouble:*(a1 + 48)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

uint64_t GpsdPerformanceSummary::reportReceiverClockAnalyticsData(uint64_t a1, uint64_t a2)
{
  v2 = *a2 - *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    v8 = v2;
    v9 = 2050;
    v10 = v3;
    v11 = 1026;
    v12 = v4;
    v13 = 1026;
    v14 = (v4 + 30) / 60;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Analytics,RxClockFreq,measuredErrorPpb,%{public}.3f,unc,%{public}.2f,ageSec,%{public}d,ageMin,%{public}d", buf, 0x22u);
  }

  return AnalyticsSendEventLazy();
}

id ___ZN22GpsdPerformanceSummary32reportReceiverClockAnalyticsDataERKN4gnss26ReceiverClockAnalyticsDataE_block_invoke(uint64_t a1, double a2)
{
  v10[0] = @"freqErrorPpb";
  *&a2 = fabsf(*(a1 + 40));
  v3 = [NSNumber numberWithFloat:a2];
  v11[0] = v3;
  v10[1] = @"freqErrorOverUnc";
  LODWORD(v4) = *(a1 + 44);
  v5 = [NSNumber numberWithFloat:v4];
  v11[1] = v5;
  v10[2] = @"freqPpb";
  v6 = [NSNumber numberWithDouble:**(a1 + 32)];
  v11[2] = v6;
  v10[3] = @"dataAgeMinutes";
  v7 = [NSNumber numberWithInt:*(a1 + 48)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

uint64_t GpsdPerformanceSummary::reportRtcClockAnalyticsData(uint64_t a1, double *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  v5 = v4 > 1.0 && v3 <= 0.5;
  v6 = -1.0;
  if (v3 > 0.0)
  {
    v6 = fabs(v4) / v3;
  }

  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    v11 = *(a2 + 10);
    *buf = 134350848;
    v14 = v8;
    v15 = 2050;
    v16 = v9;
    v17 = 2050;
    v18 = v10;
    v19 = 2050;
    v20 = v4;
    v21 = 2050;
    v22 = v3;
    v23 = 2050;
    v24 = v6;
    v25 = 1026;
    v26 = v11;
    v27 = 1026;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Analytics,RTC,estimatedFreqPpb,%{public}.2f,freqShiftSinceStoredPpb,%{public}.2f,unc,%{public}.2f,timePropagationErrorMs,%{public}.2f,unc,%{public}.2f,errOverUnc,%{public}.2f,ageSec,%{public}d,affectsME,%{public}d", buf, 0x4Au);
  }

  return AnalyticsSendEventLazy();
}

id ___ZN22GpsdPerformanceSummary27reportRtcClockAnalyticsDataERKN4gnss21RtcClockAnalyticsDataE_block_invoke(uint64_t a1)
{
  v12[0] = @"timePropagationErrorMs";
  v2 = a1 + 32;
  v3 = [NSNumber numberWithDouble:fabs(*(*(a1 + 32) + 24))];
  v13[0] = v3;
  v12[1] = @"timePropagationUncMs";
  v4 = [NSNumber numberWithDouble:*(*v2 + 32)];
  v13[1] = v4;
  v12[2] = @"timePropagationErrorOverUnc";
  LODWORD(v5) = *(a1 + 40);
  v6 = [NSNumber numberWithFloat:v5];
  v13[2] = v6;
  v12[3] = @"errorAffectsME";
  v7 = [NSNumber numberWithBool:*(a1 + 44)];
  v13[3] = v7;
  v12[4] = @"freqShiftSinceStoredPpb";
  v8 = [NSNumber numberWithDouble:fabs(*(*(a1 + 32) + 8))];
  v13[4] = v8;
  v12[5] = @"dataAgeSec";
  v9 = [NSNumber numberWithInt:*(*(a1 + 32) + 40)];
  v13[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

uint64_t GpsdPerformanceSummary::reportL5GroupDelayAnalyticsData(uint64_t a1, uint64_t *a2)
{
  v3 = GpsdPlatformInfo::instance(0);
  v4 = 0.0;
  if (*(v3 + 24) == 1)
  {
    v5 = *(v3 + 16);
    v4 = v5;
  }

  v7 = *a2;
  v6 = a2[1];
  v8 = (*(a2 + 4) + 30) / 60;
  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    v12 = v4;
    v13 = 2050;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 1026;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Analytics,L5Delay,cal,%{public}.2f,learned,%{public}.2f,current,%{public}.2f,learningAgeMin,%{public}d", buf, 0x26u);
  }

  return AnalyticsSendEventLazy();
}

id ___ZN22GpsdPerformanceSummary31reportL5GroupDelayAnalyticsDataERKN4gnss25L5GroupDelayAnalyticsDataE_block_invoke(uint64_t a1)
{
  v10[0] = @"estimateMeters";
  v2 = [NSNumber numberWithDouble:**(a1 + 32)];
  v11[0] = v2;
  v10[1] = @"learnedDeltaFromCalMeters";
  LODWORD(v3) = *(a1 + 40);
  v4 = [NSNumber numberWithFloat:v3];
  v11[1] = v4;
  v10[2] = @"estimateDeltaFromLearnedMeters";
  LODWORD(v5) = *(a1 + 44);
  v6 = [NSNumber numberWithFloat:v5];
  v11[2] = v6;
  v10[3] = @"learnedDataAgeMinutes";
  v7 = [NSNumber numberWithInt:*(a1 + 48)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

void GpsdPerformanceSummary::reportBeiDouConsistencyStats(uint64_t a1, unsigned __int8 *a2)
{
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    *buf = 67175681;
    v13 = v4;
    v14 = 2050;
    v15 = v5;
    v16 = 2050;
    v17 = v6;
    v18 = 2050;
    v19 = v7;
    v20 = 1026;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rbc,enabled,%{private}d,ttff,%{public}.1f,%{public}.1f,dur,%{public}.1f,numDiverge,%{public}d", buf, 0x2Cu);
  }

  if (*a2 == 1)
  {
    v9 = *(a2 + 4);
    if (*&v9 >= 0.0 || *(&v9 + 1) >= 0.0)
    {
      v10 = llroundf(*(a2 + 3));
      v11 = *(a2 + 4);
      AnalyticsSendEventLazy();
    }
  }
}

id ___ZN22GpsdPerformanceSummary28reportBeiDouConsistencyStatsERKN4gnss22BeiDouConsistencyStatsE_block_invoke(unsigned int *a1)
{
  v8[0] = @"ttffActual";
  v2 = [NSNumber numberWithInt:a1[8]];
  v9[0] = v2;
  v8[1] = @"tttfDelay";
  v3 = [NSNumber numberWithInt:a1[9]];
  v9[1] = v3;
  v8[2] = @"sessionDuration";
  v4 = [NSNumber numberWithInt:a1[10]];
  v9[2] = v4;
  v8[3] = @"numDiverge";
  v5 = [NSNumber numberWithInt:a1[11]];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

double GpsdPerformanceSummary::Interval::PvtmAnalysis::calculateRunningAverage(uint64_t a1)
{
  if (*a1 < 1)
  {
    return 0.0;
  }

  else
  {
    return *(a1 + 8) / *a1;
  }
}

double GpsdPerformanceSummary::Session::NominalStartAssistanceStats::computeDelayMs(GpsdPerformanceSummary::Session::NominalStartAssistanceStats *this, unint64_t a2)
{
  result = (a2 - *this) * 0.000001;
  if (*this - 1 >= a2)
  {
    return -1.0;
  }

  return result;
}

void gpsd::util::GnssRepeatTimer::~GnssRepeatTimer(gpsd::util::GnssRepeatTimer *this)
{
  gpsd::util::DispatchSource::~DispatchSource(this);

  operator delete();
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

void ___ZN25GpsdSessionHandlerManager8instanceEv_block_invoke(id a1)
{
  GpsdSessionHandlerManagerStaticMemory = 0;
  unk_100181740 = 0;
  qword_100181748 = 0;
  GpsdSessionHandlerManager::fInstance = &GpsdSessionHandlerManagerStaticMemory;
}

void GpsdSessionHandlerManager::instanceDelete(GpsdSessionHandlerManager *this)
{
  if (GpsdSessionHandlerManager::fInstance)
  {
    GpsdSessionHandlerManager::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdSessionHandlerManager::addEventHandler(GpsdSessionHandlerManager *this, GpsdSessionHandler *a2)
{
  if (a2)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
    if (v5 >= v4)
    {
      v8 = *this;
      v9 = v5 - *this;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v12 = v4 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v10) = a2;
      v6 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      *this = 0;
      *(this + 1) = v6;
      *(this + 2) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 1) = v6;
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (v6 - *this) >> 3;
      v16 = 134349312;
      v17 = a2;
      v18 = 2050;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,addEventHandler,%{public}p,size,%{public}zu", &v16, 0x16u);
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v16) = 0;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,addEventHandler,nullptr", &v16, 2u);
    }
  }
}

void GpsdSessionHandlerManager::removeEventHandler(GpsdSessionHandler ***this, GpsdSessionHandler *a2)
{
  if (a2)
  {
    v4 = *this;
    v5 = this[1];
    if (*this != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_16;
        }
      }

      if (v4 != v5)
      {
        v7 = v4 + 1;
        if (v4 + 1 != v5)
        {
          do
          {
            if (*v7 != a2)
            {
              *v4++ = *v7;
            }

            ++v7;
          }

          while (v7 != v5);
          v5 = this[1];
        }
      }
    }

    if (v4 != v5)
    {
      v5 = v4;
      this[1] = v4;
    }

LABEL_16:
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5 - *this;
      v10 = 134349312;
      v11 = a2;
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,removeEventHandler,%{public}p,size,%{public}zu", &v10, 0x16u);
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10) = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,removeEventHandler,nullptr", &v10, 2u);
    }
  }
}

void GpsdSessionHandler::GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = off_10017B5F8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v2, this);
}

void GpsdSessionHandler::~GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = off_10017B5F8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::removeEventHandler(v2, this);
}

void GpsdSessionMonitor::setExplicitState(GpsdSessionMonitor *this, int a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67240448;
    v6[1] = v5;
    v7 = 1026;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,setExplicitState,current,%{public}d,new,%{public}d", v6, 0xEu);
  }

  *(this + 8) = a2;
}

void GpsdSessionMonitor::update(GpsdSessionMonitor *this)
{
  if (!*(this + 2))
  {
    GpsdSessionMonitor::start(this);
  }

  *(this + 8) = 0;
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *(*(this + 3) + 8);
    v3 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

void GpsdSessionMonitor::stop(GpsdSessionMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,stop,sessionOveralop,ignore", buf, 2u);
    }
  }

  else
  {
    v3 = (this + 16);
    if (*(this + 2))
    {
      v4 = GpsdSessionHandlerManager::instance(this);
      v5 = *v4;
      v6 = *(v4 + 8);
      while (v5 != v6)
      {
        v7 = *v5++;
        (*(*v7 + 24))(v7);
      }

      v8 = *(this + 3);
      *(this + 3) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,releaseOsTransaction", v11, 2u);
      }

      std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](v3, 0);
    }

    else
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "GpsdSessionMonitor,fOsTransaction,null", v12, 2u);
      }
    }
  }
}

uint64_t GnssSessionTicks::notifyStop(GnssSessionTicks *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  result = *(this + 6);
  *(this + 6) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t GnssWatchEvent::tick(uint64_t this, unint64_t a2)
{
  if (*(*this + 8) == 1 && **this + *(this + 8) <= a2)
  {
    return std::function<void ()(unsigned long long)>::operator()(*(this + 40), a2);
  }

  return this;
}

uint64_t std::function<void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void GnssWatchdog::GnssWatchdog(GnssWatchdog *this, dispatch_queue_s *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (!a2)
  {
    v3 = GpsdLogObjectGeneral;
    v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      buf = 134349056;
      buf_4 = this;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#wdt,%{public}p,ctor,queue,null,use deviceQueue", &buf, 0xCu);
    }

    v5 = *GpsdRuntime::instance(v4);
  }

  operator new();
}

uint64_t GnssWatchdog::addEvent(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 2000;
  v10 = a3;
  if (a3 >= 2000)
  {
    v6 = &v10;
  }

  else
  {
    v6 = &v9;
  }

  v7 = a1[2];
  if (v7 >= a1[3])
  {
    result = std::vector<GnssWatchEvent>::__emplace_back_slow_path<std::optional<unsigned long long> &,int const&,std::function<void ()(unsigned long long)> &>(a1 + 1, a2, v6, a4);
  }

  else
  {
    std::allocator<GnssWatchEvent>::construct[abi:ne200100]<GnssWatchEvent,std::optional<unsigned long long> &,int const&,std::function<void ()(unsigned long long)> &>((a1 + 1), v7, a2, v6, a4);
    result = v7 + 48;
    a1[2] = v7 + 48;
  }

  a1[2] = result;
  return result;
}

void GnssSessionTicks::~GnssSessionTicks(GnssSessionTicks *this)
{
  *this = off_10017B678;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);
  *this = off_10017B5F8;
  v4 = GpsdSessionHandlerManager::instance(v3);
  GpsdSessionHandlerManager::removeEventHandler(v4, this);
}

{
  *this = off_10017B678;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);
  *this = off_10017B5F8;
  v4 = GpsdSessionHandlerManager::instance(v3);
  GpsdSessionHandlerManager::removeEventHandler(v4, this);

  operator delete();
}

uint64_t std::__function::__func<GnssWatchdog::GnssWatchdog(dispatch_queue_s *)::$_0,std::allocator<GnssWatchdog::GnssWatchdog(dispatch_queue_s *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017B6C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssWatchdog::GnssWatchdog(dispatch_queue_s *)::$_0,std::allocator<GnssWatchdog::GnssWatchdog(dispatch_queue_s *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<GnssWatchEvent>::__emplace_back_slow_path<std::optional<unsigned long long> &,int const&,std::function<void ()(unsigned long long)> &>(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v25 = a1;
  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v21 = 0;
  v22 = 48 * v4;
  v23 = 48 * v4;
  v24 = 0;
  std::allocator<GnssWatchEvent>::construct[abi:ne200100]<GnssWatchEvent,std::optional<unsigned long long> &,int const&,std::function<void ()(unsigned long long)> &>(a1, 48 * v4, a2, a3, a4);
  v8 = *a1;
  v9 = a1[1];
  v10 = v22 - (v9 - *a1);
  v11 = v23 + 48;
  v23 += 48;
  if (v9 != v8)
  {
    v12 = (v8 + 40);
    v13 = (v22 - 16 * ((v9 - v8) >> 4) + 40);
    v14 = v10;
    while (1)
    {
      v15 = *(v12 - 5);
      *(v13 - 8) = *(v12 - 8);
      *(v13 - 5) = v15;
      v16 = *v12;
      if (*v12)
      {
        if (v12 - 3 == v16)
        {
          *v13 = v13 - 3;
          (*(**v12 + 24))();
          goto LABEL_18;
        }

        *v13 = v16;
        v17 = v12;
      }

      else
      {
        v17 = (v14 + 40);
      }

      *v17 = 0;
LABEL_18:
      v14 += 48;
      v18 = v12 + 1;
      v12 += 6;
      v13 += 6;
      if (v18 == v9)
      {
        do
        {
          std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v8 + 16);
          v8 += 48;
        }

        while (v8 != v9);
        v8 = *a1;
        v11 = v23;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v11;
  v19 = a1[2];
  a1[2] = v24;
  v23 = v8;
  v24 = v19;
  v21 = v8;
  v22 = v8;
  std::__split_buffer<GnssWatchEvent>::~__split_buffer(&v21);
  return v11;
}

void sub_100107AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<GnssWatchEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<GnssWatchEvent>::construct[abi:ne200100]<GnssWatchEvent,std::optional<unsigned long long> &,int const&,std::function<void ()(unsigned long long)> &>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v7 = *a4;
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v9, a5);
  *a2 = a3;
  *(a2 + 8) = v7;
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](a2 + 16, v9);
  return std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v9);
}

void sub_100107B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<GnssWatchEvent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

dispatch_queue_t GpsdRuntime::dispatchQueueInit(GpsdRuntime *this, const std::string::value_type *a2, const char *a3)
{
  v4 = this;
  v5 = std::string::basic_string[abi:ne200100]<0>(buf, "com.apple.gpsd.");
  v6 = std::string::append(v5, a2);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v29) < 0)
  {
    operator delete(*buf);
  }

  v8 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  if (!v8)
  {
    v9 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __p;
      if (v24 < 0)
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dispatchQueueInit,nullattr,%{public}s", buf, 0xCu);
    }
  }

  if (v24 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = dispatch_queue_create(v11, v8);
  if (!v12)
  {
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v16 = __p;
      if (v24 < 0)
      {
        v16 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "dispatchQueueInit,queue,null,%{public}s", buf, 0xCu);
      v15 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdRuntime.cpp";
      v26 = 1026;
      v27 = 23;
      v28 = 2082;
      v29 = "dispatchQueueInit";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "assert");
    std::string::basic_string[abi:ne200100]<0>(v19, "dispatchQueueInit");
    std::string::basic_string[abi:ne200100]<0>(v17, "dispatchQueueInit,queue,null,%{public}s");
    gpsd::util::triggerDiagnosticReport(v21, v19, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    __assert_rtn("dispatchQueueInit", "GpsdRuntime.cpp", 23, "false && dispatchQueueInit,queue,null,%{public}s");
  }

  v13 = v12;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_100107E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdRuntime::bounceExit(NSObject **a1, uint64_t *a2)
{
  v12[0] = off_10017B7E0;
  v12[3] = v12;
  GpsdRuntime::asyncDevice(a1, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136446466;
    v9 = v5;
    v10 = 1026;
    v11 = 100;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,reason,%{public}s,delay,%{public}d", buf, 0x12u);
  }

  v7[0] = off_10017B860;
  v7[3] = v7;
  GpsdRuntime::asyncDevice(a1, v7, 100);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v5 = dispatch_time(0, 1000000 * a3);
  v6 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, a2);
  dispatch_after(v5, v6, block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

void GpsdRuntime::forceExit(GpsdRuntime *this, const char *a2)
{
  v3 = GpsdLogObjectWarning;
  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#runtime,forceExit,reason,%{public}s", &v4, 0xCu);
  }

  _Exit(-1);
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ___ZN11GpsdRuntime8instanceEv_block_invoke(id a1)
{
  GpsdRuntimeStaticMemory = 0;
  *algn_100181768 = 0;
  qword_100181770 = 0;
  GpsdRuntime::GpsdRuntime(&GpsdRuntimeStaticMemory);
  GpsdRuntime::fInstance = v1;
}

void GpsdRuntime::instanceDelete(GpsdRuntime *this)
{
  if (GpsdRuntime::fInstance)
  {
    GpsdRuntime::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "GpsdRuntime,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdRuntime::GpsdRuntime(GpsdRuntime *this)
{
  v2 = GpsdPreferences::instance(0);
  v3 = GpsdPreferences::maxSchedulerQos(v2);
  *this = GpsdRuntime::dispatchQueueInit(v3, "deviceQueue", v4);
  v5 = GpsdPreferences::instance(0);
  v6 = GpsdPreferences::maxSchedulerQos(v5);
  *(this + 1) = GpsdRuntime::dispatchQueueInit(v6, "highPriorityQueue", v7);
  *(this + 2) = GpsdRuntime::dispatchQueueInit(0x15, "defaultPriorityQueue", v8);
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::operator()(GpsdSessionHandlerManager *a1)
{
  result = GpsdSessionHandlerManager::instance(a1);
  v2 = *result;
  v3 = *(result + 8);
  while (v2 != v3)
  {
    v4 = *v2++;
    result = (*(*v4 + 24))(v4);
  }

  return result;
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::operator()()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,exitNow", v1, 2u);
  }

  _Exit(-1);
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL CompressionUtil::decode(uint64_t a1, char **a2, compression_algorithm a3)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = 2 * v6;
  v8 = a2[1] - *a2;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      a2[1] = &(*a2)[v7];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v7 - v8);
  }

  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, a3))
  {
    v9 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "#ee,#decompress,compression_stream_init failed", buf, 2u);
      return 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = *(a1 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 8);
    }

    stream.src_ptr = v13;
    stream.src_size = v12;
    v14 = 32;
    while (1)
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = v16 - *a2;
      if (!((v17 - v11) >> 15))
      {
        v18 = v17 + 0x8000;
        v19 = v17 * 1.25;
        if (v17 + 0x8000 <= v19)
        {
          v18 = v19;
        }

        if (v18 <= v17)
        {
          if (v18 < v17)
          {
            v16 = &v15[v18];
            a2[1] = &v15[v18];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(a2, v18 - v17);
          v15 = *a2;
          v16 = a2[1];
        }
      }

      v20 = &v15[v11];
      v21 = v16 - v20;
      stream.dst_ptr = v20;
      stream.dst_size = v16 - v20;
      v22 = compression_stream_process(&stream, 1);
      dst_size = stream.dst_size;
      v24 = v21 - stream.dst_size;
      if ((v21 - stream.dst_size) < 0)
      {
        v33 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349312;
          *v42 = v21;
          *&v42[8] = 2050;
          *v43 = dst_size;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "negative changeInDestSize,%{public}zu,%{public}zu", buf, 0x16u);
          v33 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v42 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdCompressionUtil.cpp";
          *&v42[8] = 1026;
          *v43 = 55;
          *&v43[4] = 2082;
          *&v43[6] = "decode";
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v39, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v38, "decode");
        std::string::basic_string[abi:ne200100]<0>(&v37, "negative changeInDestSize,%{public}zu,%{public}zu");
        gpsd::util::triggerDiagnosticReport(&v39, &v38, &v37);
        std::string::~string(&v37);
        std::string::~string(&v38);
        std::string::~string(&v39);
        __assert_rtn("decode", "GpsdCompressionUtil.cpp", 55, "false && negative changeInDestSize,%{public}zu,%{public}zu");
      }

      v11 += v24;
      v25 = a2[1] - *a2;
      v26 = GpsdLogObjectGeneral;
      if (v11 > v25)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349312;
          *v42 = v11;
          *&v42[8] = 2050;
          *v43 = v25;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "unexpected fill,%{public}zd,size,%{public}zu", buf, 0x16u);
          v26 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v42 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdCompressionUtil.cpp";
          *&v42[8] = 1026;
          *v43 = 57;
          *&v43[4] = 2082;
          *&v43[6] = "decode";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v36, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v35, "decode");
        std::string::basic_string[abi:ne200100]<0>(&v34, "unexpected fill,%{public}zd,size,%{public}zu");
        gpsd::util::triggerDiagnosticReport(&v36, &v35, &v34);
        std::string::~string(&v34);
        std::string::~string(&v35);
        std::string::~string(&v36);
        __assert_rtn("decode", "GpsdCompressionUtil.cpp", 57, "false && unexpected fill,%{public}zd,size,%{public}zu");
      }

      v27 = v22;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 67241216;
        *v42 = v27;
        *&v42[4] = 1026;
        *&v42[6] = v24;
        *v43 = 2050;
        *&v43[2] = stream.src_size;
        *&v43[10] = 2050;
        *&v43[12] = v25;
        v44 = 2050;
        v45 = v11;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#ee,#decompress,processed,status,%{public}d,changeInDestSize,%{public}d,inputLeft,%{public}zu,outputVecSize,%{public}zu,outputFillLevel,%{public}zd", buf, 0x2Cu);
      }

      if (v27)
      {
        break;
      }

      if (!--v14)
      {
        v28 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#ee,#decompress,loop counter failed sanity", buf, 2u);
        }

LABEL_37:
        CompressionUtil::compressionStreamDestroyWrapper(&stream, v29);
        return 0;
      }
    }

    if (v27 != COMPRESSION_STATUS_END)
    {
      v32 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *v42 = v27;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#ee,#decompress,compression_stream_process error,%{public}d", buf, 8u);
      }

      goto LABEL_37;
    }

    v30 = a2[1] - *a2;
    v31 = (v11 - v30);
    if (v11 <= v30)
    {
      if (v11 < v30)
      {
        a2[1] = &(*a2)[v11];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v31);
    }

    CompressionUtil::compressionStreamDestroyWrapper(&stream, v31);
    return 1;
  }

  return result;
}

void sub_100108B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void CompressionUtil::compressionStreamDestroyWrapper(compression_stream *this, compression_stream *a2)
{
  if (compression_stream_destroy(this))
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#ee,#decompress,failed to destroy stream", v3, 2u);
    }
  }
}

BOOL deleteFile(const char *a1)
{
  v2 = unlink(a1);
  if (v2)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      v6 = 136446466;
      v7 = a1;
      v8 = 1026;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "VendorLogger,deleteFile could not unlink,%{public}s,%{public}d", &v6, 0x12u);
    }
  }

  return v2 == 0;
}

BOOL getFileModificationTimeAndSize(const char *a1, timespec *a2, uint64_t *a3)
{
  v6 = stat(a1, &v10);
  if (v6)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 136446466;
      v12 = a1;
      v13 = 1026;
      v14 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "VendorLogger,getFileModificationTime could not stat,%{public}s,%{public}d", buf, 0x12u);
    }
  }

  else
  {
    *a2 = v10.st_mtimespec;
    *a3 = v10.st_size;
  }

  return v6 == 0;
}

void VendorLogger::copyLatestLogsToPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v8, &v33);
  size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v12 = "VendorLogger,copyLatestLogsToPath, null source dirpath, cannot copy latest logs";
LABEL_21:
    v18 = v11;
    v19 = 2;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v12, buf, v19);
    goto LABEL_41;
  }

  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
LABEL_19:
      v11 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v12 = "VendorLogger,copyLatestLogsToPath, null destination dirpath, cannot copy latest logs";
      goto LABEL_21;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_19;
    }
  }

  if (!mkdir(v10, 0x1F8u))
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    *buf = 136446466;
    v35 = v21;
    v36 = 1026;
    v37 = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,created directory,%{public}s,permissions,%{public}x";
    v23 = v20;
    v24 = 18;
LABEL_35:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
LABEL_36:
    v27 = *(a1 + 856);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v33;
    }

    v30 = a2;
    v31 = a4;
    v32 = a3;
    dispatch_sync(v27, block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  v13 = *__error();
  if (v13 == 17)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = chmod(v14, 0x1F8u);
    v16 = GpsdLogObjectGeneral;
    if (v15)
    {
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v17 = *__error();
      *buf = 67240192;
      LODWORD(v35) = v17;
      v12 = "VendorLogger,copyLatestLogsToPath,chmod failed,%{public}d";
      v18 = v16;
      v19 = 8;
      goto LABEL_22;
    }

    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    *buf = 67240192;
    LODWORD(v35) = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,directory exists,permissions,%{public}x";
    v23 = v16;
    v24 = 8;
    goto LABEL_35;
  }

  v25 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    *buf = 136446466;
    v35 = v26;
    v36 = 1026;
    v37 = v13;
    v12 = "VendorLogger,copyLatestLogsToPath,could not create directory,%{public}s, error,%{public}d";
    v18 = v25;
    v19 = 18;
    goto LABEL_22;
  }

LABEL_41:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1001091D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  VendorLogger::closeLogFile(v2);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = a1 + 40;
  }

  gpsd::util::enumerateFiles(v3, v2 + 2, &v48);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  if (v49 == v48)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v48, v49, v5, 1);
  v46 = 0;
  v7 = v48;
  v6 = v49;
  v8 = &GpsdLogObjectGeneral;
  if (v48 != v49)
  {
    v45 = 0;
    while (1)
    {
      if (*(a1 + 63) >= 0)
      {
        v9 = *(a1 + 63);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      std::string::basic_string[abi:ne200100](&v52, v9 + 1);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v52;
      }

      else
      {
        v10 = v52.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(a1 + 63) >= 0)
        {
          v11 = (a1 + 40);
        }

        else
        {
          v11 = *(a1 + 40);
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
      v12 = *(v7 + 23);
      if (v12 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = *(v7 + 23);
      }

      else
      {
        v14 = *(v7 + 8);
      }

      v15 = std::string::append(&v52, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v54 = v15->__r_.__value_.__r.__words[2];
      *buf = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (v54 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      if (!getFileModificationTimeAndSize(v17, &v47, &v46))
      {
        goto LABEL_78;
      }

      if (v46 <= *(a1 + 72))
      {
        v39 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          if (v54 >= 0)
          {
            v40 = buf;
          }

          else
          {
            v40 = *buf;
          }

          LODWORD(v52.__r_.__value_.__l.__data_) = 136446210;
          *(v52.__r_.__value_.__r.__words + 4) = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, skipped file,%{public}s", &v52, 0xCu);
        }

        v38 = 3;
        goto LABEL_79;
      }

      v18 = v8;
      v19 = *(a1 + 64);
      if (*(v19 + 23) >= 0)
      {
        v20 = *(v19 + 23);
      }

      else
      {
        v20 = v19[1];
      }

      std::string::basic_string[abi:ne200100](&v51, v20 + 1);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v51;
      }

      else
      {
        v21 = v51.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if (*(v19 + 23) >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = *v19;
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
      v23 = *(v7 + 23);
      if (v23 >= 0)
      {
        v24 = v7;
      }

      else
      {
        v24 = *v7;
      }

      if (v23 >= 0)
      {
        v25 = *(v7 + 23);
      }

      else
      {
        v25 = *(v7 + 8);
      }

      v26 = std::string::append(&v51, v24, v25);
      v28 = *&v26->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v28;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v8 = v18;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v29 = v54 >= 0 ? buf : *buf;
      v30 = (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v52 : v52.__r_.__value_.__r.__words[0];
      v31 = gpsd::util::copyFile(v29, v30, v27);
      v32 = *v18;
      if (v31)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
        {
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v52;
          }

          else
          {
            v33 = v52.__r_.__value_.__r.__words[0];
          }

          LODWORD(v51.__r_.__value_.__l.__data_) = 136446210;
          *(v51.__r_.__value_.__r.__words + 4) = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, copied %{public}s", &v51, 0xCu);
        }

        v34 = *(a1 + 76);
        v35 = ++v45 < v34;
        v36 = v45 >= v34;
        v37 = v35;
        v38 = 2 * v36;
      }

      else
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (v54 >= 0)
          {
            v41 = buf;
          }

          else
          {
            v41 = *buf;
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v52;
          }

          else
          {
            v42 = v52.__r_.__value_.__r.__words[0];
          }

          LODWORD(v51.__r_.__value_.__l.__data_) = 136446466;
          *(v51.__r_.__value_.__r.__words + 4) = v41;
          WORD2(v51.__r_.__value_.__r.__words[1]) = 2082;
          *(&v51.__r_.__value_.__r.__words[1] + 6) = v42;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "VendorLogger,copyLatestLogsToPath, failed src,%{public}s, dest,%{public}s", &v51, 0x16u);
        }

        v37 = 0;
        v38 = 2;
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v37)
      {
        goto LABEL_78;
      }

LABEL_79:
      if (SHIBYTE(v54) < 0)
      {
        operator delete(*buf);
      }

      if (v38 == 3 || !v38)
      {
        v7 += 24;
        if (v7 != v6)
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
    if (!v37)
    {
      goto LABEL_79;
    }

LABEL_78:
    v38 = 0;
    goto LABEL_79;
  }

  v45 = 0;
LABEL_95:
  v43 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(a1 + 76);
    *buf = 67240448;
    *&buf[4] = v45;
    *&buf[8] = 1026;
    *&buf[10] = v44;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger,copyLatestLogsToPath, Copied,%{public}d, RequestedMax,%{public}d", buf, 0xEu);
  }

  *buf = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1001096D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v33 - 128) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v33 - 128));
  _Unwind_Resume(a1);
}

void VendorLogger::closeLogFile(VendorLogger *this)
{
  VendorLogger::flushCompression(this);
  *(this + 868) = 0;
  if (*(this + 48))
  {
    std::ostream::flush();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((this + *(*(this + 32) - 24) + 256), *(this + *(*(this + 32) - 24) + 288) | 4);
    }

    v2 = (this + 824);
    if (*(this + 847) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(this + 103), *(this + 104));
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *&v2->__pn_.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = *(this + 105);
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, this + 5, this + 11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 8, this + 11);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if ((v29 & 0x80u) == 0)
    {
      v6 = v28;
    }

    else
    {
      v6 = v28[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v7 = v29;
    }

    else
    {
      v7 = v28[1];
    }

    if (v7)
    {
      if (size >= v7)
      {
        v19 = p_buf + size;
        v20 = *v6;
        v21 = p_buf;
        do
        {
          v22 = size - v7;
          if (v22 == -1)
          {
            break;
          }

          v23 = memchr(v21, v20, v22 + 1);
          if (!v23)
          {
            break;
          }

          v24 = v23;
          if (!memcmp(v23, v6, v7))
          {
            if (v24 != v19)
            {
              v9 = v24 - p_buf;
              if (v24 - p_buf != -1)
              {
                goto LABEL_25;
              }
            }

            break;
          }

          v21 = (v24 + 1);
          size = v19 - (v24 + 1);
        }

        while (size >= v7);
      }

      v8 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 136446210;
        v32 = p_buf;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Could not archive,%{public}s", v31, 0xCu);
      }
    }

    else
    {
      v9 = 0;
LABEL_25:
      if ((v27 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v11 = v27;
      }

      else
      {
        v11 = __p[1];
      }

      std::string::replace(&buf, v9, v7, v10, v11);
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (this + 824);
        if (*(this + 847) < 0)
        {
          v14 = v2->__pn_.__r_.__value_.__r.__words[0];
        }

        v15 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = buf.__r_.__value_.__r.__words[0];
        }

        *v31 = 136446466;
        v32 = v14;
        v33 = 2082;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Archiving,Old name,%{public}s,New name,%{public}s", v31, 0x16u);
      }

      if (*(this + 847) < 0)
      {
        v2 = v2->__pn_.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &buf;
      }

      else
      {
        v16 = buf.__r_.__value_.__r.__words[0];
      }

      rename(v2, v16, v13);
      if (v17)
      {
        v18 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v25 = *__error();
          *v31 = 67240192;
          LODWORD(v32) = v25;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "VendorLogger,closeLogFile,rename failed,%{public}d", v31, 8u);
        }
      }
    }

    if (*(this + 847) < 0)
    {
      **(this + 103) = 0;
      *(this + 104) = 0;
    }

    else
    {
      *(this + 824) = 0;
      *(this + 847) = 0;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "VendorLogger,closeLogFile,No output to close", &buf, 2u);
    }
  }
}

void sub_100109B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

const char *algorithmName(int a1)
{
  if (a1 > 773)
  {
    if (a1 != 774)
    {
      if (a1 == 2049)
      {
        return "lzfse";
      }

      return "unk";
    }

    return "lzma";
  }

  else
  {
    if (a1 != 256)
    {
      if (a1 == 517)
      {
        return "zlib";
      }

      return "unk";
    }

    return "lz4";
  }
}

void VendorLogger::VendorLogger(VendorLogger *this, const VendorLogger::Config *a2)
{
  *this = off_10017BA98;
  v4 = (this + 8);
  *(this + 1) = off_10017B5F8;
  v5 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v5, v4);
  *this = off_10017B910;
  *(this + 1) = off_10017B950;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(this + 4) = *(a2 + 2);
    *(this + 1) = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(this + 7) = *(a2 + 5);
    *(this + 40) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = *(a2 + 3);
    *(this + 10) = *(a2 + 8);
    *(this + 4) = v8;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v9 = *(a2 + 72);
    *(this + 13) = *(a2 + 11);
    *(this + 88) = v9;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v10 = *(a2 + 6);
    *(this + 16) = *(a2 + 14);
    *(this + 7) = v10;
  }

  v11 = *(a2 + 120);
  v12 = *(a2 + 136);
  v13 = *(a2 + 19);
  *(this + 22) = 0;
  *(this + 21) = v13;
  *(this + 152) = v12;
  *(this + 136) = v11;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 60) = 2049;
  *(this + 122) = 0;
  *(this + 31) = 0;
  *(this + 90) = 0;
  *(this + 32) = v15;
  *(this + *(v15 - 24) + 256) = v14;
  v16 = (this + *(*(this + 32) - 24) + 256);
  std::ios_base::init(v16, this + 264);
  v16[1].__vftable = 0;
  v16[1].__fmtflags_ = -1;
  v17 = std::filebuf::basic_filebuf();
  *(this + 853) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 109) = 0;
  *(this + 111) = 0;
  *(this + 110) = 0;
  v18 = GpsdRuntime::instance(v17);
  *(this + 106) = *v18;
  v19 = *(GpsdRuntime::instance(v18) + 16);
  *(this + 107) = v19;
  if (!v19)
  {
    v28 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#gvl,fQueue,null", buf, 2u);
      v28 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v44 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v45 = 1026;
      v46 = 150;
      v47 = 2082;
      v48 = "VendorLogger";
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "assert");
    std::string::basic_string[abi:ne200100]<0>(v40, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gvl,fQueue,null");
    gpsd::util::triggerDiagnosticReport(v42, v40, __p);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v29 = "false && #gvl,fQueue,null";
    v30 = 150;
    if (v42[23] < 0)
    {
      v31 = v42;
LABEL_60:
      operator delete(*v31);
    }

LABEL_61:
    __assert_rtn("VendorLogger", "GpsdVendorLogger.cpp", v30, v29);
  }

  v20 = GpsdPreferences::instance(0);
  if (!GpsdPreferences::getLogLevel(v20))
  {
    v32 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#gvl,ctor,isLoggingToFileEnabled,false", buf, 2u);
      v32 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v44 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v45 = 1026;
      v46 = 151;
      v47 = 2082;
      v48 = "VendorLogger";
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v37, "assert");
    std::string::basic_string[abi:ne200100]<0>(v35, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(v33, "#gvl,ctor,isLoggingToFileEnabled,false");
    gpsd::util::triggerDiagnosticReport(v37, v35, v33);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v29 = "false && #gvl,ctor,isLoggingToFileEnabled,false";
    v30 = 151;
    if ((v37[23] & 0x80000000) != 0)
    {
      v31 = v37;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v21 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLz4(v21))
  {
    v22 = 256;
LABEL_24:
    *(this + 244) = 1;
    *(this + 60) = v22;
    goto LABEL_25;
  }

  v23 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLzfse(v23))
  {
    v22 = 2049;
    goto LABEL_24;
  }

  v24 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogZlib(v24))
  {
    v22 = 517;
    goto LABEL_24;
  }

  if ((*(this + 244) & 1) == 0)
  {
    return;
  }

LABEL_25:
  v25 = GpsdLogObjectGeneral;
  if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    return;
  }

  v26 = *(this + 60);
  if (v26 > 773)
  {
    if (v26 == 774)
    {
      v27 = "lzma";
      goto LABEL_38;
    }

    if (v26 == 2049)
    {
      v27 = "lzfse";
      goto LABEL_38;
    }

LABEL_35:
    v27 = "unk";
    goto LABEL_38;
  }

  if (v26 == 256)
  {
    v27 = "lz4";
    goto LABEL_38;
  }

  if (v26 != 517)
  {
    goto LABEL_35;
  }

  v27 = "zlib";
LABEL_38:
  *buf = 136446210;
  v44 = v27;
  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "VendorLogger,compression enabled,%{public}s", buf, 0xCu);
}

void sub_10010A330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 111) < 0)
  {
    operator delete(*(v44 + 88));
  }

  if (*(v44 + 87) < 0)
  {
    operator delete(*(v44 + 64));
  }

  if (*(v44 + 63) < 0)
  {
    operator delete(*(v44 + 40));
  }

  if (*(v44 + 39) < 0)
  {
    operator delete(*(v44 + 16));
  }

  GpsdSessionHandler::~GpsdSessionHandler(v45);
  _Unwind_Resume(a1);
}

id VendorLogger::generateDefaultConfig@<X0>(uint64_t a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "gpsd");
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "o");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), &str_33);
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "log");
  *(a1 + 96) = 0u;
  v3 = (a1 + 96);
  *(a1 + 141) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = -1;
  v4 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogRetentionDays(v4);
  *(a1 + 120) = ((v5 * 24.0) * 3600.0);
  v6 = GpsdPreferences::instance(0);
  *(a1 + 128) = GpsdPreferences::vendorLogRotationSizeMB(v6) << 20;
  v7 = GpsdPreferences::instance(0);
  *(a1 + 136) = GpsdPreferences::vendorLogMaxDirectorySizeMB(v7) << 20;
  v8 = GpsdPreferences::instance(0);
  *(a1 + 144) = GpsdPreferences::vendorLogMaxNumberOfFiles(v8);
  v9 = GpsdPreferences::instance(0);
  *(a1 + 148) = GpsdPreferences::vendorLogPrefixWithTimestamp(v9);
  v10 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v10, &v13);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v13;
  *(a1 + 112) = v14;
  v11 = GpsdPreferences::instance(0);
  result = GpsdPreferences::vendorLogBufferSizeAllowedKB(v11);
  *(a1 + 152) = result << 10;
  return result;
}

void VendorLogger::~VendorLogger(VendorLogger *this)
{
  *this = off_10017B910;
  v2 = (this + 8);
  *(this + 1) = off_10017B950;
  v3 = *(this + 107);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLoggerD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_14;
  block[4] = this;
  dispatch_sync(v3, block);
  std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 1) = off_10017B5F8;
  v6 = GpsdSessionHandlerManager::instance(v5);
  GpsdSessionHandlerManager::removeEventHandler(v6, v2);
}

{
  VendorLogger::~VendorLogger(this);

  operator delete();
}

void non-virtual thunk toVendorLogger::~VendorLogger(VendorLogger *this)
{
  VendorLogger::~VendorLogger((this - 8));
}

{
  VendorLogger::~VendorLogger((this - 8));

  operator delete();
}

void VendorLogger::flushCompression(compression_stream *this)
{
  if (BYTE4(this[6].dst_ptr) == 1 && BYTE5(this[6].dst_ptr) == 1)
  {
    v2 = GpsdLogObjectGeneral;
    do
    {
      while (1)
      {
        v16 = 0;
        this[5].src_ptr = &v16;
        this[5].src_size = 0;
        src_ptr = this[4].src_ptr;
        v4 = this[4].src_size - src_ptr;
        this[5].dst_ptr = src_ptr;
        this[5].dst_size = v4;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349824;
          v18 = &v16;
          v19 = 2050;
          v20 = 0;
          v21 = 2050;
          v22 = src_ptr;
          v23 = 2050;
          v24 = v4;
          _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,before,%{public}p,%{public}zu,%{public}p,%{public}zu", buf, 0x2Au);
        }

        v5 = compression_stream_process(this + 5, 1);
        if (v5 > COMPRESSION_STATUS_END)
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to finalize stream", buf, 2u);
          }
        }

        else
        {
          v6 = this[4].src_size - this[4].src_ptr;
          dst_size = this[5].dst_size;
          v8 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v18 = (v6 - dst_size);
            _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,flushed bytes,%{public}zu", buf, 0xCu);
          }

          if (v6 != dst_size)
          {
            v9 = this[4].src_ptr;
            std::ostream::write();
          }
        }

        v2 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        if (v5)
        {
          goto LABEL_17;
        }
      }

      v11 = this[5].src_ptr;
      src_size = this[5].src_size;
      dst_ptr = this[5].dst_ptr;
      v14 = this[5].dst_size;
      *buf = 134350080;
      v18 = v11;
      v19 = 2050;
      v20 = src_size;
      v21 = 2050;
      v22 = dst_ptr;
      v23 = 2050;
      v24 = v14;
      v25 = 1026;
      v26 = v5;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,after,%{public}p,%{public}zu,%{public}p,%{public}zu,status,%{public}d", buf, 0x30u);
      v2 = GpsdLogObjectGeneral;
    }

    while (v5 == COMPRESSION_STATUS_OK);
LABEL_17:
    BYTE5(this[6].dst_ptr) = 0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,destroying", buf, 2u);
    }

    if (compression_stream_destroy(this + 5))
    {
      v15 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to destroy stream", buf, 2u);
      }
    }
  }
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void VendorLogger::pruneLogFiles(VendorLogger *this)
{
  if (clock_gettime(_CLOCK_REALTIME, &__tp))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v44 = *__error();
      LODWORD(v58.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v58.__r_.__value_.__r.__words[0]) = v44;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,clock_gettime failed,%{public}d", &v58, 8u);
    }
  }

  tv_sec = __tp.tv_sec;
  v3 = *(this + 17);
  if (v3 >= __tp.tv_sec)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v58.__r_.__value_.__l.__data_) = 134349056;
      *(v58.__r_.__value_.__r.__words + 4) = tv_sec;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,timespecNow too small to use,%{public}ld", &v58, 0xCu);
      v3 = *(this + 17);
    }
  }

  v5 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v5, &v54);
  if (v56 < 0)
  {
    if (v55)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v6 = v54;
      goto LABEL_12;
    }

LABEL_90:
    v43 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger.pruneLogFiles: null path, cannot delete old logs", &v58, 2u);
    }

    goto LABEL_92;
  }

  if (!v56)
  {
    goto LABEL_90;
  }

  v51 = 0;
  v52 = 0;
  v6 = &v54;
  v53 = 0;
LABEL_12:
  gpsd::util::enumerateFiles(v6, this + 2, &v51);
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3));
  if (v52 == v51)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v51, v52, v8, 1);
  v49 = 0;
  v9 = v51;
  v10 = v52;
  if (v51 != v52)
  {
    v11 = 0;
    v12 = 0;
    v46 = tv_sec - v3;
    while (1)
    {
      if ((v56 & 0x80u) == 0)
      {
        v13 = v56;
      }

      else
      {
        v13 = v55;
      }

      std::string::basic_string[abi:ne200100](&v58, v13 + 1);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v58;
      }

      else
      {
        v14 = v58.__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if ((v56 & 0x80u) == 0)
        {
          v15 = &v54;
        }

        else
        {
          v15 = v54;
        }

        memmove(v14, v15, v13);
      }

      *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
      v16 = *(v9 + 23);
      if (v16 >= 0)
      {
        v17 = v9;
      }

      else
      {
        v17 = *v9;
      }

      if (v16 >= 0)
      {
        v18 = *(v9 + 23);
      }

      else
      {
        v18 = *(v9 + 8);
      }

      v19 = std::string::append(&v58, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v48 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (v48 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if (!getFileModificationTimeAndSize(v21, &v50, &v49))
      {
        goto LABEL_76;
      }

      v22 = v49;
      v23 = v49 + v11;
      v24 = GpsdLogObjectGeneral;
      v25 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
      v26 = v50.tv_sec;
      if (v25)
      {
        if (v48 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136447234;
        *(v58.__r_.__value_.__r.__words + 4) = v41;
        WORD2(v58.__r_.__value_.__r.__words[1]) = 2050;
        *(&v58.__r_.__value_.__r.__words[1] + 6) = v50.tv_sec;
        HIWORD(v58.__r_.__value_.__r.__words[2]) = 2050;
        v59 = v46;
        v60 = 2050;
        v61 = v22;
        v62 = 2050;
        v63 = v23;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,looking at,%{public}s,modTime,%{public}ld,floorTime,%{public}ld,size,%{public}lld,new total,%{public}lld", &v58, 0x34u);
      }

      if (v26 < v46)
      {
        if (v48 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        deleteFile(v27);
        v28 = GpsdLogObjectGeneral;
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_75;
        }

        if (v48 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136446722;
        *(v58.__r_.__value_.__r.__words + 4) = v29;
        WORD2(v58.__r_.__value_.__r.__words[1]) = 2050;
        *(&v58.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(v58.__r_.__value_.__r.__words[2]) = 2050;
        v59 = v46;
        v30 = v28;
        v31 = "VendorLogger,pruneLogFiles,deleted due to age,%{public}s,fileTime,%{public}ld,targetTime,%{public}ld";
        v32 = 32;
        goto LABEL_74;
      }

      if (v12 >= *(this + 40))
      {
        break;
      }

      if (v22)
      {
        if (v23 <= *(this + 19))
        {
          ++v12;
          v11 = v23;
        }

        else
        {
          if (v48 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          deleteFile(v33);
          v34 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            if (v48 >= 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            LODWORD(v58.__r_.__value_.__l.__data_) = 136446210;
            *(v58.__r_.__value_.__r.__words + 4) = v42;
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,deleted due to size,%{public}s", &v58, 0xCu);
          }

          ++v12;
          v11 = v23;
        }

        goto LABEL_76;
      }

      if (v48 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      deleteFile(v38);
      v39 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v48 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        LODWORD(v58.__r_.__value_.__l.__data_) = 136446210;
        *(v58.__r_.__value_.__r.__words + 4) = v40;
        v30 = v39;
        v31 = "VendorLogger,pruneLogFiles,deleted due to zero size,%{public}s";
        v32 = 12;
LABEL_74:
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, &v58, v32);
      }

LABEL_75:
      ++v12;
LABEL_76:
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v9 += 24;
      if (v9 == v10)
      {
        goto LABEL_89;
      }
    }

    if (v48 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    deleteFile(v35);
    v36 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    if (v48 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    LODWORD(v58.__r_.__value_.__l.__data_) = 136446466;
    *(v58.__r_.__value_.__r.__words + 4) = v37;
    WORD2(v58.__r_.__value_.__r.__words[1]) = 1026;
    *(&v58.__r_.__value_.__r.__words[1] + 6) = v12 + 1;
    v30 = v36;
    v31 = "VendorLogger,pruneLogFiles,deleted due to num files,%{public}s,num files,%{public}d";
    v32 = 18;
    goto LABEL_74;
  }

LABEL_89:
  v58.__r_.__value_.__r.__words[0] = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
LABEL_92:
  if (v56 < 0)
  {
    operator delete(v54);
  }
}

void sub_10010B330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v37 - 176) = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 176));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VendorLogger::ensureLogFileIsOpen(VendorLogger *this)
{
  if ((*(this + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(this);
  }
}