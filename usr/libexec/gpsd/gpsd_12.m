void sub_100099344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsEutranCell::~ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this)
{
  *this = off_1001752C0;
  if (proto::gnss::Emergency::ClsEutranCell::default_instance_ != this)
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
  proto::gnss::Emergency::ClsEutranCell::~ClsEutranCell(this);

  operator delete();
}

void *proto::gnss::Emergency::ClsEutranCell::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::ClsEutranCell::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::default_instance(proto::gnss::Emergency::ClsEutranCell *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  if (!proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsEutranCell::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x10) != 0)
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
        v1 = *(this + 60);
      }
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 44) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(proto::gnss::Emergency::ClsEutranCell *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 > 8)
        {
          if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_114;
            }
          }

          else if (v7 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_122;
            }
          }

          else if (v7 == 11 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_130;
          }

          goto LABEL_43;
        }

        if (v7 == 6)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_90;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_98:
          if (v19 >= v9 || (v43 = *v19, v43 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v44 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v43;
            v44 = v19 + 1;
            *(a2 + 1) = v44;
          }

          *(this + 15) |= 0x40u;
          if (v44 < v9 && *v44 == 64)
          {
            v10 = v44 + 1;
            *(a2 + 1) = v10;
LABEL_106:
            if (v10 >= v9 || (v45 = *v10, v45 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v46 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v45;
              v46 = v10 + 1;
              *(a2 + 1) = v46;
            }

            *(this + 15) |= 0x80u;
            if (v46 < v9 && *v46 == 72)
            {
              v23 = v46 + 1;
              *(a2 + 1) = v23;
LABEL_114:
              v53 = 0;
              if (v23 >= v9 || (v47 = *v23, (v47 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                if (!result)
                {
                  return result;
                }

                v47 = v53;
                v48 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v48 = v23 + 1;
                *(a2 + 1) = v48;
              }

              *(this + 11) = v47;
              *(this + 15) |= 0x100u;
              if (v48 < v9 && *v48 == 80)
              {
                v20 = v48 + 1;
                *(a2 + 1) = v20;
LABEL_122:
                if (v20 >= v9 || (v49 = *v20, v49 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v50 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v49;
                  v50 = v20 + 1;
                  *(a2 + 1) = v50;
                }

                *(this + 15) |= 0x200u;
                if (v50 < v9 && *v50 == 88)
                {
                  v12 = v50 + 1;
                  *(a2 + 1) = v12;
LABEL_130:
                  if (v12 >= v9 || (v51 = *v12, v51 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v52 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v51;
                    v52 = v12 + 1;
                    *(a2 + 1) = v52;
                  }

                  *(this + 15) |= 0x400u;
                  if (v52 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        else
        {
          if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_106;
          }

LABEL_43:
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 != 1)
      {
        if (v7 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_52;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v15 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v15 >= v13 || (v16 = *v15, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v16;
        v17 = v15 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 15) |= 1u;
      if (v17 < v13 && *v17 == 16)
      {
        v14 = v17 + 1;
        *(a2 + 1) = v14;
LABEL_52:
        if (v14 >= v13 || (v25 = *v14, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v25;
          v26 = v14 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 15) |= 2u;
        if (v26 < v13 && *v26 == 24)
        {
          v21 = v26 + 1;
          *(a2 + 1) = v21;
LABEL_60:
          if (v21 >= v13 || (v27 = *v21, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v27;
            v28 = v21 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 15) |= 4u;
          if (v28 < v13 && *v28 == 32)
          {
            v18 = v28 + 1;
            *(a2 + 1) = v18;
LABEL_68:
            if (v18 >= v13 || (v29 = *v18, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v29;
              v30 = v18 + 1;
              *(a2 + 1) = v30;
            }

            v11 = *(this + 15) | 8;
            *(this + 15) = v11;
            if (v30 < v13 && *v30 == 42)
            {
              *(a2 + 1) = v30 + 1;
              goto LABEL_76;
            }
          }
        }
      }
    }

    if (v7 == 3)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v21 = *(a2 + 1);
      v13 = *(a2 + 2);
      goto LABEL_60;
    }

    if (v7 == 4)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v18 = *(a2 + 1);
      v13 = *(a2 + 2);
      goto LABEL_68;
    }

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_43;
    }

    v11 = *(this + 15);
LABEL_76:
    *(this + 15) = v11 | 0x10;
    v31 = *(this + 3);
    if (!v31)
    {
      operator new();
    }

    v54 = 0;
    v32 = *(a2 + 1);
    if (v32 >= *(a2 + 2) || *v32 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
      {
        return 0;
      }
    }

    else
    {
      v54 = *v32;
      *(a2 + 1) = v32 + 1;
    }

    v33 = *(a2 + 14);
    v34 = *(a2 + 15);
    *(a2 + 14) = v33 + 1;
    if (v33 >= v34)
    {
      return 0;
    }

    v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
    if (!proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(v31, a2, v36) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
    v37 = *(a2 + 14);
    v38 = __OFSUB__(v37, 1);
    v39 = v37 - 1;
    if (v39 < 0 == v38)
    {
      *(a2 + 14) = v39;
    }

    v40 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v40 < v9 && *v40 == 48)
    {
      v22 = v40 + 1;
      *(a2 + 1) = v22;
LABEL_90:
      if (v22 >= v9 || (v41 = *v22, v41 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v42 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v41;
        v42 = v22 + 1;
        *(a2 + 1) = v42;
      }

      *(this + 15) |= 0x20u;
      if (v42 < v9 && *v42 == 56)
      {
        v19 = v42 + 1;
        *(a2 + 1) = v19;
        goto LABEL_98;
      }
    }
  }
}

uint64_t proto::gnss::Emergency::ClsEutranCell::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_25:
  v8 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::ClsEutranCell::ByteSize(proto::gnss::Emergency::ClsEutranCell *this, unsigned int a2)
{
  v3 = *(this + 15);
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
      v3 = *(this + 15);
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
    v3 = *(this + 15);
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
      v3 = *(this + 15);
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
    v3 = *(this + 15);
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
  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  v13 = proto::gnss::Emergency::Plmn::ByteSize(v12, a2);
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
  v3 = *(this + 15);
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
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
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
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(this + 10);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v3 & 0x100) != 0)
  {
    v22 = *(this + 11);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(this + 15);
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v24 = *(this + 12);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x400) != 0)
  {
LABEL_62:
    v26 = *(this + 13);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    }

    else
    {
      v27 = 2;
    }

    v4 = (v27 + v4);
  }

LABEL_66:
  *(this + 14) = v4;
  return v4;
}

void proto::gnss::Emergency::ClsEutranCell::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsEutranCell *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsEutranCell::CopyFrom(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::ClsEutranCell::Swap(uint64_t this, proto::gnss::Emergency::ClsEutranCell *a2)
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
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return this;
}

double proto::gnss::Emergency::GanssTimeMeasured::SharedCtor(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GanssTimeMeasured *proto::gnss::Emergency::GanssTimeMeasured::GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
{
  *this = off_100175338;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
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
        v6 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(v5, v6);
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
      v8 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(v7, v8);
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
        v10 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
      }

      proto::gnss::Emergency::ClsEutranCell::MergeFrom(v9, v10);
    }
  }
}

void sub_10009A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssTimeMeasured::~GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  *this = off_100175338;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175338;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175338;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssTimeMeasured::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::GanssTimeMeasured::default_instance(proto::gnss::Emergency::GanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::UtranGanssTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = proto::gnss::Emergency::GeranGanssTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = proto::gnss::Emergency::ClsEutranCell::Clear(this);
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (!proto::gnss::Emergency::UtranGanssTimeMeasured::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
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
        if (!proto::gnss::Emergency::GeranGanssTimeMeasured::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
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
          if (!proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::GanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
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
    v8 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::ByteSize(proto::gnss::Emergency::GanssTimeMeasured *this, unint64_t a2)
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
      v5 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
    }

    v6 = proto::gnss::Emergency::UtranGanssTimeMeasured::ByteSize(v5, a2);
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
      v9 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
    }

    v10 = proto::gnss::Emergency::GeranGanssTimeMeasured::ByteSize(v9, a2);
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
      v13 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
    }

    v14 = proto::gnss::Emergency::ClsEutranCell::ByteSize(v13, a2);
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

void proto::gnss::Emergency::GanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssTimeMeasured::CopyFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::GanssTimeMeasured *a2)
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

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GanssTimeMeasuredParams *proto::gnss::Emergency::GanssTimeMeasuredParams::GanssTimeMeasuredParams(proto::gnss::Emergency::GanssTimeMeasuredParams *this, const proto::gnss::Emergency::GanssTimeMeasuredParams *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001753B0;
  *(this + 6) = 0;
  proto::gnss::Emergency::GanssTimeMeasuredParams::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssTimeMeasuredParams::MergeFrom(proto::gnss::Emergency::GanssTimeMeasuredParams *this, const proto::gnss::Emergency::GanssTimeMeasuredParams *a2)
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
        __assert_rtn("set_ganss_time_measured_type", "GnssEmergencyTypes.pb.h", 17926, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8);
      }

      proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(v6, v7);
    }
  }
}

void sub_10009B044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssTimeMeasuredParams::~GanssTimeMeasuredParams(proto::gnss::Emergency::GanssTimeMeasuredParams *this)
{
  *this = off_1001753B0;
  if (proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ != this)
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
  proto::gnss::Emergency::GanssTimeMeasuredParams::~GanssTimeMeasuredParams(this);

  operator delete();
}

void *proto::gnss::Emergency::GanssTimeMeasuredParams::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance(proto::gnss::Emergency::GanssTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::GanssTimeMeasured::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::MergePartialFromCodedStream(proto::gnss::Emergency::GanssTimeMeasuredParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!proto::gnss::Emergency::GanssTimeMeasured::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::ByteSize(proto::gnss::Emergency::GanssTimeMeasuredParams *this, unint64_t a2)
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
      v6 = *(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::GanssTimeMeasured::ByteSize(v6, a2);
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

void proto::gnss::Emergency::GanssTimeMeasuredParams::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssTimeMeasuredParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssTimeMeasuredParams::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssTimeMeasuredParams::CopyFrom(proto::gnss::Emergency::GanssTimeMeasuredParams *this, const proto::gnss::Emergency::GanssTimeMeasuredParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssTimeMeasuredParams::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::Swap(uint64_t this, proto::gnss::Emergency::GanssTimeMeasuredParams *a2)
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

double proto::gnss::Emergency::GanssLocationInfo::SharedCtor(proto::gnss::Emergency::GanssLocationInfo *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GanssLocationInfo *proto::gnss::Emergency::GanssLocationInfo::GanssLocationInfo(proto::gnss::Emergency::GanssLocationInfo *this, const proto::gnss::Emergency::GanssLocationInfo *a2)
{
  *this = off_100175428;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::GanssLocationInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssLocationInfo::MergeFrom(proto::gnss::Emergency::GanssLocationInfo *this, const proto::gnss::Emergency::GanssLocationInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 2);
    if (v5 >= 6)
    {
      __assert_rtn("set_time_id", "GnssEmergencyTypes.pb.h", 17995, "::proto::gnss::Emergency::GnssTimeId_IsValid(value)");
    }

    *(this + 9) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 9);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v9 = *(a2 + 5);
      *(this + 9) |= 8u;
      *(this + 5) = v9;
      v4 = *(a2 + 9);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 4);
  *(this + 9) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 9);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v10 = *(a2 + 6);
  if (v10 >= 4)
  {
    __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 18084, "::proto::gnss::Emergency::FixType_IsValid(value)");
  }

  *(this + 9) |= 0x10u;
  *(this + 6) = v10;
  if ((*(a2 + 9) & 0x20) != 0)
  {
LABEL_12:
    v6 = *(a2 + 7);
    *(this + 9) |= 0x20u;
    *(this + 7) = v6;
  }
}

void sub_10009B960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssLocationInfo::~GanssLocationInfo(proto::gnss::Emergency::GanssLocationInfo *this)
{
  *this = off_100175428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::GanssLocationInfo::default_instance(proto::gnss::Emergency::GanssLocationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssLocationInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssLocationInfo::Clear(uint64_t this)
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

uint64_t proto::gnss::Emergency::GanssLocationInfo::MergePartialFromCodedStream(proto::gnss::Emergency::GanssLocationInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              goto LABEL_53;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_71;
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

        v30 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
          if (!result)
          {
            return result;
          }

          v13 = v30;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 <= 5)
        {
          *(this + 9) |= 1u;
          *(this + 2) = v13;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v17 < v8 && *v17 == 16)
        {
          v15 = v17 + 1;
          *(a2 + 1) = v15;
          goto LABEL_37;
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
LABEL_37:
      if (v15 >= v8 || (v18 = *v15, v18 < 0))
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
        v19 = v15 + 1;
        *(a2 + 1) = v19;
      }

      *(this + 9) |= 2u;
      if (v19 < v8 && *v19 == 24)
      {
        v9 = v19 + 1;
        *(a2 + 1) = v9;
LABEL_45:
        if (v9 >= v8 || (v20 = *v9, v20 < 0))
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
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 9) |= 4u;
        if (v21 < v8 && *v21 == 32)
        {
          v14 = v21 + 1;
          *(a2 + 1) = v14;
LABEL_53:
          if (v14 >= v8 || (v22 = *v14, v22 < 0))
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
            v23 = v14 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 9) |= 8u;
          if (v23 < v8 && *v23 == 40)
          {
            v16 = v23 + 1;
            *(a2 + 1) = v16;
LABEL_61:
            v29 = 0;
            if (v16 >= v8 || (v24 = *v16, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
            }

            else
            {
              *(a2 + 1) = v16 + 1;
            }

            if (v24 <= 3)
            {
              *(this + 9) |= 0x10u;
              *(this + 6) = v24;
            }

            v25 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v25 < v10 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(a2 + 1) = v11;
LABEL_71:
              if (v11 >= v10 || (v26 = *v11, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v26;
                v27 = v11 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 9) |= 0x20u;
              if (v27 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_45;
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

int *proto::gnss::Emergency::GanssLocationInfo::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = this[9];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[2], a2, a4);
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[6], v4, a4);
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

uint64_t proto::gnss::Emergency::GanssLocationInfo::ByteSize(proto::gnss::Emergency::GanssLocationInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(this + 36))
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
      v3 = *(this + 9);
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
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_17;
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
LABEL_17:
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
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
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
    v3 = *(this + 9);
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
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_30:
  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
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
LABEL_36:
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

LABEL_40:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::GanssLocationInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssLocationInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssLocationInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssLocationInfo::CopyFrom(proto::gnss::Emergency::GanssLocationInfo *this, const proto::gnss::Emergency::GanssLocationInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssLocationInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssLocationInfo *proto::gnss::Emergency::GanssLocationInfo::Swap(proto::gnss::Emergency::GanssLocationInfo *this, proto::gnss::Emergency::GanssLocationInfo *a2)
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

uint64_t proto::gnss::Emergency::EllipsoidPoint::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::EllipsoidPoint *proto::gnss::Emergency::EllipsoidPoint::EllipsoidPoint(proto::gnss::Emergency::EllipsoidPoint *this, const proto::gnss::Emergency::EllipsoidPoint *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001754A0;
  proto::gnss::Emergency::EllipsoidPoint::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::EllipsoidPoint::MergeFrom(proto::gnss::Emergency::EllipsoidPoint *this, const proto::gnss::Emergency::EllipsoidPoint *a2)
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

void sub_10009C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EllipsoidPoint::~EllipsoidPoint(proto::gnss::Emergency::EllipsoidPoint *this)
{
  *this = off_1001754A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001754A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001754A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::EllipsoidPoint::default_instance(proto::gnss::Emergency::EllipsoidPoint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EllipsoidPoint::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(proto::gnss::Emergency::EllipsoidPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 2) = v9;
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

        *(this + 3) = v12;
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

uint64_t proto::gnss::Emergency::EllipsoidPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::EllipsoidPoint::ByteSize(proto::gnss::Emergency::EllipsoidPoint *this, unsigned int a2)
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
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
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

LABEL_19:
  *(this + 4) = v4;
  return v4;
}

void proto::gnss::Emergency::EllipsoidPoint::CheckTypeAndMergeFrom(proto::gnss::Emergency::EllipsoidPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EllipsoidPoint::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EllipsoidPoint::CopyFrom(proto::gnss::Emergency::EllipsoidPoint *this, const proto::gnss::Emergency::EllipsoidPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EllipsoidPoint::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::EllipsoidPoint *proto::gnss::Emergency::EllipsoidPoint::Swap(proto::gnss::Emergency::EllipsoidPoint *this, proto::gnss::Emergency::EllipsoidPoint *a2)
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

uint64_t proto::gnss::Emergency::PointUncertainCircle::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::PointUncertainCircle *proto::gnss::Emergency::PointUncertainCircle::PointUncertainCircle(proto::gnss::Emergency::PointUncertainCircle *this, const proto::gnss::Emergency::PointUncertainCircle *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175518;
  *(this + 6) = 0;
  proto::gnss::Emergency::PointUncertainCircle::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PointUncertainCircle::MergeFrom(proto::gnss::Emergency::PointUncertainCircle *this, const proto::gnss::Emergency::PointUncertainCircle *a2)
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
        v6 = *(proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8);
      }

      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v5, v6);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_10009CA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PointUncertainCircle::~PointUncertainCircle(proto::gnss::Emergency::PointUncertainCircle *this)
{
  *this = off_100175518;
  if (proto::gnss::Emergency::PointUncertainCircle::default_instance_ != this)
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
  proto::gnss::Emergency::PointUncertainCircle::~PointUncertainCircle(this);

  operator delete();
}

void *proto::gnss::Emergency::PointUncertainCircle::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::PointUncertainCircle::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::default_instance(proto::gnss::Emergency::PointUncertainCircle *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainCircle::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
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

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::MergePartialFromCodedStream(proto::gnss::Emergency::PointUncertainCircle *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v8, a2, v15) || *(a2 + 36) != 1)
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
      if (v11 >= v10 || (v20 = *v11, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v20;
        v21 = v11 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 6) |= 2u;
      if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::ByteSize(proto::gnss::Emergency::PointUncertainCircle *this, unsigned int a2)
{
  if (!*(this + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8);
  }

  v5 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v4, a2);
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
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(this + 5) = v3;
  return v3;
}

void proto::gnss::Emergency::PointUncertainCircle::CheckTypeAndMergeFrom(proto::gnss::Emergency::PointUncertainCircle *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PointUncertainCircle::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PointUncertainCircle::CopyFrom(proto::gnss::Emergency::PointUncertainCircle *this, const proto::gnss::Emergency::PointUncertainCircle *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PointUncertainCircle::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::Swap(uint64_t this, proto::gnss::Emergency::PointUncertainCircle *a2)
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

double proto::gnss::Emergency::PointUncertainEllipse::SharedCtor(proto::gnss::Emergency::PointUncertainEllipse *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::PointUncertainEllipse *proto::gnss::Emergency::PointUncertainEllipse::PointUncertainEllipse(proto::gnss::Emergency::PointUncertainEllipse *this, const proto::gnss::Emergency::PointUncertainEllipse *a2)
{
  *this = off_100175590;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::PointUncertainEllipse::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PointUncertainEllipse::MergeFrom(proto::gnss::Emergency::PointUncertainEllipse *this, const proto::gnss::Emergency::PointUncertainEllipse *a2)
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
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8);
      }

      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v6, v7);
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v10;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v5;
  }
}

void sub_10009D30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PointUncertainEllipse::~PointUncertainEllipse(proto::gnss::Emergency::PointUncertainEllipse *this)
{
  *this = off_100175590;
  if (proto::gnss::Emergency::PointUncertainEllipse::default_instance_ != this)
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
  proto::gnss::Emergency::PointUncertainEllipse::~PointUncertainEllipse(this);

  operator delete();
}

void *proto::gnss::Emergency::PointUncertainEllipse::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::PointUncertainEllipse::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainEllipse::default_instance(proto::gnss::Emergency::PointUncertainEllipse *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainEllipse::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PointUncertainEllipse::Clear(uint64_t this)
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

uint64_t proto::gnss::Emergency::PointUncertainEllipse::MergePartialFromCodedStream(proto::gnss::Emergency::PointUncertainEllipse *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v10 >= v9 || (v31 = *v10, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v31;
            v32 = v10 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 9) |= 0x10u;
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
    if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v14, a2, v19) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::PointUncertainEllipse::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::PointUncertainEllipse::ByteSize(proto::gnss::Emergency::PointUncertainEllipse *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
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
    v5 = *(proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v5, a2);
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
        goto LABEL_32;
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
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

LABEL_32:
  *(this + 8) = v4;
  return v4;
}

void proto::gnss::Emergency::PointUncertainEllipse::CheckTypeAndMergeFrom(proto::gnss::Emergency::PointUncertainEllipse *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PointUncertainEllipse::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PointUncertainEllipse::CopyFrom(proto::gnss::Emergency::PointUncertainEllipse *this, const proto::gnss::Emergency::PointUncertainEllipse *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PointUncertainEllipse::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::PointUncertainEllipse::Swap(uint64_t this, proto::gnss::Emergency::PointUncertainEllipse *a2)
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

double proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::SharedCtor(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::PointAltitudeUncertainEllipsoid(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, const proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *a2)
{
  *this = off_100175608;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergeFrom(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, const proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      *(this + 11) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8);
      }

      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v6, v7);
      v4 = *(a2 + 11);
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

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 11) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 11);
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
    v9 = *(a2 + 5);
    *(this + 11) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 6);
    *(this + 11) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    v11 = *(a2 + 7);
    *(this + 11) |= 0x10u;
    *(this + 7) = v11;
    v4 = *(a2 + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_22:
    v12 = *(a2 + 8);
    *(this + 11) |= 0x20u;
    *(this + 8) = v12;
    if ((*(a2 + 11) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x40u;
    *(this + 9) = v5;
  }
}

void sub_10009DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::~PointAltitudeUncertainEllipsoid(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this)
{
  *this = off_100175608;
  if (proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ != this)
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
  proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::~PointAltitudeUncertainEllipsoid(this);

  operator delete();
}

void *proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  if (!proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    if (*(this + 44))
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
    *(this + 32) = 0;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergePartialFromCodedStream(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              v16 = *(a2 + 1);
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

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_61:
          if (v15 >= v9 || (v31 = *v15, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v31;
            v32 = v15 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 11) |= 8u;
          if (v32 < v9 && *v32 == 40)
          {
            v10 = v32 + 1;
            *(a2 + 1) = v10;
LABEL_69:
            if (v10 >= v9 || (v33 = *v10, v33 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v34 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v33;
              v34 = v10 + 1;
              *(a2 + 1) = v34;
            }

            *(this + 11) |= 0x10u;
            if (v34 < v9 && *v34 == 48)
            {
              v16 = v34 + 1;
              *(a2 + 1) = v16;
LABEL_77:
              if (v16 >= v9 || (v35 = *v16, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v35;
                v36 = v16 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 11) |= 0x20u;
              if (v36 < v9 && *v36 == 56)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_85:
                if (v12 >= v9 || (v37 = *v12, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v37;
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 11) |= 0x40u;
                if (v38 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_53;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_45:
      if (v17 >= v9 || (v26 = *v17, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v26;
        v27 = v17 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 11) |= 2u;
      if (v27 < v9 && *v27 == 24)
      {
        v11 = v27 + 1;
        *(a2 + 1) = v11;
LABEL_53:
        if (v11 >= v9 || (v29 = *v11, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v11 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 11) |= 4u;
        if (v30 < v9 && *v30 == 32)
        {
          v15 = v30 + 1;
          *(a2 + 1) = v15;
          goto LABEL_61;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    *(this + 11) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v39 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
      {
        return 0;
      }
    }

    else
    {
      v39 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    *(a2 + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v39);
    if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v13, a2, v21) || *(a2 + 36) != 1)
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
    v9 = *(a2 + 2);
    if (v25 < v9 && *v25 == 16)
    {
      v17 = v25 + 1;
      *(a2 + 1) = v17;
      goto LABEL_45;
    }
  }
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[11];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
    if ((v5[11] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::ByteSize(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if ((*(this + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v5, a2);
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
    v9 = *(this + 4);
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
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 5);
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
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
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
    v3 = *(this + 11);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v15 = *(this + 7);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v17 = *(this + 8);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_38:
    v19 = *(this + 9);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_42:
  *(this + 10) = v4;
  return v4;
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::CheckTypeAndMergeFrom(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::CopyFrom(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, const proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::Swap(uint64_t this, proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return this;
}

double proto::gnss::Emergency::EllipsoidArc::SharedCtor(proto::gnss::Emergency::EllipsoidArc *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::EllipsoidArc *proto::gnss::Emergency::EllipsoidArc::EllipsoidArc(proto::gnss::Emergency::EllipsoidArc *this, const proto::gnss::Emergency::EllipsoidArc *a2)
{
  *this = off_100175680;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::EllipsoidArc::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::EllipsoidArc::MergeFrom(proto::gnss::Emergency::EllipsoidArc *this, const proto::gnss::Emergency::EllipsoidArc *a2)
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
      *(this + 10) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8);
      }

      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v6, v7);
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 10);
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
    v9 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 10);
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
    v10 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_20:
    v11 = *(a2 + 7);
    *(this + 10) |= 0x10u;
    *(this + 7) = v11;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v5;
  }
}

void sub_10009EB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EllipsoidArc::~EllipsoidArc(proto::gnss::Emergency::EllipsoidArc *this)
{
  *this = off_100175680;
  if (proto::gnss::Emergency::EllipsoidArc::default_instance_ != this)
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
  proto::gnss::Emergency::EllipsoidArc::~EllipsoidArc(this);

  operator delete();
}

void *proto::gnss::Emergency::EllipsoidArc::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::EllipsoidArc::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::EllipsoidArc::default_instance(proto::gnss::Emergency::EllipsoidArc *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EllipsoidArc::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidArc::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EllipsoidArc::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EllipsoidArc::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    if (*(this + 40))
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
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EllipsoidArc::MergePartialFromCodedStream(proto::gnss::Emergency::EllipsoidArc *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_57;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_65;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_73;
        }

        goto LABEL_28;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_41:
        if (v15 >= v9 || (v25 = *v15, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v25;
          v26 = v15 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 10) |= 2u;
        if (v26 < v9 && *v26 == 24)
        {
          v10 = v26 + 1;
          *(a2 + 1) = v10;
LABEL_49:
          if (v10 >= v9 || (v28 = *v10, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v28;
            v29 = v10 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 10) |= 4u;
          if (v29 < v9 && *v29 == 32)
          {
            v14 = v29 + 1;
            *(a2 + 1) = v14;
LABEL_57:
            if (v14 >= v9 || (v30 = *v14, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
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
              v31 = v14 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 10) |= 8u;
            if (v31 < v9 && *v31 == 40)
            {
              v16 = v31 + 1;
              *(a2 + 1) = v16;
LABEL_65:
              if (v16 >= v9 || (v32 = *v16, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
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
                v33 = v16 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 10) |= 0x10u;
              if (v33 < v9 && *v33 == 48)
              {
                v11 = v33 + 1;
                *(a2 + 1) = v11;
LABEL_73:
                if (v11 >= v9 || (v34 = *v11, v34 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 8) = v34;
                  v35 = v11 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 10) |= 0x20u;
                if (v35 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      else
      {
        if (v7 == 3 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_49;
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

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    *(this + 10) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v36 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v17 = *(a2 + 14);
    v18 = *(a2 + 15);
    *(a2 + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
    if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v12, a2, v20) || *(a2 + 36) != 1)
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

    v24 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v24 < v9 && *v24 == 16)
    {
      v15 = v24 + 1;
      *(a2 + 1) = v15;
      goto LABEL_41;
    }
  }
}

uint64_t proto::gnss::Emergency::EllipsoidArc::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[10];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
    if ((v5[10] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::EllipsoidArc::ByteSize(proto::gnss::Emergency::EllipsoidArc *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v5, a2);
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
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 10);
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
      v3 = *(this + 10);
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
        goto LABEL_19;
      }

      goto LABEL_29;
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
    v3 = *(this + 10);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v15 = *(this + 7);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_33:
    v17 = *(this + 8);
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

LABEL_37:
  *(this + 9) = v4;
  return v4;
}

void proto::gnss::Emergency::EllipsoidArc::CheckTypeAndMergeFrom(proto::gnss::Emergency::EllipsoidArc *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EllipsoidArc::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EllipsoidArc::CopyFrom(proto::gnss::Emergency::EllipsoidArc *this, const proto::gnss::Emergency::EllipsoidArc *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EllipsoidArc::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::EllipsoidArc::Swap(uint64_t this, proto::gnss::Emergency::EllipsoidArc *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointAltitude::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::PointAltitude *proto::gnss::Emergency::PointAltitude::PointAltitude(proto::gnss::Emergency::PointAltitude *this, const proto::gnss::Emergency::PointAltitude *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001756F8;
  *(this + 6) = 0;
  proto::gnss::Emergency::PointAltitude::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PointAltitude::MergeFrom(proto::gnss::Emergency::PointAltitude *this, const proto::gnss::Emergency::PointAltitude *a2)
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
        v6 = *(proto::gnss::Emergency::PointAltitude::default_instance_ + 8);
      }

      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v5, v6);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_10009F704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PointAltitude::~PointAltitude(proto::gnss::Emergency::PointAltitude *this)
{
  *this = off_1001756F8;
  if (proto::gnss::Emergency::PointAltitude::default_instance_ != this)
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
  proto::gnss::Emergency::PointAltitude::~PointAltitude(this);

  operator delete();
}

void *proto::gnss::Emergency::PointAltitude::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::PointAltitude::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointAltitude::default_instance(proto::gnss::Emergency::PointAltitude *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PointAltitude::default_instance_;
  if (!proto::gnss::Emergency::PointAltitude::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PointAltitude::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PointAltitude::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
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

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PointAltitude::MergePartialFromCodedStream(proto::gnss::Emergency::PointAltitude *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v8, a2, v15) || *(a2 + 36) != 1)
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
      if (v11 >= v10 || (v20 = *v11, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v20;
        v21 = v11 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 6) |= 2u;
      if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t proto::gnss::Emergency::PointAltitude::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::PointAltitude::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::PointAltitude::ByteSize(proto::gnss::Emergency::PointAltitude *this, unsigned int a2)
{
  if (!*(this + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::Emergency::PointAltitude::default_instance_ + 8);
  }

  v5 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v4, a2);
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
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(this + 5) = v3;
  return v3;
}

void proto::gnss::Emergency::PointAltitude::CheckTypeAndMergeFrom(proto::gnss::Emergency::PointAltitude *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PointAltitude::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PointAltitude::CopyFrom(proto::gnss::Emergency::PointAltitude *this, const proto::gnss::Emergency::PointAltitude *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PointAltitude::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::PointAltitude::Swap(uint64_t this, proto::gnss::Emergency::PointAltitude *a2)
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

uint64_t proto::gnss::Emergency::Polygon::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gnss::Emergency::Polygon *proto::gnss::Emergency::Polygon::Polygon(proto::gnss::Emergency::Polygon *this, const proto::gnss::Emergency::Polygon *a2)
{
  *(this + 1) = 0;
  *this = off_100175770;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  proto::gnss::Emergency::Polygon::MergeFrom(this, a2);
  return this;
}

void sub_10009FE60(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Polygon::MergeFrom(proto::gnss::Emergency::Polygon *this, const proto::gnss::Emergency::Polygon *a2)
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
      proto::gnss::Emergency::EllipsoidPoint::MergeFrom(*(v9 + 8 * v8), v6);
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

void sub_1000A004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Polygon::~Polygon(proto::gnss::Emergency::Polygon *this)
{
  *this = off_100175770;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::Polygon::~Polygon(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Polygon::default_instance(proto::gnss::Emergency::Polygon *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Polygon::default_instance_;
  if (!proto::gnss::Emergency::Polygon::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Polygon::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Polygon::Clear(proto::gnss::Emergency::Polygon *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::Polygon::MergePartialFromCodedStream(proto::gnss::Emergency::Polygon *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v16, a2, v21) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::Polygon::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::Polygon::ByteSize(proto::gnss::Emergency::Polygon *this, unsigned int a2)
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
      v8 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(*(*(this + 1) + 8 * v7), a2);
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

void proto::gnss::Emergency::Polygon::CheckTypeAndMergeFrom(proto::gnss::Emergency::Polygon *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Polygon::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Polygon::CopyFrom(proto::gnss::Emergency::Polygon *this, const proto::gnss::Emergency::Polygon *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Polygon::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Polygon *proto::gnss::Emergency::Polygon::Swap(proto::gnss::Emergency::Polygon *this, proto::gnss::Emergency::Polygon *a2)
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

double proto::gnss::Emergency::ShapeInfo::SharedCtor(proto::gnss::Emergency::ShapeInfo *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ShapeInfo *proto::gnss::Emergency::ShapeInfo::ShapeInfo(proto::gnss::Emergency::ShapeInfo *this, const proto::gnss::Emergency::ShapeInfo *a2)
{
  *this = off_1001757E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  proto::gnss::Emergency::ShapeInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ShapeInfo::MergeFrom(proto::gnss::Emergency::ShapeInfo *this, const proto::gnss::Emergency::ShapeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 72))
  {
    *(this + 18) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 8);
    }

    proto::gnss::Emergency::PointUncertainCircle::MergeFrom(v6, v7);
    v4 = *(a2 + 18);
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

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 18) |= 2u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 16);
  }

  proto::gnss::Emergency::PointUncertainEllipse::MergeFrom(v8, v9);
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_24:
  *(this + 18) |= 4u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 24);
  }

  proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergeFrom(v10, v11);
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(this + 18) |= 8u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 32);
  }

  proto::gnss::Emergency::EllipsoidArc::MergeFrom(v12, v13);
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    *(this + 18) |= 0x20u;
    v16 = *(this + 6);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 6);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 48);
    }

    proto::gnss::Emergency::PointAltitude::MergeFrom(v16, v17);
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_34:
  *(this + 18) |= 0x10u;
  v14 = *(this + 5);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 5);
  if (!v15)
  {
    v15 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 40);
  }

  proto::gnss::Emergency::EllipsoidPoint::MergeFrom(v14, v15);
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  *(this + 18) |= 0x40u;
  v18 = *(this + 7);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 7);
  if (!v19)
  {
    v19 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 56);
  }

  proto::gnss::Emergency::Polygon::MergeFrom(v18, v19);
  if ((*(a2 + 18) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 16);
    *(this + 18) |= 0x80u;
    *(this + 16) = v5;
  }
}

void sub_1000A0BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ShapeInfo::~ShapeInfo(proto::gnss::Emergency::ShapeInfo *this)
{
  *this = off_1001757E8;
  proto::gnss::Emergency::ShapeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001757E8;
  proto::gnss::Emergency::ShapeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001757E8;
  proto::gnss::Emergency::ShapeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *proto::gnss::Emergency::ShapeInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::ShapeInfo::default_instance_ != this)
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

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    this = v1[7];
    if (this)
    {
      v8 = *(*this + 8);

      return v8();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::ShapeInfo::default_instance(proto::gnss::Emergency::ShapeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ShapeInfo::default_instance_;
  if (!proto::gnss::Emergency::ShapeInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ShapeInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ShapeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    if (*(this + 72))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::PointUncertainCircle::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = proto::gnss::Emergency::PointUncertainEllipse::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = proto::gnss::Emergency::EllipsoidArc::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = proto::gnss::Emergency::PointAltitude::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 32) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v4 + 8);
        *(v4 + 40) = 0;
      }
    }

    *(v1 + 64) = 0;
  }

  *(v1 + 72) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ShapeInfo::MergePartialFromCodedStream(proto::gnss::Emergency::ShapeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              goto LABEL_90;
            }
          }

          else if (v7 == 6 && v8 == 2)
          {
            goto LABEL_104;
          }

          goto LABEL_36;
        }

        if (v7 != 7)
        {
          if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_132;
          }

          goto LABEL_36;
        }

        if (v8 != 2)
        {
          goto LABEL_36;
        }

LABEL_118:
        *(this + 18) |= 0x40u;
        v66 = *(this + 7);
        if (!v66)
        {
          operator new();
        }

        v78 = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
          {
            return 0;
          }
        }

        else
        {
          v78 = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        v70 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
        if (!proto::gnss::Emergency::Polygon::MergePartialFromCodedStream(v66, a2, v71) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v70);
        v72 = *(a2 + 14);
        v18 = __OFSUB__(v72, 1);
        v73 = v72 - 1;
        if (v73 < 0 == v18)
        {
          *(a2 + 14) = v73;
        }

        v74 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v74 < v9 && *v74 == 64)
        {
          v10 = v74 + 1;
          *(a2 + 1) = v10;
LABEL_132:
          if (v10 >= v9 || (v75 = *v10, v75 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
            if (!result)
            {
              return result;
            }

            v76 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 16) = v75;
            v76 = v10 + 1;
            *(a2 + 1) = v76;
          }

          *(this + 18) |= 0x80u;
          if (v76 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_62;
          }
        }

        else if (v7 == 4 && v8 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_36;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_36;
      }

      *(this + 18) |= 1u;
      v11 = *(this + 1);
      if (!v11)
      {
        operator new();
      }

      v78 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
        {
          return 0;
        }
      }

      else
      {
        v78 = *v12;
        *(a2 + 1) = v12 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
      if (!proto::gnss::Emergency::PointUncertainCircle::MergePartialFromCodedStream(v11, a2, v16) || *(a2 + 36) != 1)
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
      if (v20 < *(a2 + 2) && *v20 == 18)
      {
        *(a2 + 1) = v20 + 1;
LABEL_48:
        *(this + 18) |= 2u;
        v21 = *(this + 2);
        if (!v21)
        {
          operator new();
        }

        v78 = 0;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
          {
            return 0;
          }
        }

        else
        {
          v78 = *v22;
          *(a2 + 1) = v22 + 1;
        }

        v23 = *(a2 + 14);
        v24 = *(a2 + 15);
        *(a2 + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
        if (!proto::gnss::Emergency::PointUncertainEllipse::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
        v27 = *(a2 + 14);
        v18 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v18)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 < *(a2 + 2) && *v29 == 26)
        {
          *(a2 + 1) = v29 + 1;
LABEL_62:
          *(this + 18) |= 4u;
          v30 = *(this + 3);
          if (!v30)
          {
            operator new();
          }

          v78 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
            {
              return 0;
            }
          }

          else
          {
            v78 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v32 = *(a2 + 14);
          v33 = *(a2 + 15);
          *(a2 + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
          if (!proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
          v36 = *(a2 + 14);
          v18 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v37 < 0 == v18)
          {
            *(a2 + 14) = v37;
          }

          v38 = *(a2 + 1);
          if (v38 < *(a2 + 2) && *v38 == 34)
          {
            *(a2 + 1) = v38 + 1;
LABEL_76:
            *(this + 18) |= 8u;
            v39 = *(this + 4);
            if (!v39)
            {
              operator new();
            }

            v78 = 0;
            v40 = *(a2 + 1);
            if (v40 >= *(a2 + 2) || *v40 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
              {
                return 0;
              }
            }

            else
            {
              v78 = *v40;
              *(a2 + 1) = v40 + 1;
            }

            v41 = *(a2 + 14);
            v42 = *(a2 + 15);
            *(a2 + 14) = v41 + 1;
            if (v41 >= v42)
            {
              return 0;
            }

            v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
            if (!proto::gnss::Emergency::EllipsoidArc::MergePartialFromCodedStream(v39, a2, v44) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v43);
            v45 = *(a2 + 14);
            v18 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v18)
            {
              *(a2 + 14) = v46;
            }

            v47 = *(a2 + 1);
            if (v47 < *(a2 + 2) && *v47 == 42)
            {
              *(a2 + 1) = v47 + 1;
LABEL_90:
              *(this + 18) |= 0x10u;
              v48 = *(this + 5);
              if (!v48)
              {
                operator new();
              }

              v78 = 0;
              v49 = *(a2 + 1);
              if (v49 >= *(a2 + 2) || *v49 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                {
                  return 0;
                }
              }

              else
              {
                v78 = *v49;
                *(a2 + 1) = v49 + 1;
              }

              v50 = *(a2 + 14);
              v51 = *(a2 + 15);
              *(a2 + 14) = v50 + 1;
              if (v50 >= v51)
              {
                return 0;
              }

              v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
              if (!proto::gnss::Emergency::EllipsoidPoint::MergePartialFromCodedStream(v48, a2, v53) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v52);
              v54 = *(a2 + 14);
              v18 = __OFSUB__(v54, 1);
              v55 = v54 - 1;
              if (v55 < 0 == v18)
              {
                *(a2 + 14) = v55;
              }

              v56 = *(a2 + 1);
              if (v56 < *(a2 + 2) && *v56 == 50)
              {
                *(a2 + 1) = v56 + 1;
LABEL_104:
                *(this + 18) |= 0x20u;
                v57 = *(this + 6);
                if (!v57)
                {
                  operator new();
                }

                v78 = 0;
                v58 = *(a2 + 1);
                if (v58 >= *(a2 + 2) || *v58 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                  {
                    return 0;
                  }
                }

                else
                {
                  v78 = *v58;
                  *(a2 + 1) = v58 + 1;
                }

                v59 = *(a2 + 14);
                v60 = *(a2 + 15);
                *(a2 + 14) = v59 + 1;
                if (v59 >= v60)
                {
                  return 0;
                }

                v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v78);
                if (!proto::gnss::Emergency::PointAltitude::MergePartialFromCodedStream(v57, a2, v62) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v61);
                v63 = *(a2 + 14);
                v18 = __OFSUB__(v63, 1);
                v64 = v63 - 1;
                if (v64 < 0 == v18)
                {
                  *(a2 + 14) = v64;
                }

                v65 = *(a2 + 1);
                if (v65 < *(a2 + 2) && *v65 == 58)
                {
                  *(a2 + 1) = v65 + 1;
                  goto LABEL_118;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_36:
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

uint64_t proto::gnss::Emergency::ShapeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 72);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  if ((*(v5 + 72) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v14, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::ShapeInfo::ByteSize(proto::gnss::Emergency::ShapeInfo *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_59;
  }

  if ((*(this + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 8);
  }

  v6 = proto::gnss::Emergency::PointUncertainCircle::ByteSize(v5, a2);
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
  v3 = *(this + 18);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 16);
    }

    v10 = proto::gnss::Emergency::PointUncertainEllipse::ByteSize(v9, a2);
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
    v3 = *(this + 18);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 24);
    }

    v14 = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::ByteSize(v13, a2);
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
    v3 = *(this + 18);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 32);
  }

  v18 = proto::gnss::Emergency::EllipsoidArc::ByteSize(v17, a2);
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
  v3 = *(this + 18);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(this + 5);
  if (!v21)
  {
    v21 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 40);
  }

  v22 = proto::gnss::Emergency::EllipsoidPoint::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(this + 18);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(this + 6);
  if (!v25)
  {
    v25 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 48);
  }

  v26 = proto::gnss::Emergency::PointAltitude::ByteSize(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(this + 18);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(this + 7);
  if (!v29)
  {
    v29 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 56);
  }

  v30 = proto::gnss::Emergency::Polygon::ByteSize(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  if ((*(this + 18) & 0x80) != 0)
  {
LABEL_55:
    v33 = *(this + 16);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
    }

    else
    {
      v34 = 2;
    }

    v4 = (v34 + v4);
  }

LABEL_59:
  *(this + 17) = v4;
  return v4;
}

void proto::gnss::Emergency::ShapeInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::ShapeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ShapeInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ShapeInfo::CopyFrom(proto::gnss::Emergency::ShapeInfo *this, const proto::gnss::Emergency::ShapeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ShapeInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::ShapeInfo::Swap(uint64_t this, proto::gnss::Emergency::ShapeInfo *a2)
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
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocEstimate::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::LocEstimate *proto::gnss::Emergency::LocEstimate::LocEstimate(proto::gnss::Emergency::LocEstimate *this, const proto::gnss::Emergency::LocEstimate *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100175860;
  *(this + 6) = 0;
  proto::gnss::Emergency::LocEstimate::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::LocEstimate::MergeFrom(proto::gnss::Emergency::LocEstimate *this, const proto::gnss::Emergency::LocEstimate *a2)
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
      if (v5 >= 9)
      {
        __assert_rtn("set_shape_type", "GnssEmergencyTypes.pb.h", 19156, "::proto::gnss::Emergency::ShapeType_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::LocEstimate::default_instance_ + 8);
      }

      proto::gnss::Emergency::ShapeInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_1000A20F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LocEstimate::~LocEstimate(proto::gnss::Emergency::LocEstimate *this)
{
  *this = off_100175860;
  if (proto::gnss::Emergency::LocEstimate::default_instance_ != this)
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
  proto::gnss::Emergency::LocEstimate::~LocEstimate(this);

  operator delete();
}

void *proto::gnss::Emergency::LocEstimate::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::LocEstimate::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocEstimate::default_instance(proto::gnss::Emergency::LocEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LocEstimate::default_instance_;
  if (!proto::gnss::Emergency::LocEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LocEstimate::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LocEstimate::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::ShapeInfo::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::LocEstimate::MergePartialFromCodedStream(proto::gnss::Emergency::LocEstimate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (v9 <= 8)
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
    if (!proto::gnss::Emergency::ShapeInfo::MergePartialFromCodedStream(v12, a2, v17) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::LocEstimate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::LocEstimate::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocEstimate::ByteSize(proto::gnss::Emergency::LocEstimate *this, unsigned int a2)
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
      v6 = *(proto::gnss::Emergency::LocEstimate::default_instance_ + 8);
    }

    v7 = proto::gnss::Emergency::ShapeInfo::ByteSize(v6, a2);
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

void proto::gnss::Emergency::LocEstimate::CheckTypeAndMergeFrom(proto::gnss::Emergency::LocEstimate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LocEstimate::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LocEstimate::CopyFrom(proto::gnss::Emergency::LocEstimate *this, const proto::gnss::Emergency::LocEstimate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LocEstimate::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::LocEstimate::Swap(uint64_t this, proto::gnss::Emergency::LocEstimate *a2)
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

uint64_t proto::gnss::Emergency::HorizontalVelocity::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::HorizontalVelocity *proto::gnss::Emergency::HorizontalVelocity::HorizontalVelocity(proto::gnss::Emergency::HorizontalVelocity *this, const proto::gnss::Emergency::HorizontalVelocity *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001758D8;
  proto::gnss::Emergency::HorizontalVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::HorizontalVelocity::MergeFrom(proto::gnss::Emergency::HorizontalVelocity *this, const proto::gnss::Emergency::HorizontalVelocity *a2)
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

void sub_1000A292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::HorizontalVelocity::~HorizontalVelocity(proto::gnss::Emergency::HorizontalVelocity *this)
{
  *this = off_1001758D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001758D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001758D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::HorizontalVelocity::default_instance(proto::gnss::Emergency::HorizontalVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizontalVelocity::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::HorizontalVelocity::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizontalVelocity::MergePartialFromCodedStream(proto::gnss::Emergency::HorizontalVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gnss::Emergency::HorizontalVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::HorizontalVelocity::ByteSize(proto::gnss::Emergency::HorizontalVelocity *this, unsigned int a2)
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

void proto::gnss::Emergency::HorizontalVelocity::CheckTypeAndMergeFrom(proto::gnss::Emergency::HorizontalVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::HorizontalVelocity::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::HorizontalVelocity::CopyFrom(proto::gnss::Emergency::HorizontalVelocity *this, const proto::gnss::Emergency::HorizontalVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::HorizontalVelocity::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::HorizontalVelocity *proto::gnss::Emergency::HorizontalVelocity::Swap(proto::gnss::Emergency::HorizontalVelocity *this, proto::gnss::Emergency::HorizontalVelocity *a2)
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

void *proto::gnss::Emergency::HorizWithVertVelocity::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::HorizWithVertVelocity *proto::gnss::Emergency::HorizWithVertVelocity::HorizWithVertVelocity(proto::gnss::Emergency::HorizWithVertVelocity *this, const proto::gnss::Emergency::HorizWithVertVelocity *a2)
{
  *this = off_100175950;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::HorizWithVertVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::HorizWithVertVelocity::MergeFrom(proto::gnss::Emergency::HorizWithVertVelocity *this, const proto::gnss::Emergency::HorizWithVertVelocity *a2)
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

void sub_1000A2FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::HorizWithVertVelocity::~HorizWithVertVelocity(proto::gnss::Emergency::HorizWithVertVelocity *this)
{
  *this = off_100175950;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175950;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100175950;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::HorizWithVertVelocity::default_instance(proto::gnss::Emergency::HorizWithVertVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertVelocity::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::HorizWithVertVelocity::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizWithVertVelocity::MergePartialFromCodedStream(proto::gnss::Emergency::HorizWithVertVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

int *proto::gnss::Emergency::HorizWithVertVelocity::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::HorizWithVertVelocity::ByteSize(proto::gnss::Emergency::HorizWithVertVelocity *this, unsigned int a2)
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

void proto::gnss::Emergency::HorizWithVertVelocity::CheckTypeAndMergeFrom(proto::gnss::Emergency::HorizWithVertVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::HorizWithVertVelocity::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::HorizWithVertVelocity::CopyFrom(proto::gnss::Emergency::HorizWithVertVelocity *this, const proto::gnss::Emergency::HorizWithVertVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::HorizWithVertVelocity::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::HorizWithVertVelocity *proto::gnss::Emergency::HorizWithVertVelocity::Swap(proto::gnss::Emergency::HorizWithVertVelocity *this, proto::gnss::Emergency::HorizWithVertVelocity *a2)
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

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::HorizWithUncertaintyVelocity *proto::gnss::Emergency::HorizWithUncertaintyVelocity::HorizWithUncertaintyVelocity(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithUncertaintyVelocity *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001759C8;
  *(this + 6) = 0;
  proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergeFrom(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, const proto::gnss::Emergency::HorizWithUncertaintyVelocity *a2)
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

void sub_1000A3820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::HorizWithUncertaintyVelocity::~HorizWithUncertaintyVelocity(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this)
{
  *this = off_1001759C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001759C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001759C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::MergePartialFromCodedStream(proto::gnss::Emergency::HorizWithUncertaintyVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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