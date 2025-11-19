void sub_1000313FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

void sub_100031508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(this + 6) |= 1u;
    *(this + 8) = v8;
    v4 = *(a2 + 6);
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

  v9 = *(a2 + 9);
  *(this + 6) |= 2u;
  *(this + 9) = v9;
  v4 = *(a2 + 6);
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
  v10 = *(a2 + 10);
  *(this + 6) |= 4u;
  *(this + 10) = v10;
  v4 = *(a2 + 6);
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
  v11 = *(a2 + 11);
  *(this + 6) |= 8u;
  *(this + 11) = v11;
  v4 = *(a2 + 6);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 13);
    *(this + 6) |= 0x20u;
    *(this + 13) = v13;
    v4 = *(a2 + 6);
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
  v12 = *(a2 + 12);
  *(this + 6) |= 0x10u;
  *(this + 12) = v12;
  v4 = *(a2 + 6);
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
  v14 = *(a2 + 14);
  *(this + 6) |= 0x40u;
  *(this + 14) = v14;
  v4 = *(a2 + 6);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 15);
    *(this + 6) |= 0x80u;
    *(this + 15) = v5;
    v4 = *(a2 + 6);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 0x100u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 17);
      *(this + 6) |= 0x200u;
      *(this + 17) = v7;
    }
  }
}

void sub_1000316D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(result) = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = LODWORD(result);
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    LODWORD(result) = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = LODWORD(result);
    v5 = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    LODWORD(result) = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = LODWORD(result);
  }

  return result;
}

void sub_100031804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::~ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = off_1001784E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001784E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001784E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::Measurement::~Measurement(CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = off_100178380;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178380;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178380;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::Measurement::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Measurement::default_instance_ != this)
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

    v4 = v1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[7];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[9];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    this = v1[12];
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::SyncState::~SyncState(CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = off_100177F48;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177F48;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177F48;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::SyncState::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SyncState::default_instance_ != this)
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

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    this = v1[10];
    if (this)
    {
      v11 = *(*this + 8);

      return v11();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::~GpsL1SyncState(CLP::LogEntry::PrivateData::GpsL1SyncState *this)
{
  *this = off_100177B10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177B10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177B10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::SvTime::~SvTime(CLP::LogEntry::PrivateData::SvTime *this)
{
  *this = off_100177FC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177FC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177FC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::FrequencyOffset::~FrequencyOffset(CLP::LogEntry::PrivateData::FrequencyOffset *this)
{
  *this = off_100178038;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178038;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178038;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::~GpsL5SyncState(CLP::LogEntry::PrivateData::GpsL5SyncState *this)
{
  *this = off_100177C00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177C00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177C00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::PhaseTracking::~PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = off_100178128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::SvMeasurementUsage::~SvMeasurementUsage(CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
{
  *this = off_100178290;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178290;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178290;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[10];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ != this)
  {
    v4 = this[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[4];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = v1[5];
    if (this)
    {
      v7 = *(*this + 8);

      return v7();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::~GlonassL1fSyncState(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
{
  *this = off_100177C78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177C78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177C78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::~BeidouB2SyncState(CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
{
  *this = off_100177D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::~BeidouB1SyncState(CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
{
  *this = off_100177CF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177CF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177CF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::~GalileoE1SyncState(CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
{
  *this = off_100177DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177DE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::~GalileoE5SyncState(CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  *this = off_100177E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1000322C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<gnss::Measurement>::clear[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    do
    {
      v3 = *(v2 - 16);
      *(v2 - 16) = 0;
      if (v3)
      {
        v4 = v3[16];
        if (v4)
        {
          v3[17] = v4;
          operator delete(v4);
        }

        v5 = v3[12];
        if (v5)
        {
          v3[13] = v5;
          operator delete(v5);
        }

        operator delete();
      }

      v2 -= 176;
    }

    while (v2 != v1);
  }

  result[1] = v1;
  return result;
}

void CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(this);

  operator delete();
}

{
  *this = off_100177A20;
  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::SvInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[16];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::SvBandCorrections::~SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = off_1001786C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001786C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001786C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::Wgs84Ecef::~Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = off_100178650;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178650;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178650;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::LogEntry::ByteSize(proto::gpsd::LogEntry *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
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
    v3 = *(this + 13);
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
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      v11 = *(proto::gpsd::LogEntry::default_instance_ + 24);
    }

    v12 = proto::gpsd::Request::ByteSize(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(this + 13);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(this + 4);
  if (!v15)
  {
    v15 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  v16 = proto::gpsd::Response::ByteSize(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_32:
    v19 = *(this + 5);
    if (!v19)
    {
      v19 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    v20 = proto::gpsd::Indication::ByteSize(v19, a2);
    v22 = v20;
    if (v20 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, v21);
    }

    else
    {
      v23 = 1;
    }

    v4 = (v4 + v22 + v23 + 1);
  }

LABEL_38:
  *(this + 12) = v4;
  return v4;
}

uint64_t proto::gpsd::Indication::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 216);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Fix::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 48) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 23) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = proto::gnss::TimeTransferDataExtend::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = proto::gpsd::RecoveryStatistics::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v5 = *(v1 + 72);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v6 = *(v1 + 80);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 28) = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = proto::gpsd::AskBasebandReset::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(v1 + 120);
      if (v9)
      {
        v10 = *(v9 + 124);
        if (v10)
        {
          *(v9 + 56) = 0;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 89) = 0u;
          *(v9 + 64) = 0u;
          *(v9 + 80) = 0u;
        }

        if ((v10 & 0xFF0000) != 0)
        {
          *(v9 + 105) = 0;
          *(v9 + 112) = 0;
          *(v9 + 108) = 0;
        }

        *(v9 + 124) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(v1 + 128);
      if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = proto::gnss::Emergency::PositionReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = proto::gnss::Emergency::AssistanceNeededReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      v12 = *(v1 + 160);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReportWithEstimate::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = proto::gnss::Emergency::SessionStatus::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = proto::gnss::Emergency::Init::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        if (*(v13 + 20))
        {
          *(v13 + 8) = 0;
          *(v13 + 12) = 0;
        }

        *(v13 + 20) = 0;
      }
    }
  }

  *(v1 + 216) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(CLP::LogEntry::PrivateData::PrivateDataCapture *this, unint64_t a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    v5 = proto::gpsd::LogEntry::ByteSize(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v5 = *(this + 8);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EC, v5, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gpsd::LogEntry::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 52);
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
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_15:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return this;
}

void CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(this);

  operator delete();
}

{
  *this = off_100174330;
  if (CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void proto::gpsd::LogEntry::~LogEntry(proto::gpsd::LogEntry *this)
{
  *this = off_10017AF48;
  proto::gpsd::LogEntry::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017AF48;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AF48;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *proto::gpsd::LogEntry::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (proto::gpsd::LogEntry::default_instance_ != this)
  {
    v4 = this[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

void GpsdInterfaceTelemeter::appendIndication(uint64_t a1, int a2, uint64_t a3)
{
  std::mutex::lock((a1 + 120));
  v7 = a2;
  v8 = &v7;
  v6 = std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 80), &v7);
  ++*(v6 + 6);
  v6[4] += a3;
  *(a1 + 200) = 1;
  std::mutex::unlock((a1 + 120));
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v3, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v3, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, unsigned int a2)
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
      if ((*(this + 20) & 2) == 0)
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

LABEL_16:
  *(this + 4) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, v4, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 2);
      if (!v3)
      {
        v3 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      v4 = *(v3 + 36);
      if (*(v3 + 36))
      {
        v5 = (v4 << 31 >> 31) & 9;
        if ((v4 & 2) != 0)
        {
          v5 += 9;
        }

        if ((v4 & 4) != 0)
        {
          v4 = v5 + 9;
        }

        else
        {
          v4 = v5;
        }
      }

      *(v3 + 32) = v4;
      v2 = (v4 + v2 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 6) = v2;
  return v2;
}

uint64_t CLP::LogEntry::PrivateData::SvId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (v3)
  {
    if (*(this + 40))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 10);
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
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

  *(this + 9) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::ByteSize(CLP::LogEntry::PrivateData::Measurement *this, unint64_t a2)
{
  v3 = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::SvId::ByteSize(v5, a2);
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
  v3 = *(this + 28);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::SyncState::ByteSize(v9, a2);
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
    v3 = *(this + 28);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 28);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
  v3 = *(this + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5), a2) + 1;
  v3 = *(this + 28);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v13 = *(this + 6);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  v14 = *(v13 + 32);
  v15 = ((v14 << 31) >> 31) & 9;
  if ((v14 & 2) != 0)
  {
    v15 += 9;
  }

  v16 = v15 + ((v14 >> 1) & 2);
  if (*(v13 + 32))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v13 + 28) = v17;
  v4 = (v4 + v17 + 2);
  v3 = *(this + 28);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v18 = *(this + 7);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  v19 = *(v18 + 32);
  v20 = ((v19 << 31) >> 31) & 9;
  if ((v19 & 2) != 0)
  {
    v20 += 9;
  }

  v21 = v20 + ((v19 >> 1) & 2);
  if (*(v18 + 32))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *(v18 + 28) = v22;
  v4 = (v4 + v22 + 2);
  v3 = *(this + 28);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v23 = *(this + 8);
    if (!v23)
    {
      v23 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    v24 = CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(v23, a2);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
    v3 = *(this + 28);
  }

LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v27 = *(this + 9);
      if (!v27)
      {
        v27 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
      }

      v28 = CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(v27, a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      }

      else
      {
        v30 = 1;
      }

      LODWORD(v4) = v4 + v29 + v30 + 1;
      v3 = *(this + 28);
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v4) = v4 + 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v31 = *(this + 21);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 11;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 1;
        v3 = *(this + 28);
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v4) = v32 + v4;
    }

    if ((v3 & 0x800) != 0)
    {
      v33 = *(this + 11);
      if (!v33)
      {
        v33 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
      }

      v34 = *(v33 + 32);
      v35 = ((v34 << 31) >> 31) & 9;
      if ((v34 & 2) != 0)
      {
        v35 += 9;
      }

      v36 = v35 + ((v34 >> 1) & 2);
      if (*(v33 + 32))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 28) = v37;
      LODWORD(v4) = v4 + v37 + 2;
      v3 = *(this + 28);
    }

    v4 = ((v3 >> 11) & 2) + v4;
    if ((v3 & 0x2000) != 0)
    {
      v38 = *(this + 12);
      if (!v38)
      {
        v38 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
      }

      v4 = v4 + CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(v38) + 2;
    }
  }

  *(this + 27) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::ByteSize(CLP::LogEntry::PrivateData::SyncState *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_51;
  }

  if (v3)
  {
    v5 = *(this + 22);
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
      v3 = *(this + 24);
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

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  v7 = 2 * (*(v6 + 16) & 1) + (*(v6 + 16) & 2) + ((*(v6 + 16) >> 1) & 2) + ((*(v6 + 16) >> 2) & 2);
  if (!*(v6 + 16))
  {
    v7 = 0;
  }

  *(v6 + 12) = v7;
  v4 = (v4 + v7 + 2);
  v3 = *(this + 24);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
    }

    v4 = v4 + CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(v8) + 2;
    v3 = *(this + 24);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  v10 = 2 * (*(v9 + 16) & 1) + (*(v9 + 16) & 2) + ((*(v9 + 16) >> 1) & 2) + ((*(v9 + 16) >> 2) & 2);
  if (!*(v9 + 16))
  {
    v10 = 0;
  }

  *(v9 + 12) = v10;
  v4 = (v4 + v10 + 2);
  v3 = *(this + 24);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_33:
  v11 = *(this + 4);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  v4 = v4 + CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(v11) + 2;
  v3 = *(this + 24);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_36:
  v12 = *(this + 5);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  v13 = 2 * (*(v12 + 16) & 1) + (*(v12 + 16) & 2) + ((*(v12 + 16) >> 1) & 2) + ((*(v12 + 16) >> 2) & 2);
  if (!*(v12 + 16))
  {
    v13 = 0;
  }

  *(v12 + 12) = v13;
  v4 = (v4 + v13 + 2);
  v3 = *(this + 24);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_41:
  v14 = *(this + 6);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  v15 = 2 * (*(v14 + 16) & 1) + (*(v14 + 16) & 2) + ((*(v14 + 16) >> 1) & 2) + ((*(v14 + 16) >> 2) & 2);
  if (!*(v14 + 16))
  {
    v15 = 0;
  }

  *(v14 + 12) = v15;
  v4 = (v4 + v15 + 2);
  v3 = *(this + 24);
  if ((v3 & 0x80) != 0)
  {
LABEL_46:
    v16 = *(this + 7);
    if (!v16)
    {
      v16 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    v17 = 2 * (*(v16 + 16) & 1) + (*(v16 + 16) & 2) + ((*(v16 + 16) >> 1) & 2) + ((*(v16 + 16) >> 2) & 2);
    if (!*(v16 + 16))
    {
      v17 = 0;
    }

    *(v16 + 12) = v17;
    v4 = (v4 + v17 + 2);
    v3 = *(this + 24);
  }

LABEL_51:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(this + 8);
    if (!v18)
    {
      v18 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    v4 = v4 + CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(v18) + 2;
    v3 = *(this + 24);
    if ((v3 & 0x200) == 0)
    {
LABEL_54:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  v19 = *(this + 9);
  if (!v19)
  {
    v19 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  v20 = 2 * (*(v19 + 16) & 1) + (*(v19 + 16) & 2) + ((*(v19 + 16) >> 1) & 2);
  if (!*(v19 + 16))
  {
    v20 = 0;
  }

  *(v19 + 12) = v20;
  v4 = (v4 + v20 + 2);
  if ((*(this + 24) & 0x400) != 0)
  {
LABEL_64:
    v21 = *(this + 10);
    if (!v21)
    {
      v21 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    v22 = 2 * (*(v21 + 16) & 1) + (*(v21 + 16) & 2) + ((*(v21 + 16) >> 1) & 2) + ((*(v21 + 16) >> 2) & 2);
    if (!*(v21 + 16))
    {
      v22 = 0;
    }

    *(v21 + 12) = v22;
    v4 = (v4 + v22 + 2);
  }

LABEL_69:
  *(this + 23) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(CLP::LogEntry::PrivateData::PhaseTracking *this, unint64_t a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    result = 0;
    goto LABEL_13;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
  v3 = *(this + 12);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 12);
  }

LABEL_8:
  v6 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v6 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 += 9;
  }

  result = v6 + ((v3 >> 3) & 2);
LABEL_13:
  *(this + 11) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_1001461A0), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 & 0xFF00) == 0;
  LODWORD(v5) = ((v1 >> 8) & 2) + ((v1 >> 7) & 2) + v3;
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v5;
  }

  *(this + 5) = v5;
  return v5;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, v4, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 88), a2, a4);
    v6 = *(v5 + 96);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_32:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_38:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  if ((*(v5 + 96) & 0x400) != 0)
  {
LABEL_41:
    v16 = *(v5 + 80);
    if (!v16)
    {
      v16 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::SvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  v12 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
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
    v8 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v9, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), v4, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), v4, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), v4, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), v4, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), v4, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), v4, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 16), v4, a4);
    if ((*(v5 + 24) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 15), v4, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v7, v4, a4);
}

