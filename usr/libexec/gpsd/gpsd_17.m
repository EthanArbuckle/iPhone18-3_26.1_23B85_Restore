void CLP::LogEntry::PrivateData::ConstellationId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::ConstellationId::CopyFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::Swap(uint64_t this, CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvId *CLP::LogEntry::PrivateData::SvId::SvId(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100177A98;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::SvId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::default_instance(CLP::LogEntry::PrivateData::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvId::Clear(uint64_t this)
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
        this = CLP::LogEntry::PrivateData::ConstellationId::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

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

    v23 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v23);
    if (!CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(v14, a2, v19) || *(a2 + 36) != 1)
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

void CLP::LogEntry::PrivateData::SvId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvId::CopyFrom(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SvId::Swap(uint64_t this, CLP::LogEntry::PrivateData::SvId *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL1SyncState *CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  *this = off_100177B10;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance(CLP::LogEntry::PrivateData::GpsL1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL1SyncState *this)
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

void CLP::LogEntry::PrivateData::GpsL1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL2CSyncState *CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  *this = off_100177B88;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

        goto LABEL_13;
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

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
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
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    if ((*(a2 + 5) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v5;
  }
}

void sub_1000CDDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::~GpsL2CSyncState(CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
{
  *this = off_100177B88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177B88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177B88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        *(this + 5) |= 1u;
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

          *(this + 9) = v16 != 0;
          *(this + 5) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 10) = v18 != 0;
            *(this + 5) |= 4u;
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
      v25 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 11) = v20 != 0;
      *(this + 5) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 12) = v22 != 0;
        *(this + 5) |= 0x10u;
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

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), v4, a4);
  v6 = *(v5 + 20);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), v4, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), v4, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
{
  LODWORD(v1) = 2 * (*(this + 5) & 1) + (*(this + 5) & 2) + ((*(this + 5) >> 1) & 2) + ((*(this + 5) >> 2) & 2) + ((*(this + 5) >> 3) & 2);
  if (*(this + 5))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(this + 4) = v1;
  return v1;
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
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
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v8;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL5SyncState *CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  *this = off_100177C00;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance(CLP::LogEntry::PrivateData::GpsL5SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL5SyncState *this)
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

void CLP::LogEntry::PrivateData::GpsL5SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassL1fSyncState *CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  *this = off_100177C78;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        *(this + 5) |= 1u;
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

          *(this + 9) = v16 != 0;
          *(this + 5) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 10) = v18 != 0;
            *(this + 5) |= 4u;
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
      v25 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 11) = v20 != 0;
      *(this + 5) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 12) = v22 != 0;
        *(this + 5) |= 0x10u;
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

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::CopyFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
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
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v8;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::BeidouB1SyncState *CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  *this = off_100177CF0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::ByteSize(CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
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

void CLP::LogEntry::PrivateData::BeidouB1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::CopyFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::BeidouB2SyncState *CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  *this = off_100177D68;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::ByteSize(CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
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

void CLP::LogEntry::PrivateData::BeidouB2SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::CopyFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GalileoE1SyncState *CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  *this = off_100177DE0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::ByteSize(CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
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

void CLP::LogEntry::PrivateData::GalileoE1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::CopyFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GalileoE5SyncState *CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = off_100177E58;
  *(this + 1) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        *(this + 6) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(a2 + 1) = v11;
LABEL_49:
          v40 = 0;
          if (v11 >= v8 || (v21 = *v11, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v21 = v40;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v11 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 9) = v21 != 0;
          *(this + 6) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_57:
            v40 = 0;
            if (v17 >= v8 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v23 = v40;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 10) = v23 != 0;
            *(this + 6) |= 4u;
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
      v40 = 0;
      if (v19 >= v8 || (v25 = *v19, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
        if (!result)
        {
          return result;
        }

        v25 = v40;
        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v26 = v19 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 11) = v25 != 0;
      *(this + 6) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(a2 + 1) = v9;
LABEL_73:
        v40 = 0;
        if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v27 = v40;
          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v28 = v9 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 12) = v27 != 0;
        *(this + 6) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(a2 + 1) = v16;
LABEL_81:
          v40 = 0;
          if (v16 >= v8 || (v29 = *v16, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v29 = v40;
            v30 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v30 = v16 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 13) = v29 != 0;
          *(this + 6) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(a2 + 1) = v12;
LABEL_89:
            v40 = 0;
            if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v31 = v40;
              v32 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v32 = v12 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 14) = v31 != 0;
            *(this + 6) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(a2 + 1) = v18;
LABEL_97:
              v40 = 0;
              if (v18 >= v8 || (v33 = *v18, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                if (!result)
                {
                  return result;
                }

                v33 = v40;
                v34 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v34 = v18 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 15) = v33 != 0;
              *(this + 6) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(a2 + 1) = v20;
LABEL_105:
                v40 = 0;
                if (v20 >= v8 || (v35 = *v20, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v40;
                  v36 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v36 = v20 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 16) = v35 != 0;
                *(this + 6) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(a2 + 1) = v10;
LABEL_113:
                  v40 = 0;
                  if (v10 >= v8 || (v37 = *v10, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v40;
                    v38 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 17) = v37 != 0;
                  *(this + 6) |= 0x200u;
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

void CLP::LogEntry::PrivateData::GalileoE5SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::CopyFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
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
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
    v11 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v12;
    v13 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v13;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SbasL1SyncState *CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  *this = off_100177ED0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 16) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 4) |= 2u;
    *(this + 9) = v7;
    if ((*(a2 + 4) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 10);
    *(this + 4) |= 4u;
    *(this + 10) = v5;
  }
}

void sub_1000D0DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::~SbasL1SyncState(CLP::LogEntry::PrivateData::SbasL1SyncState *this)
{
  *this = off_100177ED0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177ED0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177ED0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance(CLP::LogEntry::PrivateData::SbasL1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
    *(this + 10) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SbasL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 8) = v10 != 0;
      *(this + 4) |= 1u;
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

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
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

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
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

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), v4, a4);
    if ((*(v5 + 16) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 10);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::ByteSize(CLP::LogEntry::PrivateData::SbasL1SyncState *this)
{
  LODWORD(v1) = 2 * (*(this + 4) & 1) + (*(this + 4) & 2) + ((*(this + 4) >> 1) & 2);
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

void CLP::LogEntry::PrivateData::SbasL1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::CopyFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
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
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::SyncState::SharedCtor(CLP::LogEntry::PrivateData::SyncState *this)
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

CLP::LogEntry::PrivateData::SyncState *CLP::LogEntry::PrivateData::SyncState::SyncState(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
{
  *this = off_100177F48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::default_instance(CLP::LogEntry::PrivateData::SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 88) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 16))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 12) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 20))
        {
          *(v5 + 12) = 0;
          *(v5 + 8) = 0;
        }

        *(v5 + 20) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v7 = *(this + 48);
      if (v7)
      {
        if (*(v7 + 16))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x80) != 0)
    {
      v8 = *(this + 56);
      if (v8)
      {
        if (*(v8 + 16))
        {
          *(v8 + 8) = 0;
        }

        *(v8 + 16) = 0;
        v1 = *(this + 96);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v9 = *(this + 64);
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v10)
        {
          *(v9 + 8) = 0;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 16) = 0;
        }

        *(v9 + 24) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x200) != 0)
    {
      v11 = *(this + 72);
      if (v11)
      {
        if (*(v11 + 16))
        {
          *(v11 + 8) = 0;
          *(v11 + 10) = 0;
        }

        *(v11 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x400) != 0)
    {
      v12 = *(this + 80);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
      }
    }
  }

  *(this + 96) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v103 = 0;
            v9 = *(a2 + 1);
            if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103);
              if (!result)
              {
                return result;
              }

              v10 = v103;
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v10 <= 0xC)
            {
              *(this + 24) |= 1u;
              *(this + 22) = v10;
            }

            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
