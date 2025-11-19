uint64_t proto::gnss::Emergency::SuplConfig::ByteSize(proto::gnss::Emergency::SuplConfig *this, unsigned int a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 4);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 7);
        if ((v3 & 2) == 0)
        {
LABEL_19:
          v13.i64[0] = 0x200000002;
          v13.i64[1] = 0x200000002;
          result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_1001461A0), v13)) + v4);
          goto LABEL_20;
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

    v7 = *(this + 1);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v3 = *(this + 7);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v4 += v12 + v8 + 1;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(this + 6) = result;
  return result;
}

void proto::gnss::Emergency::SuplConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::SuplConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SuplConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SuplConfig::CopyFrom(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SuplConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::SuplConfig::Swap(uint64_t this, proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LOBYTE(v3) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v3;
    LOBYTE(v3) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v3;
    LOBYTE(v3) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
    LOBYTE(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double proto::gnss::Emergency::LteCellInfo::SharedCtor(proto::gnss::Emergency::LteCellInfo *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

proto::gnss::Emergency::LteCellInfo *proto::gnss::Emergency::LteCellInfo::LteCellInfo(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  *this = off_100174528;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  proto::gnss::Emergency::LteCellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::LteCellInfo::MergeFrom(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(this + 13) |= 1u;
    *(this + 8) = v8;
    v4 = *(a2 + 13);
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

  v9 = *(a2 + 3);
  *(this + 13) |= 2u;
  *(this + 3) = v9;
  v4 = *(a2 + 13);
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
  v10 = *(a2 + 4);
  *(this + 13) |= 4u;
  *(this + 4) = v10;
  v4 = *(a2 + 13);
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
  v11 = *(a2 + 5);
  *(this + 13) |= 8u;
  *(this + 5) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 7);
    *(this + 13) |= 0x20u;
    *(this + 7) = v13;
    v4 = *(a2 + 13);
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
  v12 = *(a2 + 6);
  *(this + 13) |= 0x10u;
  *(this + 6) = v12;
  v4 = *(a2 + 13);
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
  v14 = *(a2 + 8);
  *(this + 13) |= 0x40u;
  *(this + 8) = v14;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 13) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 10);
      *(this + 13) |= 0x100u;
      *(this + 10) = v6;
      v4 = *(a2 + 13);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 11);
      *(this + 13) |= 0x200u;
      *(this + 11) = v7;
    }
  }
}

void sub_100084ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LteCellInfo::~LteCellInfo(proto::gnss::Emergency::LteCellInfo *this)
{
  *this = off_100174528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::LteCellInfo::default_instance(proto::gnss::Emergency::LteCellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LteCellInfo::default_instance_;
  if (!proto::gnss::Emergency::LteCellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LteCellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LteCellInfo::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::LteCellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::LteCellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v40 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v14 = v40;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) = v14 != 0;
        *(this + 13) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(a2 + 1) = v11;
LABEL_49:
          if (v11 >= v8 || (v21 = *v11, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v21;
            v22 = v11 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 13) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_57:
            if (v17 >= v8 || (v23 = *v17, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v23;
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 13) |= 4u;
            if (v24 < v8 && *v24 == 32)
            {
              v19 = v24 + 1;
              *(a2 + 1) = v19;
              goto LABEL_65;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_65:
      if (v19 >= v8 || (v25 = *v19, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v25;
        v26 = v19 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 13) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(a2 + 1) = v9;
LABEL_73:
        if (v9 >= v8 || (v27 = *v9, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v9 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 13) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(a2 + 1) = v16;
LABEL_81:
          if (v16 >= v8 || (v29 = *v16, v29 < 0))
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
            v30 = v16 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 13) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(a2 + 1) = v12;
LABEL_89:
            if (v12 >= v8 || (v31 = *v12, v31 < 0))
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
              v32 = v12 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 13) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(a2 + 1) = v18;
LABEL_97:
              if (v18 >= v8 || (v33 = *v18, v33 < 0))
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
                v34 = v18 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 13) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(a2 + 1) = v20;
LABEL_105:
                v41 = 0;
                if (v20 >= v8 || (v35 = *v20, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v41;
                  v36 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v36 = v20 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 10) = v35;
                *(this + 13) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(a2 + 1) = v10;
LABEL_113:
                  if (v10 >= v8 || (v37 = *v10, v37 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 11) = v37;
                    v38 = v10 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 13) |= 0x200u;
                  if (v38 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t proto::gnss::Emergency::LteCellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = v5[13];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[13];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[13];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[13];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[13];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[13];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], v4, a4);
  v6 = v5[13];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v5[10], v4, a4);
    if ((v5[13] & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], v4, a4);
  v6 = v5[13];
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::LteCellInfo::ByteSize(proto::gnss::Emergency::LteCellInfo *this, unsigned int a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 13);
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

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 13);
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

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_35:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_39:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(this + 10);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(this + 13);
      }

      else
      {
        v20 = 2;
      }

      v4 = (v20 + v4);
    }

    if ((v3 & 0x200) != 0)
    {
      v21 = *(this + 11);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      }

      else
      {
        v22 = 2;
      }

      v4 = (v22 + v4);
    }
  }

  *(this + 12) = v4;
  return v4;
}