uint64_t proto::gpsd::SetAssistanceDem::MergePartialFromCodedStream(proto::gpsd::SetAssistanceDem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_28;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 9) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v15;
        *(this + 9) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v15;
          *(this + 9) |= 4u;
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

    if (v8 == 1)
    {
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

uint64_t GpsdGnssDeviceManager::setAssistanceDem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(a2 + 36) & 7) != 0)
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    (*(*v3 + 152))(v3, v4, v8, v5, v6);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }
}

void sub_100034B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GpsdPerformanceSummary::analyzeDem(GpsdPerformanceSummary *this, const proto::gpsd::SetAssistanceDem *a2)
{
  v4 = !*(this + 58) || !gnss::Fix::isValid((this + 264)) || *(this + 68) >= 1000000000.0 || *(this + 43) >= 1000.0;
  if (!v4 && (*(a2 + 9) & 7) == 7)
  {
    v5 = *(a2 + 3);
    if (v5 < 1000.0)
    {
      v6 = *(a2 + 1);
      v7 = *(this + 58);
      if ((*&v6 - *&v7) <= 0)
      {
        v8 = *&v6 - *&v7 > -2000000000;
      }

      else
      {
        v8 = *&v6 - *&v7 < 2000000000;
      }

      if (v8)
      {
        v9 = *(a2 + 2) - *(this + 41);
        v10 = sqrt(v9 * v9 / (*(this + 43) * *(this + 43) + v5 * v5));
        *(this + 59) = v9;
        *(this + 60) = v10;
        v11 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          v13 = 134349312;
          v14 = v9;
          v15 = 2050;
          v16 = v10;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "PerfDem,delta,%{public}.1f,deltaNorm,%{public}.2f", &v13, 0x16u);
        }
      }

      else
      {
        v12 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134349312;
          v14 = v7;
          v15 = 2050;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PerfWarning,fix and DEM timestamp mismatch,%{public}llu,%{public}llu", &v13, 0x16u);
        }
      }
    }
  }
}

BOOL gnss::Position::isValid(gnss::Position *this)
{
  if (fabs(*this) > 90.0)
  {
    return 0;
  }

  v1 = 0;
  v3 = *(this + 1);
  if (v3 > -180.0 && v3 <= 180.0)
  {
    if (*(this + 2) >= -500.0)
    {
      v4 = *(this + 3);
      if (v4 >= -120.0 && v4 <= 100.0 && *(this + 4) > 0.0 && *(this + 5) > 0.0 && *(this + 6) > 0.0)
      {
        v6 = *(this + 7);
        if (v6 >= 0.0)
        {
          return v6 < 180.0;
        }
      }
    }

    return 0;
  }

  return v1;
}

