double proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *this = off_100179730;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *(this + 16) = 0;
  *this = off_100179730;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  *this = off_1001797A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_1001797A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t proto::gnss::RawPressureSample::RawPressureSample(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179820;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179820;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::SensorSample3Axis::SensorSample3Axis(uint64_t this)
{
  *this = off_100179898;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100179898;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::SvId::SvId(uint64_t this)
{
  *this = off_100179910;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100179910;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = off_100179988;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100179988;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t proto::gnss::DecodedRti::DecodedRti(uint64_t this)
{
  *(this + 20) = 0;
  *this = off_100179A00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *this = off_100179A00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179A78;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179A78;
  *(this + 24) = 0;
  return this;
}

void proto::gnss::Fix::InitAsDefaultInstance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Position::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Velocity::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::TimeTransferData::InitAsDefaultInstance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::TimeTransferDataExtend::InitAsDefaultInstance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::TimeTransferData::default_instance_;
  }

  *(this + 1) = v5;
}

double proto::gnss::Position::SharedCtor(proto::gnss::Position *this)
{
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Position *proto::gnss::Position::Position(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  *this = off_100179550;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  proto::gnss::Position::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::Position::default_instance(proto::gnss::Position *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Position::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Position::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 96) = 0;
  return this;
}

void proto::gnss::Position::CheckTypeAndMergeFrom(proto::gnss::Position *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Position::MergeFrom(this, lpsrc);
}

void proto::gnss::Position::CopyFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Position::MergeFrom(this, a2);
  }
}

double proto::gnss::Position::Swap(proto::gnss::Position *this, proto::gnss::Position *a2)
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
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    v10 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
    v11 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    LODWORD(v12) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
  }

  return result;
}

double proto::gnss::Velocity::SharedCtor(proto::gnss::Velocity *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Velocity *proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  *this = off_1001795C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Velocity::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::Velocity::default_instance(proto::gnss::Velocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Velocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Velocity::Clear(uint64_t this)
{
  if (*(this + 60))
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t proto::gnss::Velocity::MergePartialFromCodedStream(proto::gnss::Velocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15;
          *(this + 15) |= 0x20u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        if (v8 != 1)
        {
          goto LABEL_38;
        }

        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v15;
        *(this + 15) |= 1u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 17)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_25;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v15;
      *(this + 15) |= 2u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 25)
      {
        *(a2 + 1) = v10 + 1;
LABEL_29:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v15;
        *(this + 15) |= 4u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 33)
        {
          *(a2 + 1) = v11 + 1;
LABEL_33:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v15;
          *(this + 15) |= 8u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 41)
          {
            *(a2 + 1) = v12 + 1;
LABEL_41:
            v15 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v15;
            *(this + 15) |= 0x10u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 49)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

double proto::gnss::Velocity::CheckTypeAndMergeFrom(proto::gnss::Velocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::Velocity::MergeFrom(this, lpsrc);
}

double proto::gnss::Velocity::CopyFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::Velocity::MergeFrom(this, a2);
  }

  return result;
}

double proto::gnss::Velocity::Swap(proto::gnss::Velocity *this, proto::gnss::Velocity *a2)
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
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v8 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v9;
  }

  return result;
}