void proto::gnss::Emergency::LteCellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::LteCellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LteCellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LteCellInfo::CopyFrom(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LteCellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::LteCellInfo::Swap(uint64_t this, proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
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
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v12;
    v13 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v13;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

proto::gnss::Emergency::GsmCellInfo *proto::gnss::Emergency::GsmCellInfo::GsmCellInfo(proto::gnss::Emergency::GsmCellInfo *this, const proto::gnss::Emergency::GsmCellInfo *a2)
{
  *this = off_1001745A0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  proto::gnss::Emergency::GsmCellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GsmCellInfo::MergeFrom(proto::gnss::Emergency::GsmCellInfo *this, const proto::gnss::Emergency::GsmCellInfo *a2)
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
      v6 = *(a2 + 8);
      *(this + 8) |= 1u;
      *(this + 8) = v6;
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

void sub_100085C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GsmCellInfo::~GsmCellInfo(proto::gnss::Emergency::GsmCellInfo *this)
{
  *this = off_1001745A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001745A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001745A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GsmCellInfo::default_instance(proto::gnss::Emergency::GsmCellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GsmCellInfo::default_instance_;
  if (!proto::gnss::Emergency::GsmCellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GsmCellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 20) = 0;
    *(this + 12) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::GsmCellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v25 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) = v14 != 0;
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

uint64_t proto::gnss::Emergency::GsmCellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
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

uint64_t proto::gnss::Emergency::GsmCellInfo::ByteSize(proto::gnss::Emergency::GsmCellInfo *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 8);
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

      goto LABEL_16;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 8);
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
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_20:
    v11 = *(this + 6);
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

LABEL_24:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::Emergency::GsmCellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::GsmCellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GsmCellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GsmCellInfo::CopyFrom(proto::gnss::Emergency::GsmCellInfo *this, const proto::gnss::Emergency::GsmCellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GsmCellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GsmCellInfo::Swap(uint64_t this, proto::gnss::Emergency::GsmCellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
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
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return this;
}

double proto::gnss::Emergency::WcdmaCellInfo::SharedCtor(proto::gnss::Emergency::WcdmaCellInfo *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  return result;
}

proto::gnss::Emergency::WcdmaCellInfo *proto::gnss::Emergency::WcdmaCellInfo::WcdmaCellInfo(proto::gnss::Emergency::WcdmaCellInfo *this, const proto::gnss::Emergency::WcdmaCellInfo *a2)
{
  *this = off_100174618;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(proto::gnss::Emergency::WcdmaCellInfo *this, const proto::gnss::Emergency::WcdmaCellInfo *a2)
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
    v6 = *(a2 + 8);
    *(this + 11) |= 1u;
    *(this + 8) = v6;
    v4 = *(a2 + 11);
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

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 3);
  *(this + 11) |= 2u;
  *(this + 3) = v7;
  v4 = *(a2 + 11);
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
  v8 = *(a2 + 4);
  *(this + 11) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 11);
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
  v9 = *(a2 + 5);
  *(this + 11) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 11);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = *(a2 + 7);
    *(this + 11) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 11);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v10 = *(a2 + 6);
  *(this + 11) |= 0x10u;
  *(this + 6) = v10;
  v4 = *(a2 + 11);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v12 = *(a2 + 8);
  if (v12 >= 4)
  {
    __assert_rtn("set_freq_mode", "GnssEmergencyTypes.pb.h", 14153, "::proto::gnss::Emergency::FreqMode_IsValid(value)");
  }

  *(this + 11) |= 0x40u;
  *(this + 8) = v12;
  if ((*(a2 + 11) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x80u;
    *(this + 9) = v5;
  }
}

void sub_100086648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::WcdmaCellInfo::~WcdmaCellInfo(proto::gnss::Emergency::WcdmaCellInfo *this)
{
  *this = off_100174618;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174618;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174618;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::WcdmaCellInfo::default_instance(proto::gnss::Emergency::WcdmaCellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::WcdmaCellInfo::default_instance_;
  if (!proto::gnss::Emergency::WcdmaCellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::WcdmaCellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::WcdmaCellInfo::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WcdmaCellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::WcdmaCellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_93;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v35 = 0;
      v14 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v14 >= v8 || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
        if (!result)
        {
          return result;
        }

        v15 = v35;
        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v16 = v14 + 1;
        *(a2 + 1) = v16;
      }

      *(this + 8) = v15 != 0;
      *(this + 11) |= 1u;
      if (v16 < v8 && *v16 == 16)
      {
        v9 = v16 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v20 = *v9, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v20;
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 11) |= 2u;
        if (v21 < v8 && *v21 == 24)
        {
          v18 = v21 + 1;
          *(a2 + 1) = v18;
LABEL_51:
          if (v18 >= v8 || (v22 = *v18, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v22;
            v23 = v18 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 11) |= 4u;
          if (v23 < v8 && *v23 == 32)
          {
            v11 = v23 + 1;
            *(a2 + 1) = v11;
LABEL_59:
            if (v11 >= v8 || (v24 = *v11, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v24;
              v25 = v11 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 11) |= 8u;
            if (v25 < v8 && *v25 == 40)
            {
              v17 = v25 + 1;
              *(a2 + 1) = v17;
LABEL_67:
              if (v17 >= v8 || (v26 = *v17, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v26;
                v27 = v17 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 11) |= 0x10u;
              if (v27 < v8 && *v27 == 48)
              {
                v10 = v27 + 1;
                *(a2 + 1) = v10;
LABEL_75:
                if (v10 >= v8 || (v28 = *v10, v28 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v29 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v28;
                  v29 = v10 + 1;
                  *(a2 + 1) = v29;
                }

                *(this + 11) |= 0x20u;
                if (v29 < v8 && *v29 == 56)
                {
                  v19 = v29 + 1;
                  *(a2 + 1) = v19;
LABEL_83:
                  v36 = 0;
                  if (v19 >= v8 || (v30 = *v19, (v30 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                    if (!result)
                    {
                      return result;
                    }

                    v30 = v36;
                  }

                  else
                  {
                    *(a2 + 1) = v19 + 1;
                  }

                  if (v30 <= 3)
                  {
                    *(this + 11) |= 0x40u;
                    *(this + 8) = v30;
                  }

                  v31 = *(a2 + 1);
                  v12 = *(a2 + 2);
                  if (v31 < v12 && *v31 == 64)
                  {
                    v13 = v31 + 1;
                    *(a2 + 1) = v13;
LABEL_93:
                    if (v13 >= v12 || (v32 = *v13, v32 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                      if (!result)
                      {
                        return result;
                      }

                      v33 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 9) = v32;
                      v33 = v13 + 1;
                      *(a2 + 1) = v33;
                    }

                    *(this + 11) |= 0x80u;
                    if (v33 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t proto::gnss::Emergency::WcdmaCellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = v5[11];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], v4, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], v4, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], v4, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], v4, a4);
  v6 = v5[11];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v5[8], v4, a4);
    if ((v5[11] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], v4, a4);
  v6 = v5[11];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v7, v4, a4);
}

uint64_t proto::gnss::Emergency::WcdmaCellInfo::ByteSize(proto::gnss::Emergency::WcdmaCellInfo *this, unsigned int a2)
{
  v3 = *(this + 11);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 11);
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

      goto LABEL_19;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 11);
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

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_31:
  v15 = *(this + 8);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_37:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_41:
  *(this + 10) = v4;
  return v4;
}

void proto::gnss::Emergency::WcdmaCellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::WcdmaCellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::WcdmaCellInfo::CopyFrom(proto::gnss::Emergency::WcdmaCellInfo *this, const proto::gnss::Emergency::WcdmaCellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::WcdmaCellInfo::Swap(uint64_t this, proto::gnss::Emergency::WcdmaCellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
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
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v11;
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocationId::SharedCtor(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

proto::gnss::Emergency::LocationId *proto::gnss::Emergency::LocationId::LocationId(proto::gnss::Emergency::LocationId *this, const proto::gnss::Emergency::LocationId *a2)
{
  *this = off_100174690;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  proto::gnss::Emergency::LocationId::MergeFrom(this, a2);
  return this;
}

void sub_100087148(_Unwind_Exception *a1)
{
  v5 = v4;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LocationId::MergeFrom(proto::gnss::Emergency::LocationId *this, const proto::gnss::Emergency::LocationId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::LteCellInfo>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GsmCellInfo>::TypeHandler>((this + 32), a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::WcdmaCellInfo>::TypeHandler>((this + 56), a2 + 56);
  if (*(a2 + 88))
  {
    v4 = *(a2 + 20);
    if (v4 >= 7)
    {
      __assert_rtn("set_cell_type", "GnssEmergencyTypes.pb.h", 14202, "::proto::gnss::Emergency::CellType_IsValid(value)");
    }

    *(this + 22) |= 1u;
    *(this + 20) = v4;
  }
}

void sub_10008725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LocationId::~LocationId(proto::gnss::Emergency::LocationId *this)
{
  *this = off_100174690;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::LocationId::~LocationId(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::LocationId::default_instance(proto::gnss::Emergency::LocationId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LocationId::default_instance_;
  if (!proto::gnss::Emergency::LocationId::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LocationId::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LocationId::Clear(proto::gnss::Emergency::LocationId *this)
{
  if (*(this + 88))
  {
    *(this + 20) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 32);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 56);
  *(this + 22) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::LocationId::MergePartialFromCodedStream(proto::gnss::Emergency::LocationId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_20;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v38 = *(this + 17);
          v39 = *(this + 16);
          if (v39 >= v38)
          {
            if (v38 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56), v38 + 1);
              v38 = *(this + 17);
            }

            *(this + 17) = v38 + 1;
            operator new();
          }

          v40 = *(this + 7);
          *(this + 16) = v39 + 1;
          v41 = *(v40 + 8 * v39);
          v50 = 0;
          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2) || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v42;
            *(a2 + 1) = v42 + 1;
          }

          v43 = *(a2 + 14);
          v44 = *(a2 + 15);
          *(a2 + 14) = v43 + 1;
          if (v43 >= v44)
          {
            return 0;
          }

          v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v50);
          if (!proto::gnss::Emergency::WcdmaCellInfo::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
          v47 = *(a2 + 14);
          v23 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v23)
          {
            *(a2 + 14) = v48;
          }

          v12 = *(a2 + 1);
          v49 = *(a2 + 2);
          if (v12 < v49 && *v12 == 34)
          {
LABEL_65:
            *(a2 + 1) = v12 + 1;
            continue;
          }

          break;
        }

        if (v12 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      v50 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
        if (!result)
        {
          return result;
        }

        v10 = v50;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 6)
      {
        *(this + 22) |= 1u;
        *(this + 20) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        while (2)
        {
          *(a2 + 1) = v12 + 1;
LABEL_30:
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
          v50 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v50);
          if (!proto::gnss::Emergency::LteCellInfo::MergePartialFromCodedStream(v16, a2, v21) || *(a2 + 36) != 1)
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

          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2))
          {
            v25 = *v12;
            if (v25 == 18)
            {
              continue;
            }

            if (v25 == 26)
            {
              while (1)
              {
                *(a2 + 1) = v12 + 1;
LABEL_48:
                v26 = *(this + 11);
                v27 = *(this + 10);
                if (v27 >= v26)
                {
                  if (v26 == *(this + 12))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v26 + 1);
                    v26 = *(this + 11);
                  }

                  *(this + 11) = v26 + 1;
                  operator new();
                }

                v28 = *(this + 4);
                *(this + 10) = v27 + 1;
                v29 = *(v28 + 8 * v27);
                v50 = 0;
                v30 = *(a2 + 1);
                if (v30 >= *(a2 + 2) || *v30 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                  {
                    return 0;
                  }
                }

                else
                {
                  v50 = *v30;
                  *(a2 + 1) = v30 + 1;
                }

                v31 = *(a2 + 14);
                v32 = *(a2 + 15);
                *(a2 + 14) = v31 + 1;
                if (v31 >= v32)
                {
                  return 0;
                }

                v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v50);
                if (!proto::gnss::Emergency::GsmCellInfo::MergePartialFromCodedStream(v29, a2, v34) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v33);
                v35 = *(a2 + 14);
                v23 = __OFSUB__(v35, 1);
                v36 = v35 - 1;
                if (v36 < 0 == v23)
                {
                  *(a2 + 14) = v36;
                }

                v12 = *(a2 + 1);
                if (v12 >= *(a2 + 2))
                {
                  break;
                }

                v37 = *v12;
                if (v37 != 26)
                {
                  if (v37 == 34)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_1;
                }
              }
            }
          }

          break;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_30;
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

uint64_t proto::gnss::Emergency::LocationId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 88))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 80), a2, a4);
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocationId::ByteSize(proto::gnss::Emergency::LocationId *this, unsigned int a2)
{
  if (*(this + 88))
  {
    v4 = *(this + 20);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
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
  v6 = v5 + v3;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = proto::gnss::Emergency::LteCellInfo::ByteSize(*(*(this + 1) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 += v9 + v10;
      ++v7;
    }

    while (v7 < *(this + 4));
  }

  v11 = *(this + 10);
  v12 = v11 + v6;
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = proto::gnss::Emergency::GsmCellInfo::ByteSize(*(*(this + 4) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      }

      else
      {
        v16 = 1;
      }

      v12 += v15 + v16;
      ++v13;
    }

    while (v13 < *(this + 10));
  }

  v17 = *(this + 16);
  v18 = (v17 + v12);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = proto::gnss::Emergency::WcdmaCellInfo::ByteSize(*(*(this + 7) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(this + 16));
  }

  *(this + 21) = v18;
  return v18;
}

void proto::gnss::Emergency::LocationId::CheckTypeAndMergeFrom(proto::gnss::Emergency::LocationId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LocationId::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LocationId::CopyFrom(proto::gnss::Emergency::LocationId *this, const proto::gnss::Emergency::LocationId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LocationId::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::LocationId *proto::gnss::Emergency::LocationId::Swap(proto::gnss::Emergency::LocationId *this, proto::gnss::Emergency::LocationId *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((v3 + 32), (a2 + 32));
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((v3 + 56), (a2 + 56));
    v5 = *(v3 + 22);
    *(v3 + 22) = *(a2 + 22);
    *(a2 + 22) = v5;
    v6 = *(v3 + 21);
    *(v3 + 21) = *(a2 + 21);
    *(a2 + 21) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

proto::gnss::Emergency::WlanMeasurementRequest *proto::gnss::Emergency::WlanMeasurementRequest::WlanMeasurementRequest(proto::gnss::Emergency::WlanMeasurementRequest *this, const proto::gnss::Emergency::WlanMeasurementRequest *a2)
{
  *this = off_100174708;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(proto::gnss::Emergency::WlanMeasurementRequest *this, const proto::gnss::Emergency::WlanMeasurementRequest *a2)
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
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_100087F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::WlanMeasurementRequest::~WlanMeasurementRequest(proto::gnss::Emergency::WlanMeasurementRequest *this)
{
  *this = off_100174708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::default_instance(proto::gnss::Emergency::WlanMeasurementRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::MergePartialFromCodedStream(proto::gnss::Emergency::WlanMeasurementRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 12) = v12 != 0;
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

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::ByteSize(proto::gnss::Emergency::WlanMeasurementRequest *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v6 = *(this + 2);
      if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 5);
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

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gnss::Emergency::WlanMeasurementRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::WlanMeasurementRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::WlanMeasurementRequest::CopyFrom(proto::gnss::Emergency::WlanMeasurementRequest *this, const proto::gnss::Emergency::WlanMeasurementRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::Swap(uint64_t this, proto::gnss::Emergency::WlanMeasurementRequest *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    LOBYTE(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
  }

  return this;
}

double proto::gnss::Emergency::WlanMeasurementElement::SharedCtor(proto::gnss::Emergency::WlanMeasurementElement *this)
{
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  return result;
}

proto::gnss::Emergency::WlanMeasurementElement *proto::gnss::Emergency::WlanMeasurementElement::WlanMeasurementElement(proto::gnss::Emergency::WlanMeasurementElement *this, const proto::gnss::Emergency::WlanMeasurementElement *a2)
{
  *(this + 28) = 0;
  *this = off_100174780;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  proto::gnss::Emergency::WlanMeasurementElement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::WlanMeasurementElement::MergeFrom(proto::gnss::Emergency::WlanMeasurementElement *this, const proto::gnss::Emergency::WlanMeasurementElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      v7 = *(this + 1);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(this + 8) |= 2u;
    *(this + 16) = v8;
    v4 = *(a2 + 8);
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
    v9 = *(a2 + 17);
    *(this + 8) |= 4u;
    *(this + 17) = v9;
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

LABEL_16:
    v10 = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = v10;
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

void sub_100088654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::WlanMeasurementElement::~WlanMeasurementElement(proto::gnss::Emergency::WlanMeasurementElement *this)
{
  *this = off_100174780;
  proto::gnss::Emergency::WlanMeasurementElement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174780;
  proto::gnss::Emergency::WlanMeasurementElement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174780;
  proto::gnss::Emergency::WlanMeasurementElement::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
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

uint64_t proto::gnss::Emergency::WlanMeasurementElement::default_instance(proto::gnss::Emergency::WlanMeasurementElement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::WlanMeasurementElement::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementElement::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::WlanMeasurementElement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
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
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::MergePartialFromCodedStream(proto::gnss::Emergency::WlanMeasurementElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_30;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(this + 8) |= 1u;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v14 < v9 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(a2 + 1) = v11;
LABEL_30:
          v25 = 0;
          if (v11 >= v9 || (v15 = *v11, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v15 = v25;
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v16 = v11 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 16) = v15 != 0;
          *(this + 8) |= 2u;
          if (v16 < v9 && *v16 == 24)
          {
            v12 = v16 + 1;
            *(a2 + 1) = v12;
LABEL_38:
            v24 = 0;
            if (v12 >= v9 || (v17 = *v12, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v17 = v24;
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v18 = v12 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 17) = v17 != 0;
            *(this + 8) |= 4u;
            if (v18 < v9 && *v18 == 32)
            {
              v13 = v18 + 1;
              *(a2 + 1) = v13;
              goto LABEL_46;
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

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_46:
      if (v13 >= v9 || (v19 = *v13, v19 < 0))
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
        v20 = v13 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 8) |= 8u;
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_54:
        v26 = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v21 = v26;
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        *(this + 8) |= 0x10u;
        if (v22 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_54;
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

uint64_t proto::gnss::Emergency::WlanMeasurementElement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), v4, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), v4, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), v4, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v8, v4, a4);
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::ByteSize(proto::gnss::Emergency::WlanMeasurementElement *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
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
        v3 = *(this + 8);
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

    v5 = (v3 & 2) + v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v13 = *(this + 5);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(this + 8);
      }

      else
      {
        v14 = 2;
      }

      v5 = (v14 + v5);
    }

    if ((v3 & 0x10) != 0)
    {
      v15 = *(this + 6);
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

      v5 = (v16 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 7) = v5;
  return v5;
}

void proto::gnss::Emergency::WlanMeasurementElement::CheckTypeAndMergeFrom(proto::gnss::Emergency::WlanMeasurementElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::WlanMeasurementElement::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::WlanMeasurementElement::CopyFrom(proto::gnss::Emergency::WlanMeasurementElement *this, const proto::gnss::Emergency::WlanMeasurementElement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::WlanMeasurementElement::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::Swap(uint64_t this, proto::gnss::Emergency::WlanMeasurementElement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LOBYTE(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gnss::Emergency::WlanMeasurementList *proto::gnss::Emergency::WlanMeasurementList::WlanMeasurementList(proto::gnss::Emergency::WlanMeasurementList *this, const proto::gnss::Emergency::WlanMeasurementList *a2)
{
  *(this + 1) = 0;
  *this = off_1001747F8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  proto::gnss::Emergency::WlanMeasurementList::MergeFrom(this, a2);
  return this;
}

void sub_10008900C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::WlanMeasurementList::MergeFrom(proto::gnss::Emergency::WlanMeasurementList *this, const proto::gnss::Emergency::WlanMeasurementList *a2)
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
      proto::gnss::Emergency::WlanMeasurementElement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  if (*(a2 + 40))
  {
    v10 = *(a2 + 8);
    if (v10 >= 6)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 14514, "::proto::gnss::Emergency::WlanMeasurementResult_IsValid(value)");
    }

    *(this + 10) |= 1u;
    *(this + 8) = v10;
  }
}

void sub_100089230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::WlanMeasurementList::~WlanMeasurementList(proto::gnss::Emergency::WlanMeasurementList *this)
{
  *this = off_1001747F8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::WlanMeasurementList::~WlanMeasurementList(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::default_instance(proto::gnss::Emergency::WlanMeasurementList *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::Clear(proto::gnss::Emergency::WlanMeasurementList *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::MergePartialFromCodedStream(proto::gnss::Emergency::WlanMeasurementList *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v25 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v9 = v25;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 5)
      {
        *(this + 10) |= 1u;
        *(this + 8) = v9;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_23:
          v12 = *(this + 5);
          v13 = *(this + 4);
          if (v13 >= v12)
          {
            if (v12 == *(this + 6))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v12 + 1);
              v12 = *(this + 5);
            }

            *(this + 5) = v12 + 1;
            operator new();
          }

          v14 = *(this + 1);
          *(this + 4) = v13 + 1;
          v15 = *(v14 + 8 * v13);
          v26 = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
            {
              return 0;
            }
          }

          else
          {
            v26 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v17 = *(a2 + 14);
          v18 = *(a2 + 15);
          *(a2 + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v26);
          if (!proto::gnss::Emergency::WlanMeasurementElement::MergePartialFromCodedStream(v15, a2, v20) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v11 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v11 < v24 && *v11 == 18);
        if (v11 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
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

uint64_t proto::gnss::Emergency::WlanMeasurementList::ByteSize(proto::gnss::Emergency::WlanMeasurementList *this, unsigned int a2)
{
  if (*(this + 40))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
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
      v8 = proto::gnss::Emergency::WlanMeasurementElement::ByteSize(*(*(this + 1) + 8 * v7), a2);
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

void proto::gnss::Emergency::WlanMeasurementList::CheckTypeAndMergeFrom(proto::gnss::Emergency::WlanMeasurementList *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::WlanMeasurementList::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::WlanMeasurementList::CopyFrom(proto::gnss::Emergency::WlanMeasurementList *this, const proto::gnss::Emergency::WlanMeasurementList *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::WlanMeasurementList::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::WlanMeasurementList *proto::gnss::Emergency::WlanMeasurementList::Swap(proto::gnss::Emergency::WlanMeasurementList *this, proto::gnss::Emergency::WlanMeasurementList *a2)
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

uint64_t proto::gnss::Emergency::QoP::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

proto::gnss::Emergency::QoP *proto::gnss::Emergency::QoP::QoP(proto::gnss::Emergency::QoP *this, const proto::gnss::Emergency::QoP *a2)
{
  *this = off_100174870;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  proto::gnss::Emergency::QoP::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::QoP::MergeFrom(proto::gnss::Emergency::QoP *this, const proto::gnss::Emergency::QoP *a2)
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
      v6 = *(a2 + 8);
      *(this + 8) |= 1u;
      *(this + 8) = v6;
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

void sub_100089AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::QoP::~QoP(proto::gnss::Emergency::QoP *this)
{
  *this = off_100174870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::QoP::default_instance(proto::gnss::Emergency::QoP *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::QoP::default_instance_;
  if (!proto::gnss::Emergency::QoP::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::QoP::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::QoP::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 20) = 0;
    *(this + 12) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::QoP::MergePartialFromCodedStream(proto::gnss::Emergency::QoP *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v25 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) = v14 != 0;
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

uint64_t proto::gnss::Emergency::QoP::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
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

uint64_t proto::gnss::Emergency::QoP::ByteSize(proto::gnss::Emergency::QoP *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 8);
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

      goto LABEL_16;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 8);
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
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_20:
    v11 = *(this + 6);
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

LABEL_24:
  *(this + 7) = v4;
  return v4;
}

void proto::gnss::Emergency::QoP::CheckTypeAndMergeFrom(proto::gnss::Emergency::QoP *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::QoP::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::QoP::CopyFrom(proto::gnss::Emergency::QoP *this, const proto::gnss::Emergency::QoP *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::QoP::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::QoP::Swap(uint64_t this, proto::gnss::Emergency::QoP *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
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
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return this;
}

uint64_t proto::gnss::Emergency::SLPAddress::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  return this;
}

proto::gnss::Emergency::SLPAddress *proto::gnss::Emergency::SLPAddress::SLPAddress(proto::gnss::Emergency::SLPAddress *this, const proto::gnss::Emergency::SLPAddress *a2)
{
  *this = off_1001748E8;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  proto::gnss::Emergency::SLPAddress::MergeFrom(this, a2);
  return this;
}

void sub_10008A354(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SLPAddress::MergeFrom(proto::gnss::Emergency::SLPAddress *this, const proto::gnss::Emergency::SLPAddress *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 8);
      *(this + 11) |= 1u;
      *(this + 8) = v6;
      v5 = *(a2 + 11);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 3);
      if (v7 >= 5)
      {
        __assert_rtn("set_slp_address_type", "GnssEmergencyTypes.pb.h", 14702, "::proto::gnss::Emergency::SLPAddressType_IsValid(value)");
      }

      *(this + 11) |= 2u;
      *(this + 3) = v7;
      v5 = *(a2 + 11);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 11) |= 4u;
      v9 = *(this + 2);
      if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_10008A4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SLPAddress::~SLPAddress(proto::gnss::Emergency::SLPAddress *this)
{
  *this = off_1001748E8;
  proto::gnss::Emergency::SLPAddress::SharedDtor(this);
  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::SLPAddress::~SLPAddress(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::SLPAddress::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
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

uint64_t proto::gnss::Emergency::SLPAddress::default_instance(proto::gnss::Emergency::SLPAddress *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SLPAddress::default_instance_;
  if (!proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SLPAddress::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SLPAddress::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
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

  *(this + 32) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SLPAddress::MergePartialFromCodedStream(proto::gnss::Emergency::SLPAddress *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_47;
            }

            if (v8 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
              if (!result)
              {
                return result;
              }

              goto LABEL_64;
            }
          }

          goto LABEL_22;
        }

        if (v8 != 2)
        {
          goto LABEL_22;
        }

LABEL_41:
        *(this + 11) |= 4u;
        if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v19 < v15 && *v19 == 32)
        {
          do
          {
            v16 = v19 + 1;
            *(a2 + 1) = v16;
LABEL_47:
            v30 = 0;
            if (v16 >= v15 || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
              {
                return 0;
              }
            }

            else
            {
              v30 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v20 = *(this + 8);
            if (v20 == *(this + 9))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 3, v20 + 1);
              v20 = *(this + 8);
            }

            v21 = v30;
            v22 = *(this + 3);
            *(this + 8) = v20 + 1;
            *(v22 + 4 * v20) = v21;
            v23 = *(this + 9) - *(this + 8);
            if (v23 >= 1)
            {
              v24 = v23 + 1;
              do
              {
                v25 = *(a2 + 1);
                v26 = *(a2 + 2);
                if (v25 >= v26 || *v25 != 32)
                {
                  break;
                }

                *(a2 + 1) = v25 + 1;
                if ((v25 + 1) >= v26 || v25[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
                  {
                    return 0;
                  }
                }

                else
                {
                  v30 = v25[1];
                  *(a2 + 1) = v25 + 2;
                }

                v27 = *(this + 8);
                if (v27 >= *(this + 9))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
                  v27 = *(this + 8);
                }

                v28 = v30;
                v29 = *(this + 3);
                *(this + 8) = v27 + 1;
                *(v29 + 4 * v27) = v28;
                --v24;
              }

              while (v24 > 1);
            }

LABEL_64:
            v19 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          while (v19 < v15 && *v19 == 32);
          if (v19 == v15 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_22;
      }

      v31[0] = 0;
      v12 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
        if (!result)
        {
          return result;
        }

        v13 = v31[0];
        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 8) = v13 != 0;
      *(this + 11) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_31:
        v31[0] = 0;
        if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31);
          if (!result)
          {
            return result;
          }

          v17 = v31[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v17 <= 4)
        {
          *(this + 11) |= 2u;
          *(this + 3) = v17;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 26)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_31;
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

void sub_10008AB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t proto::gnss::Emergency::SLPAddress::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), v4, a4);
  if ((*(v5 + 44) & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 24) + 4 * v8++), v4, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t proto::gnss::Emergency::SLPAddress::ByteSize(proto::gnss::Emergency::SLPAddress *this, unsigned int a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    v4 = 2 * (v3 & 1);
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
        v3 = *(this + 11);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(this + 2);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v4 += v12 + v8 + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(this + 8);
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
      v16 = *(*(this + 3) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
        v13 = *(this + 8);
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

  result = (v15 + v4 + v13);
  *(this + 10) = result;
  return result;
}

void proto::gnss::Emergency::SLPAddress::CheckTypeAndMergeFrom(proto::gnss::Emergency::SLPAddress *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SLPAddress::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SLPAddress::CopyFrom(proto::gnss::Emergency::SLPAddress *this, const proto::gnss::Emergency::SLPAddress *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SLPAddress::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::SLPAddress::Swap(proto::gnss::Emergency::SLPAddress *this, proto::gnss::Emergency::SLPAddress *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    result = *(a2 + 4);
    *(a2 + 3) = v5;
    v7 = *(this + 4);
    *(this + 4) = result;
    *(a2 + 4) = v7;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Notification::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::Notification *proto::gnss::Emergency::Notification::Notification(proto::gnss::Emergency::Notification *this, const proto::gnss::Emergency::Notification *a2)
{
  *this = off_100174960;
  *(this + 12) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::Notification::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Notification::MergeFrom(proto::gnss::Emergency::Notification *this, const proto::gnss::Emergency::Notification *a2)
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

void sub_10008B0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Notification::~Notification(proto::gnss::Emergency::Notification *this)
{
  *this = off_100174960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Notification::default_instance(proto::gnss::Emergency::Notification *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Notification::default_instance_;
  if (!proto::gnss::Emergency::Notification::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Notification::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Notification::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Notification::MergePartialFromCodedStream(proto::gnss::Emergency::Notification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v16 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
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

        *(this + 9) = v12 != 0;
        *(this + 4) |= 2u;
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

uint64_t proto::gnss::Emergency::Notification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::Notification::ByteSize(proto::gnss::Emergency::Notification *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1) + (*(this + 4) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gnss::Emergency::Notification::CheckTypeAndMergeFrom(proto::gnss::Emergency::Notification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Notification::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Notification::CopyFrom(proto::gnss::Emergency::Notification *this, const proto::gnss::Emergency::Notification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Notification::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Notification::Swap(uint64_t this, proto::gnss::Emergency::Notification *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
  }

  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::SuplInitVer2Extension *proto::gnss::Emergency::SuplInitVer2Extension::SuplInitVer2Extension(proto::gnss::Emergency::SuplInitVer2Extension *this, const proto::gnss::Emergency::SuplInitVer2Extension *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001749D8;
  *(this + 6) = 0;
  proto::gnss::Emergency::SuplInitVer2Extension::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SuplInitVer2Extension::MergeFrom(proto::gnss::Emergency::SuplInitVer2Extension *this, const proto::gnss::Emergency::SuplInitVer2Extension *a2)
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
      *(this + 6) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8);
      }

      proto::gnss::Emergency::SLPAddress::MergeFrom(v5, v6);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 4)
      {
        __assert_rtn("set_trigger_type", "GnssEmergencyTypes.pb.h", 14914, "::proto::gnss::Emergency::TriggerType_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_10008B7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SuplInitVer2Extension::~SuplInitVer2Extension(proto::gnss::Emergency::SuplInitVer2Extension *this)
{
  *this = off_1001749D8;
  if (proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ != this)
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
  proto::gnss::Emergency::SuplInitVer2Extension::~SuplInitVer2Extension(this);

  operator delete();
}

void *proto::gnss::Emergency::SuplInitVer2Extension::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::default_instance(proto::gnss::Emergency::SuplInitVer2Extension *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  if (!proto::gnss::Emergency::SuplInitVer2Extension::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::SLPAddress::Clear(this);
      }
    }

    *(v1 + 16) = 0;
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::MergePartialFromCodedStream(proto::gnss::Emergency::SuplInitVer2Extension *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_28;
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

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(this + 6) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v23 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v23);
    if (!proto::gnss::Emergency::SLPAddress::MergePartialFromCodedStream(v8, a2, v15) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
    }

    v19 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v19 < v10 && *v19 == 16)
    {
      v11 = v19 + 1;
      *(a2 + 1) = v11;
LABEL_28:
      v22 = 0;
      if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v20 = v22;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v20 <= 3)
      {
        *(this + 6) |= 2u;
        *(this + 4) = v20;
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

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::ByteSize(proto::gnss::Emergency::SuplInitVer2Extension *this, unsigned int a2)
{
  if (!*(this + 24))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8);
  }

  v5 = proto::gnss::Emergency::SLPAddress::ByteSize(v4, a2);
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
  if ((*(this + 6) & 2) != 0)
  {
LABEL_12:
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

    v3 = (v9 + v3);
  }

LABEL_18:
  *(this + 5) = v3;
  return v3;
}

void proto::gnss::Emergency::SuplInitVer2Extension::CheckTypeAndMergeFrom(proto::gnss::Emergency::SuplInitVer2Extension *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SuplInitVer2Extension::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SuplInitVer2Extension::CopyFrom(proto::gnss::Emergency::SuplInitVer2Extension *this, const proto::gnss::Emergency::SuplInitVer2Extension *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SuplInitVer2Extension::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::Swap(uint64_t this, proto::gnss::Emergency::SuplInitVer2Extension *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

double proto::gnss::Emergency::Init::SharedCtor(proto::gnss::Emergency::Init *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::Init *proto::gnss::Emergency::Init::Init(proto::gnss::Emergency::Init *this, const proto::gnss::Emergency::Init *a2)
{
  *this = off_100174A50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Emergency::Init::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Init::MergeFrom(proto::gnss::Emergency::Init *this, const proto::gnss::Emergency::Init *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 10);
    if (v5 >= 0x12)
    {
      __assert_rtn("set_pos_method", "GnssEmergencyTypes.pb.h", 14941, "::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(this + 12) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 12);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    *(this + 12) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::Init::default_instance_ + 16);
    }

    proto::gnss::Emergency::SLPAddress::MergeFrom(v8, v9);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  *(this + 12) |= 2u;
  v6 = *(this + 1);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::Init::default_instance_ + 8);
  }

  proto::gnss::Emergency::QoP::MergeFrom(v6, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  *(this + 12) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::Init::default_instance_ + 24);
  }

  proto::gnss::Emergency::Notification::MergeFrom(v10, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_27:
    *(this + 12) |= 0x10u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::Init::default_instance_ + 32);
    }

    proto::gnss::Emergency::SuplInitVer2Extension::MergeFrom(v12, v13);
  }
}

void sub_10008C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Init::~Init(proto::gnss::Emergency::Init *this)
{
  *this = off_100174A50;
  proto::gnss::Emergency::Init::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174A50;
  proto::gnss::Emergency::Init::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174A50;
  proto::gnss::Emergency::Init::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::Init::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::Init::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::Init::default_instance(proto::gnss::Emergency::Init *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Init::default_instance_;
  if (!proto::gnss::Emergency::Init::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Init::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Init::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 48);
  if (v2)
  {
    *(this + 40) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 20) = 0;
          *(v3 + 12) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(this + 48);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = proto::gnss::Emergency::SLPAddress::Clear(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = proto::gnss::Emergency::SuplInitVer2Extension::Clear(this);
      }
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Init::MergePartialFromCodedStream(proto::gnss::Emergency::Init *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_48;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_62:
          *(this + 12) |= 8u;
          v32 = *(this + 3);
          if (!v32)
          {
            operator new();
          }

          v49 = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v34 = *(a2 + 14);
          v35 = *(a2 + 15);
          *(a2 + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v49);
          if (!proto::gnss::Emergency::Notification::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
          v38 = *(a2 + 14);
          v20 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v20)
          {
            *(a2 + 14) = v39;
          }

          v40 = *(a2 + 1);
          if (v40 < *(a2 + 2) && *v40 == 42)
          {
            *(a2 + 1) = v40 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_76:
          *(this + 12) |= 0x10u;
          v41 = *(this + 4);
          if (!v41)
          {
            operator new();
          }

          v49 = 0;
          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2) || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v42;
            *(a2 + 1) = v42 + 1;
          }

          v43 = *(a2 + 14);
          v44 = *(a2 + 15);
          *(a2 + 14) = v43 + 1;
          if (v43 >= v44)
          {
            return 0;
          }

          v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v49);
          if (!proto::gnss::Emergency::SuplInitVer2Extension::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
          v47 = *(a2 + 14);
          v20 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v20)
          {
            *(a2 + 14) = v48;
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

      v49 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49);
        if (!result)
        {
          return result;
        }

        v10 = v49;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 0x11)
      {
        *(this + 12) |= 1u;
        *(this + 10) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_34:
        *(this + 12) |= 2u;
        v13 = *(this + 1);
        if (!v13)
        {
          operator new();
        }

        v49 = 0;
        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v14;
          *(a2 + 1) = v14 + 1;
        }

        v15 = *(a2 + 14);
        v16 = *(a2 + 15);
        *(a2 + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v49);
        if (!proto::gnss::Emergency::QoP::MergePartialFromCodedStream(v13, a2, v18) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v17);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_48:
          *(this + 12) |= 4u;
          v23 = *(this + 2);
          if (!v23)
          {
            operator new();
          }

          v49 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v49);
          if (!proto::gnss::Emergency::SLPAddress::MergePartialFromCodedStream(v23, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v27);
          v29 = *(a2 + 14);
          v20 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v20)
          {
            *(a2 + 14) = v30;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 34)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_62;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
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

uint64_t proto::gnss::Emergency::Init::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 40), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::Init::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
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

LABEL_11:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::Init::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::Init::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_17:
    v10 = *(v5 + 32);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::Init::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::Init::ByteSize(proto::gnss::Emergency::Init *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
  }

  if (*(this + 48))
  {
    v5 = *(this + 10);
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
      v3 = *(this + 12);
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
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::Init::default_instance_ + 8);
  }

  v7 = proto::gnss::Emergency::QoP::ByteSize(v6, a2);
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
  v3 = *(this + 12);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::Init::default_instance_ + 16);
    }

    v11 = proto::gnss::Emergency::SLPAddress::ByteSize(v10, a2);
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
    v3 = *(this + 12);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::Init::default_instance_ + 24);
  }

  if (*(v14 + 16))
  {
    v15 = 2 * (*(v14 + 16) & 1) + (*(v14 + 16) & 2);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 12) = v15;
  v4 = (v4 + v15 + 2);
  if ((*(this + 12) & 0x10) != 0)
  {
LABEL_35:
    v16 = *(this + 4);
    if (!v16)
    {
      v16 = *(proto::gnss::Emergency::Init::default_instance_ + 32);
    }

    v17 = proto::gnss::Emergency::SuplInitVer2Extension::ByteSize(v16, a2);
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

LABEL_41:
  *(this + 11) = v4;
  return v4;
}

void proto::gnss::Emergency::Init::CheckTypeAndMergeFrom(proto::gnss::Emergency::Init *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Init::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Init::CopyFrom(proto::gnss::Emergency::Init *this, const proto::gnss::Emergency::Init *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Init::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Init::Swap(uint64_t this, proto::gnss::Emergency::Init *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

void *proto::gnss::Emergency::SuplContext::SharedCtor(void *this)
{
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[3] = 0;
  this[4] = 0;
  this[5] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::SuplContext *proto::gnss::Emergency::SuplContext::SuplContext(proto::gnss::Emergency::SuplContext *this, const proto::gnss::Emergency::SuplContext *a2)
{
  *this = off_100174AC8;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 6) = 0;
  proto::gnss::Emergency::SuplContext::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SuplContext::MergeFrom(proto::gnss::Emergency::SuplContext *this, const proto::gnss::Emergency::SuplContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 8);
    *(this + 13) |= 1u;
    *(this + 8) = v5;
    v4 = *(a2 + 13);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 1);
    *(this + 13) |= 2u;
    v9 = *(this + 1);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 36);
  *(this + 13) |= 4u;
  *(this + 36) = v10;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v11 = *(a2 + 2);
  *(this + 13) |= 8u;
  v12 = *(this + 2);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v15 = *(a2 + 5);
    *(this + 13) |= 0x20u;
    v16 = *(this + 5);
    if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_24:
  *(this + 13) |= 0x10u;
  v13 = *(this + 3);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 3);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::SuplContext::default_instance_ + 24);
  }

  proto::gnss::Emergency::Configuration::MergeFrom(v13, v14);
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v17 = *(a2 + 37);
  *(this + 13) |= 0x40u;
  *(this + 37) = v17;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 38);
    *(this + 13) |= 0x80u;
    *(this + 38) = v6;
    v4 = *(a2 + 13);
  }

LABEL_14:
  if ((v4 & 0x100) != 0)
  {
    v7 = *(a2 + 39);
    *(this + 13) |= 0x100u;
    *(this + 39) = v7;
  }
}

void sub_10008D2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SuplContext::~SuplContext(proto::gnss::Emergency::SuplContext *this)
{
  *this = off_100174AC8;
  proto::gnss::Emergency::SuplContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174AC8;
  proto::gnss::Emergency::SuplContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174AC8;
  proto::gnss::Emergency::SuplContext::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::SuplContext::SharedDtor(void *this)
{
  v1 = this[1];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = this[2];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = this[5];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  if (proto::gnss::Emergency::SuplContext::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      v7 = *(*this + 8);

      return v7();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::SuplContext::default_instance(proto::gnss::Emergency::SuplContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SuplContext::default_instance_;
  if (!proto::gnss::Emergency::SuplContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SuplContext::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SuplContext::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 32) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

    *(this + 36) = 0;
    if ((*(this + 52) & 8) != 0)
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
    if ((v4 & 0x10) != 0)
    {
      v5 = *(this + 24);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 16) = 0;
          *(v5 + 8) = 0;
        }

        *(v5 + 24) = 0;
        v4 = *(this + 52);
      }
    }

    if ((v4 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    *(this + 37) = 0;
    v1 = *(this + 52);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 39) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplContext::MergePartialFromCodedStream(proto::gnss::Emergency::SuplContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_37;
            }

            v12 = *(this + 13);
            goto LABEL_60;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v18 = *(a2 + 1);
          v17 = *(a2 + 2);
LABEL_52:
          v43 = 0;
          if (v18 >= v17 || (v23 = *v18, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v23 = v43;
            v24 = *(a2 + 1);
            v17 = *(a2 + 2);
          }

          else
          {
            v24 = v18 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 36) = v23 != 0;
          v12 = *(this + 13) | 4;
          *(this + 13) = v12;
          if (v24 < v17 && *v24 == 34)
          {
            *(a2 + 1) = v24 + 1;
LABEL_60:
            *(this + 13) = v12 | 8;
            if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            if (v25 < *(a2 + 2) && *v25 == 42)
            {
              *(a2 + 1) = v25 + 1;
              goto LABEL_66;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_37;
            }

            v11 = *(this + 13);
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
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v11 = *(this + 13) | 1;
          *(this + 13) = v11;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
LABEL_46:
            *(this + 13) = v11 | 2;
            if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v17 = *(a2 + 2);
            if (v22 < v17 && *v22 == 24)
            {
              v18 = v22 + 1;
              *(a2 + 1) = v18;
              goto LABEL_52;
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

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_94:
        v43 = 0;
        if (v20 >= v9 || (v39 = *v20, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
          if (!result)
          {
            return result;
          }

          v39 = v43;
          v40 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v40 = v20 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 38) = v39 != 0;
        *(this + 13) |= 0x80u;
        if (v40 < v9 && *v40 == 72)
        {
          v10 = v40 + 1;
          *(a2 + 1) = v10;
LABEL_102:
          v43 = 0;
          if (v10 >= v9 || (v41 = *v10, (v41 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
            if (!result)
            {
              return result;
            }

            v41 = v43;
            v42 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v42 = v10 + 1;
            *(a2 + 1) = v42;
          }

          *(this + 39) = v41 != 0;
          *(this + 13) |= 0x100u;
          if (v42 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if (v7 == 9 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_102;
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

    if (v7 != 5)
    {
      if (v7 != 6 || v8 != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_80;
    }

    if (v8 != 2)
    {
      goto LABEL_37;
    }

LABEL_66:
    *(this + 13) |= 0x10u;
    v26 = *(this + 3);
    if (!v26)
    {
      operator new();
    }

    v43 = 0;
    v27 = *(a2 + 1);
    if (v27 >= *(a2 + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
      {
        return 0;
      }
    }

    else
    {
      v43 = *v27;
      *(a2 + 1) = v27 + 1;
    }

    v28 = *(a2 + 14);
    v29 = *(a2 + 15);
    *(a2 + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v43);
    if (!proto::gnss::Emergency::Configuration::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
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

    v35 = *(a2 + 1);
    if (v35 < *(a2 + 2) && *v35 == 50)
    {
      *(a2 + 1) = v35 + 1;
LABEL_80:
      *(this + 13) |= 0x20u;
      if (*(this + 5) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v36 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v36 < v9 && *v36 == 56)
      {
        v19 = v36 + 1;
        *(a2 + 1) = v19;
LABEL_86:
        v43 = 0;
        if (v19 >= v9 || (v37 = *v19, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
          if (!result)
          {
            return result;
          }

          v37 = v43;
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v38 = v19 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 37) = v37 != 0;
        *(this + 13) |= 0x40u;
        if (v38 < v9 && *v38 == 64)
        {
          v20 = v38 + 1;
          *(a2 + 1) = v20;
          goto LABEL_94;
        }
      }
    }
  }
}

uint64_t proto::gnss::Emergency::SuplContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v6 = *(v5 + 52);
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

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::SuplContext::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
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
  v10 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 38), a2, a4);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 37), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_21:
  v11 = *(v5 + 39);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v11, a2, a4);
}

uint64_t proto::gnss::Emergency::SuplContext::ByteSize(proto::gnss::Emergency::SuplContext *this, unsigned int a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if (v3)
  {
    v6 = *(this + 8);
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 13);
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

  v7 = *(this + 1);
  v8 = *(v7 + 23);
  v9 = v8;
  v10 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    v8 = *(v7 + 23);
    v10 = *(v7 + 8);
    v3 = *(this + 13);
    v9 = *(v7 + 23);
  }

  else
  {
    v12 = 1;
  }

  if (v9 < 0)
  {
    v8 = v10;
  }

  v4 += v12 + v8 + 1;
LABEL_19:
  v13 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v20 = *(this + 3);
    if (!v20)
    {
      v20 = *(proto::gnss::Emergency::SuplContext::default_instance_ + 24);
    }

    v21 = 2 * (*(v20 + 24) & 1) + (*(v20 + 24) & 2);
    if ((*(v20 + 24) & 4) != 0)
    {
      v21 |= 9u;
    }

    if (*(v20 + 24))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v20 + 20) = v22;
    v13 += v22 + 2;
    v3 = *(this + 13);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v14 = *(this + 2);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(this + 13);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v13 += v19 + v15 + 1;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if ((v3 & 0x20) != 0)
  {
LABEL_40:
    v23 = *(this + 5);
    v24 = *(v23 + 23);
    v25 = v24;
    v26 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      v24 = *(v23 + 23);
      v26 = *(v23 + 8);
      v3 = *(this + 13);
      v25 = *(v23 + 23);
    }

    else
    {
      v28 = 1;
    }

    if (v25 < 0)
    {
      v24 = v26;
    }

    v13 += v28 + v24 + 1;
  }

LABEL_49:
  v5 = ((v3 >> 5) & 2) + ((v3 >> 6) & 2) + v13;
LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    v29 = (v3 >> 7) & 2;
  }

  else
  {
    v29 = 0;
  }

  result = (v29 + v5);
  *(this + 12) = result;
  return result;
}

void proto::gnss::Emergency::SuplContext::CheckTypeAndMergeFrom(proto::gnss::Emergency::SuplContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SuplContext::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SuplContext::CopyFrom(proto::gnss::Emergency::SuplContext *this, const proto::gnss::Emergency::SuplContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SuplContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::SuplContext::Swap(uint64_t this, proto::gnss::Emergency::SuplContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LOBYTE(v3) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LOBYTE(v6) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v6;
    LOBYTE(v6) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v6;
    LOBYTE(v6) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double proto::gnss::Emergency::SessionStatus::SharedCtor(proto::gnss::Emergency::SessionStatus *this)
{
  *(this + 25) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 83) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::default_instance(proto::gnss::Emergency::NetworkReferenceLocation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::default_instance(proto::gnss::Emergency::NetworkReferenceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  }

  return result;
}

proto::gnss::Emergency::SessionStatus *proto::gnss::Emergency::SessionStatus::SessionStatus(proto::gnss::Emergency::SessionStatus *this, const proto::gnss::Emergency::SessionStatus *a2)
{
  *this = off_100174B40;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 83) = 0u;
  proto::gnss::Emergency::SessionStatus::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SessionStatus::MergeFrom(proto::gnss::Emergency::SessionStatus *this, const proto::gnss::Emergency::SessionStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 26);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 26) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 26);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 3);
    if (v6 >= 0x12)
    {
      __assert_rtn("set_pos_method", "GnssEmergencyTypes.pb.h", 15524, "::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(this + 26) |= 2u;
    *(this + 3) = v6;
    v4 = *(a2 + 26);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 >= 0x21)
    {
      __assert_rtn("set_status", "GnssEmergencyTypes.pb.h", 15547, "::proto::gnss::Emergency::Status_IsValid(value)");
    }

    *(this + 26) |= 4u;
    *(this + 4) = v7;
    v4 = *(a2 + 26);
  }

  if ((v4 & 8) != 0)
  {
    v8 = *(a2 + 5);
    if (v8 >= 0x18)
    {
      __assert_rtn("set_end_cause", "GnssEmergencyTypes.pb.h", 15570, "::proto::gnss::Emergency::EndCause_IsValid(value)");
    }

    *(this + 26) |= 8u;
    *(this + 5) = v8;
    v4 = *(a2 + 26);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_48:
    v21 = *(a2 + 4);
    *(this + 26) |= 0x20u;
    *(this + 4) = v21;
    v4 = *(a2 + 26);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_49;
  }

  v20 = *(a2 + 3);
  *(this + 26) |= 0x10u;
  *(this + 3) = v20;
  v4 = *(a2 + 26);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_49:
  v22 = *(a2 + 5);
  *(this + 26) |= 0x40u;
  *(this + 5) = v22;
  v4 = *(a2 + 26);
  if ((v4 & 0x80) != 0)
  {
LABEL_19:
    v9 = *(a2 + 6);
    *(this + 26) |= 0x80u;
    *(this + 6) = v9;
    v4 = *(a2 + 26);
  }

LABEL_20:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 7);
    *(this + 26) |= 0x100u;
    *(this + 7) = v10;
    v4 = *(a2 + 26);
    if ((v4 & 0x200) == 0)
    {
LABEL_23:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a2 + 8);
  *(this + 26) |= 0x200u;
  *(this + 8) = v11;
  v4 = *(a2 + 26);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 9);
  *(this + 26) |= 0x400u;
  *(this + 9) = v12;
  v4 = *(a2 + 26);
  if ((v4 & 0x800) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(a2 + 96);
  *(this + 26) |= 0x800u;
  *(this + 96) = v13;
  v4 = *(a2 + 26);
  if ((v4 & 0x1000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(a2 + 97);
  *(this + 26) |= 0x1000u;
  *(this + 97) = v14;
  v4 = *(a2 + 26);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(a2 + 98);
  *(this + 26) |= 0x2000u;
  *(this + 98) = v15;
  v4 = *(a2 + 26);
  if ((v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_36:
  *(this + 26) |= 0x4000u;
  v16 = *(this + 10);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 10);
  if (!v17)
  {
    v17 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 80);
  }

  proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(v16, v17);
  if ((*(a2 + 26) & 0x8000) != 0)
  {
LABEL_41:
    *(this + 26) |= 0x8000u;
    v18 = *(this + 11);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 11);
    if (!v19)
    {
      v19 = *(proto::gnss::Emergency::SessionStatus::default_instance_ + 88);
    }

    proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(v18, v19);
  }
}

void sub_10008E6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SessionStatus::~SessionStatus(proto::gnss::Emergency::SessionStatus *this)
{
  *this = off_100174B40;
  proto::gnss::Emergency::SessionStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174B40;
  proto::gnss::Emergency::SessionStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174B40;
  proto::gnss::Emergency::SessionStatus::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::SessionStatus::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::SessionStatus::default_instance_ != this)
  {
    v1 = this;
    v2 = this[10];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[11];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::SessionStatus::default_instance(proto::gnss::Emergency::SessionStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SessionStatus::default_instance_;
  if (!proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SessionStatus::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SessionStatus::Clear(uint64_t this)
{
  v1 = *(this + 104);
  if (v1)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 96) = 0;
    *(this + 98) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
    if ((v1 & 0x4000) != 0)
    {
      v2 = *(this + 80);
      if (v2)
      {
        if (*(v2 + 60))
        {
          *(v2 + 40) = 0u;
          *(v2 + 24) = 0u;
          *(v2 + 8) = 0u;
        }

        *(v2 + 60) = 0;
        v1 = *(this + 104);
      }
    }

    if ((v1 & 0x8000) != 0)
    {
      v3 = *(this + 88);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(this + 104) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::Clear(uint64_t this)
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

uint64_t proto::gnss::Emergency::NetworkReferenceTime::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SessionStatus::MergePartialFromCodedStream(proto::gnss::Emergency::SessionStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
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

        *(this + 26) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v20 = v11 + 1;
          *(a2 + 1) = v20;
          goto LABEL_48;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_48:
        v60[0] = 0;
        if (v20 >= v8 || (v23 = *v20, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v23 = v60[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v23 <= 0x11)
        {
          *(this + 26) |= 2u;
          *(this + 3) = v23;
        }

        v24 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v24 >= v16 || *v24 != 24)
        {
          continue;
        }

        v17 = v24 + 1;
        *(a2 + 1) = v17;
LABEL_58:
        v60[0] = 0;
        if (v17 >= v16 || (v25 = *v17, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v25 = v60[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v25 <= 0x20)
        {
          *(this + 26) |= 4u;
          *(this + 4) = v25;
        }

        v26 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v26 >= v18 || *v26 != 32)
        {
          continue;
        }

        v19 = v26 + 1;
        *(a2 + 1) = v19;
LABEL_68:
        v60[0] = 0;
        if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v27 = v60[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v27 <= 0x17)
        {
          *(this + 26) |= 8u;
          *(this + 5) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 41)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_78:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v60;
        *(this + 26) |= 0x10u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 49)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_82:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v60;
        *(this + 26) |= 0x20u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 57)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_86:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v60;
        *(this + 26) |= 0x40u;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 65)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_90:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v60;
        *(this + 26) |= 0x80u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 73)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_94:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v60;
        *(this + 26) |= 0x100u;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 81)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_98:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v60;
        *(this + 26) |= 0x200u;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 89)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_102:
        *v60 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v60) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v60;
        *(this + 26) |= 0x400u;
        v35 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v35 >= v13 || *v35 != 96)
        {
          continue;
        }

        v14 = v35 + 1;
        *(a2 + 1) = v14;
LABEL_106:
        v60[0] = 0;
        if (v14 >= v13 || (v36 = *v14, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v36 = v60[0];
          v37 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v37 = v14 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 96) = v36 != 0;
        *(this + 26) |= 0x800u;
        if (v37 >= v13 || *v37 != 104)
        {
          continue;
        }

        v15 = v37 + 1;
        *(a2 + 1) = v15;
LABEL_114:
        v60[0] = 0;
        if (v15 >= v13 || (v38 = *v15, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v38 = v60[0];
          v39 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v39 = v15 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 97) = v38 != 0;
        *(this + 26) |= 0x1000u;
        if (v39 >= v13 || *v39 != 112)
        {
          continue;
        }

        v21 = v39 + 1;
        *(a2 + 1) = v21;
LABEL_122:
        v60[0] = 0;
        if (v21 >= v13 || (v40 = *v21, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60);
          if (!result)
          {
            return result;
          }

          v40 = v60[0];
          v41 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v41 = v21 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 98) = v40 != 0;
        v12 = *(this + 26) | 0x2000;
        *(this + 26) = v12;
        if (v41 >= v13 || *v41 != 122)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_130:
        *(this + 26) = v12 | 0x4000;
        v42 = *(this + 10);
        if (!v42)
        {
          operator new();
        }

        v60[0] = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60))
          {
            return 0;
          }
        }

        else
        {
          v60[0] = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60[0]);
        if (!proto::gnss::Emergency::NetworkReferenceLocation::MergePartialFromCodedStream(v42, a2, v47) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v46);
        v48 = *(a2 + 14);
        v49 = __OFSUB__(v48, 1);
        v50 = v48 - 1;
        if (v50 < 0 == v49)
        {
          *(a2 + 14) = v50;
        }

        v51 = *(a2 + 1);
        if (*(a2 + 4) - v51 <= 1 || *v51 != 130 || v51[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v51 + 2;
LABEL_145:
        *(this + 26) |= 0x8000u;
        v52 = *(this + 11);
        if (!v52)
        {
          operator new();
        }

        v60[0] = 0;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v60))
          {
            return 0;
          }
        }

        else
        {
          v60[0] = *v53;
          *(a2 + 1) = v53 + 1;
        }

        v54 = *(a2 + 14);
        v55 = *(a2 + 15);
        *(a2 + 14) = v54 + 1;
        if (v54 < v55)
        {
          v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60[0]);
          if (proto::gnss::Emergency::NetworkReferenceTime::MergePartialFromCodedStream(v52, a2, v57))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v56);
              v58 = *(a2 + 14);
              v49 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v59 < 0 == v49)
              {
                *(a2 + 14) = v59;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_58;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_68;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_78;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_94;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_106;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_114;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_122;
      case 0xFu:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        v12 = *(this + 26);
        goto LABEL_130;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_145;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}