BOOL gnss::Velocity::isValid(gnss::Velocity *this)
{
  if (*this < 0.0 || *(this + 1) <= 0.0 || (*(this + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(this + 3) <= 0.0)
  {
    return 0;
  }

  v1 = *(this + 4);
  if (v1 == -1.0)
  {
    return 1;
  }

  v2 = 0;
  if (v1 >= 0.0 && v1 < 360.0)
  {
    return *(this + 5) > 0.0;
  }

  return v2;
}

void proto::gpsd::SetAssistanceDem::~SetAssistanceDem(proto::gpsd::SetAssistanceDem *this)
{
  *this = off_10017A390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void GnssHal::CommSpi::pulseTimeMarkStrobe(GnssHal::CommSpi *this@<X0>, uint64_t a2@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v5 = (*(**(this + 14) + 112))(*(this + 14), v20, &v20[1]);
  if (v5)
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v15 = mach_error_string(v5);
      *buf = 67240450;
      *&buf[4] = v5;
      *&buf[8] = 2082;
      *&buf[10] = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,pulseTimeMarkStrobe,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v14 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&buf[12] = 1026;
      *&buf[14] = 273;
      *&buf[18] = 2082;
      *&buf[20] = "pulseTimeMarkStrobe";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v19, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v18, "pulseTimeMarkStrobe");
    std::string::basic_string[abi:ne200100]<0>(&v17, "#spi,fail,gpti,pulseTimeMarkStrobe,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v19, &v18, &v17);
    std::string::~string(&v17);
    std::string::~string(&v18);
    std::string::~string(&v19);
    __assert_rtn("pulseTimeMarkStrobe", "GnssHalCommSpi.cpp", 273, "false && #spi,fail, gpti, pulseTimeMarkStrobe ,errCode,0x%{public}X,%{public}s");
  }

  v16 = 0;
  if (gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(&v16, v4))
  {
    v6 = *(this + 4);
    if (v6)
    {
      *buf = vsubq_s64(*v20, vdupq_lane_s64(v16, 0));
      (*(*v6 + 48))(v6, buf);
    }

    v7 = gpsd::util::convertMachTimeInTicksToNs(v20[0]);
    *a2 = v7;
    v8 = gpsd::util::convertMachTimeInTicksToNs(v20[1]);
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
    v9 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (v10)
    {
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
      v12 = gpsd::util::convertMachTimeInTicksToNs(v16);
      *buf = 134349824;
      *&buf[4] = v7;
      *&buf[12] = 2050;
      *&buf[14] = v8;
      *&buf[22] = 2050;
      *&buf[24] = MachContinuousTimeNs;
      v22 = 2050;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#spi,#tt,pulseTimeMarkStrobe,low,ns,%{public}llu,upper,ns,%{public}llu,current,ns,%{public}llu,machContMinusMachAbs,ns,%{public}llu", buf, 0x2Au);
    }
  }

  else
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#spi,#tt,pulseTimeMarkStrobe,offset,failed", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_100035270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(gpsd::util *this, unint64_t *a2)
{
  if (mach_get_times())
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#gpsdUtil,mach_get_times failed", buf, 2u);
      return 0;
    }
  }

  else
  {
    *this = 0;
    return 1;
  }

  return result;
}

void sub_1000354E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t gpsd::util::convertMachTimeInTicksToNs(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

void GnssDeviceCommon::sendTimeTransferDataIndication(GnssDeviceCommon *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(this + 48);
    v12 = *(this + 136);
    *buf = 67240448;
    *&buf[4] = v11;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#tt,sendTimeTransferDataIndication,fromGpioSet,%{public}d,fromGnssVendorSet,%{public}d", buf, 0xEu);
  }

  if (*(this + 136) == 1 && *(this + 48) == 1)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 11) / 0xF4240uLL;
      v6 = *(this + 4);
      v7 = *(this + 5);
      v8 = *(this + 8);
      v9 = *(this + 18);
      *buf = 134350336;
      *&buf[4] = v5;
      *&buf[12] = 1026;
      v15 = 0;
      v16 = 2050;
      v17 = v6;
      v18 = 2050;
      v19 = v7;
      v20 = 2050;
      v21 = v8;
      v22 = 2050;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rxClockConv,pulse,rxRtcMs,%{public}llu,rxRtcUnc,%{public}u,machAbsTicks,%{public}llu,%{public}llu,gpsNs,%{public}llu,gpsUncNs,%{public}.3f", buf, 0x3Au);
    }

    *buf = 0;
    if (gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(buf, v4))
    {
      GnssDeviceCommon::updateReceiverClockConversion(this, *buf);
    }

    else
    {
      v10 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#rxClockConv,could not get cont_abs delta", v13, 2u);
      }
    }

    if ((*(this + 136) & 1) == 0 || (*(this + 48) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    (*(**(this + 27) + 48))(*(this + 27), this + 56, this + 32);
    if (*(this + 48) == 1)
    {
      *(this + 48) = 0;
    }

    if (*(this + 136) == 1)
    {
      *(this + 136) = 0;
    }
  }
}

void std::__function::__func<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0,std::allocator<GnssDeviceCommon::timeTransferPulseMarkHalHelper(GnssHal::TimeTransferPulseMark)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  v4 = *(v1 - 8);
  v5 = *(v1 + 8);
  if (v5)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349312;
      v10 = v2;
      v11 = 2050;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#tt,badGpioData,%{public}llu,%{public}llu", &v9, 0x16u);
    }

    if (*(v4 + 48) == 1)
    {
      *(v4 + 48) = 0;
    }
  }

  else
  {
    v8 = *(v4 + 48);
    *(v4 + 32) = *v1;
    if ((v8 & 1) == 0)
    {
      *(v4 + 48) = 1;
    }
  }

  GnssDeviceCommon::sendTimeTransferDataIndication(v4);
}

void std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0,std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result,gnss::TimeTransferData)>::operator()(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  LODWORD(v14) = *(a3 + 1);
  *(&v14 + 3) = *(a3 + 1);
  v5 = *(a3 + 1);
  v6 = *(a3 + 4);
  v17 = *(a3 + 20);
  v18 = *(a3 + 7);
  v7 = *(a3 + 4);
  v8 = *(a3 + 8);
  v16 = *(a3 + 7);
  v15 = *(a3 + 40);
  v9 = *(a3 + 9);
  v10 = *(a1 + 8);
  v11 = GpsdLogObjectGeneral;
  v12 = 16 * (*a2 != 1);
  v13 = os_log_type_enabled(GpsdLogObjectGeneral, v12);
  if (v13)
  {
    *buf = 67241984;
    v20 = v3 == 1;
    v21 = 1026;
    v22 = v4;
    v23 = 2050;
    v24 = v5;
    v25 = 2050;
    v26 = v6;
    v27 = 2050;
    v28 = v7;
    v29 = 2050;
    v30 = v8;
    v31 = 2050;
    v32 = v9;
    v33 = 1026;
    v34 = v3;
    _os_log_impl(&_mh_execute_header, v11, v12, "#tt,success,%{public}d,isGpsWeekVld,%{public}d,towNs,%{public}llu,unc,%{public}.3f,rxNs,%{public}llu,bbSystemNs,%{public}llu,unc,%{public}llu,code,%{public}d", buf, 0x46u);
  }

  GpsdRuntime::instance(v13);
  operator new();
}

void sub_100035B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1},std::allocator<GnssDeviceCommon::setTimeTransferPulseHelper(std::function<void ()(gnss::Result)>)::$_0::operator() const(gnss::Result,gnss::TimeTransferData)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 136);
  *(v2 + 56) = *(a1 + 16);
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  *(v2 + 72) = *(a1 + 32);
  *(v2 + 120) = v5;
  *(v2 + 104) = v4;
  *(v2 + 88) = v6;
  if ((v3 & 1) == 0)
  {
    *(v2 + 136) = 1;
  }

  GnssDeviceCommon::sendTimeTransferDataIndication(v2);
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(gpsd::util *this, unint64_t *a2)
{
  v5 = 0;
  CurrentMachContinuousMinusMachAbsoluteTicks = gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(&v5, a2);
  if (CurrentMachContinuousMinusMachAbsoluteTicks)
  {
    *this = gpsd::util::convertMachTimeInTicksToNs(v5);
  }

  return CurrentMachContinuousMinusMachAbsoluteTicks;
}

void GnssDeviceCommon::updateReceiverClockConversion(GnssDeviceCommon *this, uint64_t a2)
{
  if (*(this + 48) != 1 || (*(this + 136) & 1) == 0)
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "side data not set", buf, 2u);
      v14 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GnssDeviceCommon.cpp";
      v20 = 1026;
      *v21 = 260;
      *&v21[4] = 2082;
      *&v21[6] = "updateReceiverClockConversion";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v16, "updateReceiverClockConversion");
    std::string::basic_string[abi:ne200100]<0>(&v15, "side data not set");
    gpsd::util::triggerDiagnosticReport(&v17, &v16, &v15);
    std::string::~string(&v15);
    std::string::~string(&v16);
    std::string::~string(&v17);
    __assert_rtn("updateReceiverClockConversion", "GnssDeviceCommon.cpp", 260, "false && side data not set");
  }

  v4 = gpsd::util::convertMachTimeInTicksToNs(*(this + 4));
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = (v4 + a2) * 0.000000001;
  v6 = (gpsd::util::convertMachTimeInTicksToNs(*(this + 5)) + a2) * 0.000000001;
  v7 = v6 - v5;
  if (v6 - v5 <= 0.0 || v7 > 1.0)
  {
    v9 = GpsdLogObjectWarning;
    if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(this + 48))
    {
      v10 = *(this + 4);
      v11 = *(this + 5);
      *buf = 134349568;
      v19 = *&v7;
      v20 = 2050;
      *v21 = v10;
      *&v21[8] = 2050;
      *&v21[10] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#rxClockConv,out of range pulse unc,%{public}.9f,%{public}lu,%{public}lu", buf, 0x20u);
      return;
    }

LABEL_21:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(this + 136) & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 11);
  v13 = (v5 + v6) * 0.5;

  ReceiverClockConversion::feedTimemark((this + 144), v12, v13, v7);
}

