void proto::gnss::Emergency::MeasurementReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::MeasurementReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::MeasurementReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::MeasurementReport::CopyFrom(proto::gnss::Emergency::MeasurementReport *this, const proto::gnss::Emergency::MeasurementReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::MeasurementReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::MeasurementReport::Swap(uint64_t this, proto::gnss::Emergency::MeasurementReport *a2)
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

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GpsAssistanceRequest *proto::gnss::Emergency::GpsAssistanceRequest::GpsAssistanceRequest(proto::gnss::Emergency::GpsAssistanceRequest *this, const proto::gnss::Emergency::GpsAssistanceRequest *a2)
{
  *this = off_100175F68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(this, a2);
  return this;
}

void sub_1000ADB28(_Unwind_Exception *a1)
{
  if (*(v1 + 5))
  {
    operator delete[]();
  }

  if (*(v1 + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(proto::gnss::Emergency::GpsAssistanceRequest *this, const proto::gnss::Emergency::GpsAssistanceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v6) = *(a2 + 64);
  if (v6)
  {
    if (*(a2 + 64))
    {
      v8 = *(a2 + 2);
      *(this + 16) |= 1u;
      *(this + 2) = v8;
      v6 = *(a2 + 16);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 64) & 2) == 0)
    {
      goto LABEL_10;
    }

    v9 = *(a2 + 3);
    *(this + 16) |= 2u;
    *(this + 3) = v9;
    v6 = *(a2 + 16);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 4);
    *(this + 16) |= 4u;
    *(this + 4) = v10;
    v6 = *(a2 + 16);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_18:
    v11 = *(a2 + 5);
    *(this + 16) |= 8u;
    *(this + 5) = v11;
    if ((*(a2 + 16) & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    v7 = *(a2 + 14);
    *(this + 16) |= 0x40u;
    *(this + 14) = v7;
  }
}

void sub_1000ADD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAssistanceRequest::~GpsAssistanceRequest(proto::gnss::Emergency::GpsAssistanceRequest *this)
{
  *this = off_100175F68;
  if (*(this + 5))
  {
    operator delete[]();
  }

  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsAssistanceRequest::~GpsAssistanceRequest(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::default_instance(proto::gnss::Emergency::GpsAssistanceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GpsAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::Clear(uint64_t this)
{
  if (*(this + 64))
  {
    *(this + 56) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::MergePartialFromCodedStream(proto::gnss::Emergency::GpsAssistanceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
            if (TagFallback >> 3 > 3)
            {
              break;
            }

            if (v7 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
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

              *(this + 16) |= 1u;
              if (v15 < v10 && *v15 == 16)
              {
                v17 = v15 + 1;
                *(a2 + 1) = v17;
                goto LABEL_45;
              }
            }

            else
            {
              if (v7 != 2)
              {
                if (v7 != 3 || (TagFallback & 7) != 0)
                {
                  goto LABEL_34;
                }

                v11 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_53;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
LABEL_45:
              if (v17 >= v10 || (v20 = *v17, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v20;
                v21 = v17 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 16) |= 2u;
              if (v21 < v10 && *v21 == 24)
              {
                v11 = v21 + 1;
                *(a2 + 1) = v11;
LABEL_53:
                if (v11 >= v10 || (v22 = *v11, v22 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v23 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v22;
                  v23 = v11 + 1;
                  *(a2 + 1) = v23;
                }

                *(this + 16) |= 4u;
                if (v23 < v10 && *v23 == 32)
                {
                  v16 = v23 + 1;
                  *(a2 + 1) = v16;
                  goto LABEL_61;
                }
              }
            }
          }

          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_70;
              }

              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
                if (!result)
                {
                  return result;
                }

                goto LABEL_87;
              }
            }

            goto LABEL_34;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
          }

          v16 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_61:
          if (v16 >= v10 || (v24 = *v16, v24 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v24;
            v25 = (v16 + 1);
            *(a2 + 1) = v25;
          }

          *(this + 16) |= 8u;
          if (v25 < v10)
          {
            v26 = *v25;
            while (v26 == 40)
            {
              v19 = (v25 + 1);
              *(a2 + 1) = v19;
LABEL_70:
              v50 = 0;
              if (v19 >= v10 || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                {
                  return 0;
                }
              }

              else
              {
                v50 = *v19;
                *(a2 + 1) = v19 + 1;
              }

              v27 = *(this + 8);
              if (v27 == *(this + 9))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, v27 + 1);
                v27 = *(this + 8);
              }

              v28 = v50;
              v29 = *(this + 3);
              *(this + 8) = v27 + 1;
              *(v29 + 4 * v27) = v28;
              v30 = *(this + 9) - *(this + 8);
              if (v30 >= 1)
              {
                v31 = v30 + 1;
                do
                {
                  v32 = *(a2 + 1);
                  v33 = *(a2 + 2);
                  if (v32 >= v33 || *v32 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v32 + 1;
                  if ((v32 + 1) >= v33 || v32[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v50 = v32[1];
                    *(a2 + 1) = v32 + 2;
                  }

                  v34 = *(this + 8);
                  if (v34 >= *(this + 9))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
                    v34 = *(this + 8);
                  }

                  v35 = v50;
                  v36 = *(this + 3);
                  *(this + 8) = v34 + 1;
                  *(v36 + 4 * v34) = v35;
                  --v31;
                }

                while (v31 > 1);
              }

LABEL_87:
              v25 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v25 >= v10)
              {
                break;
              }

              v26 = *v25;
              if (v26 == 48)
              {
                goto LABEL_89;
              }
            }
          }
        }

        if (v7 == 6)
        {
          break;
        }

        if (v7 != 7 || (TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_112:
        if (v12 >= v10 || (v48 = *v12, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v48;
          v49 = v12 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 16) |= 0x40u;
        if (v49 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
      while (1)
      {
        v50 = 0;
        if (v18 >= v10 || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v37 = *(this + 12);
        if (v37 == *(this + 13))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 5, v37 + 1);
          v37 = *(this + 12);
        }

        v38 = v50;
        v39 = *(this + 5);
        *(this + 12) = v37 + 1;
        *(v39 + 4 * v37) = v38;
        v40 = *(this + 13) - *(this + 12);
        if (v40 >= 1)
        {
          v41 = v40 + 1;
          do
          {
            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            if (v42 >= v43 || *v42 != 48)
            {
              break;
            }

            *(a2 + 1) = v42 + 1;
            if ((v42 + 1) >= v43 || v42[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = v42[1];
              *(a2 + 1) = v42 + 2;
            }

            v44 = *(this + 12);
            if (v44 >= *(this + 13))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
              v44 = *(this + 12);
            }

            v45 = v50;
            v46 = *(this + 5);
            *(this + 12) = v44 + 1;
            *(v46 + 4 * v44) = v45;
            --v41;
          }

          while (v41 > 1);
        }

LABEL_107:
        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v25 >= v10)
        {
          break;
        }

        v47 = *v25;
        if (v47 == 56)
        {
          v12 = (v25 + 1);
          *(a2 + 1) = v12;
          goto LABEL_112;
        }

        if (v47 != 48)
        {
          goto LABEL_1;
        }

LABEL_89:
        v18 = (v25 + 1);
        *(a2 + 1) = v18;
      }
    }

    if (v8 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 40);
      if (!result)
      {
        return result;
      }

      goto LABEL_107;
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

void sub_1000AE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), v4, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), v4, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), v4, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 24) + 4 * v7++), v4, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 40) + 4 * v8++), v4, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 64) & 0x40) != 0)
  {
    v9 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsAssistanceRequest::ByteSize(proto::gnss::Emergency::GpsAssistanceRequest *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
  }

  if (*(this + 64))
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
    if ((*(this + 64) & 2) == 0)
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

  v4 += v7;
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

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x40) == 0)
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
    v3 = *(this + 16);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x40) != 0)
  {
LABEL_26:
    v12 = *(this + 14);
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

LABEL_30:
  v14 = *(this + 8);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(this + 3) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(this + 8);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(this + 12);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(*(this + 5) + 4 * v20);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
        v19 = *(this + 12);
      }

      else
      {
        v23 = 1;
      }

      v21 += v23;
      ++v20;
    }

    while (v20 < v19);
  }

  result = (v16 + v4 + v14 + v21 + v19);
  *(this + 15) = result;
  return result;
}