LABEL_53:
              *(this + 24) |= 2u;
              v13 = *(this + 1);
              if (!v13)
              {
                operator new();
              }

              v103 = 0;
              v14 = *(a2 + 1);
              if (v14 >= *(a2 + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
                {
                  return 0;
                }
              }

              else
              {
                v103 = *v14;
                *(a2 + 1) = v14 + 1;
              }

              v15 = *(a2 + 14);
              v16 = *(a2 + 15);
              *(a2 + 14) = v15 + 1;
              if (v15 >= v16)
              {
                return 0;
              }

              v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
              if (!CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v13, a2, v18) || *(a2 + 36) != 1)
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
LABEL_67:
                *(this + 24) |= 4u;
                v23 = *(this + 2);
                if (!v23)
                {
                  operator new();
                }

                v103 = 0;
                v24 = *(a2 + 1);
                if (v24 >= *(a2 + 2) || *v24 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
                  {
                    return 0;
                  }
                }

                else
                {
                  v103 = *v24;
                  *(a2 + 1) = v24 + 1;
                }

                v25 = *(a2 + 14);
                v26 = *(a2 + 15);
                *(a2 + 14) = v25 + 1;
                if (v25 >= v26)
                {
                  return 0;
                }

                v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
                if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(v23, a2, v28) || *(a2 + 36) != 1)
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
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v8 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(this + 24) |= 8u;
            v32 = *(this + 3);
            if (!v32)
            {
              operator new();
            }

            v103 = 0;
            v33 = *(a2 + 1);
            if (v33 >= *(a2 + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
              {
                return 0;
              }
            }

            else
            {
              v103 = *v33;
              *(a2 + 1) = v33 + 1;
            }

            v34 = *(a2 + 14);
            v35 = *(a2 + 15);
            *(a2 + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
            if (!CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
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
LABEL_95:
              *(this + 24) |= 0x10u;
              v41 = *(this + 4);
              if (!v41)
              {
                operator new();
              }

              v103 = 0;
              v42 = *(a2 + 1);
              if (v42 >= *(a2 + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
                {
                  return 0;
                }
              }

              else
              {
                v103 = *v42;
                *(a2 + 1) = v42 + 1;
              }

              v43 = *(a2 + 14);
              v44 = *(a2 + 15);
              *(a2 + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
              if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
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

              v49 = *(a2 + 1);
              if (v49 < *(a2 + 2) && *v49 == 50)
              {
                *(a2 + 1) = v49 + 1;
LABEL_109:
                *(this + 24) |= 0x20u;
                v50 = *(this + 5);
                if (!v50)
                {
                  operator new();
                }

                v103 = 0;
                v51 = *(a2 + 1);
                if (v51 >= *(a2 + 2) || *v51 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
                  {
                    return 0;
                  }
                }

                else
                {
                  v103 = *v51;
                  *(a2 + 1) = v51 + 1;
                }

                v52 = *(a2 + 14);
                v53 = *(a2 + 15);
                *(a2 + 14) = v52 + 1;
                if (v52 >= v53)
                {
                  return 0;
                }

                v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
                if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(v50, a2, v55) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v54);
                v56 = *(a2 + 14);
                v20 = __OFSUB__(v56, 1);
                v57 = v56 - 1;
                if (v57 < 0 == v20)
                {
                  *(a2 + 14) = v57;
                }

                v58 = *(a2 + 1);
                if (v58 < *(a2 + 2) && *v58 == 58)
                {
                  *(a2 + 1) = v58 + 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if (v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(this + 24) |= 0x100u;
          v77 = *(this + 8);
          if (!v77)
          {
            operator new();
          }

          v103 = 0;
          v78 = *(a2 + 1);
          if (v78 >= *(a2 + 2) || *v78 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
            {
              return 0;
            }
          }

          else
          {
            v103 = *v78;
            *(a2 + 1) = v78 + 1;
          }

          v79 = *(a2 + 14);
          v80 = *(a2 + 15);
          *(a2 + 14) = v79 + 1;
          if (v79 >= v80)
          {
            return 0;
          }

          v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
          if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(v77, a2, v82) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v81);
          v83 = *(a2 + 14);
          v20 = __OFSUB__(v83, 1);
          v84 = v83 - 1;
          if (v84 < 0 == v20)
          {
            *(a2 + 14) = v84;
          }

          v85 = *(a2 + 1);
          if (v85 < *(a2 + 2) && *v85 == 82)
          {
            *(a2 + 1) = v85 + 1;
LABEL_165:
            *(this + 24) |= 0x200u;
            v86 = *(this + 9);
            if (!v86)
            {
              operator new();
            }

            v103 = 0;
            v87 = *(a2 + 1);
            if (v87 >= *(a2 + 2) || *v87 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
              {
                return 0;
              }
            }

            else
            {
              v103 = *v87;
              *(a2 + 1) = v87 + 1;
            }

            v88 = *(a2 + 14);
            v89 = *(a2 + 15);
            *(a2 + 14) = v88 + 1;
            if (v88 >= v89)
            {
              return 0;
            }

            v90 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
            if (!CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(v86, a2, v91) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v90);
            v92 = *(a2 + 14);
            v20 = __OFSUB__(v92, 1);
            v93 = v92 - 1;
            if (v93 < 0 == v20)
            {
              *(a2 + 14) = v93;
            }

            v94 = *(a2 + 1);
            if (v94 < *(a2 + 2) && *v94 == 90)
            {
              *(a2 + 1) = v94 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if (v8 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(this + 24) |= 0x400u;
          v95 = *(this + 10);
          if (!v95)
          {
            operator new();
          }

          v103 = 0;
          v96 = *(a2 + 1);
          if (v96 >= *(a2 + 2) || *v96 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
            {
              return 0;
            }
          }

          else
          {
            v103 = *v96;
            *(a2 + 1) = v96 + 1;
          }

          v97 = *(a2 + 14);
          v98 = *(a2 + 15);
          *(a2 + 14) = v97 + 1;
          if (v97 >= v98)
          {
            return 0;
          }

          v99 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
          if (!CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v95, a2, v100) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v99);
          v101 = *(a2 + 14);
          v20 = __OFSUB__(v101, 1);
          v102 = v101 - 1;
          if (v102 < 0 == v20)
          {
            *(a2 + 14) = v102;
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

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(this + 24) |= 0x40u;
      v59 = *(this + 6);
      if (!v59)
      {
        operator new();
      }

      v103 = 0;
      v60 = *(a2 + 1);
      if (v60 >= *(a2 + 2) || *v60 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
        {
          return 0;
        }
      }

      else
      {
        v103 = *v60;
        *(a2 + 1) = v60 + 1;
      }

      v61 = *(a2 + 14);
      v62 = *(a2 + 15);
      *(a2 + 14) = v61 + 1;
      if (v61 >= v62)
      {
        return 0;
      }

      v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
      if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(v59, a2, v64) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v63);
      v65 = *(a2 + 14);
      v20 = __OFSUB__(v65, 1);
      v66 = v65 - 1;
      if (v66 < 0 == v20)
      {
        *(a2 + 14) = v66;
      }

      v67 = *(a2 + 1);
      if (v67 < *(a2 + 2) && *v67 == 66)
      {
        *(a2 + 1) = v67 + 1;
LABEL_137:
        *(this + 24) |= 0x80u;
        v68 = *(this + 7);
        if (!v68)
        {
          operator new();
        }

        v103 = 0;
        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v103))
          {
            return 0;
          }
        }

        else
        {
          v103 = *v69;
          *(a2 + 1) = v69 + 1;
        }

        v70 = *(a2 + 14);
        v71 = *(a2 + 15);
        *(a2 + 14) = v70 + 1;
        if (v70 >= v71)
        {
          return 0;
        }

        v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v103);
        if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(v68, a2, v73) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v72);
        v74 = *(a2 + 14);
        v20 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v20)
        {
          *(a2 + 14) = v75;
        }

        v76 = *(a2 + 1);
        if (v76 < *(a2 + 2) && *v76 == 74)
        {
          *(a2 + 1) = v76 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_137;
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

void CLP::LogEntry::PrivateData::SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SyncState::CopyFrom(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
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
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v12;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvTime *CLP::LogEntry::PrivateData::SvTime::SvTime(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100177FC0;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::default_instance(CLP::LogEntry::PrivateData::SvTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v16;
      *(this + 8) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v16;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t CLP::LogEntry::PrivateData::SvTime::ByteSize(CLP::LogEntry::PrivateData::SvTime *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::SvTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SvTime::CopyFrom(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvTime::Swap(CLP::LogEntry::PrivateData::SvTime *this, CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FrequencyOffset *CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100178038;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::default_instance(CLP::LogEntry::PrivateData::FrequencyOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FrequencyOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v16;
      *(this + 8) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v16;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::ByteSize(CLP::LogEntry::PrivateData::FrequencyOffset *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::FrequencyOffset::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::FrequencyOffset::CopyFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::FrequencyOffset::Swap(CLP::LogEntry::PrivateData::FrequencyOffset *this, CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001780B0;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
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
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 25);
    *(this + 8) |= 8u;
    *(this + 25) = v5;
  }
}

void sub_1000D3120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::~FrequencyOffsetFromPhaseTracking(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
{
  *this = off_1001780B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001780B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001780B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_29:
        v19[0] = 0;
        if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v14 = v19[0];
          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 24) = v14 != 0;
        *(this + 8) |= 4u;
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_37:
          v19[0] = 0;
          if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
            if (!result)
            {
              return result;
            }

            v17 = v19[0];
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v18 = v10 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 25) = v17 != 0;
          *(this + 8) |= 8u;
          if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v19;
      *(this + 8) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_20:
        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v19;
        *(this + 8) |= 2u;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 < v9 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_29;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), v4, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
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
  v7 = *(v5 + 25);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CopyFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Swap(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
  }

  return result;
}

double CLP::LogEntry::PrivateData::PhaseTracking::SharedCtor(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

CLP::LogEntry::PrivateData::PhaseTracking *CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  *this = off_100178128;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::default_instance(CLP::LogEntry::PrivateData::PhaseTracking *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v13 >= v11 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 12) |= 1u;
        if (v15 < v11 && *v15 == 16)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_32:
          if (v12 >= v11 || (v17 = *v12, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
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
            v18 = v12 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 12) |= 2u;
          if (v18 < v11 && *v18 == 25)
          {
            *(a2 + 1) = v18 + 1;
LABEL_40:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v23;
            *(this + 12) |= 4u;
            v19 = *(a2 + 1);
            if (v19 < *(a2 + 2) && *v19 == 33)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_44;
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

        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v23;
      *(this + 12) |= 8u;
      v20 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_48:
        v23[0] = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v23);
          if (!result)
          {
            return result;
          }

          v21 = v23[0];
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 40) = v21 != 0;
        *(this + 12) |= 0x10u;
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
      goto LABEL_48;
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

double CLP::LogEntry::PrivateData::PhaseTracking::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::PhaseTracking::CopyFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::PhaseTracking::Swap(CLP::LogEntry::PrivateData::PhaseTracking *this, CLP::LogEntry::PrivateData::PhaseTracking *a2)
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
    LOBYTE(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SignalCorrelationPeak *CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  *this = off_1001781A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_;
  if (!CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 32);
  if (v1)
  {
    if (*(this + 32))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 32);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
      }
    }

    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v8 == 5)
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

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
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
        *(this + 8) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v31 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v31);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
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
        if (v27 < *(a2 + 2) && *v27 == 29)
        {
          *(a2 + 1) = v27 + 1;
LABEL_44:
          v29 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v29) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v29;
          *(this + 8) |= 4u;
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

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::CopyFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::SignalCorrelationPeak::Swap(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FullSvTime *CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  *this = off_100178218;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

LABEL_10:
        v7 = *(a2 + 6);
        if (v7 >= 6)
        {
          __assert_rtn("set_full_sv_time_source", "CLPGnssMeasApi.pb.h", 8876, "::CLP::LogEntry::PrivateData::FullSvTimeSource_IsValid(value)");
        }

        *(this + 8) |= 4u;
        *(this + 6) = v7;
        return;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }
}

void sub_1000D4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::FullSvTime::~FullSvTime(CLP::LogEntry::PrivateData::FullSvTime *this)
{
  *this = off_100178218;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178218;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178218;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::default_instance(CLP::LogEntry::PrivateData::FullSvTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FullSvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_24:
        v15[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
          if (!result)
          {
            return result;
          }

          v13 = v15[0];
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 <= 5)
        {
          *(this + 8) |= 4u;
          *(this + 6) = v13;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 8) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::ByteSize(CLP::LogEntry::PrivateData::FullSvTime *this, unsigned int a2)
{
  v3 = *(this + 32);
  if (*(this + 32))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(this + 6);
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

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 7) = v5;
  return v5;
}

void CLP::LogEntry::PrivateData::FullSvTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::FullSvTime::CopyFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::FullSvTime::Swap(CLP::LogEntry::PrivateData::FullSvTime *this, CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvMeasurementUsage *CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100178290;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v14;
      *(this + 6) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 21)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 6) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 29)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
    {
      goto LABEL_15;
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

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::ByteSize(CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::CopyFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::Swap(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::MeasurementExtension::SharedCtor(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  return result;
}

CLP::LogEntry::PrivateData::MeasurementExtension *CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  *this = off_100178308;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  return this;
}

void sub_1000D51A8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::default_instance(CLP::LogEntry::PrivateData::MeasurementExtension *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 116);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 8) != 0)
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
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    *(this + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(this + 80);
      if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    *(this + 76) = 0;
  }

  if (*(this + 96) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v1 + 88) + 8 * v8);
      this = (*(*v9 + 32))(v9);
      ++v8;
    }

    while (v8 < *(v1 + 96));
  }

  *(v1 + 96) = 0;
  *(v1 + 116) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementExtension *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 != 5)
        {
          goto LABEL_49;
        }

        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v87) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v87;
        *(this + 29) |= 1u;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 != 21)
        {
          continue;
        }

        *(a2 + 1) = v8 + 1;
        goto LABEL_31;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_49;
        }