void sub_100035F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void ReceiverClockConversion::feedTimemark(ReceiverClockConversion *this, uint64_t a2, double a3, double a4)
{
  if (!ReceiverClockConversion::isRxClockValid(this, a2))
  {
    v15 = GpsdLogObjectWarning;
    if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v21 = 134349056;
    *&v21[4] = a2;
    v16 = "#rxClockConv,feedTimemark,invalid rxClockNs,%{public}llu";
    v17 = v15;
    v18 = 12;
    goto LABEL_19;
  }

  v8 = a3 + a2 * -0.000000001;
  if (*(this + 32) == 1)
  {
    v9 = *(this + 2) + vabdd_f64(a3, *(this + 1)) * 0.00002 + a4 + 0.001;
    if (vabdd_f64(v8, *this) / v9 > 50.0)
    {
      v10 = v8 - *this;
      v11 = GpsdPlatformInfo::instance(0);
      HaveRaven = GpsdPlatformInfo::expectedToHaveRaven(v11);
      v13 = GpsdLogObjectGeneral;
      if (HaveRaven)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
        {
          *v21 = 134349824;
          *&v21[4] = v10;
          v22 = 2050;
          v23 = v9;
          v24 = 2050;
          v25 = *&v8;
          v26 = 2050;
          v27 = a4 + 0.001;
          _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "#rxClockConv,disagreement,%{public}.3f,%{public}.3f,newRxClockToMct,%{public}.4f,newUncSec,%{public}.4f", v21, 0x2Au);
        }

        std::string::basic_string[abi:ne200100]<0>(v21, "Monitoring");
        std::string::basic_string[abi:ne200100]<0>(&v25, "RxClockConv");
        std::string::basic_string[abi:ne200100]<0>(&__p, "TimemarkInconsistency");
        v31 = 0;
        gpsd::util::triggerDiagnosticReport(v21, v14);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v25);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(*v21);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 134349824;
        *&v21[4] = v10;
        v22 = 2050;
        v23 = v9;
        v24 = 2050;
        v25 = *&v8;
        v26 = 2050;
        v27 = a4 + 0.001;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#rxClockConv,disagreement,%{public}.3f,%{public}.3f,newRxClockToMct,%{public}.4f,newUncSec,%{public}.4f", v21, 0x2Au);
      }
    }
  }

  *this = v8;
  *(this + 1) = a3;
  v19 = a4 + 0.001;
  *(this + 2) = v19;
  *(this + 32) = 1;
  v20 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 134349312;
    *&v21[4] = v8;
    v22 = 2050;
    v23 = v19;
    v16 = "#rxClockConv,method,timemark,rxClockToMct,%{public}.4f,uncSec,%{public}.4f";
    v17 = v20;
    v18 = 22;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, v21, v18);
  }
}

void GpsdIndicationHandler::send()
{
  v0 = off_100179D00;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  LODWORD(v1) = 9;
  v14 = 0x8100000000;
  operator new();
}

{
  v0 = off_100179D00;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  LODWORD(v1) = 4;
  v14 = 0x10100000000;
  operator new();
}

{
  v0 = off_100179D00;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  LODWORD(v1) = 5;
  v14 = 0x20100000000;
  operator new();
}

void sub_1000364A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  proto::gpsd::Indication::~Indication(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::toProtobuf(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 1u;
  v9 = *(a5 + 8);
  if (!v9)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1, v9);
  v10 = *(a5 + 52);
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 52) = v10 | 0x16;
  *(a5 + 40) = a4;
}

__n128 ProtobufUtil::toProtobuf(__n128 *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a2 + 16) = a1->n128_u8[0];
  *(a2 + 48) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = *(v5 + 72);
  *(v5 + 8) = a1->n128_u64[1];
  *(v5 + 16) = a1[1].n128_u32[0];
  v7 = a1[1].n128_u8[4];
  *(v5 + 72) = v6 | 7;
  *(v5 + 20) = v7;
  *(v5 + 64) = a1[1].n128_u32[2];
  v8 = a1[2].n128_u64[0];
  *(v5 + 72) = v6 | 0x1F;
  *(v5 + 24) = v8;
  v9 = ProtobufUtil::toProtobuf(a1[3].n128_u32[2]);
  v10 = *(a2 + 48);
  *(a2 + 48) = v10 | 4;
  *(a2 + 20) = v9;
  *(a2 + 40) = a1[3].n128_u32[3];
  *(a2 + 48) = v10 | 0x3C;
  result = a1[4];
  *(a2 + 24) = result;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 0x11)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_100145E64[a1];
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 > 0x21)
  {
    return 0;
  }

  else
  {
    return dword_100145EA8[a1];
  }
}

{
  if (a1 < 0x17)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 > 0xFFFFFFFA)
  {
    return -a1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 != 0 && a1 < 0xFFFFFFF2)
  {
    return 0;
  }

  else
  {
    return dword_100145F30[a1 + 14];
  }
}

{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_100145F6C[a1];
  }
}

{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

void GpsdPerformanceSummary::analyzeTimeTransferData(GpsdPerformanceSummary *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if ((*(this + 144) & 1) == 0 && *(this + 110) == 1)
  {
    v3 = *(this + 15);
    if (v3)
    {
      v5 = *(a2 + 1);
      v6 = v5;
      if (!v5)
      {
        v6 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
      }

      v7 = *(v6 + 8);
      if (!v7)
      {
        v7 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
      }

      if (*(v7 + 16) <= 10000.0)
      {
        v8 = *(a2 + 4) + *(a2 + 5);
        v9 = *(this + 14);
        if (!v5)
        {
          v5 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
        }

        v10 = v3 - v9;
        v11 = *(v5 + 8);
        if (!v11)
        {
          v11 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
        }

        v12 = (v8 - v9) * 0.000000001;
        *(this + 17) = ((*(v11 + 8) - v8) - v10) * 0.000001;
        *(this + 144) = 1;
        v13 = *(this + 101);
        if (v13 <= 0.0)
        {
          v14 = -1.0;
        }

        else
        {
          v14 = -(v13 - v8 * 0.000000001);
        }

        v15 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(this + 144) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v16 = *(a2 + 1);
          if (!v16)
          {
            v16 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
          }

          v17 = *(this + 17);
          v18 = *(this + 32);
          v19 = *(v16 + 8);
          if (!v19)
          {
            v19 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
          }

          v20 = *(v19 + 16) * 0.000001;
          *buf = 134350080;
          *&buf[4] = v17;
          *&buf[12] = 2050;
          *&buf[14] = v12;
          v44 = 2050;
          v45 = v18;
          v46 = 2050;
          v47 = v20;
          v48 = 2050;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PerfTimeAssist,measuredErrorMs,%{public}.3f,assistAgeSec,%{public}.3f,assistUncMs,%{public}.3f,gpsUncMs,%{public}.3f,timeBetweenGnssSessions,%{public}f", buf, 0x34u);
        }

        v36 = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = ___ZN22GpsdPerformanceSummary23analyzeTimeTransferDataERKN5proto4gnss22TimeTransferDataExtendE_block_invoke;
        v39 = &__block_descriptor_56_e19___NSDictionary_8__0l;
        v40 = this;
        v41 = v12;
        v42 = v14;
        AnalyticsSendEventLazy();
        if ((atomic_load_explicit(&qword_100180FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100180FA0))
        {
          v34 = GpsdPreferences::instance(0);
          _MergedGlobals_3 = GpsdPreferences::genericTestCase(v34) == 116;
          __cxa_guard_release(&qword_100180FA0);
        }

        if (_MergedGlobals_3 == 1)
        {
          VendorLogger::isoTimestampString(buf);
          if (!qword_100180FA8)
          {
            operator new();
          }

          if (v44 >= 0)
          {
            v21 = buf;
          }

          else
          {
            v21 = *buf;
          }

          if (v44 >= 0)
          {
            v22 = HIBYTE(v44);
          }

          else
          {
            v22 = *&buf[8];
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(qword_100180FA8, v21, v22);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ",assistMeasuredErrorMs,", 23);
          v25 = *v24;
          *(v24 + *(*v24 - 24) + 16) = 3;
          *(v24 + *(v25 - 24) + 8) = *(v24 + *(v25 - 24) + 8) & 0xFFFFFEFB | 4;
          if ((*(this + 144) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v26 = *(this + 17);
          v27 = std::ostream::operator<<();
          v28 = *v27;
          *(v27 + *(*v27 - 24) + 16) = 1;
          *(v27 + *(v28 - 24) + 8) = *(v27 + *(v28 - 24) + 8) & 0xFFFFFEFB | 4;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ",assistAgeSec,", 14);
          v29 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",assistUncMs,", 13);
          v30 = *(this + 32);
          v31 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ",timeBetweenGnssSessionsSec,", 28);
          v32 = std::ostream::operator<<();
          std::ios_base::getloc((v32 + *(*v32 - 24)));
          v33 = std::locale::use_facet(__p, &std::ctype<char>::id);
          (v33->__vftable[2].~facet_0)(v33, 10);
          std::locale::~locale(__p);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::flush();
          if (SHIBYTE(v44) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }
  }
}

void proto::gnss::TimeTransferDataExtend::MergeFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
      }

      proto::gnss::TimeTransferData::MergeFrom(v6, v7);
      v4 = *(a2 + 13);
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

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = v8;
    v4 = *(a2 + 13);
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
    v9 = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 13);
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
    v10 = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = v10;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_100036E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferData::MergeFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(this + 12) |= 1u;
    *(this + 16) = v6;
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

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 12) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  proto::gnss::Time::MergeFrom(v7, v8);
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 10);
    *(this + 12) |= 8u;
    *(this + 10) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 5);
  if (v9 >= 7)
  {
    __assert_rtn("set_quality", "GnssTypes.pb.h", 2624, "::proto::gnss::TimeQuality_IsValid(value)");
  }

  *(this + 12) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 3);
  *(this + 12) |= 0x10u;
  *(this + 3) = v11;
  if ((*(a2 + 12) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 4);
    *(this + 12) |= 0x20u;
    *(this + 4) = v5;
  }
}