double proto::gnss::Time::SharedCtor(proto::gnss::Time *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Time *proto::gnss::Time::Time(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  *this = off_100179640;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  proto::gnss::Time::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::Time::default_instance(proto::gnss::Time *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Time::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Time::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 64) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t proto::gnss::Time::MergePartialFromCodedStream(proto::gnss::Time *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              v11 = *(a2 + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_50:
            v34[0] = 0;
            if (v17 >= v11 || (v22 = *v17, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v34);
              if (!result)
              {
                return result;
              }

              v22 = v34[0];
              v23 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v23 = v17 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 20) = v22 != 0;
            *(this + 18) |= 4u;
            if (v23 < v11 && *v23 == 32)
            {
              v12 = v23 + 1;
              *(a2 + 1) = v12;
LABEL_58:
              v34[0] = 0;
              if (v12 >= v11 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v34);
                if (!result)
                {
                  return result;
                }

                v24 = v34[0];
                v25 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 16) = v24;
              *(this + 18) |= 8u;
              if (v25 < v11 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v14 >= v13 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v15;
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 18) |= 1u;
            if (v16 < v13 && *v16 == 21)
            {
              *(a2 + 1) = v16 + 1;
LABEL_46:
              v34[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v34) & 1) == 0)
              {
                return 0;
              }

              *(this + 4) = v34[0];
              *(this + 18) |= 2u;
              v21 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v21 < v11 && *v21 == 24)
              {
                v17 = v21 + 1;
                *(a2 + 1) = v17;
                goto LABEL_50;
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
          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_66:
        if (v18 >= v11 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 18) |= 0x10u;
        if (v27 < v11 && *v27 == 49)
        {
          *(a2 + 1) = v27 + 1;
LABEL_74:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v34) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v34;
          *(this + 18) |= 0x20u;
          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 57)
          {
            *(a2 + 1) = v28 + 1;
LABEL_78:
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v34) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v34;
            *(this + 18) |= 0x40u;
            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v29 < v9 && *v29 == 64)
            {
              v19 = v29 + 1;
              *(a2 + 1) = v19;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_82:
      if (v19 >= v9 || (v30 = *v19, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v30;
        v31 = v19 + 1;
        *(a2 + 1) = v31;
      }

      *(this + 18) |= 0x80u;
      if (v31 < v9 && *v31 == 72)
      {
        v10 = v31 + 1;
        *(a2 + 1) = v10;
LABEL_90:
        if (v10 >= v9 || (v32 = *v10, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v32;
          v33 = v10 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 18) |= 0x100u;
        if (v33 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

void proto::gnss::Time::CheckTypeAndMergeFrom(proto::gnss::Time *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Time::MergeFrom(this, lpsrc);
}

void proto::gnss::Time::CopyFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Time::MergeFrom(this, a2);
  }
}

double proto::gnss::Time::Swap(proto::gnss::Time *this, proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return result;
}

double proto::gnss::Fix::SharedCtor(proto::gnss::Fix *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Fix *proto::gnss::Fix::Fix(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  *this = off_1001796B8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Fix::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::Fix::default_instance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Fix::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Fix::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 48);
  if (v1)
  {
    if (*(this + 48))
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(this + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Fix::MergePartialFromCodedStream(proto::gnss::Fix *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(this + 12) |= 1u;
        v12 = *(this + 1);
        if (!v12)
        {
          operator new();
        }

        v44 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v44);
        if (!proto::gnss::Time::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 18)
        {
          *(a2 + 1) = v21 + 1;
LABEL_38:
          *(this + 12) |= 2u;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v44 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v44);
          if (!proto::gnss::Position::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
          v28 = *(a2 + 14);
          v19 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v19)
          {
            *(a2 + 14) = v29;
          }

          v30 = *(a2 + 1);
          if (v30 < *(a2 + 2) && *v30 == 26)
          {
            *(a2 + 1) = v30 + 1;
LABEL_52:
            *(this + 12) |= 4u;
            v31 = *(this + 3);
            if (!v31)
            {
              operator new();
            }

            v44 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v33 = *(a2 + 14);
            v34 = *(a2 + 15);
            *(a2 + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v44);
            if (!proto::gnss::Velocity::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
            v37 = *(a2 + 14);
            v19 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v19)
            {
              *(a2 + 14) = v38;
            }

            v39 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v39 < v9 && *v39 == 32)
            {
              v11 = v39 + 1;
              *(a2 + 1) = v11;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_66:
      if (v11 >= v9 || (v40 = *v11, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v41 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v40;
        v41 = v11 + 1;
        *(a2 + 1) = v41;
      }

      *(this + 12) |= 8u;
      if (v41 < v9 && *v41 == 40)
      {
        v10 = v41 + 1;
        *(a2 + 1) = v10;
LABEL_74:
        v44 = 0;
        if (v10 >= v9 || (v43 = *v10, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
          if (!result)
          {
            return result;
          }

          v43 = v44;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v43 <= 4)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v43;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_74;
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

void proto::gnss::Fix::CheckTypeAndMergeFrom(proto::gnss::Fix *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Fix::MergeFrom(this, lpsrc);
}

void proto::gnss::Fix::CopyFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Fix::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Fix::Swap(uint64_t this, proto::gnss::Fix *a2)
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
    v5 = *(this + 32);
    v6 = *(a2 + 4);
    *(this + 24) = *(a2 + 3);
    *(this + 32) = v6;
    *(a2 + 3) = v4;
    *(a2 + 4) = v5;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
  }

  return this;
}

double proto::gnss::TimeTransferData::SharedCtor(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

proto::gnss::TimeTransferData *proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  *(this + 16) = 0;
  *this = off_100179730;
  *(this + 1) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  proto::gnss::TimeTransferData::MergeFrom(this, a2);
  return this;
}

void *proto::gnss::TimeTransferData::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferData::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferData::default_instance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferData::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferData::MergePartialFromCodedStream(proto::gnss::TimeTransferData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_67;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_75;
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

        v40 = 0;
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v15 = v40;
          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 16) = v15 != 0;
        v18 = *(this + 12) | 1;
        *(this + 12) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_35;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 == 3 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_49;
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

    if (v8 != 2)
    {
      goto LABEL_26;
    }

    v18 = *(this + 12);
LABEL_35:
    *(this + 12) = v18 | 2;
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
    if (!proto::gnss::Time::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
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
      v10 = v30 + 1;
      *(a2 + 1) = v10;
LABEL_49:
      v39 = 0;
      if (v10 >= v9 || (v31 = *v10, (v31 & 0x80000000) != 0))
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
        *(a2 + 1) = v10 + 1;
      }

      if (v31 <= 6)
      {
        *(this + 12) |= 4u;
        *(this + 5) = v31;
      }

      v32 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v32 < v11 && *v32 == 32)
      {
        v17 = v32 + 1;
        *(a2 + 1) = v17;
LABEL_59:
        if (v17 >= v11 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v33;
          v34 = v17 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 12) |= 8u;
        if (v34 < v11 && *v34 == 40)
        {
          v19 = v34 + 1;
          *(a2 + 1) = v19;
LABEL_67:
          if (v19 >= v11 || (v35 = *v19, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v36 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v35;
            v36 = v19 + 1;
            *(a2 + 1) = v36;
          }

          *(this + 12) |= 0x10u;
          if (v36 < v11 && *v36 == 48)
          {
            v12 = v36 + 1;
            *(a2 + 1) = v12;
LABEL_75:
            if (v12 >= v11 || (v37 = *v12, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v38 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v37;
              v38 = v12 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 12) |= 0x20u;
            if (v38 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

void proto::gnss::TimeTransferData::CheckTypeAndMergeFrom(proto::gnss::TimeTransferData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferData::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferData::CopyFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferData::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferData::Swap(uint64_t this, proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

double proto::gnss::TimeTransferDataExtend::SharedCtor(proto::gnss::TimeTransferDataExtend *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::TimeTransferDataExtend *proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  *this = off_1001797A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  return this;
}

void *proto::gnss::TimeTransferDataExtend::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::default_instance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferDataExtend::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::TimeTransferData::Clear(this);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(proto::gnss::TimeTransferDataExtend *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v13 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 13) |= 8u;
        if (v30 < v9 && *v30 == 40)
        {
          v10 = v30 + 1;
          *(a2 + 1) = v10;
LABEL_62:
          if (v10 >= v9 || (v31 = *v10, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
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
            v32 = v10 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 13) |= 0x10u;
          if (v32 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    *(this + 13) |= 1u;
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
    if (!proto::gnss::TimeTransferData::MergePartialFromCodedStream(v14, a2, v19) || *(a2 + 36) != 1)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v24;
        v25 = v11 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 13) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v12 = v25 + 1;
        *(a2 + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v27 = *v12, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v27;
          v28 = v12 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 13) |= 4u;
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

void proto::gnss::TimeTransferDataExtend::CheckTypeAndMergeFrom(proto::gnss::TimeTransferDataExtend *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferDataExtend::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferDataExtend::CopyFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferDataExtend::Swap(uint64_t this, proto::gnss::TimeTransferDataExtend *a2)
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

uint64_t proto::gnss::RawPressureSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::RawPressureSample *proto::gnss::RawPressureSample::RawPressureSample(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100179820;
  *(this + 6) = 0;
  proto::gnss::RawPressureSample::MergeFrom(this, a2);
  return this;
}

float proto::gnss::RawPressureSample::MergeFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = result;
    }
  }

  return result;
}

void sub_1000E8178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::RawPressureSample::~RawPressureSample(proto::gnss::RawPressureSample *this)
{
  *this = off_100179820;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179820;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179820;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::RawPressureSample::default_instance(proto::gnss::RawPressureSample *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::RawPressureSample::default_instance_;
  if (!proto::gnss::RawPressureSample::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::RawPressureSample::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::RawPressureSample::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::RawPressureSample::MergePartialFromCodedStream(proto::gnss::RawPressureSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v13;
        *(this + 6) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::RawPressureSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, v7, a3);
  }

  return this;
}

uint64_t proto::gnss::RawPressureSample::ByteSize(proto::gnss::RawPressureSample *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 6);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

float proto::gnss::RawPressureSample::CheckTypeAndMergeFrom(proto::gnss::RawPressureSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::RawPressureSample::MergeFrom(this, lpsrc);
}

float proto::gnss::RawPressureSample::CopyFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::RawPressureSample::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::RawPressureSample::Swap(proto::gnss::RawPressureSample *this, proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SensorSample3Axis *proto::gnss::SensorSample3Axis::SensorSample3Axis(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  *this = off_100179898;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  return this;
}

float proto::gnss::SensorSample3Axis::MergeFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = result;
  }

  return result;
}

void sub_1000E8800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::SensorSample3Axis::default_instance(proto::gnss::SensorSample3Axis *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SensorSample3Axis::default_instance_;
  if (!proto::gnss::SensorSample3Axis::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SensorSample3Axis::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::Clear(uint64_t this)
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

uint64_t proto::gnss::SensorSample3Axis::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, v4, v7, a3);
}

uint64_t proto::gnss::SensorSample3Axis::ByteSize(proto::gnss::SensorSample3Axis *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 8);
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
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

float proto::gnss::SensorSample3Axis::CheckTypeAndMergeFrom(proto::gnss::SensorSample3Axis *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::SensorSample3Axis::MergeFrom(this, lpsrc);
}

float proto::gnss::SensorSample3Axis::CopyFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::SensorSample3Axis::Swap(proto::gnss::SensorSample3Axis *this, proto::gnss::SensorSample3Axis *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t proto::gnss::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SvId *proto::gnss::SvId::SvId(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  *this = off_100179910;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SvId::MergeFrom(this, a2);
  return this;
}

void proto::gnss::SvId::MergeFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
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

void sub_1000E8D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::SvId::~SvId(proto::gnss::SvId *this)
{
  *this = off_100179910;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179910;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179910;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::SvId::default_instance(proto::gnss::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SvId::default_instance_;
  if (!proto::gnss::SvId::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SvId::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SvId::Clear(uint64_t this)
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

uint64_t proto::gnss::SvId::MergePartialFromCodedStream(proto::gnss::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 3) = v16;
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
        *(a2 + 1) = v21 + 1;
LABEL_56:
        v26 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v22 = v26;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 6) = -(v22 & 1) ^ (v22 >> 1);
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

int *proto::gnss::SvId::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], v4, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(5, v7, v4, a4);
}

uint64_t proto::gnss::SvId::ByteSize(proto::gnss::SvId *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
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
    if ((*(this + 32) & 2) == 0)
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
    v3 = *(this + 8);
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
      v3 = *(this + 8);
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
        goto LABEL_32;
      }

      goto LABEL_28;
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
    v3 = *(this + 8);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v12 = ((2 * *(this + 6)) ^ (*(this + 6) >> 31));
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

LABEL_32:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::SvId::CheckTypeAndMergeFrom(proto::gnss::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::SvId::MergeFrom(this, lpsrc);
}

void proto::gnss::SvId::CopyFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::SvId::MergeFrom(this, a2);
  }
}

proto::gnss::SvId *proto::gnss::SvId::Swap(proto::gnss::SvId *this, proto::gnss::SvId *a2)
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

double proto::gnss::PwrMeasurement::SharedCtor(proto::gnss::PwrMeasurement *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::PwrMeasurement *proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  *this = off_100179988;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::PwrMeasurement::default_instance(proto::gnss::PwrMeasurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::PwrMeasurement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::PwrMeasurement::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::PwrMeasurement::MergePartialFromCodedStream(proto::gnss::PwrMeasurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 1)
        {
          goto LABEL_21;
        }

        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v17;
        *(this + 12) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 17)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v17;
          *(this + 12) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 25)
          {
            *(a2 + 1) = v12 + 1;
LABEL_32:
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v17;
            *(this + 12) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 33)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v17;
      *(this + 12) |= 8u;
      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_40:
        v17[0] = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v15 <= 1)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v15;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

void proto::gnss::PwrMeasurement::CheckTypeAndMergeFrom(proto::gnss::PwrMeasurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::PwrMeasurement::MergeFrom(this, lpsrc);
}

void proto::gnss::PwrMeasurement::CopyFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  }
}

double proto::gnss::PwrMeasurement::Swap(proto::gnss::PwrMeasurement *this, proto::gnss::PwrMeasurement *a2)
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
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::DecodedRti *proto::gnss::DecodedRti::DecodedRti(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  *(this + 20) = 0;
  *this = off_100179A00;
  *(this + 1) = 0;
  *(this + 16) = 0;
  proto::gnss::DecodedRti::MergeFrom(this, a2);
  return this;
}

void proto::gnss::DecodedRti::MergeFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_1000E9C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedRti::~DecodedRti(proto::gnss::DecodedRti *this)
{
  *this = off_100179A00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179A00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179A00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::DecodedRti::default_instance(proto::gnss::DecodedRti *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedRti::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::DecodedRti::MergePartialFromCodedStream(proto::gnss::DecodedRti *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v15 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v12 = v15;
          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 16) = v12 != 0;
        *(this + 6) |= 2u;
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

uint64_t proto::gnss::DecodedRti::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::DecodedRti::ByteSize(proto::gnss::DecodedRti *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 6);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void proto::gnss::DecodedRti::CheckTypeAndMergeFrom(proto::gnss::DecodedRti *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedRti::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedRti::CopyFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedRti::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedRti::Swap(uint64_t this, proto::gnss::DecodedRti *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::DecodedExtendedEphemeris *proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100179A78;
  *(this + 24) = 0;
  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::default_instance(proto::gnss::DecodedExtendedEphemeris *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 28) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(proto::gnss::DecodedExtendedEphemeris *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 9) |= 1u;
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

        *(this + 24) = v15 != 0;
        *(this + 9) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 9) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v21 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v19 = v21;
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v19 <= 6)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v19;
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

void proto::gnss::DecodedExtendedEphemeris::CheckTypeAndMergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedExtendedEphemeris::CopyFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Swap(uint64_t this, proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

uint64_t proto::gpsd::protobuf_ShutdownFile_GpsdProtocol_2eproto(proto::gpsd *this)
{
  if (proto::gpsd::Request::default_instance_)
  {
    (*(*proto::gpsd::Request::default_instance_ + 8))(proto::gpsd::Request::default_instance_);
  }

  if (proto::gpsd::Response::default_instance_)
  {
    (*(*proto::gpsd::Response::default_instance_ + 8))(proto::gpsd::Response::default_instance_);
  }

  if (proto::gpsd::Indication::default_instance_)
  {
    (*(*proto::gpsd::Indication::default_instance_ + 8))(proto::gpsd::Indication::default_instance_);
  }

  if (proto::gpsd::Status::default_instance_)
  {
    (*(*proto::gpsd::Status::default_instance_ + 8))(proto::gpsd::Status::default_instance_);
  }

  if (proto::gpsd::SetPvtmReport::default_instance_)
  {
    (*(*proto::gpsd::SetPvtmReport::default_instance_ + 8))(proto::gpsd::SetPvtmReport::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceFile::default_instance_ + 8))(proto::gpsd::InjectAssistanceFile::default_instance_);
  }

  if (proto::gpsd::InjectRtiFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRtiFile::default_instance_ + 8))(proto::gpsd::InjectRtiFile::default_instance_);
  }

  if (proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRavenOrbitFile::default_instance_ + 8))(proto::gpsd::InjectRavenOrbitFile::default_instance_);
  }

  if (proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    (*(*proto::gpsd::InjectSvidBlocklist::default_instance_ + 8))(proto::gpsd::InjectSvidBlocklist::default_instance_);
  }

  if (proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistancePosition::default_instance_ + 8))(proto::gpsd::InjectAssistancePosition::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceTime::default_instance_ + 8))(proto::gpsd::InjectAssistanceTime::default_instance_);
  }

  if (proto::gpsd::DeleteGnssData::default_instance_)
  {
    (*(*proto::gpsd::DeleteGnssData::default_instance_ + 8))(proto::gpsd::DeleteGnssData::default_instance_);
  }

  if (proto::gpsd::SetNmeaHandler::default_instance_)
  {
    (*(*proto::gpsd::SetNmeaHandler::default_instance_ + 8))(proto::gpsd::SetNmeaHandler::default_instance_);
  }

  if (proto::gpsd::SetAssistancePressure::default_instance_)
  {
    (*(*proto::gpsd::SetAssistancePressure::default_instance_ + 8))(proto::gpsd::SetAssistancePressure::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAccel::default_instance_ + 8))(proto::gpsd::SetAssistanceAccel::default_instance_);
  }

  if (proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceGyro::default_instance_ + 8))(proto::gpsd::SetAssistanceGyro::default_instance_);
  }

  if (proto::gpsd::SetAssistanceDem::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceDem::default_instance_ + 8))(proto::gpsd::SetAssistanceDem::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMapVector::default_instance_ + 8))(proto::gpsd::SetAssistanceMapVector::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMotionActivityContext::default_instance_ + 8))(proto::gpsd::SetAssistanceMotionActivityContext::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMountState::default_instance_ + 8))(proto::gpsd::SetAssistanceMountState::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSignalEnvironment::default_instance_ + 8))(proto::gpsd::SetAssistanceSignalEnvironment::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSpeedConstraint::default_instance_ + 8))(proto::gpsd::SetAssistanceSpeedConstraint::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_ + 8))(proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_);
  }

  if (proto::gpsd::SetThermalRiskState::default_instance_)
  {
    (*(*proto::gpsd::SetThermalRiskState::default_instance_ + 8))(proto::gpsd::SetThermalRiskState::default_instance_);
  }

  if (proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    (*(*proto::gpsd::SetConfigSimulatorMode::default_instance_ + 8))(proto::gpsd::SetConfigSimulatorMode::default_instance_);
  }

  if (proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    (*(*proto::gpsd::SetConfigEnableGnssConstellations::default_instance_ + 8))(proto::gpsd::SetConfigEnableGnssConstellations::default_instance_);
  }

  if (proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    (*(*proto::gpsd::SetConfigRfBandEnable::default_instance_ + 8))(proto::gpsd::SetConfigRfBandEnable::default_instance_);
  }

  if (proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    (*(*proto::gpsd::SetConfigDutyCycling::default_instance_ + 8))(proto::gpsd::SetConfigDutyCycling::default_instance_);
  }

  if (proto::gpsd::TerminationImminent::default_instance_)
  {
    (*(*proto::gpsd::TerminationImminent::default_instance_ + 8))(proto::gpsd::TerminationImminent::default_instance_);
  }

  if (proto::gpsd::ExitMessage::default_instance_)
  {
    (*(*proto::gpsd::ExitMessage::default_instance_ + 8))(proto::gpsd::ExitMessage::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics::default_instance_ + 8))(proto::gpsd::RecoveryStatistics::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_);
  }

  if (proto::gpsd::LtlInfoRequest::default_instance_)
  {
    (*(*proto::gpsd::LtlInfoRequest::default_instance_ + 8))(proto::gpsd::LtlInfoRequest::default_instance_);
  }

  if (proto::gpsd::LtlInfo::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo::default_instance_ + 8))(proto::gpsd::LtlInfo::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlLutParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlLutParams::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlInitialParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlInitialParams::default_instance_);
  }

  if (proto::gpsd::Exception::default_instance_)
  {
    (*(*proto::gpsd::Exception::default_instance_ + 8))(proto::gpsd::Exception::default_instance_);
  }

  if (proto::gpsd::AskBasebandReset::default_instance_)
  {
    (*(*proto::gpsd::AskBasebandReset::default_instance_ + 8))(proto::gpsd::AskBasebandReset::default_instance_);
  }

  if (proto::gpsd::LogEntry::default_instance_)
  {
    (*(*proto::gpsd::LogEntry::default_instance_ + 8))(proto::gpsd::LogEntry::default_instance_);
  }

  result = proto::gpsd::StartContext::default_instance_;
  if (proto::gpsd::StartContext::default_instance_)
  {
    v2 = *(*proto::gpsd::StartContext::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(proto::gpsd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here & 1) == 0)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GpsdProtocol.pb.cc", a4);
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(v4, v5, v6, v7);
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(v8, v9, v10, v11);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v12, v13, v14, v15);
    operator new();
  }
}