LABEL_31:
        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v87) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v87;
        v13 = *(this + 29) | 2;
        *(this + 29) = v13;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 != 26)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_35:
        *(this + 29) = v13 | 4;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v87 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v87);
        if (!CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(v17, a2, v27) || *(a2 + 36) != 1)
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
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_62:
        *(this + 29) |= 8u;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v87 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v87);
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
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
        if (v40 >= *(a2 + 2) || *v40 != 42)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_76:
        *(this + 29) |= 0x10u;
        v41 = *(this + 4);
        if (!v41)
        {
          operator new();
        }

        v87 = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v42;
          *(a2 + 1) = v42 + 1;
        }

        v43 = *(a2 + 14);
        v44 = *(a2 + 15);
        *(a2 + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v87);
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
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
        if (v49 >= *(a2 + 2) || *v49 != 50)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_90:
        *(this + 29) |= 0x20u;
        v50 = *(this + 5);
        if (!v50)
        {
          operator new();
        }

        v87 = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v87);
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v50, a2, v55) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v54);
        v56 = *(a2 + 14);
        v29 = __OFSUB__(v56, 1);
        v57 = v56 - 1;
        if (v57 < 0 == v29)
        {
          *(a2 + 14) = v57;
        }

        v58 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v58 >= v14 || *v58 != 56)
        {
          continue;
        }

        v20 = v58 + 1;
        *(a2 + 1) = v20;