void sub_100037018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(this);

  operator delete();
}

{
  *this = off_1001797A8;
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void proto::gnss::TimeTransferData::~TimeTransferData(proto::gnss::TimeTransferData *this)
{
  proto::gnss::TimeTransferData::~TimeTransferData(this);

  operator delete();
}

{
  *this = off_100179730;
  if (proto::gnss::TimeTransferData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::TimeTransferDataExtend::ByteSize(proto::gnss::TimeTransferDataExtend *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 13);
    goto LABEL_13;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
  }

  v6 = proto::gnss::TimeTransferData::ByteSize(v5, a2);
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
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  v3 = *(this + 13);
  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v3 & 0x10) != 0)
  {
LABEL_16:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5), a2) + 1;
  }

LABEL_17:
  *(this + 12) = v4;
  return v4;
}

uint64_t proto::gnss::TimeTransferData::ByteSize(proto::gnss::TimeTransferData *this, unint64_t a2)
{
  v3 = *(this + 12);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
    }

    v6 = proto::gnss::Time::ByteSize(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v4 + v8 + 1);
    v3 = *(this + 12);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v11 = *(this + 10);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(this + 12);
      }

      else
      {
        v12 = 2;
      }

      v4 = (v12 + v4);
      if ((v3 & 0x10) == 0)
      {
LABEL_6:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(this + 5);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  if ((*(this + 12) & 0x20) != 0)
  {
LABEL_26:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
  }

LABEL_27:
  *(this + 11) = v4;
  return v4;
}

uint64_t proto::gnss::TimeTransferDataExtend::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t proto::gnss::TimeTransferData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
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

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t sub_1000375A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000375E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t GPSDaemon._cm.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id specialized GPSDaemon.init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE100000000000000;
    v7 = 95;
  }

  corelog.getter(v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "GpsdDaemon,init,%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  (*(v1 + 8))(v4, v0);
  v22 = 0;
  GpsdDaemonProxy::GpsdDaemonProxy(&v22);
  if (GpsdDaemonProxy::useLegacyLibXpc(&v21))
  {

    return 0;
  }

  else
  {
    result = GpsdDaemonProxy::deviceQueue(&v20);
    if (result)
    {
      v15 = result;

      v16 = type metadata accessor for GpsdClientManagerSingleton();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      return GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(partial apply for implicit closure #4 in implicit closure #3 in GPSDaemon.init(), 0, partial apply for implicit closure #6 in implicit closure #5 in GPSDaemon.init(), 0, v15);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized static gpsd.main()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  corelog.getter(&v22 - v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting in RELEASE", v13, 2u);
  }

  v14 = *(v1 + 8);
  v14(v10, v0);
  specialized GPSDaemon.init()();
  if (GpsdDaemonProxy::isEnabled(&v23))
  {
    corelog.getter(v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Enabled", v21, 2u);
    }

    v14(v8, v0);
    dispatch_main();
  }

  corelog.getter(v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Disabled,exiting", v17, 2u);
  }

  return (v14)(v5, v0);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GPSDaemon(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GPSDaemon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GpsdDaemonProxy(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for GpsdDaemonProxy(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void type metadata accessor for GpsdDaemonProxy()
{
  if (!lazy cache variable for type metadata for GpsdDaemonProxy)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for GpsdDaemonProxy);
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t one-time initialization function for xpc()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GPSXPCLogger.xpc);
  __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  return Logger.init(subsystem:category:)();
}

uint64_t static GPSXPCLogger.xpc.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static GPSXPCLogger.xpc);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for xpclog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, xpclog);
  v1 = __swift_project_value_buffer(v0, xpclog);
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GPSXPCLogger.xpc.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t xpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, xpclog);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for vxpclog()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __swift_allocate_value_buffer(v0, vxpclog);
  v1 = __swift_project_value_buffer(v0, vxpclog);
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t vxpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for vxpclog != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = __swift_project_value_buffer(v2, vxpclog);
  return outlined init with copy of Logger?(v3, a1, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
}

void partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:)()
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, xpclog);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "proxyErrorHandler: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t ALServiceDelegate._dataService.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of GPSXPCDataService(a1, v1 + v3);
  return swift_endAccess();
}

char *ALServiceDelegate.init(queue:dataService:)(void *a1, uint64_t *a2)
{
  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue] = a1;
  outlined init with copy of GPSXPCDataService(a2, &v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService]);
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = a1;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithMachServiceName:v7];

  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener] = v8;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ALServiceDelegate();
  v9 = objc_msgSendSuper2(&v21, "init");
  v10 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener;
  v11 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener];
  v12 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue];
  v13 = v9;
  [v11 _setQueue:v12];
  [*&v9[v10] setDelegate:v13];
  [*&v9[v10] activate];
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, xpclog);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C7070612E6D6F63, 0xEE00647370672E65, &v20);
    _os_log_impl(&_mh_execute_header, v15, v16, "serviceName %{public}s started", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

Swift::Bool __swiftcall ALServiceDelegate.checkEntitlement(_:)(NSXPCConnection a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [(objc_class *)a1.super.isa valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  outlined init with copy of Logger?(v17, &v15, &_sypSgMd, &_sypSgMR);
  if (!*(&v16 + 1))
  {
    outlined destroy of Any?(&v15, &_sypSgMd, &_sypSgMR);
LABEL_12:
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, xpclog);
    v5 = a1.super.isa;
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = [(objc_class *)v5 processIdentifier];

      _os_log_impl(&_mh_execute_header, v6, v11, "Entitlement check failed for pid:%{public}d, connection rejected", v12, 8u);

      v9 = 0;
      goto LABEL_18;
    }

    v9 = 0;
LABEL_17:
    v6 = v5;
    goto LABEL_18;
  }

  if (!swift_dynamicCast() || (v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    v9 = 1;
    goto LABEL_17;
  }

  v8 = swift_slowAlloc();
  *v8 = 67240192;
  *(v8 + 4) = [(objc_class *)v5 processIdentifier];

  _os_log_impl(&_mh_execute_header, v6, v7, "Entitlement check passed for pid: %{public}d", v8, 8u);

  v9 = 1;
LABEL_18:

  outlined destroy of Any?(v17, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t ALServiceDelegate.onData(_:)(uint64_t a1, uint64_t a2)
{
  (*((swift_isaMask & *v2) + 0x68))(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

Swift::Void __swiftcall ALServiceDelegate.onInterrupt()()
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, xpclog);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "service,onInterrupt", v2, 2u);
  }
}

void ALServiceDelegate.interruptionHandler(_:)(void *a1, const char *a2)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 0xCu);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  ALServiceDelegate.disconnectHandler(_:)(a1);
}

void ALServiceDelegate.disconnectHandler(_:)(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = one-time initialization token for xpclog;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "service,disconnectHandler,%{public}@", v10, 0xCu);
      outlined destroy of Any?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*((swift_isaMask & *v2) + 0x68))(v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v14 + 16))(v7, v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, xpclog);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = 0;
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "service,disconnectHandler,%{public}@", v17, 0xCu);
      outlined destroy of Any?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }
}

id ALServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined init with take of GPSXPCDataService(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67240450;
    *(v8 + 4) = [v5 processIdentifier];

    *(v8 + 8) = 2114;
    *(v8 + 10) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "New XPC Connection from process:%{public}d, details:(%{public}@)", v8, 0x12u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {

    v6 = v5;
  }

  v11 = (*((swift_isaMask & *v2) + 0x90))(v5);
  if (v11)
  {
    [v5 setExportedObject:v2];
    v12 = objc_opt_self();
    v13 = [v12 interfaceWithProtocol:&OBJC_PROTOCOL____TtP6GPSXPC14GPSXPCProtocol_];
    [v5 setExportedInterface:v13];

    v14 = [v12 interfaceWithProtocol:&OBJC_PROTOCOL____TtP6GPSXPC14GPSXPCProtocol_];
    [v5 setRemoteObjectInterface:v14];

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v15;
    v36 = partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v37 = v16;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_14;
    v17 = _Block_copy(&v32);
    v18 = v2;

    [v5 setInterruptionHandler:v17];
    _Block_release(v17);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v36 = partial apply for closure #2 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v37 = v20;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_21;
    v21 = _Block_copy(&v32);
    v22 = v18;

    [v5 setInvalidationHandler:v21];
    _Block_release(v21);
    [v5 _setQueue:*(v22 + OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue)];
    [v5 activate];
    v23 = v5;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 67240450;
      *(v26 + 4) = [v23 processIdentifier];

      *(v26 + 8) = 2114;
      *(v26 + 10) = v23;
      *v27 = v5;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Activated Connection from process:%{public}d, details:(%{public}@)", v26, 0x12u);
      outlined destroy of Any?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {

      v24 = v23;
    }

    (*((swift_isaMask & *v22) + 0x68))(&v32);
    v29 = v35;
    v30 = v36;
    __swift_project_boxed_opaque_existential_1(&v32, v35);
    (*(v30 + 1))(v23, v29, v30);
    __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  return v11 & 1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void (*a1)(void))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t one-time initialization function for core()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CGLogger.core);
  __swift_project_value_buffer(v0, static CGLogger.core);
  return Logger.init(subsystem:category:)();
}

uint64_t static CGLogger.core.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CGLogger.core);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for corelog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, corelog);
  v1 = __swift_project_value_buffer(v0, corelog);
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CGLogger.core);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t corelog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for corelog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, corelog);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t key path getter for DataClient._client : DataClient@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of DataClient(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = outlined destroy of DataClient(v5);
  *a2 = Strong;
  return result;
}