double proto::gpsd::Request::Request(proto::gpsd::Request *this)
{
  *this = off_100179C10;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

{
  *this = off_100179C10;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

void *proto::gpsd::Response::Response(void *this)
{
  *this = off_100179C88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100179C88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gpsd::Indication::Indication(proto::gpsd::Indication *this)
{
  *this = off_100179D00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

{
  *this = off_100179D00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

uint64_t proto::gpsd::Status::Status(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179D78;
  *(this + 23) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179D78;
  *(this + 23) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SetPvtmReport(uint64_t this)
{
  *this = off_100179DF0;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

{
  *this = off_100179DF0;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

void *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(void *this)
{
  *this = off_100179E68;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100179E68;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gpsd::InjectRtiFile::InjectRtiFile(void *this)
{
  *this = off_100179EE0;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

{
  *this = off_100179EE0;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

void *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(void *this)
{
  *this = off_100179F58;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

{
  *this = off_100179F58;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179FD0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100179FD0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(uint64_t this)
{
  *this = off_10017A048;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10017A048;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = off_10017A0C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_10017A0C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::DeleteGnssData::DeleteGnssData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A138;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A138;
  return this;
}

void *proto::gpsd::SetNmeaHandler::SetNmeaHandler(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A1B0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A1B0;
  return this;
}

uint64_t proto::gpsd::SetAssistancePressure::SetAssistancePressure(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A228;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A228;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAccel::SetAssistanceAccel(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A2A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A2A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceGyro::SetAssistanceGyro(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A318;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A318;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::SetAssistanceDem::SetAssistanceDem(proto::gpsd::SetAssistanceDem *this)
{
  *this = off_10017A390;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_10017A390;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMapVector::SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this)
{
  *this = off_10017A408;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

{
  *this = off_10017A408;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMotionActivityContext::SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *this = off_10017A480;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  *this = off_10017A480;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::SetAssistanceMountState(uint64_t this)
{
  *this = off_10017A4F8;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10017A4F8;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

double proto::gpsd::SetAssistanceSignalEnvironment::SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *this = off_10017A570;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

{
  *this = off_10017A570;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

double proto::gpsd::SetAssistanceSpeedConstraint::SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *this = off_10017A5E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_10017A5E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  *this = off_10017A660;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_10017A660;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::SetThermalRiskState(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A6D8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017A6D8;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::SetConfigSimulatorMode(uint64_t this)
{
  *this = off_10017A750;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10017A750;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

void *proto::gpsd::SetConfigEnableGnssConstellations::SetConfigEnableGnssConstellations(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A7C8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017A7C8;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::SetConfigRfBandEnable(uint64_t this)
{
  *this = off_10017A840;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = off_10017A840;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::SetConfigDutyCycling(uint64_t this)
{
  *this = off_10017A8B8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = off_10017A8B8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

void *proto::gpsd::TerminationImminent::TerminationImminent(void *this)
{
  *this = off_10017A930;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

{
  *this = off_10017A930;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

void *proto::gpsd::ExitMessage::ExitMessage(void *this)
{
  *this = off_10017A9A8;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

{
  *this = off_10017A9A8;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::RecoveryStatistics(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AB10;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AB10;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::RecoveryStatistics_RecoveryStatus(uint64_t this)
{
  *this = off_10017AA20;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

{
  *this = off_10017AA20;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::RecoveryStatistics_RecoveryPoint(uint64_t this)
{
  *this = off_10017AA98;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10017AA98;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::LtlInfoRequest(uint64_t this)
{
  *this = off_10017AB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_10017AB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

double proto::gpsd::LtlInfo::LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = off_10017ADE0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *this = off_10017ADE0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlLutParams::LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  *this = off_10017AC00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_10017AC00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this)
{
  *this = off_10017AC78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_10017AC78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::LtlInfo_LtlRacPmicAdcPreCalData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017ACF0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_10017ACF0;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::LtlInfo_LtlInitialParams(uint64_t this)
{
  *this = off_10017AD68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

{
  *this = off_10017AD68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Exception(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AE58;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AE58;
  *(this + 24) = 0;
  return this;
}

void *proto::gpsd::AskBasebandReset::AskBasebandReset(void *this)
{
  *this = off_10017AED0;
  this[1] = 0;
  this[2] = 0;
  this[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[4] = 0;
  return this;
}

{
  *this = off_10017AED0;
  this[1] = 0;
  this[2] = 0;
  this[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[4] = 0;
  return this;
}

void *proto::gpsd::LogEntry::LogEntry(void *this)
{
  this[6] = 0;
  *this = off_10017AF48;
  this[1] = 0;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

{
  this[6] = 0;
  *this = off_10017AF48;
  this[1] = 0;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::StartContext(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AFC0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10017AFC0;
  *(this + 24) = 0;
  return this;
}

void proto::gpsd::Request::InitAsDefaultInstance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = this;
  v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  *(v4 + 3) = v5;
  v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  *(v4 + 4) = v6;
  v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  }

  *(v4 + 5) = v7;
  v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  *(v4 + 6) = v8;
  v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  *(v4 + 7) = v9;
  v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  }

  *(v4 + 8) = v10;
  v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  *(v4 + 9) = v11;
  v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  *(v4 + 10) = v12;
  v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  *(v4 + 11) = v13;
  v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  *(v4 + 12) = v14;
  v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  *(v4 + 13) = v15;
  v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  *(v4 + 14) = v16;
  v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  *(v4 + 15) = v17;
  v18 = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v18 = proto::gpsd::InjectRtiFile::default_instance_;
  }

  *(v4 + 16) = v18;
  v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  *(v4 + 17) = v19;
  v20 = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v20 = proto::gpsd::DeleteGnssData::default_instance_;
  }

  *(v4 + 18) = v20;
  v21 = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v21 = proto::gpsd::SetPvtmReport::default_instance_;
  }

  *(v4 + 19) = v21;
  v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  }

  *(v4 + 20) = v22;
  v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  *(v4 + 21) = v23;
  v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  *(v4 + 22) = v24;
  v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  *(v4 + 23) = v25;
  v26 = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v26 = proto::gpsd::TerminationImminent::default_instance_;
  }

  *(v4 + 24) = v26;
  v27 = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v27 = proto::gpsd::ExitMessage::default_instance_;
  }

  *(v4 + 25) = v27;
  v28 = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v28 = proto::gpsd::LtlInfo::default_instance_;
  }

  *(v4 + 26) = v28;
  v29 = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v29 = proto::gpsd::StartContext::default_instance_;
  }

  *(v4 + 27) = v29;
  v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  }

  *(v4 + 28) = v30;
  v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  *(v4 + 29) = v31;
  v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  *(v4 + 30) = v32;
  v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  if (!proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  }

  *(v4 + 31) = v33;
  v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  if (!proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  }

  *(v4 + 33) = v34;
  v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  }

  *(v4 + 34) = v35;
  v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  }

  *(v4 + 35) = v36;
  v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  if (!proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  }

  *(v4 + 36) = v37;
  v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  }

  *(v4 + 37) = v38;
  v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  }

  *(v4 + 39) = v39;
  v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  if (!proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  }

  *(v4 + 40) = v40;
  v41 = proto::gnss::Emergency::LocationId::default_instance_;
  if (!proto::gnss::Emergency::LocationId::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v41 = proto::gnss::Emergency::LocationId::default_instance_;
  }

  *(v4 + 43) = v41;
  v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  if (!proto::gnss::Emergency::SuplContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  }

  *(v4 + 47) = v42;
  v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  }

  *(v4 + 48) = v43;
}

void proto::gpsd::Indication::InitAsDefaultInstance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = this;
  v5 = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Fix::default_instance_;
  }

  *(v4 + 3) = v5;
  v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  *(v4 + 4) = v6;
  v7 = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::PwrMeasurement::default_instance_;
  }

  *(v4 + 5) = v7;
  v8 = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v8 = proto::gpsd::Status::default_instance_;
  }

  *(v4 + 6) = v8;
  v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  *(v4 + 7) = v9;
  v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  }

  *(v4 + 8) = v10;
  v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  }

  *(v4 + 9) = v11;
  v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  *(v4 + 10) = v12;
  v13 = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v13 = proto::gnss::DecodedRti::default_instance_;
  }

  *(v4 + 11) = v13;
  v14 = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v14 = proto::gpsd::Exception::default_instance_;
  }

  *(v4 + 13) = v14;
  v15 = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v15 = proto::gpsd::AskBasebandReset::default_instance_;
  }

  *(v4 + 14) = v15;
  v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  if (!proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  }

  *(v4 + 15) = v16;
  v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  if (!proto::gnss::Emergency::PositionReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  }

  *(v4 + 17) = v17;
  v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  }

  *(v4 + 18) = v18;
  v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  if (!proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  }

  *(v4 + 19) = v19;
  v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  }

  *(v4 + 20) = v20;
  v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  }

  *(v4 + 21) = v21;
  v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  if (!proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  }

  *(v4 + 22) = v22;
  v23 = proto::gnss::Emergency::Init::default_instance_;
  if (!proto::gnss::Emergency::Init::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v23 = proto::gnss::Emergency::Init::default_instance_;
  }

  *(v4 + 23) = v23;
  v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  }

  *(v4 + 25) = v24;
}

void proto::gpsd::InjectAssistancePosition::InitAsDefaultInstance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Position::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gpsd::RecoveryStatistics::InitAsDefaultInstance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  }

  *(this + 4) = v5;
}

proto::gpsd *proto::gpsd::LtlInfo::InitAsDefaultInstance(proto::gpsd *this)
{
  v1 = this;
  v2 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v2 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v3 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  }

  *(v1 + 3) = v3;
  v4 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v4 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  }

  *(v1 + 4) = v4;
  v5 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v5 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  }

  *(v1 + 5) = v5;
  return this;
}

void proto::gpsd::LogEntry::InitAsDefaultInstance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::Request::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v6 = proto::gpsd::Response::default_instance_;
  }

  *(this + 4) = v6;
  v7 = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v7 = proto::gpsd::Indication::default_instance_;
  }

  *(this + 5) = v7;
}

double proto::gpsd::Request::SharedCtor(proto::gpsd::Request *this)
{
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 43) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

uint64_t proto::gpsd::InjectAssistancePosition::default_instance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceTime::default_instance(proto::gpsd::InjectAssistanceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistancePressure::default_instance(proto::gpsd::SetAssistancePressure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistancePressure::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::default_instance(proto::gpsd::SetAssistanceAccel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::default_instance(proto::gpsd::SetAssistanceGyro *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::default_instance(proto::gpsd::SetAssistanceDem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceDem::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMapVector::default_instance(proto::gpsd::SetAssistanceMapVector *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::default_instance(proto::gpsd::SetAssistanceMotionActivityContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::default_instance(proto::gpsd::SetAssistanceMountState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::default_instance(proto::gpsd::SetAssistanceSignalEnvironment *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::default_instance(proto::gpsd::SetAssistanceSpeedConstraint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance(proto::gpsd::SetAssistanceAlongTrackVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceFile::default_instance(proto::gpsd::InjectAssistanceFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRtiFile::default_instance(proto::gpsd::InjectRtiFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRtiFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectSvidBlocklist::default_instance(proto::gpsd::InjectSvidBlocklist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::DeleteGnssData::default_instance(proto::gpsd::DeleteGnssData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::DeleteGnssData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetPvtmReport::default_instance(proto::gpsd::SetPvtmReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetPvtmReport::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetNmeaHandler::default_instance(proto::gpsd::SetNmeaHandler *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetNmeaHandler::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::default_instance(proto::gpsd::SetConfigSimulatorMode *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::default_instance(proto::gpsd::SetConfigEnableGnssConstellations *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigDutyCycling::default_instance(proto::gpsd::SetConfigDutyCycling *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::TerminationImminent::default_instance(proto::gpsd::TerminationImminent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::TerminationImminent::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::ExitMessage::default_instance(proto::gpsd::ExitMessage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::ExitMessage::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo::default_instance(proto::gpsd::LtlInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::StartContext::default_instance(proto::gpsd::StartContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::StartContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::default_instance(proto::gpsd::SetThermalRiskState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetThermalRiskState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::default_instance(proto::gpsd::SetConfigRfBandEnable *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::default_instance(proto::gpsd::InjectRavenOrbitFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  return result;
}

proto::gpsd::Request *proto::gpsd::Request::Request(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  *this = off_100179C10;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  proto::gpsd::Request::MergeFrom(this, a2);
  return this;
}

void sub_1000ED4A0(_Unwind_Exception *a1)
{
  if (*(v1 + 44))
  {
    operator delete[]();
  }

  if (*(v1 + 41))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::MergeFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 84);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 41, *(this + 84) + v4);
    memcpy((*(this + 41) + 4 * *(this + 84)), *(a2 + 41), 4 * *(a2 + 84));
    *(this + 84) += *(a2 + 84);
  }

  v5 = *(a2 + 90);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 44, *(this + 90) + v5);
    memcpy((*(this + 44) + 4 * *(this + 90)), *(a2 + 44), 4 * *(a2 + 90));
    *(this + 90) += *(a2 + 90);
  }

  v6 = *(a2 + 99);
  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6)
  {
    v7 = *(a2 + 1);
    *(this + 99) |= 1u;
    *(this + 1) = v7;
    v6 = *(a2 + 99);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 4);
  *(this + 99) |= 2u;
  *(this + 4) = v8;
  v6 = *(a2 + 99);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 5);
  if (!proto::gpsd::Request_Type_IsValid(v9))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  *(this + 99) |= 4u;
  *(this + 5) = v9;
  v6 = *(a2 + 99);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(this + 99) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(v10, v11);
  v6 = *(a2 + 99);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    *(this + 99) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::Request::default_instance_ + 40);
    }

    proto::gpsd::SetAssistancePressure::MergeFrom(v14, v15);
    v6 = *(a2 + 99);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 99) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(v12, v13);
  v6 = *(a2 + 99);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_36:
  *(this + 99) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  proto::gpsd::SetAssistanceAccel::MergeFrom(v16, v17);
  v6 = *(a2 + 99);
  if ((v6 & 0x80) != 0)
  {
LABEL_41:
    *(this + 99) |= 0x80u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    proto::gpsd::SetAssistanceGyro::MergeFrom(v18, v19);
    v6 = *(a2 + 99);
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 99) |= 0x100u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      v21 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    proto::gpsd::SetAssistanceDem::MergeFrom(v20, v21);
    v6 = *(a2 + 99);
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 99) |= 0x200u;
  v22 = *(this + 9);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 9);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  proto::gpsd::SetAssistanceMapVector::MergeFrom(v22, v23);
  v6 = *(a2 + 99);
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 99) |= 0x400u;
  v24 = *(this + 10);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 10);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(v24, v25);
  v6 = *(a2 + 99);
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 99) |= 0x800u;
  v26 = *(this + 11);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 11);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  proto::gpsd::SetAssistanceMountState::MergeFrom(v26, v27);
  v6 = *(a2 + 99);
  if ((v6 & 0x1000) == 0)
  {
LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(this + 99) |= 0x1000u;
  v28 = *(this + 12);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 12);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(v28, v29);
  v6 = *(a2 + 99);
  if ((v6 & 0x2000) == 0)
  {
LABEL_53:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_81:
  *(this + 99) |= 0x2000u;
  v30 = *(this + 13);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 13);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(v30, v31);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000) == 0)
  {
LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_86:
  *(this + 99) |= 0x4000u;
  v32 = *(this + 14);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 14);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(v32, v33);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000) != 0)
  {
LABEL_91:
    *(this + 99) |= 0x8000u;
    v34 = *(this + 15);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 15);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    proto::gpsd::InjectAssistanceFile::MergeFrom(v34, v35);
    v6 = *(a2 + 99);
  }

LABEL_96:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(this + 99) |= 0x10000u;
    v36 = *(this + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *(a2 + 16);
    if (!v37)
    {
      v37 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    proto::gpsd::InjectRtiFile::MergeFrom(v36, v37);
    v6 = *(a2 + 99);
    if ((v6 & 0x20000) == 0)
    {
LABEL_99:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  *(this + 99) |= 0x20000u;
  v38 = *(this + 17);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 17);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(v38, v39);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000) == 0)
  {
LABEL_100:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(this + 99) |= 0x40000u;
  v40 = *(this + 18);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 18);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  proto::gpsd::DeleteGnssData::MergeFrom(v40, v41);
  v6 = *(a2 + 99);
  if ((v6 & 0x80000) == 0)
  {
LABEL_101:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_121:
  *(this + 99) |= 0x80000u;
  v42 = *(this + 19);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 19);
  if (!v43)
  {
    v43 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  proto::gpsd::SetPvtmReport::MergeFrom(v42, v43);
  v6 = *(a2 + 99);
  if ((v6 & 0x100000) == 0)
  {
LABEL_102:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_131;
  }

LABEL_126:
  *(this + 99) |= 0x100000u;
  v44 = *(this + 20);
  if (!v44)
  {
    operator new();
  }

  v45 = *(a2 + 20);
  if (!v45)
  {
    v45 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  proto::gpsd::SetNmeaHandler::MergeFrom(v44, v45);
  v6 = *(a2 + 99);
  if ((v6 & 0x200000) == 0)
  {
LABEL_103:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_136;
  }

LABEL_131:
  *(this + 99) |= 0x200000u;
  v46 = *(this + 21);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 21);
  if (!v47)
  {
    v47 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  proto::gpsd::SetConfigSimulatorMode::MergeFrom(v46, v47);
  v6 = *(a2 + 99);
  if ((v6 & 0x400000) == 0)
  {
LABEL_104:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

LABEL_136:
  *(this + 99) |= 0x400000u;
  v48 = *(this + 22);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 22);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(v48, v49);
  v6 = *(a2 + 99);
  if ((v6 & 0x800000) != 0)
  {
LABEL_141:
    *(this + 99) |= 0x800000u;
    v50 = *(this + 23);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 23);
    if (!v51)
    {
      v51 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    proto::gpsd::SetConfigDutyCycling::MergeFrom(v50, v51);
    v6 = *(a2 + 99);
  }

LABEL_146:
  if (!HIBYTE(v6))
  {
    goto LABEL_196;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(this + 99) |= 0x1000000u;
    v52 = *(this + 24);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 24);
    if (!v53)
    {
      v53 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    proto::gpsd::TerminationImminent::MergeFrom(v52, v53);
    v6 = *(a2 + 99);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_149:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_149;
  }

  *(this + 99) |= 0x2000000u;
  v54 = *(this + 25);
  if (!v54)
  {
    operator new();
  }

  v55 = *(a2 + 25);
  if (!v55)
  {
    v55 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  proto::gpsd::ExitMessage::MergeFrom(v54, v55);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_171;
  }

LABEL_166:
  *(this + 99) |= 0x4000000u;
  v56 = *(this + 26);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 26);
  if (!v57)
  {
    v57 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  proto::gpsd::LtlInfo::MergeFrom(v56, v57);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_176;
  }

LABEL_171:
  *(this + 99) |= 0x8000000u;
  v58 = *(this + 27);
  if (!v58)
  {
    operator new();
  }

  v59 = *(a2 + 27);
  if (!v59)
  {
    v59 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  proto::gpsd::StartContext::MergeFrom(v58, v59);
  v6 = *(a2 + 99);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_152:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_181;
  }

LABEL_176:
  *(this + 99) |= 0x10000000u;
  v60 = *(this + 28);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 28);
  if (!v61)
  {
    v61 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  proto::gpsd::SetThermalRiskState::MergeFrom(v60, v61);
  v6 = *(a2 + 99);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_153:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_181:
  *(this + 99) |= 0x20000000u;
  v62 = *(this + 29);
  if (!v62)
  {
    operator new();
  }

  v63 = *(a2 + 29);
  if (!v63)
  {
    v63 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  proto::gpsd::SetConfigRfBandEnable::MergeFrom(v62, v63);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_154:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_191;
  }

LABEL_186:
  *(this + 99) |= 0x40000000u;
  v64 = *(this + 30);
  if (!v64)
  {
    operator new();
  }

  v65 = *(a2 + 30);
  if (!v65)
  {
    v65 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(v64, v65);
  if ((*(a2 + 99) & 0x80000000) != 0)
  {
LABEL_191:
    *(this + 99) |= 0x80000000;
    v66 = *(this + 31);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 31);
    if (!v67)
    {
      v67 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    proto::gnss::Emergency::EmergConfig::MergeFrom(v66, v67);
  }

LABEL_196:
  v68 = *(a2 + 100);
  if (!v68)
  {
    goto LABEL_240;
  }

  if (v68)
  {
    v69 = *(a2 + 32);
    *(this + 100) |= 1u;
    v70 = *(this + 32);
    if (v70 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v70, v69);
    v68 = *(a2 + 100);
    if ((v68 & 2) == 0)
    {
LABEL_199:
      if ((v68 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_214;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_199;
  }

  *(this + 100) |= 2u;
  v71 = *(this + 33);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 33);
  if (!v72)
  {
    v72 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  proto::gnss::Emergency::PositionRequest::MergeFrom(v71, v72);
  v68 = *(a2 + 100);
  if ((v68 & 4) == 0)
  {
LABEL_200:
    if ((v68 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_215;
  }

LABEL_214:
  v73 = *(a2 + 76);
  *(this + 100) |= 4u;
  *(this + 76) = v73;
  v68 = *(a2 + 100);
  if ((v68 & 8) == 0)
  {
LABEL_201:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_215:
  *(this + 100) |= 8u;
  v74 = *(this + 34);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 34);
  if (!v75)
  {
    v75 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(v74, v75);
  v68 = *(a2 + 100);
  if ((v68 & 0x10) == 0)
  {
LABEL_202:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_220:
  *(this + 100) |= 0x10u;
  v76 = *(this + 35);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 35);
  if (!v77)
  {
    v77 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  proto::gnss::Emergency::ReferenceLocation::MergeFrom(v76, v77);
  v68 = *(a2 + 100);
  if ((v68 & 0x20) == 0)
  {
LABEL_203:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_230;
  }

LABEL_225:
  *(this + 100) |= 0x20u;
  v78 = *(this + 36);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 36);
  if (!v79)
  {
    v79 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(v78, v79);
  v68 = *(a2 + 100);
  if ((v68 & 0x40) == 0)
  {
LABEL_204:
    if ((v68 & 0x80) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_235;
  }

LABEL_230:
  *(this + 100) |= 0x40u;
  v80 = *(this + 37);
  if (!v80)
  {
    operator new();
  }

  v81 = *(a2 + 37);
  if (!v81)
  {
    v81 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(v80, v81);
  v68 = *(a2 + 100);
  if ((v68 & 0x80) != 0)
  {
LABEL_235:
    *(this + 100) |= 0x80u;
    v82 = *(this + 39);
    if (!v82)
    {
      operator new();
    }

    v83 = *(a2 + 39);
    if (!v83)
    {
      v83 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    proto::gnss::Emergency::CellFTAssistance::MergeFrom(v82, v83);
    v68 = *(a2 + 100);
  }

LABEL_240:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_247;
  }

  if ((v68 & 0x100) != 0)
  {
    *(this + 100) |= 0x100u;
    v84 = *(this + 40);
    if (!v84)
    {
      operator new();
    }

    v85 = *(a2 + 40);
    if (!v85)
    {
      v85 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    proto::gnss::Emergency::CplaneContext::MergeFrom(v84, v85);
    v68 = *(a2 + 100);
    if ((v68 & 0x400) == 0)
    {
LABEL_243:
      if ((v68 & 0x800) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_259;
    }
  }

  else if ((v68 & 0x400) == 0)
  {
    goto LABEL_243;
  }

  *(this + 100) |= 0x400u;
  v86 = *(this + 43);
  if (!v86)
  {
    operator new();
  }

  v87 = *(a2 + 43);
  if (!v87)
  {
    v87 = *(proto::gpsd::Request::default_instance_ + 344);
  }

  proto::gnss::Emergency::LocationId::MergeFrom(v86, v87);
  v68 = *(a2 + 100);
  if ((v68 & 0x800) == 0)
  {
LABEL_244:
    if ((v68 & 0x2000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_260;
  }

LABEL_259:
  v88 = *(a2 + 77);
  *(this + 100) |= 0x800u;
  *(this + 77) = v88;
  v68 = *(a2 + 100);
  if ((v68 & 0x2000) == 0)
  {
LABEL_245:
    if ((v68 & 0x4000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_261;
  }

LABEL_260:
  v89 = *(a2 + 368);
  *(this + 100) |= 0x2000u;
  *(this + 368) = v89;
  v68 = *(a2 + 100);
  if ((v68 & 0x4000) == 0)
  {
LABEL_246:
    if ((v68 & 0x8000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_262;
  }

LABEL_261:
  v90 = *(a2 + 93);
  *(this + 100) |= 0x4000u;
  *(this + 93) = v90;
  v68 = *(a2 + 100);
  if ((v68 & 0x8000) == 0)
  {
LABEL_247:
    if ((v68 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_267;
  }

LABEL_262:
  *(this + 100) |= 0x8000u;
  v91 = *(this + 47);
  if (!v91)
  {
    operator new();
  }

  v92 = *(a2 + 47);
  if (!v92)
  {
    v92 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  proto::gnss::Emergency::SuplContext::MergeFrom(v91, v92);
  if ((*(a2 + 100) & 0x10000) != 0)
  {
LABEL_267:
    *(this + 100) |= 0x10000u;
    v93 = *(this + 48);
    if (!v93)
    {
      operator new();
    }

    v94 = *(a2 + 48);
    if (!v94)
    {
      v94 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    proto::gnss::Emergency::WlanMeasurementList::MergeFrom(v93, v94);
  }
}

void sub_1000EEAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::Request::default_instance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Request::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistancePosition::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v1 = *(this + 8);
      if (v1)
      {
        v2 = *(v1 + 96);
        if (v2)
        {
          *(v1 + 56) = 0u;
          *(v1 + 40) = 0u;
          *(v1 + 24) = 0u;
          *(v1 + 8) = 0u;
        }

        if ((v2 & 0xFF00) != 0)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 0;
        }

        *(v1 + 96) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistanceTime::Clear(uint64_t this)
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

uint64_t proto::gpsd::SetAssistancePressure::Clear(proto::gpsd::SetAssistancePressure *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::Clear(proto::gpsd::SetAssistanceAccel *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::Clear(proto::gpsd::SetAssistanceGyro *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::Clear(uint64_t this)
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

uint64_t proto::gpsd::SetAssistanceMapVector::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 49) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 69) = 0;
    *(this + 65) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0x400000000;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 4;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 15;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::Clear(uint64_t this)
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

uint64_t proto::gpsd::InjectAssistanceFile::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
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

    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRtiFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
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

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::Clear(proto::gpsd::InjectSvidBlocklist *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::DeleteGnssData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 1;
    *(this + 9) = 0;
    *(this + 13) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::TerminationImminent::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
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

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::ExitMessage::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
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

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 48) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        v3 = *(v2 + 56);
        if (v3)
        {
          *(v2 + 36) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 8) = 0;
          *(v2 + 32) = 0;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 40) = 0;
          *(v2 + 48) = 0;
        }

        *(v2 + 56) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 24) = 0;
        *(v4 + 40) = 0;
        *(v4 + 52) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if ((*(v5 + 36) & 0x1FE) != 0)
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 16) = 0;
        *(v5 + 36) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 20))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 20) = 0;
      }
    }
  }

  *(this + 56) = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetThermalRiskState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
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

  *(this + 20) = 0;
  return this;
}

void proto::gpsd::Request::CheckTypeAndMergeFrom(proto::gpsd::Request *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Request::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::MergeFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
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
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
      }

      proto::gnss::Position::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 4)
      {
        __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9430, "::proto::gnss::PositionAssistType_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      *(this + 9) |= 4u;
      *(this + 20) = v8;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 9) |= 8u;
      *(this + 3) = v9;
    }
  }
}

void sub_1000EF320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceTime::MergeFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = v5;
  }
}

void sub_1000EF40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistancePressure::MergeFrom(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), *(a2 + 4) + *(this + 4));
  LODWORD(v4) = *(a2 + 4);
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

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      proto::gnss::RawPressureSample::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_1000EF5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::MergeFrom(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_1000EF674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceGyro::MergeFrom(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_1000EF708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceDem::MergeFrom(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_1000EF7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMapVector::MergeFrom(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 19) |= 2u;
  *(this + 2) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 19) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 64);
  *(this + 19) |= 8u;
  *(this + 64) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v12 = *(a2 + 5);
    *(this + 19) |= 0x20u;
    *(this + 5) = v12;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v11 = *(a2 + 4);
  *(this + 19) |= 0x10u;
  *(this + 4) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = *(a2 + 6);
  *(this + 19) |= 0x40u;
  *(this + 6) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 65);
    *(this + 19) |= 0x100u;
    *(this + 65) = v14;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 66);
  *(this + 19) |= 0x200u;
  *(this + 66) = v15;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 67);
  *(this + 19) |= 0x400u;
  *(this + 67) = v16;
  v4 = *(a2 + 19);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  v17 = *(a2 + 68);
  *(this + 19) |= 0x800u;
  *(this + 68) = v17;
  if ((*(a2 + 19) & 0x1000) == 0)
  {
    return;
  }

LABEL_19:
  v6 = *(a2 + 69);
  *(this + 19) |= 0x1000u;
  *(this + 69) = v6;
}

void sub_1000EFA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if (v6 >= 0xA)
      {
        __assert_rtn("set_context", "GpsdProtocol.pb.h", 10092, "::proto::gnss::MotionActivityContext_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 5)
      {
        __assert_rtn("set_moving_state", "GpsdProtocol.pb.h", 10115, "::proto::gnss::MovingState_IsValid(value)");
      }

      *(this + 8) |= 4u;
      *(this + 5) = v7;
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 6);
      if (!proto::gnss::Reliability_IsValid(v8))
      {
        __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10138, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 8) |= 8u;
      *(this + 6) = v8;
    }
  }
}

void sub_1000EFBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMountState::MergeFrom(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10187, "::proto::gnss::DeviceMountState_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_1000EFC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 7 && v4 != 15)
    {
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_1000EFD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1000EFE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_1000EFF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceFile::MergeFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
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
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 3)
      {
        __assert_rtn("set_compression_type", "GpsdProtocol.pb.h", 9161, "::proto::gpsd::CompressionType_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GpsdProtocol.pb.h", 9184, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v8;
    }
  }
}

void sub_1000F00D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRtiFile::MergeFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_1000F01B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::MergeFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), *(a2 + 4) + *(this + 4));
  LODWORD(v4) = *(a2 + 4);
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

      v6 = *(*(a2 + 1) + 8 * v5);
      v7 = *(this + 5);
      v8 = *(this + 4);
      if (v8 >= v7)
      {
        if (v7 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
          v7 = *(this + 5);
        }

        *(this + 5) = v7 + 1;
        operator new();
      }

      v9 = *(this + 1);
      *(this + 4) = v8 + 1;
      proto::gnss::SvId::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }
}

void sub_1000F0380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::DeleteGnssData::MergeFrom(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1000F042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetPvtmReport::MergeFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 5);
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

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 5) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 5);
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
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
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
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    v4 = *(a2 + 5);
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
    v10 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v10;
    if ((*(a2 + 5) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 13);
    *(this + 5) |= 0x20u;
    *(this + 13) = v5;
  }
}

void sub_1000F0578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetNmeaHandler::MergeFrom(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1000F061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigSimulatorMode::MergeFrom(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
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
      v5 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v5;
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

void sub_1000F06E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
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

void sub_1000F07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigDutyCycling::MergeFrom(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
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

void sub_1000F0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::TerminationImminent::MergeFrom(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_1000F0928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::ExitMessage::MergeFrom(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_1000F0A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo::MergeFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 56))
  {
    v5 = *(a2 + 8);
    *(this + 14) |= 1u;
    *(this + 8) = v5;
    v4 = *(a2 + 14);
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

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 14) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 12);
  if (v7 >= 5)
  {
    __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11634, "::proto::gpsd::LtlInfoType_IsValid(value)");
  }

  *(this + 14) |= 4u;
  *(this + 12) = v7;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    *(this + 14) |= 0x10u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
    }

    proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(v10, v11);
    v4 = *(a2 + 14);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_16:
  *(this + 14) |= 8u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(v8, v9);
  v4 = *(a2 + 14);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  *(this + 14) |= 0x20u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(v12, v13);
  if ((*(a2 + 14) & 0x40) != 0)
  {
LABEL_31:
    *(this + 14) |= 0x40u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(v14, v15);
  }
}

void sub_1000F0D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::StartContext::MergeFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 17);
    *(this + 6) |= 2u;
    *(this + 17) = v7;
    v4 = *(a2 + 6);
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
    v8 = *(a2 + 18);
    *(this + 6) |= 4u;
    *(this + 18) = v8;
    v4 = *(a2 + 6);
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
    v9 = *(a2 + 1);
    *(this + 6) |= 8u;
    *(this + 1) = v9;
    if ((*(a2 + 6) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 19);
    *(this + 6) |= 0x10u;
    *(this + 19) = v5;
  }
}

void sub_1000F0E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetThermalRiskState::MergeFrom(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_1000F0F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigRfBandEnable::MergeFrom(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 9);
      *(this + 4) |= 2u;
      *(this + 9) = v6;
    }
  }
}