LABEL_104:
        if (v20 >= v14 || (v59 = *v20, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v59;
          v60 = v20 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 29) |= 0x40u;
        if (v60 >= v14 || *v60 != 64)
        {
          continue;
        }

        v15 = v60 + 1;
        *(a2 + 1) = v15;
LABEL_112:
        if (v15 >= v14 || (v62 = *v15, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v62;
          v63 = v15 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 29) |= 0x80u;
        if (v63 >= v14 || *v63 != 72)
        {
          continue;
        }

        v23 = v63 + 1;
        *(a2 + 1) = v23;
LABEL_120:
        v87 = 0;
        if (v23 >= v14 || (v64 = *v23, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v64 = v87;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v64 <= 6)
        {
          *(this + 29) |= 0x100u;
          *(this + 14) = v64;
        }

        v65 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v65 >= v11 || *v65 != 80)
        {
          continue;
        }

        v12 = v65 + 1;
        *(a2 + 1) = v12;
LABEL_130:
        v87 = 0;
        if (v12 >= v11 || (v66 = *v12, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v66 = v87;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v66 <= 6)
        {
          *(this + 29) |= 0x200u;
          *(this + 15) = v66;
        }

        v67 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v67 >= v21 || *v67 != 88)
        {
          continue;
        }

        v22 = v67 + 1;
        *(a2 + 1) = v22;
LABEL_140:
        v87 = 0;
        if (v22 >= v21 || (v68 = *v22, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v68 = v87;
          v69 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v69 = v22 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 16) = v68;
        *(this + 29) |= 0x400u;
        if (v69 >= v21 || *v69 != 101)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_148:
        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v87) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = v87;
        *(this + 29) |= 0x800u;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 109)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_152:
        v87 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v87))
        {
          *(this + 18) = v87;
          v19 = *(this + 29) | 0x1000;
          *(this + 29) = v19;
          v71 = *(a2 + 1);
          if (v71 < *(a2 + 2) && *v71 == 114)
          {
            *(a2 + 1) = v71 + 1;
LABEL_156:
            *(this + 29) = v19 | 0x2000;
            if (*(this + 10) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v72 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v72 < v10 && *v72 == 120)
            {
              v9 = v72 + 1;
              *(a2 + 1) = v9;
LABEL_162:
              if (v9 >= v10 || (v73 = *v9, v73 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                if (!result)
                {
                  return result;
                }

                v74 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 19) = v73;
                v74 = (v9 + 1);
                *(a2 + 1) = v74;
              }

              *(this + 29) |= 0x4000u;
              if (v10 - v74 >= 2 && *v74 == 130 && v74[1] == 1)
              {
                do
                {
                  *(a2 + 1) = v74 + 2;
LABEL_171:
                  v75 = *(this + 25);
                  v76 = *(this + 24);
                  if (v76 >= v75)
                  {
                    if (v75 == *(this + 26))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), v75 + 1);
                      v75 = *(this + 25);
                    }

                    *(this + 25) = v75 + 1;
                    operator new();
                  }

                  v77 = *(this + 11);
                  *(this + 24) = v76 + 1;
                  v78 = *(v77 + 8 * v76);
                  v87 = 0;
                  v79 = *(a2 + 1);
                  if (v79 >= *(a2 + 2) || *v79 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v87 = *v79;
                    *(a2 + 1) = v79 + 1;
                  }

                  v80 = *(a2 + 14);
                  v81 = *(a2 + 15);
                  *(a2 + 14) = v80 + 1;
                  if (v80 >= v81)
                  {
                    return 0;
                  }

                  v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v87);
                  if (!CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(v78, a2, v83) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v82);
                  v84 = *(a2 + 14);
                  v29 = __OFSUB__(v84, 1);
                  v85 = v84 - 1;
                  if (v85 < 0 == v29)
                  {
                    *(a2 + 14) = v85;
                  }

                  v74 = *(a2 + 1);
                  v86 = *(a2 + 2);
                }

                while (v86 - v74 > 1 && *v74 == 130 && v74[1] == 1);
                if (v74 == v86 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_49;
        }

        v13 = *(this + 29);
        goto LABEL_35;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_49;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_49;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_90;
        }

        goto LABEL_49;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_104;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_112;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_120;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_130;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_140;
      case 0xCu:
        if (v7 == 5)
        {
          goto LABEL_148;
        }

        goto LABEL_49;
      case 0xDu:
        if (v7 == 5)
        {
          goto LABEL_152;
        }

        goto LABEL_49;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_49;
        }

        v19 = *(this + 29);
        goto LABEL_156;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_162;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_49;
      default:
LABEL_49:
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

void CLP::LogEntry::PrivateData::MeasurementExtension::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::CopyFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::Swap(uint64_t this, CLP::LogEntry::PrivateData::MeasurementExtension *a2)
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
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    v10 = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v12;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 88), (a2 + 88));
    v13 = *(v3 + 116);
    *(v3 + 116) = *(a2 + 29);
    *(a2 + 29) = v13;
    v14 = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v14;
  }

  return this;
}

double CLP::LogEntry::PrivateData::Measurement::SharedCtor(CLP::LogEntry::PrivateData::Measurement *this)
{
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

CLP::LogEntry::PrivateData::Measurement *CLP::LogEntry::PrivateData::Measurement::Measurement(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  *this = off_100178380;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::default_instance(CLP::LogEntry::PrivateData::Measurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Measurement::default_instance_;
  if (!CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Measurement::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SyncState::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(v1 + 64);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
        v2 = *(v1 + 112);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementExtension::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x800) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 104) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
      }
    }
  }

  *(v1 + 112) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(this + 28) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v102 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v23) || *(a2 + 36) != 1)
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
        if (v27 >= *(a2 + 2) || *v27 != 18)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(this + 28) |= 2u;
        v28 = *(this + 2);
        if (!v28)
        {
          operator new();
        }

        v102 = 0;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v29;
          *(a2 + 1) = v29 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
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
        v10 = *(a2 + 2);
        if (v36 >= v10 || *v36 != 24)
        {
          continue;
        }

        v14 = v36 + 1;
        *(a2 + 1) = v14;