void DataClient._client.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*DataClient._client.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return DataClient._client.modify;
}

void DataClient._client.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  swift_unknownObjectWeakAssign();
}

BOOL DataClient.isValid.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t DataClient.description.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 7104878;
  }

  v1 = Strong;
  v2 = [Strong description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void DataClient.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

void DataClient.indication(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    NSXPCConnection.onData(_:)();
  }
}

uint64_t key path getter for GpsdClientManager._clientsIndication : GpsdClientManager@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GpsdClientManager._clientsIndication : GpsdClientManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t GpsdClientManager._clientsIndication.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t GpsdClientManager._clientsCountCallback.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t key path getter for GpsdClientManager._delegate : GpsdClientManager@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t key path setter for GpsdClientManager._delegate : GpsdClientManager(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);
  v4 = *a1;
  return v3(v2);
}

void *GpsdClientManager._delegate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void GpsdClientManager._delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t GpsdClientManager._requestCallback.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t GpsdClientManager.__allocating_init(requestCallback:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  GpsdClientManager.init(requestCallback:clientsCountCallback:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

void *GpsdClientManager.init(requestCallback:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v6[5] = 0;
  v6[6] = a1;
  v6[7] = a2;
  v6[2] = &_swiftEmptyArrayStorage;
  v6[3] = a3;
  v6[4] = a4;
  v16[3] = type metadata accessor for GpsdClientManager();
  v16[4] = lazy protocol witness table accessor for type GpsdClientManager and conformance GpsdClientManager();
  v16[0] = v6;
  objc_allocWithZone(type metadata accessor for ALServiceDelegate());

  v8 = a5;

  v9 = ALServiceDelegate.init(queue:dataService:)(v8, v16);
  swift_beginAccess();
  v10 = v6[5];
  v6[5] = v9;

  if (one-time initialization token for corelog != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, corelog);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "#cm,GpsdClientManager,init", v14, 2u);
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type GpsdClientManager and conformance GpsdClientManager()
{
  result = lazy protocol witness table cache variable for type GpsdClientManager and conformance GpsdClientManager;
  if (!lazy protocol witness table cache variable for type GpsdClientManager and conformance GpsdClientManager)
  {
    type metadata accessor for GpsdClientManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GpsdClientManager and conformance GpsdClientManager);
  }

  return result;
}

Swift::Void __swiftcall GpsdClientManager.add(client:)(NSXPCConnection client)
{
  v2 = v1;
  if (one-time initialization token for corelog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, corelog);
  v5 = client.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "#cm,clients,subscribe,%{public}@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11 = (*(*v2 + 128))(v19);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  outlined init with take of DataClient(v20, &v14[v17 + 4]);
  v18 = v11(v19, 0);
  (*(*v2 + 184))(v18);
}

Swift::Void __swiftcall GpsdClientManager.remove(client:)(NSXPCConnection client)
{
  v2 = v1;
  if (one-time initialization token for corelog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, corelog);
  v5 = client.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "#cm,clients,remove,%{public}@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  v11 = *(*v2 + 128);
  v12 = v5;
  v13 = v11(v20);
  v15 = v14;
  specialized MutableCollection._halfStablePartition(isSuffixElement:)(v14, v12);
  v17 = v16;

  v18 = *(*v15 + 16);
  if (v18 < v17)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v17, v18);
    v19 = v13(v20, 0);
    (*(*v2 + 184))(v19);
  }
}

Swift::Void __swiftcall GpsdClientManager.refreshClients()()
{
  v1 = v0;
  v2 = (*(*v0 + 128))(v53);
  v4 = v3;
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    v9 = -40;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      outlined init with copy of DataClient(v8, &v52);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of DataClient(&v52);
      if (!Strong)
      {
        break;
      }

      ++v7;
      v9 -= 8;
      v8 += 8;
      if (v6 == v7)
      {
        v7 = *(*v4 + 16);
        v11 = v7;
        goto LABEL_25;
      }
    }

    v11 = v7 + 1;
    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 - 1 == v7)
    {
      goto LABEL_25;
    }

    v14 = -v9;
    while (v11 < v13)
    {
      outlined init with copy of DataClient(v12 + v14, &v52);
      v15 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of DataClient(&v52);
      if (v15)
      {

        if (v11 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = *v4;
          v17 = *(*v4 + 16);
          if (v7 >= v17)
          {
            goto LABEL_46;
          }

          outlined init with copy of DataClient(&v16[v7 + 4], &v52);
          if (v11 >= v17)
          {
            goto LABEL_47;
          }

          outlined init with copy of DataClient(v16 + v14, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
            *v4 = v16;
          }

          if (v7 >= v16[2])
          {
            goto LABEL_48;
          }

          outlined assign with take of DataClient(v51, &v16[v7 + 4]);
          v19 = *v4;
          *v4 = *v4;
          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          outlined assign with take of DataClient(&v52, v19 + v14);
        }

        ++v7;
      }

      ++v11;
      v12 = *v4;
      v13 = *(*v4 + 16);
      v14 += 8;
      if (v11 == v13)
      {
        if (v11 < v7)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v7 = 0;
  v11 = 0;
LABEL_25:
  specialized Array.replaceSubrange<A>(_:with:)(v7, v11);
  v2(v53, 0);
  if (one-time initialization token for corelog != -1)
  {
LABEL_51:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, corelog);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349056;
    v24 = *((*(*v1 + 112))() + 16);

    *(v23 + 4) = v24;

    _os_log_impl(&_mh_execute_header, v21, v22, "#cm,refreshClients,count,%{public}ld", v23, 0xCu);
  }

  else
  {
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 136446210;
    v29 = (*(*v1 + 112))();
    v30 = *(v29 + 16);
    if (v30)
    {
      v49 = v28;
      v50 = v26;
      v52 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v31 = v52;
      v32 = v29 + 32;
      do
      {
        outlined init with copy of DataClient(v32, v51);
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          v35 = [v33 description];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
        }

        else
        {
          v38 = 0xE300000000000000;
          v36 = 7104878;
        }

        outlined destroy of DataClient(v51);
        v52 = v31;
        v40 = v31[2];
        v39 = v31[3];
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v31 = v52;
        }

        v31[2] = v40 + 1;
        v41 = &v31[2 * v40];
        v41[4] = v36;
        v41[5] = v38;
        v32 += 8;
        --v30;
      }

      while (v30);

      v26 = v50;
      v28 = v49;
    }

    else
    {
    }

    v42 = Array.description.getter();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v53);

    *(v27 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v25, v26, "#cm,refreshClients,%{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v47 = v1[3];
  v46 = v1[4];
  v48 = *((*(*v1 + 112))() + 16);

  if (HIDWORD(v48))
  {
    __break(1u);
  }

  else
  {
    v47(v48);
  }
}

uint64_t GpsdClientManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t GpsdClientManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t static GpsdClientManagerSingleton._instance.setter(uint64_t a1)
{
  swift_beginAccess();
  static GpsdClientManagerSingleton._instance = a1;
}

uint64_t key path getter for static GpsdClientManagerSingleton._instance : GpsdClientManagerSingleton.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static GpsdClientManagerSingleton._instance;
}

uint64_t key path setter for static GpsdClientManagerSingleton._instance : GpsdClientManagerSingleton.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static GpsdClientManagerSingleton._instance = v1;
}

uint64_t GpsdClientManagerSingleton._cm.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t GpsdClientManagerSingleton._cm.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t GpsdClientManagerSingleton.__allocating_init(requestCallbackUnsafe:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_allocObject();
  v10 = specialized GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = specialized GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(a1, a2, a3, a4, a5);

  return v6;
}

void closure #1 in closure #1 in GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    if (a2 - a1 <= 0xFFFFFFFFLL)
    {
      a5();
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v5 = a4;
  v6 = a3;
  if (one-time initialization token for corelog != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, corelog);
  outlined copy of Data._Representation(v6, v5);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined consume of Data._Representation(v6, v5);
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = Data.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v8, "#cm,requestCallback,unsafeBytes.bindMemory,%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t GpsdClientManagerSingleton.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GpsdClientManagerSingleton.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9GPSDaemon10DataClientVGMd, &_ss23_ContiguousArrayStorageCy9GPSDaemon10DataClientVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v7 = BYTE5(a2);
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      v9 = BYTE6(a2);
      BYTE5(v26[1]) = v7;
LABEL_24:
      (a5)(v26, v9);
      goto LABEL_25;
    }

    v18 = a1;
    v19 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v25 = a5;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
        goto LABEL_16;
      }

      v20 = __DataStorage._offset.getter();
      if (!__OFSUB__(v18, v20))
      {
        v12 += v18 - v20;
LABEL_16:
        v21 = __DataStorage._length.getter();
        if (v21 >= v19)
        {
          v17 = v19;
        }

        else
        {
          v17 = v21;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v8 != 2)
  {
    memset(v26, 0, 14);
    v9 = 0;
    goto LABEL_24;
  }

  v25 = a5;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(v11, v13))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v12 += v11 - v13;
  }

  v14 = __OFSUB__(v10, v11);
  v15 = v10 - v11;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = __DataStorage._length.getter();
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

LABEL_19:
  v22 = v17 + v12;
  if (v12)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  closure #1 in closure #1 in GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(v12, v23, a3, a4, v25);