void proto::gnss::Emergency::GpsAssistanceRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsAssistanceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsAssistanceRequest::CopyFrom(proto::gnss::Emergency::GpsAssistanceRequest *this, const proto::gnss::Emergency::GpsAssistanceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::GpsAssistanceRequest::Swap(proto::gnss::Emergency::GpsAssistanceRequest *this, proto::gnss::Emergency::GpsAssistanceRequest *a2)
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
    v7 = *(a2 + 4);
    *(a2 + 3) = v6;
    v8 = *(this + 4);
    *(this + 4) = v7;
    *(a2 + 4) = v8;
    v9 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v9;
    v11 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v11;
    LODWORD(v9) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v9;
    LODWORD(v9) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeModelElem::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GanssTimeModelElem *proto::gnss::Emergency::GanssTimeModelElem::GanssTimeModelElem(proto::gnss::Emergency::GanssTimeModelElem *this, const proto::gnss::Emergency::GanssTimeModelElem *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175FE0;
  proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(proto::gnss::Emergency::GanssTimeModelElem *this, const proto::gnss::Emergency::GanssTimeModelElem *a2)
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

void sub_1000AEAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssTimeModelElem::~GanssTimeModelElem(proto::gnss::Emergency::GanssTimeModelElem *this)
{
  *this = off_100175FE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175FE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175FE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssTimeModelElem::default_instance(proto::gnss::Emergency::GanssTimeModelElem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssTimeModelElem::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeModelElem::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssTimeModelElem::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeModelElem::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeModelElem::MergePartialFromCodedStream(proto::gnss::Emergency::GanssTimeModelElem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::GanssTimeModelElem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GanssTimeModelElem::ByteSize(proto::gnss::Emergency::GanssTimeModelElem *this, unsigned int a2)
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

void proto::gnss::Emergency::GanssTimeModelElem::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssTimeModelElem *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssTimeModelElem::CopyFrom(proto::gnss::Emergency::GanssTimeModelElem *this, const proto::gnss::Emergency::GanssTimeModelElem *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssTimeModelElem *proto::gnss::Emergency::GanssTimeModelElem::Swap(proto::gnss::Emergency::GanssTimeModelElem *this, proto::gnss::Emergency::GanssTimeModelElem *a2)
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

uint64_t proto::gnss::Emergency::GanssDataBitAssist::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GanssDataBitAssist *proto::gnss::Emergency::GanssDataBitAssist::GanssDataBitAssist(proto::gnss::Emergency::GanssDataBitAssist *this, const proto::gnss::Emergency::GanssDataBitAssist *a2)
{
  *this = off_100176058;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(this, a2);
  return this;
}

void sub_1000AF0AC(_Unwind_Exception *a1)
{
  if (*(v1 + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(proto::gnss::Emergency::GanssDataBitAssist *this, const proto::gnss::Emergency::GanssDataBitAssist *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 2);
      *(this + 12) |= 1u;
      *(this + 2) = v7;
      v5 = *(a2 + 12);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 3);
    *(this + 12) |= 2u;
    *(this + 3) = v8;
    v5 = *(a2 + 12);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 4);
    *(this + 12) |= 4u;
    *(this + 4) = v9;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_16:
    v10 = *(a2 + 5);
    *(this + 12) |= 8u;
    *(this + 5) = v10;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    v6 = *(a2 + 10);
    *(this + 12) |= 0x10u;
    *(this + 10) = v6;
  }
}

void sub_1000AF234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssDataBitAssist::~GanssDataBitAssist(proto::gnss::Emergency::GanssDataBitAssist *this)
{
  *this = off_100176058;
  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssDataBitAssist::~GanssDataBitAssist(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::default_instance(proto::gnss::Emergency::GanssDataBitAssist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  if (!proto::gnss::Emergency::GanssDataBitAssist::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::MergePartialFromCodedStream(proto::gnss::Emergency::GanssDataBitAssist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_28;
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

        *(this + 12) |= 1u;
        if (v14 < v9 && *v14 == 16)
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
          goto LABEL_38;
        }
      }

      else if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_38:
        if (v16 >= v9 || (v19 = *v16, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v19;
          v20 = v16 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 12) |= 2u;
        if (v20 < v9 && *v20 == 24)
        {
          v10 = v20 + 1;
          *(a2 + 1) = v10;
LABEL_46:
          if (v10 >= v9 || (v21 = *v10, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v21;
            v22 = v10 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 12) |= 4u;
          if (v22 < v9 && *v22 == 32)
          {
            v15 = v22 + 1;
            *(a2 + 1) = v15;
LABEL_54:
            if (v15 >= v9 || (v23 = *v15, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v23;
              v24 = v15 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 12) |= 8u;
            if (v24 < v9 && *v24 == 40)
            {
              v17 = v24 + 1;
              *(a2 + 1) = v17;
LABEL_62:
              if (v17 >= v9 || (v25 = *v17, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v25;
                v26 = v17 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 12) |= 0x10u;
              if (v26 < v9 && *v26 == 48)
              {
                goto LABEL_69;
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
          goto LABEL_46;
        }

LABEL_28:
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
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v7 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (v7 != 6)
    {
      goto LABEL_28;
    }

    if ((TagFallback & 7) == 0)
    {
      v18 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_70;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
    if (!result)
    {
      return result;
    }

LABEL_87:
    v26 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v26 < v9 && *v26 == 48)
    {
      break;
    }

    if (v26 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

LABEL_69:
  v18 = v26 + 1;
  *(a2 + 1) = v18;
LABEL_70:
  v37 = 0;
  if (v18 < v9 && (*v18 & 0x80000000) == 0)
  {
    v37 = *v18;
    *(a2 + 1) = v18 + 1;
    goto LABEL_74;
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
  {
LABEL_74:
    v27 = *(this + 8);
    if (v27 == *(this + 9))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, v27 + 1);
      v27 = *(this + 8);
    }

    v28 = v37;
    v29 = *(this + 3);
    *(this + 8) = v27 + 1;
    *(v29 + 4 * v27) = v28;
    v30 = *(this + 9) - *(this + 8);
    if (v30 >= 1)
    {
      v31 = v30 + 1;
      do
      {
        v32 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v32 >= v33 || *v32 != 48)
        {
          break;
        }

        *(a2 + 1) = v32 + 1;
        if ((v32 + 1) >= v33 || v32[1] < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = v32[1];
          *(a2 + 1) = v32 + 2;
        }

        v34 = *(this + 8);
        if (v34 >= *(this + 9))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v38);
          v34 = *(this + 8);
        }

        v35 = v37;
        v36 = *(this + 3);
        *(this + 8) = v34 + 1;
        *(v36 + 4 * v34) = v35;
        --v31;
      }

      while (v31 > 1);
    }

    goto LABEL_87;
  }

  return 0;
}

void sub_1000AF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
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
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), v4, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), v4, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), v4, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), v4, a4);
  }

LABEL_7:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 24) + 4 * v7++), v4, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::ByteSize(proto::gnss::Emergency::GanssDataBitAssist *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
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

    v4 += v9;
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
    v3 = *(this + 12);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) != 0)
  {
LABEL_26:
    v12 = *(this + 10);
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

LABEL_30:
  v14 = *(this + 8);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(this + 3) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(this + 8);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  result = (v16 + v4 + v14);
  *(this + 11) = result;
  return result;
}

void proto::gnss::Emergency::GanssDataBitAssist::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssDataBitAssist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssDataBitAssist::CopyFrom(proto::gnss::Emergency::GanssDataBitAssist *this, const proto::gnss::Emergency::GanssDataBitAssist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::GanssDataBitAssist::Swap(proto::gnss::Emergency::GanssDataBitAssist *this, proto::gnss::Emergency::GanssDataBitAssist *a2)
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
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    result = *(a2 + 4);
    *(a2 + 3) = v7;
    v9 = *(this + 4);
    *(this + 4) = result;
    *(a2 + 4) = v9;
    LODWORD(v7) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    LODWORD(v7) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GanssStoredSatDataElem *proto::gnss::Emergency::GanssStoredSatDataElem::GanssStoredSatDataElem(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001760D0;
  proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
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

void sub_1000AFD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssStoredSatDataElem::~GanssStoredSatDataElem(proto::gnss::Emergency::GanssStoredSatDataElem *this)
{
  *this = off_1001760D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001760D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001760D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::default_instance(proto::gnss::Emergency::GanssStoredSatDataElem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_;
  if (!proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::MergePartialFromCodedStream(proto::gnss::Emergency::GanssStoredSatDataElem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::ByteSize(proto::gnss::Emergency::GanssStoredSatDataElem *this, unsigned int a2)
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

void proto::gnss::Emergency::GanssStoredSatDataElem::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssStoredSatDataElem::CopyFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssStoredSatDataElem *proto::gnss::Emergency::GanssStoredSatDataElem::Swap(proto::gnss::Emergency::GanssStoredSatDataElem *this, proto::gnss::Emergency::GanssStoredSatDataElem *a2)
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

void *proto::gnss::Emergency::GanssNavModelAddData::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

proto::gnss::Emergency::GanssNavModelAddData *proto::gnss::Emergency::GanssNavModelAddData::GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  *this = off_100176148;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, a2);
  return this;
}

void sub_1000B036C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
      proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 52);
  if (v10)
  {
    if (*(a2 + 52))
    {
      v12 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v12;
      v10 = *(a2 + 13);
      if ((v10 & 2) == 0)
      {
LABEL_16:
        if ((v10 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v13;
    v10 = *(a2 + 13);
    if ((v10 & 4) == 0)
    {
LABEL_17:
      if ((v10 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_22:
    v14 = *(a2 + 4);
    *(this + 13) |= 4u;
    *(this + 4) = v14;
    if ((*(a2 + 13) & 8) == 0)
    {
      return;
    }

LABEL_18:
    v11 = *(a2 + 5);
    *(this + 13) |= 8u;
    *(this + 5) = v11;
  }
}

void sub_1000B05C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssNavModelAddData::~GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  *this = off_100176148;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssNavModelAddData::~GanssNavModelAddData(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::default_instance(proto::gnss::Emergency::GanssNavModelAddData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  if (!proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::Clear(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::MergePartialFromCodedStream(proto::gnss::Emergency::GanssNavModelAddData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_40;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_48:
          if (v12 >= v9 || (v21 = *v12, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v12 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 13) |= 8u;
          if (v22 < v9 && *v22 == 42)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v23 = *(this + 9);
            v24 = *(this + 8);
            if (v24 >= v23)
            {
              if (v23 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v23 + 1);
                v23 = *(this + 9);
              }

              *(this + 9) = v23 + 1;
              operator new();
            }

            v25 = *(this + 3);
            *(this + 8) = v24 + 1;
            v26 = *(v25 + 8 * v24);
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
            if (!proto::gnss::Emergency::GanssStoredSatDataElem::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v30);
            v32 = *(a2 + 14);
            v33 = __OFSUB__(v32, 1);
            v34 = v32 - 1;
            if (v34 < 0 == v33)
            {
              *(a2 + 14) = v34;
            }

            v22 = *(a2 + 1);
            v35 = *(a2 + 2);
            if (v22 >= v35 || *v22 != 42)
            {
              break;
            }

LABEL_55:
            *(a2 + 1) = v22 + 1;
          }

          if (v22 == v35 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v13 >= v9 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 13) |= 1u;
      if (v15 < v9 && *v15 == 16)
      {
        v10 = v15 + 1;
        *(a2 + 1) = v10;
LABEL_32:
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
        if (v18 < v9 && *v18 == 24)
        {
          v11 = v18 + 1;
          *(a2 + 1) = v11;
LABEL_40:
          if (v11 >= v9 || (v19 = *v11, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v19;
            v20 = v11 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 13) |= 4u;
          if (v20 < v9 && *v20 == 32)
          {
            v12 = v20 + 1;
            *(a2 + 1) = v12;
            goto LABEL_48;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_32;
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

uint64_t proto::gnss::Emergency::GanssNavModelAddData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 8) != 0)
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

  return this;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::ByteSize(proto::gnss::Emergency::GanssNavModelAddData *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(this + 52))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 13);
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
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_14;
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

  v4 += v7;
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

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

  v4 += v9;
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = *(this + 5);
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

LABEL_25:
  v12 = *(this + 8);
  v13 = (v12 + v4);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = proto::gnss::Emergency::GanssStoredSatDataElem::ByteSize(*(*(this + 3) + 8 * v14), a2);
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

    while (v14 < *(this + 8));
  }

  *(this + 12) = v13;
  return v13;
}

void proto::gnss::Emergency::GanssNavModelAddData::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssNavModelAddData::CopyFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssNavModelAddData *proto::gnss::Emergency::GanssNavModelAddData::Swap(proto::gnss::Emergency::GanssNavModelAddData *this, proto::gnss::Emergency::GanssNavModelAddData *a2)
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
    v8 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
  }

  return this;
}

void *proto::gnss::Emergency::GanssAddAssistDataChoices::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::GanssAddAssistDataChoices *proto::gnss::Emergency::GanssAddAssistDataChoices::GanssAddAssistDataChoices(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
{
  *this = off_1001761C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
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
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
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
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }
}

void sub_1000B1094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::~GanssAddAssistDataChoices(proto::gnss::Emergency::GanssAddAssistDataChoices *this)
{
  *this = off_1001761C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001761C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001761C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance(proto::gnss::Emergency::GanssAddAssistDataChoices *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  if (!proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAddAssistDataChoices *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 7) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 7) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 7) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 7) |= 8u;
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

int *proto::gnss::Emergency::GanssAddAssistDataChoices::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
      if ((v5[7] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::ByteSize(proto::gnss::Emergency::GanssAddAssistDataChoices *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(this + 4);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_21:
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
  }

LABEL_25:
  *(this + 6) = v4;
  return v4;
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::CopyFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssAddAssistDataChoices *proto::gnss::Emergency::GanssAddAssistDataChoices::Swap(proto::gnss::Emergency::GanssAddAssistDataChoices *this, proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
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
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
  }

  return this;
}

double proto::gnss::Emergency::GanssAidRequestPerGanss::SharedCtor(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  *(this + 1) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Emergency::GanssAidRequestPerGanss *proto::gnss::Emergency::GanssAidRequestPerGanss::GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = off_100176238;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, a2);
  return this;
}

void sub_1000B1814(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
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
      proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 6);
    }

    while (v5 < v4);
  }

  LOBYTE(v10) = *(a2 + 72);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 72))
  {
    v11 = *(a2 + 2);
    if (v11 >= 7)
    {
      __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 21956, "::proto::gnss::Emergency::LcsGanssId_IsValid(value)");
    }

    *(this + 18) |= 1u;
    *(this + 2) = v11;
    v10 = *(a2 + 18);
  }

  if ((v10 & 2) != 0)
  {
    v12 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v12;
    v10 = *(a2 + 18);
    if ((v10 & 4) == 0)
    {
LABEL_19:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      *(this + 18) |= 0x10u;
      v14 = *(this + 5);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 5);
      if (!v15)
      {
        v15 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
      }

      proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(v14, v15);
      v10 = *(a2 + 18);
      if ((v10 & 0x20) == 0)
      {
LABEL_21:
        if ((v10 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v13 = *(a2 + 16);
  *(this + 18) |= 4u;
  *(this + 16) = v13;
  v10 = *(a2 + 18);
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  *(this + 18) |= 0x20u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(v16, v17);
  if ((*(a2 + 18) & 0x40) != 0)
  {
LABEL_35:
    *(this + 18) |= 0x40u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(v18, v19);
  }
}

void sub_1000B1BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::~GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  *this = off_100176238;
  v2 = (this + 16);
  proto::gnss::Emergency::GanssAidRequestPerGanss::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssAidRequestPerGanss::~GanssAidRequestPerGanss(this);

  operator delete();
}

void *proto::gnss::Emergency::GanssAidRequestPerGanss::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ != this)
  {
    v1 = this;
    v2 = this[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[6];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[7];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance(proto::gnss::Emergency::GanssAidRequestPerGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_;
  if (!proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 64) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v4 + 24);
        *(v4 + 52) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(v1 + 56);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 16) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 72) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAidRequestPerGanss *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v59 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
          if (!result)
          {
            return result;
          }

          v12 = v59;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 6)
        {
          *(this + 18) |= 1u;
          *(this + 2) = v12;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v15 < v9 && *v15 == 16)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_41:
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

          *(this + 18) |= 2u;
          if (v17 < v9 && *v17 == 24)
          {
            v10 = v17 + 1;
            *(a2 + 1) = v10;
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_41;
        }

        if (v7 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_30;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_49:
        if (v10 >= v9 || (v18 = *v10, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v18;
          v19 = v10 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 18) |= 4u;
        if (v19 < v9 && *v19 == 34)
        {
          while (1)
          {
            *(a2 + 1) = v19 + 1;
LABEL_57:
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
            v59 = 0;
            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
              {
                return 0;
              }
            }

            else
            {
              v59 = *v24;
              *(a2 + 1) = v24 + 1;
            }

            v25 = *(a2 + 14);
            v26 = *(a2 + 15);
            *(a2 + 14) = v25 + 1;
            if (v25 >= v26)
            {
              return 0;
            }

            v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
            if (!proto::gnss::Emergency::GanssTimeModelElem::MergePartialFromCodedStream(v23, a2, v28) || *(a2 + 36) != 1)
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
            if (v19 >= *(a2 + 2))
            {
              break;
            }

            v32 = *v19;
            if (v32 != 34)
            {
              if (v32 == 42)
              {
                *(a2 + 1) = v19 + 1;
LABEL_75:
                *(this + 18) |= 0x10u;
                v33 = *(this + 5);
                if (!v33)
                {
                  operator new();
                }

                v59 = 0;
                v34 = *(a2 + 1);
                if (v34 >= *(a2 + 2) || *v34 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                  {
                    return 0;
                  }
                }

                else
                {
                  v59 = *v34;
                  *(a2 + 1) = v34 + 1;
                }

                v35 = *(a2 + 14);
                v36 = *(a2 + 15);
                *(a2 + 14) = v35 + 1;
                if (v35 >= v36)
                {
                  return 0;
                }

                v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
                if (!proto::gnss::Emergency::GanssDataBitAssist::MergePartialFromCodedStream(v33, a2, v38) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v37);
                v39 = *(a2 + 14);
                v30 = __OFSUB__(v39, 1);
                v40 = v39 - 1;
                if (v40 < 0 == v30)
                {
                  *(a2 + 14) = v40;
                }

                v41 = *(a2 + 1);
                if (v41 < *(a2 + 2) && *v41 == 50)
                {
                  *(a2 + 1) = v41 + 1;
LABEL_89:
                  *(this + 18) |= 0x20u;
                  v42 = *(this + 6);
                  if (!v42)
                  {
                    operator new();
                  }

                  v59 = 0;
                  v43 = *(a2 + 1);
                  if (v43 >= *(a2 + 2) || *v43 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v59 = *v43;
                    *(a2 + 1) = v43 + 1;
                  }

                  v44 = *(a2 + 14);
                  v45 = *(a2 + 15);
                  *(a2 + 14) = v44 + 1;
                  if (v44 >= v45)
                  {
                    return 0;
                  }

                  v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
                  if (!proto::gnss::Emergency::GanssNavModelAddData::MergePartialFromCodedStream(v42, a2, v47) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v46);
                  v48 = *(a2 + 14);
                  v30 = __OFSUB__(v48, 1);
                  v49 = v48 - 1;
                  if (v49 < 0 == v30)
                  {
                    *(a2 + 14) = v49;
                  }

                  v50 = *(a2 + 1);
                  if (v50 < *(a2 + 2) && *v50 == 58)
                  {
                    *(a2 + 1) = v50 + 1;
LABEL_103:
                    *(this + 18) |= 0x40u;
                    v51 = *(this + 7);
                    if (!v51)
                    {
                      operator new();
                    }

                    v59 = 0;
                    v52 = *(a2 + 1);
                    if (v52 >= *(a2 + 2) || *v52 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v59 = *v52;
                      *(a2 + 1) = v52 + 1;
                    }

                    v53 = *(a2 + 14);
                    v54 = *(a2 + 15);
                    *(a2 + 14) = v53 + 1;
                    if (v53 >= v54)
                    {
                      return 0;
                    }

                    v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
                    if (!proto::gnss::Emergency::GanssAddAssistDataChoices::MergePartialFromCodedStream(v51, a2, v56) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v55);
                    v57 = *(a2 + 14);
                    v30 = __OFSUB__(v57, 1);
                    v58 = v57 - 1;
                    if (v58 < 0 == v30)
                    {
                      *(a2 + 14) = v58;
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

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (TagFallback >> 3 > 5)
    {
      if (v7 == 6)
      {
        if (v8 == 2)
        {
          goto LABEL_89;
        }
      }

      else if (v7 == 7 && v8 == 2)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v7 == 4)
      {
        if (v8 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_57;
      }

      if (v7 == 5 && v8 == 2)
      {
        goto LABEL_75;
      }
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

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 64), a2, a4);
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

  v8 = *(v5 + 72);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(v5 + 40);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  if ((*(v5 + 72) & 0x40) != 0)
  {
LABEL_21:
    v11 = *(v5 + 56);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::ByteSize(proto::gnss::Emergency::GanssAidRequestPerGanss *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if (*(this + 72))
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
      v3 = *(this + 18);
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
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_19:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v10 = *(this + 5);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
  }

  v11 = proto::gnss::Emergency::GanssDataBitAssist::ByteSize(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 += v12 + v13 + 1;
  v3 = *(this + 18);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  v14 = *(this + 6);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  v15 = proto::gnss::Emergency::GanssNavModelAddData::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  if ((*(this + 18) & 0x40) != 0)
  {
LABEL_38:
    v18 = *(this + 7);
    if (!v18)
    {
      v18 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    v19 = proto::gnss::Emergency::GanssAddAssistDataChoices::ByteSize(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    else
    {
      v21 = 1;
    }

    v4 += v20 + v21 + 1;
  }

LABEL_44:
  v22 = *(this + 6);
  v23 = (v22 + v4);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = proto::gnss::Emergency::GanssTimeModelElem::ByteSize(*(*(this + 2) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v23 = (v26 + v23 + v27);
      ++v24;
    }

    while (v24 < *(this + 6));
  }

  *(this + 17) = v23;
  return v23;
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::CopyFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssAidRequestPerGanss *proto::gnss::Emergency::GanssAidRequestPerGanss::Swap(proto::gnss::Emergency::GanssAidRequestPerGanss *this, proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
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
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 16), (a2 + 16));
    v7 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(v3 + 6);
    *(v3 + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    LODWORD(v9) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return this;
}

double proto::gnss::Emergency::GanssAssistanceRequest::SharedCtor(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Emergency::GanssAssistanceRequest *proto::gnss::Emergency::GanssAssistanceRequest::GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  *this = off_1001762B0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, a2);
  return this;
}

void sub_1000B2C04(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 5);
  if (v1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), *(a2 + 12) + *(this + 12));
  LODWORD(v5) = *(a2 + 12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
      }

      v7 = *(*(a2 + 5) + 8 * v6);
      v8 = *(this + 13);
      v9 = *(this + 12);
      if (v9 >= v8)
      {
        if (v8 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v8 + 1);
          v8 = *(this + 13);
        }

        *(this + 13) = v8 + 1;
        operator new();
      }

      v10 = *(this + 5);
      *(this + 12) = v9 + 1;
      proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 12);
    }

    while (v6 < v5);
  }

  LOBYTE(v11) = *(a2 + 72);
  if (v11)
  {
    if (*(a2 + 72))
    {
      v13 = *(a2 + 2);
      *(this + 18) |= 1u;
      *(this + 2) = v13;
      v11 = *(a2 + 18);
      if ((v11 & 2) == 0)
      {
LABEL_18:
        if ((v11 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    else if ((*(a2 + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    v14 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v14;
    v11 = *(a2 + 18);
    if ((v11 & 8) == 0)
    {
LABEL_19:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    v15 = *(a2 + 8);
    *(this + 18) |= 8u;
    *(this + 8) = v15;
    v11 = *(a2 + 18);
    if ((v11 & 0x10) == 0)
    {
LABEL_20:
      if ((v11 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_26:
    v16 = *(a2 + 9);
    *(this + 18) |= 0x10u;
    *(this + 9) = v16;
    if ((*(a2 + 18) & 0x20) == 0)
    {
      return;
    }

LABEL_21:
    v12 = *(a2 + 16);
    *(this + 18) |= 0x20u;
    *(this + 16) = v12;
  }
}

void sub_1000B2EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAssistanceRequest::~GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  *this = off_1001762B0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 5);
  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssAssistanceRequest::~GanssAssistanceRequest(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::default_instance(proto::gnss::Emergency::GanssAssistanceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::Clear(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  if (*(this + 72))
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 16) = 0;
  }

  *(this + 6) = 0;
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 40);
  *(this + 18) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAssistanceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_32;
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

          *(this + 18) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v17 = v14 + 1;
            *(a2 + 1) = v17;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_51;
              }

              if (v8 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
                if (!result)
                {
                  return result;
                }

                goto LABEL_60;
              }
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_42:
          if (v17 >= v9 || (v19 = *v17, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v19;
            v20 = (v17 + 1);
            *(a2 + 1) = v20;
          }

          *(this + 18) |= 2u;
          if (v20 < v9)
          {
            v21 = *v20;
            while (v21 == 24)
            {
              v18 = (v20 + 1);
              *(a2 + 1) = v18;
LABEL_51:
              v44 = 0;
              if (v18 >= v9 || (v22 = *v18, (v22 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
                if (!result)
                {
                  return result;
                }

                v22 = v44;
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if (v22 <= 6)
              {
                v23 = *(this + 6);
                if (v23 == *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 2, v23 + 1);
                  v23 = *(this + 6);
                }

                v24 = *(this + 2);
                *(this + 6) = v23 + 1;
                *(v24 + 4 * v23) = v22;
              }

LABEL_60:
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v20 >= v9)
              {
                break;
              }

              v21 = *v20;
              if (v21 == 32)
              {
                v15 = (v20 + 1);
                *(a2 + 1) = v15;
                goto LABEL_63;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        break;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_63:
        if (v15 >= v9 || (v25 = *v15, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v25;
          v26 = v15 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 18) |= 8u;
        if (v26 < v9 && *v26 == 40)
        {
          v10 = v26 + 1;
          *(a2 + 1) = v10;
LABEL_71:
          if (v10 >= v9 || (v27 = *v10, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v27;
            v28 = v10 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 18) |= 0x10u;
          if (v28 < v9 && *v28 == 48)
          {
            v16 = v28 + 1;
            *(a2 + 1) = v16;
LABEL_79:
            if (v16 >= v9 || (v29 = *v16, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 16) = v29;
              v30 = v16 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 18) |= 0x20u;
            if (v30 < v9 && *v30 == 58)
            {
LABEL_86:
              *(a2 + 1) = v30 + 1;
              goto LABEL_87;
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
          goto LABEL_71;
        }

LABEL_32:
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

    if (v7 == 6)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_79;
      }

      goto LABEL_32;
    }

    if (v7 != 7 || v8 != 2)
    {
      goto LABEL_32;
    }

LABEL_87:
    v31 = *(this + 13);
    v32 = *(this + 12);
    if (v32 >= v31)
    {
      if (v31 == *(this + 14))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v31 + 1);
        v31 = *(this + 13);
      }

      *(this + 13) = v31 + 1;
      operator new();
    }

    v33 = *(this + 5);
    *(this + 12) = v32 + 1;
    v34 = *(v33 + 8 * v32);
    v45 = 0;
    v35 = *(a2 + 1);
    if (v35 >= *(a2 + 2) || *v35 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
      {
        return 0;
      }
    }

    else
    {
      v45 = *v35;
      *(a2 + 1) = v35 + 1;
    }

    v36 = *(a2 + 14);
    v37 = *(a2 + 15);
    *(a2 + 14) = v36 + 1;
    if (v36 >= v37)
    {
      return 0;
    }

    v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v45);
    if (!proto::gnss::Emergency::GanssAidRequestPerGanss::MergePartialFromCodedStream(v34, a2, v39) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v38);
    v40 = *(a2 + 14);
    v41 = __OFSUB__(v40, 1);
    v42 = v40 - 1;
    if (v42 < 0 == v41)
    {
      *(a2 + 14) = v42;
    }

    v30 = *(a2 + 1);
    v43 = *(a2 + 2);
    if (v30 < v43 && *v30 == 58)
    {
      goto LABEL_86;
    }

    if (v30 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 72);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  if ((*(v5 + 72) & 0x20) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 40) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 48));
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::ByteSize(proto::gnss::Emergency::GanssAssistanceRequest *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_30;
  }

  if (*(this + 72))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 18);
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
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 8);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 9);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x20) != 0)
  {
LABEL_26:
    v12 = *(this + 16);
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

LABEL_30:
  v14 = *(this + 6);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(this + 2) + 4 * v15);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 10;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
        v14 = *(this + 6);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(this + 12);
  v20 = (v16 + v4 + v14 + v19);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = proto::gnss::Emergency::GanssAidRequestPerGanss::ByteSize(*(*(this + 5) + 8 * v21), a2);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 12));
  }

  *(this + 17) = v20;
  return v20;
}

void proto::gnss::Emergency::GanssAssistanceRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAssistanceRequest::CopyFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::Swap(uint64_t this, proto::gnss::Emergency::GanssAssistanceRequest *a2)
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
    v7 = *(a2 + 3);
    *(a2 + 2) = v6;
    v8 = *(this + 24);
    *(this + 24) = v7;
    *(a2 + 3) = v8;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    LODWORD(v6) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 40), (a2 + 40));
    v9 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 18);
    *(a2 + 18) = v9;
    v10 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
  }

  return this;
}

double proto::gnss::Emergency::AssistanceNeededReport::SharedCtor(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::AssistanceNeededReport *proto::gnss::Emergency::AssistanceNeededReport::AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
{
  *this = off_100176328;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
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

  if (*(a2 + 44))
  {
    v5 = *(a2 + 2);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 22344, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(this + 11) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 11);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(this + 11) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
    }

    proto::gnss::Emergency::SessionInfo::MergeFrom(v7, v8);
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 3);
  *(this + 11) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 11);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 11) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 0x10) != 0)
  {
LABEL_23:
    *(this + 11) |= 0x10u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(v11, v12);
  }
}

void sub_1000B3DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::AssistanceNeededReport::~AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *this = off_100176328;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176328;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176328;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::AssistanceNeededReport::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::AssistanceNeededReport::default_instance(proto::gnss::Emergency::AssistanceNeededReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  if (!proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 44);
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
        v2 = *(this + 44);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 64))
        {
          *(v4 + 56) = 0;
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 32) = 0;
        *(v4 + 48) = 0;
        *(v4 + 64) = 0;
        v2 = *(this + 44);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = proto::gnss::Emergency::GanssAssistanceRequest::Clear(this);
      }
    }
  }

  *(v1 + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::MergePartialFromCodedStream(proto::gnss::Emergency::AssistanceNeededReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_21;
          }

          v11 = *(this + 11);
          goto LABEL_42;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_56:
          *(this + 11) |= 8u;
          v28 = *(this + 3);
          if (!v28)
          {
            operator new();
          }

          v45 = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
            {
              return 0;
            }
          }

          else
          {
            v45 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v45);
          if (!proto::gnss::Emergency::GpsAssistanceRequest::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
          v34 = *(a2 + 14);
          v25 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v25)
          {
            *(a2 + 14) = v35;
          }

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 42)
          {
            *(a2 + 1) = v36 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_70:
          *(this + 11) |= 0x10u;
          v37 = *(this + 4);
          if (!v37)
          {
            operator new();
          }

          v45 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
            {
              return 0;
            }
          }

          else
          {
            v45 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v39 = *(a2 + 14);
          v40 = *(a2 + 15);
          *(a2 + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v45);
          if (!proto::gnss::Emergency::GanssAssistanceRequest::MergePartialFromCodedStream(v37, a2, v42) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v41);
          v43 = *(a2 + 14);
          v25 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v25)
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v45 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
        if (!result)
        {
          return result;
        }

        v13 = v45;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 <= 8)
      {
        *(this + 11) |= 1u;
        *(this + 2) = v13;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v15 < v9 && *v15 == 16)
      {
        v10 = v15 + 1;
        *(a2 + 1) = v10;
LABEL_34:
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

        v11 = *(this + 11) | 2;
        *(this + 11) = v11;
        if (v17 < v9 && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
LABEL_42:
          *(this + 11) = v11 | 4;
          v18 = *(this + 2);
          if (!v18)
          {
            operator new();
          }

          v45 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
            {
              return 0;
            }
          }

          else
          {
            v45 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v45);
          if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
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

          v27 = *(a2 + 1);
          if (v27 < *(a2 + 2) && *v27 == 34)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_56;
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_34;
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

uint64_t proto::gnss::Emergency::AssistanceNeededReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  if ((*(v5 + 44) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::ByteSize(proto::gnss::Emergency::AssistanceNeededReport *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (*(this + 44))
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
      v3 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
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
    v3 = *(this + 11);
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  v13 = proto::gnss::Emergency::GpsAssistanceRequest::ByteSize(v12, a2);
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
  if ((*(this + 11) & 0x10) != 0)
  {
LABEL_33:
    v16 = *(this + 4);
    if (!v16)
    {
      v16 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    v17 = proto::gnss::Emergency::GanssAssistanceRequest::ByteSize(v16, a2);
    v19 = v17;
    if (v17 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, v18);
    }

    else
    {
      v20 = 1;
    }

    v4 = (v4 + v19 + v20 + 1);
  }

LABEL_39:
  *(this + 10) = v4;
  return v4;
}

void proto::gnss::Emergency::AssistanceNeededReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::AssistanceNeededReport::CopyFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::Swap(uint64_t this, proto::gnss::Emergency::AssistanceNeededReport *a2)
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
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gnss::Emergency::EutranCellTime *proto::gnss::Emergency::EutranCellTime::EutranCellTime(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  *(this + 1) = 0;
  *this = off_1001763A0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  proto::gnss::Emergency::EutranCellTime::MergeFrom(this, a2);
  return this;
}

void sub_1000B4AF4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EutranCellTime::MergeFrom(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
      proto::gnss::Emergency::ClsEutranCell::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  if (*(a2 + 40))
  {
    v10 = *(a2 + 8);
    *(this + 10) |= 1u;
    *(this + 8) = v10;
  }
}

void sub_1000B4CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EutranCellTime::~EutranCellTime(proto::gnss::Emergency::EutranCellTime *this)
{
  *this = off_1001763A0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::EutranCellTime::~EutranCellTime(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::EutranCellTime::default_instance(proto::gnss::Emergency::EutranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::EutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EutranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EutranCellTime::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    *(this + 32) = 0;
  }

  if (*(this + 16) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 8) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::EutranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v10;
        v11 = v8 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 10) |= 1u;
      if (v11 < v9 && *v11 == 18)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_21:
          v13 = *(this + 5);
          v14 = *(this + 4);
          if (v14 >= v13)
          {
            if (v13 == *(this + 6))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v13 + 1);
              v13 = *(this + 5);
            }

            *(this + 5) = v13 + 1;
            operator new();
          }

          v15 = *(this + 1);
          *(this + 4) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v26 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
            {
              return 0;
            }
          }

          else
          {
            v26 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v26);
          if (!proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(v16, a2, v21) || *(a2 + 36) != 1)
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

          v11 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        while (v11 < v25 && *v11 == 18);
        if (v11 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t proto::gnss::Emergency::EutranCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
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

  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::ByteSize(proto::gnss::Emergency::EutranCellTime *this, unsigned int a2)
{
  if (*(this + 40))
  {
    v4 = *(this + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 4);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = proto::gnss::Emergency::ClsEutranCell::ByteSize(*(*(this + 1) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  *(this + 9) = v6;
  return v6;
}

void proto::gnss::Emergency::EutranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::EutranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EutranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EutranCellTime::CopyFrom(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EutranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::EutranCellTime *proto::gnss::Emergency::EutranCellTime::Swap(proto::gnss::Emergency::EutranCellTime *this, proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v5 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double proto::gnss::Emergency::ClsGeranCellTime::SharedCtor(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ClsGeranCellTime *proto::gnss::Emergency::ClsGeranCellTime::ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
{
  *this = off_100176418;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
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
      v6 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 10) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 10);
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
    v8 = *(a2 + 4);
    *(this + 10) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 10);
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
    v9 = *(a2 + 5);
    *(this + 10) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 10);
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
    v10 = *(a2 + 6);
    *(this + 10) |= 0x10u;
    *(this + 6) = v10;
    v4 = *(a2 + 10);
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
    v11 = *(a2 + 7);
    *(this + 10) |= 0x20u;
    *(this + 7) = v11;
    if ((*(a2 + 10) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x40u;
    *(this + 8) = v5;
  }
}

void sub_1000B5628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsGeranCellTime::~ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *this = off_100176418;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176418;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176418;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::default_instance(proto::gnss::Emergency::ClsGeranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsGeranCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGeranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsGeranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::ClsGeranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v12 >= v8 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 10) |= 1u;
          if (v14 < v8 && *v14 == 16)
          {
            v17 = v14 + 1;
            *(a2 + 1) = v17;
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
            v8 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_39:
          if (v17 >= v8 || (v18 = *v17, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v18;
            v19 = v17 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 2u;
          if (v19 < v8 && *v19 == 24)
          {
            v10 = v19 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            if (v10 >= v8 || (v20 = *v10, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v20;
              v21 = v10 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 10) |= 4u;
            if (v21 < v8 && *v21 == 32)
            {
              v15 = v21 + 1;
              *(a2 + 1) = v15;
              goto LABEL_55;
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
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_55:
      if (v15 >= v8 || (v22 = *v15, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v22;
        v23 = v15 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 10) |= 8u;
      if (v23 < v8 && *v23 == 40)
      {
        v9 = v23 + 1;
        *(a2 + 1) = v9;
LABEL_63:
        if (v9 >= v8 || (v24 = *v9, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v24;
          v25 = v9 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 10) |= 0x10u;
        if (v25 < v8 && *v25 == 48)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          if (v16 >= v8 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 10) |= 0x20u;
          if (v27 < v8 && *v27 == 56)
          {
            v11 = v27 + 1;
            *(a2 + 1) = v11;
LABEL_79:
            if (v11 >= v8 || (v28 = *v11, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v28;
              v29 = v11 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 10) |= 0x40u;
            if (v29 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
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

int *proto::gnss::Emergency::ClsGeranCellTime::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[10];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[10];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
    if ((v5[10] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[10];
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
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::ByteSize(proto::gnss::Emergency::ClsGeranCellTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
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

      goto LABEL_28;
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
    v3 = *(this + 10);
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

    goto LABEL_32;
  }

LABEL_28:
  v12 = *(this + 6);
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
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_32:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_36:
    v16 = *(this + 8);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_40:
  *(this + 9) = v4;
  return v4;
}

void proto::gnss::Emergency::ClsGeranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsGeranCellTime::CopyFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::ClsGeranCellTime *proto::gnss::Emergency::ClsGeranCellTime::Swap(proto::gnss::Emergency::ClsGeranCellTime *this, proto::gnss::Emergency::ClsGeranCellTime *a2)
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
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GpsTowCdmaCellTime *proto::gnss::Emergency::GpsTowCdmaCellTime::GpsTowCdmaCellTime(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176490;
  proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
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

void sub_1000B60A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::~GpsTowCdmaCellTime(proto::gnss::Emergency::GpsTowCdmaCellTime *this)
{
  *this = off_100176490;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176490;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176490;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance(proto::gnss::Emergency::GpsTowCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTowCdmaCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::ByteSize(proto::gnss::Emergency::GpsTowCdmaCellTime *this, unsigned int a2)
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

void proto::gnss::Emergency::GpsTowCdmaCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::CopyFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsTowCdmaCellTime *proto::gnss::Emergency::GpsTowCdmaCellTime::Swap(proto::gnss::Emergency::GpsTowCdmaCellTime *this, proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
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

uint64_t proto::gnss::Emergency::CtsEutranCellTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CtsEutranCellTime *proto::gnss::Emergency::CtsEutranCellTime::CtsEutranCellTime(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176508;
  *(this + 6) = 0;
  proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
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

void sub_1000B6744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CtsEutranCellTime::~CtsEutranCellTime(proto::gnss::Emergency::CtsEutranCellTime *this)
{
  *this = off_100176508;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176508;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100176508;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::default_instance(proto::gnss::Emergency::CtsEutranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::CtsEutranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

int *proto::gnss::Emergency::CtsEutranCellTime::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::CtsEutranCellTime::ByteSize(proto::gnss::Emergency::CtsEutranCellTime *this, unsigned int a2)
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

void proto::gnss::Emergency::CtsEutranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CtsEutranCellTime::CopyFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::CtsEutranCellTime *proto::gnss::Emergency::CtsEutranCellTime::Swap(proto::gnss::Emergency::CtsEutranCellTime *this, proto::gnss::Emergency::CtsEutranCellTime *a2)
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

void *proto::gnss::Emergency::CtsCdmaCellTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CtsCdmaCellTime *proto::gnss::Emergency::CtsCdmaCellTime::CtsCdmaCellTime(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
{
  *this = off_100176580;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
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
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
      }

      proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(v6, v7);
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

    v8 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_1000B6F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CtsCdmaCellTime::~CtsCdmaCellTime(proto::gnss::Emergency::CtsCdmaCellTime *this)
{
  *this = off_100176580;
  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ != this)
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
  proto::gnss::Emergency::CtsCdmaCellTime::~CtsCdmaCellTime(this);

  operator delete();
}

void *proto::gnss::Emergency::CtsCdmaCellTime::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::default_instance(proto::gnss::Emergency::CtsCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::CtsCdmaCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_31;
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

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_18;
    }

    *(this + 7) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v27 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v14 = *(a2 + 14);
    v15 = *(a2 + 15);
    *(a2 + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v27);
    if (!proto::gnss::Emergency::GpsTowCdmaCellTime::MergePartialFromCodedStream(v9, a2, v17) || *(a2 + 36) != 1)
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
    v11 = *(a2 + 2);
    if (v21 < v11 && *v21 == 16)
    {
      v12 = v21 + 1;
      *(a2 + 1) = v12;
LABEL_31:
      if (v12 >= v11 || (v22 = *v12, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v22;
        v23 = v12 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 7) |= 2u;
      if (v23 < v11 && *v23 == 24)
      {
        v13 = v23 + 1;
        *(a2 + 1) = v13;
LABEL_39:
        if (v13 >= v11 || (v25 = *v13, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v25;
          v26 = v13 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 7) |= 4u;
        if (v26 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::ByteSize(proto::gnss::Emergency::CtsCdmaCellTime *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(this + 28))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
    }

    v6 = proto::gnss::Emergency::GpsTowCdmaCellTime::ByteSize(v5, a2);
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
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = *(this + 4);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 5);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

void proto::gnss::Emergency::CtsCdmaCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CtsCdmaCellTime::CopyFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::Swap(uint64_t this, proto::gnss::Emergency::CtsCdmaCellTime *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

void *proto::gnss::Emergency::CellTimeData::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CellTimeData *proto::gnss::Emergency::CellTimeData::CellTimeData(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
{
  *this = off_1001765F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CellTimeData::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellTimeData::MergeFrom(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
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
        v6 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
      }

      proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(v5, v6);
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
        v8 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
      }

      proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(v7, v8);
    }
  }
}

void sub_1000B7864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellTimeData::~CellTimeData(proto::gnss::Emergency::CellTimeData *this)
{
  *this = off_1001765F8;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001765F8;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001765F8;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::CellTimeData::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellTimeData::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::CellTimeData::default_instance(proto::gnss::Emergency::CellTimeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellTimeData::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(this + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = proto::gnss::Emergency::CtsCdmaCellTime::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(proto::gnss::Emergency::CellTimeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (!proto::gnss::Emergency::CtsEutranCellTime::MergePartialFromCodedStream(v8, a2, v13) || *(a2 + 36) != 1)
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
        if (!proto::gnss::Emergency::CtsCdmaCellTime::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CellTimeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeData::ByteSize(proto::gnss::Emergency::CellTimeData *this, unsigned int a2)
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
    v4 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
  }

  v5 = proto::gnss::Emergency::CtsEutranCellTime::ByteSize(v4, a2);
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
      v8 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::CtsCdmaCellTime::ByteSize(v8, a2);
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

void proto::gnss::Emergency::CellTimeData::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellTimeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellTimeData::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellTimeData::CopyFrom(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellTimeData::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellTimeData::Swap(uint64_t this, proto::gnss::Emergency::CellTimeData *a2)
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

uint64_t proto::gnss::Emergency::CellTimeAssistance::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CellTimeAssistance *proto::gnss::Emergency::CellTimeAssistance::CellTimeAssistance(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100176670;
  *(this + 6) = 0;
  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellTimeAssistance::MergeFrom(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
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
        __assert_rtn("set_cell_time_assistance_type", "GnssEmergencyTypes.pb.h", 23024, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
      }

      proto::gnss::Emergency::CellTimeData::MergeFrom(v6, v7);
    }
  }
}