LABEL_64:
        if (v14 >= v10 || (v37 = *v14, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v37;
          v38 = v14 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 28) |= 4u;
        if (v38 >= v10 || *v38 != 32)
        {
          continue;
        }

        v15 = v38 + 1;
        *(a2 + 1) = v15;
LABEL_72:
        if (v15 >= v10 || (v40 = *v15, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v40;
          v41 = v15 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 28) |= 8u;
        if (v41 >= v10 || *v41 != 40)
        {
          continue;
        }

        v11 = v41 + 1;
        *(a2 + 1) = v11;
LABEL_80:
        if (v11 >= v10 || (v42 = *v11, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v42;
          v43 = v11 + 1;
          *(a2 + 1) = v43;
        }

        v16 = *(this + 28) | 0x10;
        *(this + 28) = v16;
        if (v43 >= v10 || *v43 != 50)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_88:
        *(this + 28) = v16 | 0x20;
        v44 = *(this + 6);
        if (!v44)
        {
          operator new();
        }

        v102 = 0;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v45;
          *(a2 + 1) = v45 + 1;
        }

        v46 = *(a2 + 14);
        v47 = *(a2 + 15);
        *(a2 + 14) = v46 + 1;
        if (v46 >= v47)
        {
          return 0;
        }

        v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v44, a2, v49) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v48);
        v50 = *(a2 + 14);
        v25 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v25)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 58)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_102:
        *(this + 28) |= 0x40u;
        v53 = *(this + 7);
        if (!v53)
        {
          operator new();
        }

        v102 = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v53, a2, v58) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v57);
        v59 = *(a2 + 14);
        v25 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v25)
        {
          *(a2 + 14) = v60;
        }

        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 != 66)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_116:
        *(this + 28) |= 0x80u;
        v62 = *(this + 8);
        if (!v62)
        {
          operator new();
        }

        v102 = 0;
        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v63;
          *(a2 + 1) = v63 + 1;
        }

        v64 = *(a2 + 14);
        v65 = *(a2 + 15);
        *(a2 + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(v62, a2, v67) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v66);
        v68 = *(a2 + 14);
        v25 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v25)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 74)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_130:
        *(this + 28) |= 0x100u;
        v71 = *(this + 9);
        if (!v71)
        {
          operator new();
        }

        v102 = 0;
        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v72;
          *(a2 + 1) = v72 + 1;
        }

        v73 = *(a2 + 14);
        v74 = *(a2 + 15);
        *(a2 + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(v71, a2, v76) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v75);
        v77 = *(a2 + 14);
        v25 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v25)
        {
          *(a2 + 14) = v78;
        }

        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 != 85)
        {
          continue;
        }

        *(a2 + 1) = v79 + 1;