LABEL_25:
  outlined consume of Data._Representation(a3, a4);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 8 * a3;
  v12 = v7 + 32 + 8 * a2;
  if (result < v12 || result >= v12 + 8 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(void *a1, void *a2)
{
  v2 = *a1;
  v4 = (*a1 + 16);
  v3 = *v4;
  if (!*v4)
  {
LABEL_24:
    v19 = *v4;
    return;
  }

  v5 = 0;
  v6 = 5;
  while (1)
  {
    v7 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      type metadata accessor for NSXPCConnection();
      v10 = a2;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }
    }

    ++v5;
    ++v6;
    v2 = v7;
    if (v3 == v5)
    {
      goto LABEL_24;
    }
  }

  v12 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_31;
  }

  v13 = *v4;
  if (v12 != *v4)
  {
    v14 = v7;
    do
    {
      if (v12 >= v13)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      outlined init with copy of DataClient(&v14[v6], v24);
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = v10;
        v22 = static NSObject.== infix(_:_:)();

        outlined destroy of DataClient(v24);
        if (v22)
        {
          goto LABEL_10;
        }

        if (v12 != v5)
        {
LABEL_17:
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v18 = *v4;
          if (v5 >= v18)
          {
            goto LABEL_28;
          }

          outlined init with copy of DataClient(&v14[v5 + 4], v24);
          if (v12 >= v18)
          {
            goto LABEL_29;
          }

          outlined init with copy of DataClient(&v14[v6], v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          }

          outlined assign with take of DataClient(v23, &v14[v5 + 4]);
          if (v12 >= v14[2])
          {
            goto LABEL_30;
          }

          outlined assign with take of DataClient(v24, &v14[v6]);
          *a1 = v14;
        }
      }

      else
      {
        outlined destroy of DataClient(v24);
        if (v12 != v5)
        {
          goto LABEL_17;
        }
      }

      ++v5;
LABEL_10:
      ++v12;
      v4 = v14 + 2;
      v13 = v14[2];
      ++v6;
    }

    while (v12 != v13);
  }
}

uint64_t specialized GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  *(v6 + 24) = 0;
  *(v6 + 16) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  type metadata accessor for GpsdClientManager();
  v13 = swift_allocObject();
  v14 = a5;

  GpsdClientManager.init(requestCallback:clientsCountCallback:queue:)(partial apply for closure #1 in GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:), v12, a3, a4, v14);
  swift_beginAccess();
  v15 = *(v6 + 24);
  *(v6 + 24) = v13;

  swift_beginAccess();
  if (static GpsdClientManagerSingleton._instance)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (one-time initialization token for corelog != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, corelog);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GpsdClientManagerSingleton,instance", v19, 2u);
    }

    static GpsdClientManagerSingleton._instance = v6;

    return v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataClient(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataClient(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t partial apply for closure #1 in GpsdClientManagerSingleton.init(requestCallbackUnsafe:clientsCountCallback:queue:)(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  outlined copy of Data._Representation(a1, a2);

  return specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, a1, a2, v6);
}

unint64_t type metadata accessor for NSXPCConnection()
{
  result = lazy cache variable for type metadata for NSXPCConnection;
  if (!lazy cache variable for type metadata for NSXPCConnection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSXPCConnection);
  }

  return result;
}

uint64_t GnssDeviceHelper::handleRequest(gnss::Exception *a1, uint64_t a2, uint64_t a3)
{
  v5 = **a1;
  if (!v5)
  {
    v9 = gnss::Exception::instance(a1);
    v10 = *(a2 + 12);
    gnss::Exception::set(v9, 10);
  }

  v6 = *(a2 + 12);
  switch(v6)
  {
    case 3:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a3);
      (*(*v5 + 24))(v5, v26);
      v8 = v26;
      goto LABEL_18;
    case 4:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a3);
      (*(*v5 + 32))(v5, v25);
      v8 = v25;
      goto LABEL_18;
    case 5:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a3);
      GnssDeviceHelper::deleteGnssData(a1, a2, v24);
      v8 = v24;
      goto LABEL_18;
    case 16:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a3);
      GnssDeviceHelper::setAssistanceDem(a1, a2, v23);
      v8 = v23;
      goto LABEL_18;
    case 17:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a3);
      GnssDeviceHelper::setAssistanceMapVector(a1, a2, v22);
      v8 = v22;
      goto LABEL_18;
    case 18:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a3);
      GnssDeviceHelper::setAssistanceMotionActivityContext(a1, a2, v21);
      v8 = v21;
      goto LABEL_18;
    case 19:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a3);
      GnssDeviceHelper::setAssistanceMountState(a1, a2, v20);
      v8 = v20;
      goto LABEL_18;
    case 20:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a3);
      GnssDeviceHelper::setAssistanceSignalEnvironment(a1, a2, v19);
      v8 = v19;
      goto LABEL_18;
    case 21:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a3);
      GnssDeviceHelper::setAssistanceSpeedConstraint(a1, a2, v18);
      v8 = v18;
      goto LABEL_18;
    case 22:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a3);
      GnssDeviceHelper::setAssistanceAlongTrackVelocity(a1, a2, v17);
      v8 = v17;
      goto LABEL_18;
    case 24:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
      GnssDeviceHelper::setConfigSimulatorMode(a1, a2, v16);
      v8 = v16;
      goto LABEL_18;
    case 25:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
      GnssDeviceHelper::setConfigEnableGnssConstellations(a1, a2, v15);
      v8 = v15;
      goto LABEL_18;
    case 26:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
      GnssDeviceHelper::setConfigDutyCycling(a1, a2, v14);
      v8 = v14;
      goto LABEL_18;
    case 31:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
      GnssDeviceHelper::setThermalRiskState(a1, a2, v13);
      v8 = v13;
LABEL_18:
      result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
      break;
    default:
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v28 = v6;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#gdm,handleRequest type %{public}d not supported!", buf, 8u);
      }

      result = std::function<void ()(gnss::Result)>::operator()(a3, 7);
      break;
  }

  return result;
}

uint64_t std::function<void ()(gnss::Result)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t GnssDeviceHelper::deleteGnssData(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
  (*(*v3 + 40))(v3, v4, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
}

void sub_10003DDB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceDem(uint64_t **a1, double *a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 2);
  v5 = a2[3];
  v6 = a2[4];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
  (*(*v3 + 152))(v3, v4, v8, v5, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
}

void sub_10003DE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceMapVector(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 81);
  v14 = *(a2 + 82);
  v15 = *(a2 + 83);
  v16 = *(a2 + 84);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a3);
  (*(*v3 + 160))(v3, v4, v7 & 1, v12 & 1, v13 & 1, v14 & 1, v15 & 1, v16 & 1, v5, v6, v8, v9, v10, v11, v18);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
}

void sub_10003DFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GnssDeviceHelper::setAssistanceMotionActivityContext(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v4 = *(a2 + 28);
  v6 = *(a2 + 32);
  v7 = **a1;
  v8 = *(a2 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a3);
  (*(*v7 + 168))(v7, v8, v5, v4, v6, v19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 16);
    v11 = 134349824;
    v12 = v10;
    v13 = 1026;
    v14 = v5;
    v15 = 1026;
    v16 = v4;
    v17 = 1026;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#gdm,injectAssistanceMotion,machNs,%{public}llu,context,%{public}d,movingState,%{public}d,reliability,%{public}d", &v11, 0x1Eu);
  }
}

void sub_10003E128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceMountState(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
  (*(*v3 + 176))(v3, v4, v5, v7);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
}

void sub_10003E1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceSignalEnvironment(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
  (*(*v3 + 184))(v3, v4, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
}

void sub_10003E2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceSpeedConstraint(uint64_t **a1, double *a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 2);
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
  (*(*v3 + 192))(v3, v4, v9, v5, v6, v7);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
}

void sub_10003E390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setAssistanceAlongTrackVelocity(uint64_t **a1, double *a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 2);
  v5 = a2[3];
  v6 = a2[4];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
  (*(*v3 + 200))(v3, v4, v8, v5, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
}

void sub_10003E460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setConfigSimulatorMode(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) == 1)
  {
    v6 = GpsdPreferences::instance(0);
    if (!GpsdPreferences::forceEnableXocalLearning(v6))
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,#xocal,force enable by preference", v13, 2u);
    }
  }

  v8 = 0;
LABEL_7:
  v9 = **a1;
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
  (*(*v9 + 224))(v9, v10 & 1, v11, v8, v14);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
}

void sub_10003E5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setConfigEnableGnssConstellations(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = GpsdPreferences::instance(0);
  v7 = GpsdPreferences::enableConstellationsBitfield(v6);
  v9 = *(a2 + 16);
  v8 = *(a2 + 20);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240960;
    v15 = v7;
    v16 = 1026;
    v17 = v9;
    v18 = 1026;
    v19 = v8;
    v20 = 1026;
    v21 = (v9 | v7) & ~v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#gdm,setConfigEnableGnssConstellations,default,0x%{public}x,forceEnable,0x%{public}x,forceDisable,0x%{public}x,net,0x%{public}x", buf, 0x1Au);
  }

  v11 = **a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
  (*(*v11 + 232))(v11, (v9 | v7) & ~v8, v13);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
}