LABEL_144:
        v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v102;
        *(this + 28) |= 0x200u;
        v80 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v80 >= v18 || *v80 != 88)
        {
          continue;
        }

        v19 = v80 + 1;
        *(a2 + 1) = v19;
LABEL_148:
        v102 = 0;
        if (v19 >= v18 || (v81 = *v19, (v81 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102);
          if (!result)
          {
            return result;
          }

          v81 = v102;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v81 <= 4)
        {
          *(this + 28) |= 0x400u;
          *(this + 21) = v81;
        }

        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 != 98)
        {
          continue;
        }

        *(a2 + 1) = v82 + 1;
LABEL_158:
        *(this + 28) |= 0x800u;
        v83 = *(this + 11);
        if (!v83)
        {
          operator new();
        }

        v102 = 0;
        v84 = *(a2 + 1);
        if (v84 >= *(a2 + 2) || *v84 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v84;
          *(a2 + 1) = v84 + 1;
        }

        v85 = *(a2 + 14);
        v86 = *(a2 + 15);
        *(a2 + 14) = v85 + 1;
        if (v85 >= v86)
        {
          return 0;
        }

        v87 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v83, a2, v88) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v87);
        v89 = *(a2 + 14);
        v25 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v25)
        {
          *(a2 + 14) = v90;
        }

        v91 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v91 >= v12 || *v91 != 104)
        {
          continue;
        }

        v13 = v91 + 1;
        *(a2 + 1) = v13;