uint64_t GnssDeviceHelper::setConfigDutyCycling(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1;
  v4 = *(a2 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
  (*(*v3 + 248))(v3, v4 & 1, v6);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
}

void sub_10003E7D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssDeviceHelper::setThermalRiskState(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,thermalRisk,%{public}d", buf, 8u);
  }

  v8 = **a1;
  v9 = *(a2 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
  (*(*v8 + 208))(v8, v9, v6, v11);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::submitSoftwareRecoveryStatistics(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::factoryTestXml@<X0>(GnssHal::ExtensionsFireImpl *this@<X0>, void *a2@<X8>)
{
  result = *(this + 11);
  if (result)
  {
    (*(*result + 48))(__p);
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __p;
      if (v6 < 0)
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "factoryTestXml,%{public}s", buf, 0xCu);
    }

    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::factoryTestJob@<X0>(GnssHal::ExtensionsFireImpl *this@<X0>, void *a2@<X8>)
{
  result = *(this + 15);
  if (result)
  {
    (*(*result + 48))(__p);
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __p;
      if (v6 < 0)
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "factoryTestJob,%{public}s", buf, 0xCu);
    }

    operator new();
  }

  *a2 = 0;
  return result;
}

void GnssHal::ExtensionsFireImpl::bundleName(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::bundleName(v1, &v2);
  operator new();
}

void sub_10003EDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsFireImpl::nvStorePath(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::nvStorePath(v1, &v2);
  operator new();
}

void sub_10003EE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsFireImpl::~ExtensionsFireImpl(GnssHal::ExtensionsFireImpl *this)
{
  GnssHal::ExtensionsFireImpl::~ExtensionsFireImpl(this);

  operator delete();
}

{
  *this = off_1001716E0;
  v2 = this + 32;
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t GnssHal::ExtensionsFireImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void GnssHal::ExtensionsFireImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

uint64_t std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t GnssHal::ExtensionsOlafImpl::requestLtlInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 56))
  {
    v4 = result;
    std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](v6, a3);
    v5 = *(v4 + 56);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, a2, v6);
    return std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

double GnssHal::ExtensionsOlafImpl::groupDelayL1InCAChips(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::groupDelayL1InCAChips(v1);
  v3 = v2;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ExtensionsOlafImpl,groupDelayL1InCAChips,%f", &v6, 0xCu);
  }

  return v3;
}

BOOL GnssHal::ExtensionsOlafImpl::platform(GnssHal::ExtensionsOlafImpl *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    return 0;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 202)
  {
    return 1;
  }

  v2 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v3 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unhandled platform in ExtensionsOlaf", v3, 2u);
    return 0;
  }

  return result;
}

void GnssHal::ExtensionsOlafImpl::requestBasebandReset(uint64_t a1, int a2, uint64_t a3)
{
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a3;
    if (*(a3 + 23) < 0)
    {
      v7 = *a3;
    }

    *buf = 67240451;
    *v15 = a2;
    *&v15[4] = 2081;
    *&v15[6] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#bbReset,extensionsOlaf,%{public}d,%{private}s", buf, 0x12u);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "requestBasebandReset invoked without a handler", buf, 2u);
      v9 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v15 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalExtensionsOlafImpl.cpp";
      *&v15[8] = 1026;
      *&v15[10] = 49;
      v16 = 2082;
      v17 = "requestBasebandReset";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v13, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v12, "requestBasebandReset");
    std::string::basic_string[abi:ne200100]<0>(&v11, "requestBasebandReset invoked without a handler");
    gpsd::util::triggerDiagnosticReport(&v13, &v12, &v11);
    std::string::~string(&v11);
    std::string::~string(&v12);
    std::string::~string(&v13);
    __assert_rtn("requestBasebandReset", "GnssHalExtensionsOlafImpl.cpp", 49, "false && requestBasebandReset invoked without a handler");
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v8 = *(a1 + 88);
    *buf = a2;
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    __p = *a3;
    *buf = a2;
  }

  (*(*v8 + 48))(v8, buf, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10003F5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsOlafImpl::~ExtensionsOlafImpl(GnssHal::ExtensionsOlafImpl *this)
{
  *this = off_1001718B0;
  v1 = this + 32;
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](v1);
}

{
  *this = off_1001718B0;
  v1 = this + 32;
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](v1);

  operator delete();
}

char *GnssHal::ExtensionsOlafImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsOlafImpl *this)
{
  if (*(this + 16))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

uint64_t GnssHal::ExtensionsOlafImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

id GnssHal::ExtensionsOlafImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

void GnssHal::ExtensionsOlafImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

id GnssHal::ExtensionsOlafImpl::debugFeaturesBitmask(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsOlafImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsOlafImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

double GnssHal::ExtensionsOlafImpl::crossCorrelationSettings(GnssHal::ExtensionsOlafImpl *this)
{
  result = *(this + 12);
  v2 = *(this + 13);
  v3 = *(this + 14);
  v4 = *(this + 15);
  return result;
}

uint64_t std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void GnssHal::PlatformTimer::~PlatformTimer(GnssHal::PlatformTimer *this)
{
  *this = off_1001719A0;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#timer,dtor,unexpected", v4, 2u);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);
}

{
  GnssHal::PlatformTimer::~PlatformTimer(this);

  operator delete();
}

uint64_t GnssHal::PlatformTimer::setCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = ___ZN7GnssHal13PlatformTimer11setCallbackENSt3__18functionIFvvEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_11;
  v4[4] = a1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  dispatch_async(v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10003FFF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gpsd::util::GnssTimer::~GnssTimer(gpsd::util::GnssTimer *this)
{
  gpsd::util::DispatchSource::~DispatchSource(this);

  operator delete();
}

void *GpsdIndicationHandler::GpsdIndicationHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_100171AF0;
  a1[1] = a4;
  a1[2] = a2;
  v6 = std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::__value_func[abi:ne200100]((a1 + 3), a3);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  if (!*(a3 + 24))
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "indicationCallback,nullptr", buf, 2u);
      v11 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136446722;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdProtobufHandler.cpp";
      v21 = 1026;
      v22 = 20;
      v23 = 2082;
      v24 = "GpsdIndicationHandler";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v16, "assert");
    std::string::basic_string[abi:ne200100]<0>(v14, "GpsdIndicationHandler");
    std::string::basic_string[abi:ne200100]<0>(v12, "indicationCallback,nullptr");
    gpsd::util::triggerDiagnosticReport(v16, v14, v12);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    __assert_rtn("GpsdIndicationHandler", "GpsdProtobufHandler.cpp", 20, "false && indicationCallback,nullptr");
  }

  a1[9] = gpsd::util::getMachContinuousTimeNs(v6);
  v7 = GpsdPreferences::instance(0);
  LogLevel = GpsdPreferences::getLogLevel(v7);
  if (LogLevel)
  {
    operator new();
  }

  if (a1[7])
  {
    LogLevel = GpsdPlatformInfo::instance(0);
    if ((*(LogLevel + 2) - 301) <= 1)
    {
      v19[0] = off_100171C08;
      v19[1] = a1;
      v19[3] = v19;
      operator new();
    }
  }

  v9 = gnss::Exception::instance(LogLevel);
  v18[0] = off_100171C98;
  v18[1] = a1;
  v18[3] = v18;
  std::function<void ()(proto::gpsd::Indication &&)>::operator=((v9 + 8), v18);
  std::__function::__value_func<void ()(proto::gpsd::Indication &&)>::~__value_func[abi:ne200100](v18);
  return a1;
}

void GpsdIndicationHandler::send(uint64_t a1, int *a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67240192;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,indication,type,%{public}d", buf, 8u);
    v4 = GpsdLogObjectGeneral;
  }

  *buf = off_100179D00;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v31 = 0;
  v32 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v6 = *a2;
  if (*a2 == 20)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a2[4];
      v15 = 67240192;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,indication,stopCompleted,%{public}d", &v15, 8u);
    }

    v10 = ProtobufUtil::convert::cpbResult(a2[4]);
    if (v10 > 9)
    {
      v12 = "::proto::gnss::Result_IsValid(value)";
      v13 = 8215;
      v14 = "set_stop_status";
      goto LABEL_20;
    }

    v32 |= 0x2000u;
    HIDWORD(v23) = v10;
  }

  else if (v6 == 22)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2[4];
      v15 = 67240192;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,indication,startCompleted,%{public}d", &v15, 8u);
    }

    v8 = ProtobufUtil::convert::cpbResult(a2[4]);
    if (v8 > 9)
    {
      v12 = "::proto::gnss::Result_IsValid(value)";
      v13 = 0x2000;
      v14 = "set_start_status";
      goto LABEL_20;
    }

    v32 |= 0x1000u;
    DWORD2(v23) = v8;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v15 = 67240192;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gdm,indication,type,%{public}d,unsupported!", &v15, 8u);
  }

  v11 = ProtobufUtil::convert::cpbType(*a2);
  v12 = "::proto::gpsd::Indication_Type_IsValid(value)";
  v13 = 7746;
  v14 = "set_type";
  if (v11 <= 0x1B && ((1 << v11) & 0xFDFFE3F) != 0)
  {
    v32 |= 1u;
    LODWORD(v18) = v11;
    GpsdIndicationHandler::sendIndication(a1, buf);
  }

LABEL_20:
  __assert_rtn(v14, "GpsdProtocol.pb.h", v13, v12);
}

void sub_1000407F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  proto::gpsd::Indication::~Indication(va);
  _Unwind_Resume(a1);
}

void GpsdIndicationHandler::send(gpsd::util *a1, void *a2)
{
  if (*(a1 + 9))
  {
    *a2 = gpsd::util::getMachContinuousTimeNs(a1) - *(a1 + 9);
  }

  operator new();
}

void GpsdIndicationHandler::send(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  *(v3 + 88) = a3;
  *(v3 + 97) = v4;
  v5 = off_100179D00;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 19;
  v19 = 0x80100000000;
  operator new();
}