LABEL_172:
        v102 = 0;
        if (v13 >= v12 || (v92 = *v13, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102);
          if (!result)
          {
            return result;
          }

          v92 = v102;
          v93 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v93 = v13 + 1;
          *(a2 + 1) = v93;
        }

        *(this + 104) = v92 != 0;
        v17 = *(this + 28) | 0x1000;
        *(this + 28) = v17;
        if (v93 >= v12 || *v93 != 114)
        {
          continue;
        }

        *(a2 + 1) = v93 + 1;
LABEL_180:
        *(this + 28) = v17 | 0x2000;
        v94 = *(this + 12);
        if (!v94)
        {
          operator new();
        }

        v102 = 0;
        v95 = *(a2 + 1);
        if (v95 >= *(a2 + 2) || *v95 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v95;
          *(a2 + 1) = v95 + 1;
        }

        v96 = *(a2 + 14);
        v97 = *(a2 + 15);
        *(a2 + 14) = v96 + 1;
        if (v96 >= v97)
        {
          return 0;
        }

        v98 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v102);
        if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(v94, a2, v99) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v98);
        v100 = *(a2 + 14);
        v25 = __OFSUB__(v100, 1);
        v101 = v100 - 1;
        if (v101 < 0 == v25)
        {
          *(a2 + 14) = v101;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(this + 28);
        goto LABEL_88;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_148;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_172;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(this + 28);
        goto LABEL_180;
      default:
LABEL_38:
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

void CLP::LogEntry::PrivateData::Measurement::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::Measurement::CopyFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  }
}

float CLP::LogEntry::PrivateData::Measurement::Swap(CLP::LogEntry::PrivateData::Measurement *this, CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v5;
    *(a2 + 2) = v3;
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    v8 = *(this + 6);
    v9 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v9;
    *(a2 + 5) = v7;
    *(a2 + 6) = v8;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    result = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = result;
    LODWORD(v12) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v12;
    v14 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v14;
    LOBYTE(v14) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::ReceiverClockModel *CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_1001783F8;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance(CLP::LogEntry::PrivateData::ReceiverClockModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 2 || v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_32:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 5) = v18;
      *(this + 8) |= 8u;
      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v14 < v9 && *v14 == 40)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_40:
        v18 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
          if (!result)
          {
            return result;
          }

          v15 = v18;
          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 24) = v15 != 0;
        *(this + 8) |= 0x10u;
        if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

float CLP::LogEntry::PrivateData::ReceiverClockModel::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::Swap(CLP::LogEntry::PrivateData::ReceiverClockModel *this, CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
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
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::SharedCtor(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverClockCorrections *CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  *this = off_100178470;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v14;
          *(this + 13) |= 8u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 41)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v14;
          *(this + 13) |= 0x10u;
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

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v14;
      *(this + 13) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v14;
        *(this + 13) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v14;
          *(this + 13) |= 4u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 33)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
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

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::Swap(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
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
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SharedCtor(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  *this = off_1001784E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v17;
          *(this + 10) |= 8u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 45)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v17[0];
          *(this + 10) |= 0x10u;
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

      *v17 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v17);
        if (!result)
        {
          return result;
        }

        v11 = *v17;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 1) = v11;
      *(this + 10) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        v17[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v17[0];
        *(this + 10) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
LABEL_36:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17[0];
          *(this + 10) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_32;
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

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CopyFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Swap(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
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
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::Clock::SharedCtor(CLP::LogEntry::PrivateData::Clock *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Clock *CLP::LogEntry::PrivateData::Clock::Clock(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  *this = off_100178560;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::default_instance(CLP::LogEntry::PrivateData::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Clock::default_instance_;
  if (!CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Clock::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 52) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 32) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 40) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Clock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

            v9 = *(this + 11) | 1;
            *(this + 11) = v9;
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

            v9 = *(this + 11);
LABEL_28:
            *(this + 11) = v9 | 2;
            v15 = *(this + 2);
            if (!v15)
            {
              operator new();
            }

            v42 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v42);
            if (!CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(v15, a2, v20) || *(a2 + 36) != 1)
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
            if (v24 < *(a2 + 2) && *v24 == 26)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_42;
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

LABEL_42:
        *(this + 11) |= 4u;
        v25 = *(this + 3);
        if (!v25)
        {
          operator new();
        }

        v43 = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v43);
        if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
        v31 = *(a2 + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        if (v33 < *(a2 + 2) && *v33 == 34)
        {
          *(a2 + 1) = v33 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 11) |= 8u;
      v34 = *(this + 4);
      if (!v34)
      {
        operator new();
      }

      v44 = 0;
      v35 = *(a2 + 1);
      if (v35 >= *(a2 + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v35;
        *(a2 + 1) = v35 + 1;
      }

      v36 = *(a2 + 14);
      v37 = *(a2 + 15);
      *(a2 + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v44);
      if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(v34, a2, v39) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v38);
      v40 = *(a2 + 14);
      v22 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v22)
      {
        *(a2 + 14) = v41;
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